// DEPTH-sample delay (DEPTH = 2^(8-STAGE)), advanced by shift_en.
//
// The storage has no reset, so FPGA tools can map it to SRLs or block RAM
// (an async reset forces plain flip-flops). Contents after reset are
// don't-care: fft_stage only marks outputs valid once `primed` is set, which
// is after the line has been filled with real samples.
//
//   DEPTH >= BRAM_MIN_DEPTH : circular buffer in block RAM (synchronous read)
//   DEPTH <  BRAM_MIN_DEPTH : shift register (maps to SRL16/SRL32)
//
// Both forms behave the same at the port: `out` is the sample written DEPTH
// shift_en pulses ago, valid in the same cycle (it is a register output, so
// the butterfly feedback path starts from a flop in both cases).

module delay_line #(
    parameter STAGE          = 1,
    parameter WIDTH          = 32,
    parameter BRAM_MIN_DEPTH = 128
)(
    input  logic             CLK,
    input  logic             nRST,
    input  logic [WIDTH-1:0] sample,
    input  logic             shift_en,
    output logic [WIDTH-1:0] out
);
    localparam int DEPTH = 1 << (8 - STAGE);

    generate
        if (DEPTH >= BRAM_MIN_DEPTH) begin : g_bram
            localparam int AW = $clog2(DEPTH);

            (* ram_style = "block" *) logic [WIDTH-1:0] mem [DEPTH];
            logic [AW-1:0] wptr, rptr;
            logic [WIDTH-1:0] rdata;

            // Invariant: rdata == mem[wptr] (the oldest entry, about to be
            // overwritten). On a shift we write the new sample at wptr and
            // read the next-oldest entry at wptr+1, which is not touched by
            // this write, so no read-during-write collision.
            assign rptr = wptr + 1'b1;

            // Pointer is control state: keep the reset.
            always_ff @(posedge CLK or negedge nRST) begin
                if (!nRST)
                    wptr <= '0;
                else if (shift_en)
                    wptr <= rptr;
            end

            // Simple dual-port RAM, write port + registered read port,
            // both enabled by shift_en. No reset.
            always_ff @(posedge CLK) begin
                if (shift_en) begin
                    mem[wptr] <= sample;
                    rdata     <= mem[rptr];
                end
            end

            assign out = rdata;

            // Power-up contents (honoured by FPGA tools and simulation, so
            // sims don't carry Xs around in the unused first half-frame).
            initial begin
                for (int i = 0; i < DEPTH; i++) mem[i] = '0;
                rdata = '0;
            end
        end else begin : g_srl
            logic [WIDTH-1:0] shift [DEPTH];

            always_ff @(posedge CLK) begin
                if (shift_en) begin
                    for (int j = DEPTH-1; j > 0; j--)
                        shift[j] <= shift[j-1];
                    shift[0] <= sample;
                end
            end

            assign out = shift[DEPTH-1];

            initial begin
                for (int i = 0; i < DEPTH; i++) shift[i] = '0;
            end
        end
    endgenerate

endmodule
