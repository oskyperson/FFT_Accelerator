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

    // config_reg from subordinate
    input logic [7:0][31:0] config_reg,
    
    // to fft
    input logic [31:0] data_out, //re, im
    input logic out_valid,
    output logic [31:0] data_in, //re, im
    output logic in_valid,
    input logic fft_done
);

// read
typedef enum logic [1:0] {RIDLE, RADDR, RDATA, RERR} rstate_t;
rstate_t rstate, next_rstate;

always_ff @ (posedge clk, negedge n_rst) begin 
    if (!n_rst) begin
        rstate <= RIDLE;
    end else begin
        rstate <= next_rstate;
    end
end

logic rcounter_last;

always_comb begin : next_rstate_logic
    next_rstate = rstate;
    case (rstate)
        RIDLE:
            next_rstate = (fft_done && config_reg[0][0]) ? RADDR : RIDLE;
        RADDR:
            next_rstate = arready ? RDATA : RADDR;
        RDATA:
            next_rstate = rresp ? RERR : (rvalid && rready && (rlast || rcounter_last)) ? RIDLE : RDATA;
        RERR:
            next_rstate = RIDLE;
        default:
            next_rstate = RIDLE;
    endcase
end

logic [9:0] rcount;
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
    araddr = config_reg[1][10:0];
    arlen = config_reg[2][9:0];
    arvalid = (rstate == RADDR);
    rready = (rstate == RDATA);
    data_in = rdata;
    in_valid = rready && rvalid;
end

// write
typedef enum logic [1:0] {WIDLE, WADDR, WDATA, B} wstate_t;
wstate_t wstate, next_wstate;

always_ff @ (posedge clk, negedge n_rst) begin 
    if (!n_rst) begin
        wstate <= WIDLE;
    end else begin
        wstate <= next_wstate;
    end
end

always_comb begin : next_wstate_logic
    next_wstate = wstate;
    case (wstate)
        WIDLE:
            next_wstate = (out_valid && config_reg[6][0]) ? WADDR : WIDLE;
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

logic [9:0] wcount;
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
    awaddr = config_reg[3][10:0];
    awlen = config_reg[4][9:0];
    awvalid = (wstate == WADDR);
    wvalid = (wstate == WDATA) && out_valid;
    wstrb = config_reg[5][1:0];
    wdata = data_out;
    bready = (wstate == B);
end

endmodule
/* verilator lint_on UNUSEDSIGNAL */
