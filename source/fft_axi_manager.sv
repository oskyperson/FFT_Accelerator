`timescale 1ns / 10ps

/* verilator lint_off UNUSEDSIGNAL */
module fft_axi_manager #(
    // parameters
) (
    input logic clk, n_rst,
    // write address
    input logic awready,
    output logic [10:0] awaddr,
    output logic [9:0] awlen,
    output logic awvalid, 
    // write data
    input logic wready,
    output logic [31:0] wdata,
    output logic [1:0] wstrb,
    output logic wlast, wvalid,
    // write response
    input logic bresp, bvalid,
    output logic bready,
    // read address
    input logic arready,
    output logic [10:0] araddr,
    output logic [9:0] arlen,
    output logic arvalid,
    // read data
    input logic rlast, rvalid,
    input logic [31:0] rdata,
    output logic rready,
    // read response
    input logic rresp,

    // configs from subordinate
    input logic [7:0][31:0] config_reg,
    
    // to fft
    input logic [31:0] data_out, //re, im
    input logic out_valid,
    output logic [31:0] data_in, //re, im
    output logic in_valid,
    input logic fft_done
);

typedef enum logic [1:0] {RIDLE, RADDR, RDATA, RERR} rstate_t;
typedef enum logic [1:0] {WIDLE, WADDR, WDATA, B} wstate_t;

rstate_t rstate, next_rstate;
wstate_t wstate, next_wstate;
logic [7:0][31:0] configs;
logic new_config, next_new_config;
logic [31:0] num_read_frames, num_write_frames;
logic [31:0] j, next_j;
logic [31:0] k, next_k;
logic rcounter_last;
logic [9:0] rcount;
logic [9:0] wcount;

always_ff @ (posedge clk, negedge n_rst) begin : config_capture
    if (!n_rst) begin
        configs <= '0;
        new_config <= 0;
    end else if (wstate == WIDLE && rstate == RIDLE && j == 0 && k == 0) begin
        configs <= config_reg;
        new_config <= next_new_config;
    end
end

always_comb begin : new_config_logic
    next_new_config = 0;
    if (wstate == WIDLE && rstate == RIDLE && j == 0 && k == 0 && !new_config)
        next_new_config = 1;
end

always_comb begin : frame_numbers
    num_read_frames = configs[0] + 1'b1;
    num_write_frames = configs[0];
end

always_ff @ (posedge clk, negedge n_rst) begin : write_frame_num_reg
    if (!n_rst)
        j <= '0;
    else
        j <= next_j;
end

always_comb begin : next_j_logic
    next_j = j;
    if (new_config)
        next_j = num_write_frames;
    else if (k == j && fft_done)
        next_j = j - 1;
end

always_ff @ (posedge clk, negedge n_rst) begin : read_frame_num_reg
    if (!n_rst)
        k <= '0;
    else
        k <= next_k;
end

always_comb begin : next_k_logic
    next_k = k;
    if (new_config)
        next_k = num_read_frames;
    else if (k > 0 && fft_done)
        next_k = k - 1;    
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
            next_rstate = k != 0 ? RADDR : RIDLE;
        RADDR:
            next_rstate = arready ? RDATA : RADDR;
        RDATA:
            next_rstate = rresp ? RERR : (rvalid && rready && (rcounter_last)) ? RIDLE : RDATA;
        RERR:
            next_rstate = RIDLE;
        default:
            next_rstate = RIDLE;
    endcase
end

fft_axi_counter #(.WRITE_OR_READ(0)) read_counter (
    .clk(clk),
    .n_rst(n_rst),
    .len(arlen),
    .ready(rready),
    .valid(rvalid),
    .resp(rresp),
    .last(rcounter_last),
    .i(rcount)
);

always_comb begin : read_output_logic
    araddr = (rstate == RIDLE) ? 0 : configs[1][10:0];
    arlen = configs[2][9:0];
    arvalid = (rstate == RADDR);
    rready = (rstate == RDATA);
    data_in = rdata;
    in_valid = rready && rvalid;
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
            next_wstate = (out_valid && j != 0) ? WADDR : WIDLE;
        WADDR:
            next_wstate = awready ? WDATA : WADDR;
        WDATA:
            next_wstate = (wlast && wready) ? B : WDATA;
        B: 
            next_wstate = bvalid ? WIDLE : B;
        default:
            next_wstate = WIDLE;
    endcase
end

fft_axi_counter #(.WRITE_OR_READ(1)) write_counter (
    .clk(clk),
    .n_rst(n_rst),
    .len(awlen),
    .ready(wready),
    .valid(wvalid),
    .resp(bresp),
    .last(wlast),
    .i(wcount)
);

always_comb begin : write_output_logic
    awaddr = (wstate == WIDLE) ? 0 : configs[3][10:0];
    awlen = configs[4][9:0];
    awvalid = (wstate == WADDR);
    wvalid = (wstate == WDATA) && out_valid;
    wstrb = configs[5][1:0];
    wdata = data_out;
    bready = (wstate == B);
end

endmodule
/* verilator lint_on UNUSEDSIGNAL */
