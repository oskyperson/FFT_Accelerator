`timescale 1ns / 10ps

module fft_axi_manager #(
    // parameters
) (
    input logic clk, n_rst,
    // write address
    input logic awready,
    output logic [10:0] awaddr,
    output logic [9:0] awlen
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
    input logic [3:0] config_reg,
    
    // signals to/from fft
    input logic fft_done,
    output logic fft_start,
    output logic [511:0][31:0] in_buf,
    input logic [511:0][31:0] out_buf
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
    next_rstate = RIDLE;
    case (rstate)
        RIDLE:
            next_rstate = fft_done & config_reg[0] ? RADDR : RIDLE;
        RADDR:
            next_rstate = arready ? RDATA : RADDR;
        RDATA:
            next_rstate = rresp ? RERR : rvalid & (rlast | rcounter_last) ? START_FFT : RDATA;
        START_FFT:
            next_rstate = RIDLE;
        RERR:
            next_rstate = RIDLE;
        default:
            next_rstate = RIDLE;
    endcase
end

logic rcounter_last;
logic [9:0] rcount;

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
    araddr = '0;
    arvalid = 0;
    arlen = '0;
    rready = 0;
    case (rstate)
        RIDLE: begin
            araddr = config_reg[1];
            arlen = config_reg[2];
            arvalid = 0;
            rready = 0;
            fft_start = 0;
        end
        RADDR: begin
            araddr = config_reg[1];
            arlen = config_reg[2];
            arvalid = 1;
            rready = 0;
        end
        RDATA: begin
            araddr = config_reg[1];
            arlen = config_reg[2];
            arvalid = 0;
            rready = 1;
            if (rvalid)
                in_buf[rcount] = rdata;
        end
        START_FFT: 
        begin
            araddr = config_reg[1];
            arlen = confg[2];
            arvalid = 0;
            rready = 0;
            fft_start = 1;
        end
        RERR: begin end
        default: begin
            araddr = '0;
            arvalid = 0;
            arlen = '0;
            rready = 0;
        end
    endcase
end

// write
typedef enum logic [2:0] {WIDLE, WADDR, WDATA, B, BERR} wstate_t;
wstate_t wstate, next_wstate;

always_ff @ (posedge clk, negedge n_rst) begin 
    if (!n_rst) begin
        rstate <= RIDLE;
    end else begin
        rstate <= next_rstate;
    end
end

endmodule

