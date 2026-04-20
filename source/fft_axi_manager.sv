`timescale 1ns / 10ps

/* verilator lint_off UNUSEDSIGNAL */
module fft_axi_manager (
    input logic clk, n_rst,
    // write address
    input logic fft_man_awready,
    output logic [31:0] fft_man_awaddr,
    output logic [9:0] fft_man_awlen,
    output logic fft_man_awvalid, 
    // write data
    input logic fft_man_wready,
    output logic [31:0] fft_man_wdata,
    output logic [1:0] fft_man_wstrb,
    output logic fft_man_wlast, fft_man_wvalid,
    // write response
    input logic fft_man_bresp, fft_man_bvalid,
    output logic fft_man_bready,
    // read address
    input logic fft_man_arready,
    output logic [31:0] fft_man_araddr,
    output logic [9:0] fft_man_arlen,
    output logic fft_man_arvalid,
    // read data
    input logic fft_man_rlast, fft_man_rvalid,
    input logic [31:0] fft_man_rdata,
    output logic fft_man_rready,
    // read response
    input logic fft_man_rresp,

    // configs from subordinate
    input logic [7:0][31:0] config_reg,
    
    // to fft
    input logic [31:0] data_out, //re, im
    input logic out_valid,
    output logic [31:0] data_in, //re, im
    output logic in_valid,

    output logic load_size,
    output logic [9:0] frame_size
);

typedef enum logic [1:0] {RIDLE, RADDR, RDATA, RERR} rstate_t;
typedef enum logic [1:0] {WIDLE, WADDR, WDATA, B} wstate_t;

rstate_t rstate, next_rstate;
wstate_t wstate, next_wstate;

logic [7:0][31:0] configs;
logic processing;
logic [10:0] j, k;
logic rcounter_last;
logic [9:0] rcount;
logic [9:0] wcount;

logic [31:0] r_offset, w_offset;
logic [31:0] r_frame_size, w_frame_size;
logic [31:0] next_r_offset_val, next_w_offset_val;

logic j_eq_k;
logic k_gt_0;
logic j_gt_0;

always_ff @(posedge clk, negedge n_rst) begin
    if (!n_rst) begin
        j_eq_k <= 1'b0;
        k_gt_0 <= 1'b0;
        j_gt_0 <= 1'b0;
    end else begin
        j_eq_k <= (j == k);
        k_gt_0 <= (k > 0);
        j_gt_0 <= (j > 0);
    end
end

always_ff @ (posedge clk, negedge n_rst) begin : load_size_logic
    if (!n_rst) begin
        load_size <= 0;
        frame_size <= 10'd512;
    end else if (wstate == WIDLE && rstate == RIDLE) begin
        load_size <= 1;
        frame_size <= fft_man_arlen + 1;
    end
end

always_ff @ (posedge clk, negedge n_rst) begin : control_logic
    if (!n_rst) begin
        configs <= '0;
        processing <= 0;
    end else if (!processing) begin
        if (config_reg[6][0]) begin
            configs <= config_reg;
            processing <= 1;
        end
    end else if (j == 0 && k == 0 && rstate == RIDLE && wstate == WIDLE) begin
        processing <= 0;
    end
end

fft_cla r_adder (
    .a(r_offset),
    .b(r_frame_size),
    .cin(1'b0),
    .sum(next_r_offset_val),
    .cout()
);

fft_cla w_adder (
    .a(w_offset),
    .b(w_frame_size),
    .cin(1'b0),
    .sum(next_w_offset_val),
    .cout()
);

always_ff @ (posedge clk, negedge n_rst) begin : counter_management
    if (!n_rst) begin
        j <= '0;
        k <= '0;
        r_offset <= '0;
        w_offset <= '0;
        r_frame_size <= '0;
        w_frame_size <= '0;
    end else if (!processing && config_reg[6][0]) begin 
        j <= config_reg[0][10:0];
        k <= config_reg[0][10:0];
        r_frame_size <= 32'(config_reg[2][9:0]) + 32'd1;
        w_frame_size <= 32'(config_reg[4][9:0]) + 32'd1;
        
        r_offset <= 32'd0;
        w_offset <= 32'd0;

    end else if (processing && rstate == RIDLE && wstate == WIDLE) begin
        if (k_gt_0) begin
            k <= k - 11'd1;
            if (k <= configs[0][10:0]) begin
                r_offset <= next_r_offset_val;
            end
        end
        if (j_gt_0 && j_eq_k) begin
            j <= j - 11'd1;
            if (j < configs[0][10:0]) begin
                w_offset <= next_w_offset_val;
            end
        end
    end
end

always_ff @ (posedge clk, negedge n_rst) begin : rstate_reg
    if (!n_rst)
        rstate <= RIDLE;
    else
        rstate <= next_rstate;
end

always_comb begin : next_rstate_logic
    next_rstate = rstate;
    case (rstate)
        RIDLE:
            next_rstate = (processing && k != 0 && wstate == WIDLE) ? RADDR : RIDLE;
        RADDR:
            next_rstate = fft_man_arready ? RDATA : RADDR;
        RDATA:
            next_rstate = fft_man_rresp ? RERR : (fft_man_rvalid && fft_man_rready && rcounter_last) ? RIDLE : RDATA;
        RERR:
            next_rstate = RIDLE;
        default:
            next_rstate = RIDLE;
    endcase
end

always_ff @(posedge clk, negedge n_rst) begin : reg_araddr
    if (!n_rst) begin
        fft_man_araddr <= '0;
    end else if (rstate == RIDLE && next_rstate == RADDR) begin
        fft_man_araddr <= configs[1] + r_offset;
    end
end

fft_axi_counter #(.WRITE_OR_READ(0)) read_counter (
    .clk(clk),
    .n_rst(n_rst),
    .len(fft_man_arlen),
    .ready(fft_man_rready),
    .valid(fft_man_rvalid),
    .resp(fft_man_rresp),
    .last(rcounter_last),
    .i(rcount)
);

always_comb begin : read_output_logic
    fft_man_arlen = configs[2][9:0];
    fft_man_arvalid = (rstate == RADDR);
    fft_man_rready = (rstate == RDATA);
    data_in = fft_man_rdata;
    in_valid = fft_man_rready && fft_man_rvalid;
end

always_ff @ (posedge clk, negedge n_rst) begin : wstate_reg
    if (!n_rst)
        wstate <= WIDLE;
    else
        wstate <= next_wstate;
end

always_comb begin : next_wstate_logic
    next_wstate = wstate;
    case (wstate)
        WIDLE:
            next_wstate = (processing && j_gt_0 && j_eq_k && rstate == RIDLE) ? WADDR : WIDLE;
        WADDR:
            next_wstate = fft_man_awready ? WDATA : WADDR;
        WDATA:
            next_wstate = (fft_man_wlast && fft_man_wready) ? B : WDATA;
        B: 
            next_wstate = fft_man_bvalid ? WIDLE : B;
        default:
            next_wstate = WIDLE;
    endcase
end

always_ff @(posedge clk, negedge n_rst) begin : reg_awaddr
    if (!n_rst) begin
        fft_man_awaddr <= '0;
    end else if (wstate == WIDLE && next_wstate == WADDR) begin
        fft_man_awaddr <= configs[3] + w_offset;
    end
end

/* verilator lint_off PINCONNECTEMPTY */
fft_axi_counter #(.WRITE_OR_READ(1)) write_counter (
    .clk(clk),
    .n_rst(n_rst),
    .len(fft_man_awlen),
    .ready(fft_man_wready),
    .valid(fft_man_wvalid),
    .resp(1'd0),
    .last(fft_man_wlast),
    .i(wcount)
);
/* verilator lint_on PINCONNECTEMPTY */

always_comb begin : write_output_logic
    fft_man_awlen = configs[4][9:0];
    fft_man_awvalid = (wstate == WADDR);
    fft_man_wvalid = (wstate == WDATA) && out_valid;
    fft_man_wstrb = configs[5][1:0];
    fft_man_wdata = data_out;
    fft_man_bready = (wstate == B);
end

endmodule
/* verilator lint_on UNUSEDSIGNAL */
