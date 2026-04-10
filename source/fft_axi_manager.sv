`timescale 1ns / 10ps

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
    
    // signals to/from fft
    input logic fft_done,
    output logic fft_start,
    output logic fft_valid,
    output logic [31:0] in,
    output logic [9:0] rcount,
    output logic wen_to_inbuf,
    input logic [31:0] out,
    output logic [9:0] wcount
);

// read
typedef enum logic [2:0] {RIDLE, RADDR, RDATA, RERR, START_FFT} rstate_t;
rstate_t rstate, next_rstate;

always_ff @ (posedge clk, negedge n_rst) begin 
    if (!n_rst) begin
        rstate <= RIDLE;
    end else begin
        rstate <= next_rstate;
    end
end

always_comb begin : next_rstate_logic
    next_rstate = rstate;
    case (rstate)
        RIDLE:
            next_rstate = (fft_done & config_reg[0][0]) ? RADDR : RIDLE;
        RADDR:
            next_rstate = arready ? RDATA : RADDR;
        RDATA:
            next_rstate = rresp ? RERR : (rvalid & (rlast | rcounter_last)) ? START_FFT : RDATA;
        START_FFT:
            next_rstate = RIDLE;
        RERR:
            next_rstate = RIDLE;
        default:
            next_rstate = RIDLE;
    endcase
end

logic rcounter_last;

/* verilator lint_off PINMISSING */
fft_axi_counter #(.WRITE_OR_READ(0)) read_counter (
    .clk(clk),
    .n_rst(n_rst),
    .len(arlen),
    .ready(rready),
    .valid(rvalid),
    .resp(rresp),
    .addr(),
    .last(rcounter_last),
    .i(rcount),
    .busy()
);
/* verilator lint_on PINMISSING */

always_comb begin : read_output_logic
    araddr = config_reg[1][10:0];
    arlen = config_reg[2][9:0];
    arvalid = (rstate == RADDR);
    rready = (rstate == RDATA);
    fft_start = (rstate == START_FFT);
    fft_valid = (rstate == START_FFT);
    in = rdata;
    wen_to_inbuf = rready && rvalid;
end

// write
typedef enum logic [2:0] {WIDLE, WADDR, WDATA, B, BERR} wstate_t;
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
            next_wstate = (fft_done & config_reg[6][0]) ? WADDR : WIDLE;
        WADDR:
            next_wstate = awready ? WDATA : WADDR;
        WDATA:
            next_wstate = (wlast & wready) ? B : WDATA;
        B: 
            next_wstate = bresp ? BERR : bvalid ? WIDLE : B;
        BERR:
            next_wstate = WIDLE;
        default:
            next_wstate = WIDLE;
    endcase
end

/* verilator lint_off PINMISSING */
fft_axi_counter #(.WRITE_OR_READ(1)) write_counter (
    .clk(clk),
    .n_rst(n_rst),
    .len(awlen),
    .ready(wready),
    .valid(wvalid),
    .resp(bresp),
    .addr(),
    .last(wlast),
    .i(wcount),
    .busy()
);
/* verilator lint_on PINMISSING */

always_comb begin : write_output_logic
    awaddr  = config_reg[3][10:0];
    awlen   = config_reg[4][9:0];
    awvalid = (wstate == WADDR);
    wvalid  = (wstate == WDATA);
    wstrb   = config_reg[5][1:0];
    wdata   = out;
    bready  = (wstate == B);
end

endmodule