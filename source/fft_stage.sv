`timescale 1ns / 10ps

// Radix-2 single-path delay feedback (R2SDF) stage, internally pipelined.
//
// Feedback loop (must stay single-cycle per valid sample):
//     delay_line out -> butterfly add/sub -> delay_line in
// The loop holds only a 17-bit add/subtract. The raw butterfly difference is
// stored in the delay line (17b re + 17b im = 34b), and the twiddle rotation is
// applied on the way *out* of the stage, where it can be pipelined freely:
//
//     P1: select output (sum / delayed diff / bypass), register twiddle
//         (these are the DSP A/B input registers)
//     P2: four 17x16 products (raw, 33b)  (DSP M register)
//     P3: round + saturate each product to 16b
//     P4: complex combine -> out
//
// The P1-P4 registers advance every clock and carry their own valid bit, so
// gaps in sample_valid are tolerated and the valid-qualified output stream
// is bit-identical to the previous single-cycle implementation. The cost is
// LATENCY clock cycles per stage (previously 1).
//
// Only the valid bits and control state are reset. Datapath registers have no
// reset so they can be packed into DSP slices (whose internal registers only
// support synchronous reset) and so the reset net stays small.

module fft_stage #(
    parameter STAGE = 1
)(
    input logic CLK,
    input logic nRST,
    input logic [31:0] sample,
    input logic sample_valid,
    output logic [31:0] out,
    output logic out_valid,

    input logic sel,             // stage active (registered by fft_core)
    input logic [9:0] frame_last, // frame_size - 1 (registered by fft_core)
    output logic rollover_flag
);
    localparam int LATENCY = 4;

    localparam [8:0]  ADDR_ADJUST = (9'd1 << (8 - STAGE)) - 9'd1;
    localparam [9:0]  MIDPOINT    = (10'd1 << (8 - STAGE)) - 10'd1;

    // ------------------------------------------------------------------
    // Control
    // ------------------------------------------------------------------
    logic [9:0] count_out, next_count_out;
    logic       control; // 1 = butterfly mode, 0 = delay mode
    logic       primed;

    flex_counter count(
        .CLK(CLK), .nRST(nRST), .clear(1'b0), .count_enable(sample_valid),
        .count_out(count_out), .rollover_flag(rollover_flag),
        .rollover_val(frame_last), .next_count_out(next_count_out)
    );

    assign control = count_out[8 - STAGE];

    // Twiddle address tracks count_out (registered from next_count_out so the
    // LUT is driven straight from a flop).
    logic [8:0]  twiddle_addr;
    logic [31:0] twiddle;

    always_ff @(posedge CLK or negedge nRST) begin
        if (!nRST)
            twiddle_addr <= '0;
        else if (sample_valid)
            twiddle_addr <= (next_count_out[8:0] & ADDR_ADJUST) << STAGE;
    end

    twiddle_lookup lut(.addr(twiddle_addr), .twiddle(twiddle));

    // ------------------------------------------------------------------
    // Butterfly + delay line (the feedback loop)
    // ------------------------------------------------------------------
    // Delay line word: {re[16:0], im[16:0]}. In delay mode it holds a raw
    // sample (sign-extended); in butterfly mode it receives the difference.
    logic [33:0] feedback, next_delay_sample;
    logic [16:0] sum_re, sum_im, diff_re, diff_im;
    logic [31:0] sum;

    adder add_re (.a(sample[31:16]),    .b(feedback[32:17]), .sel(1'b1), .total(sum_re));
    adder add_im (.a(sample[15:0]),     .b(feedback[15:0]),  .sel(1'b1), .total(sum_im));
    adder sub_re (.a(feedback[32:17]),  .b(sample[31:16]),   .sel(1'b0), .total(diff_re));
    adder sub_im (.a(feedback[15:0]),   .b(sample[15:0]),    .sel(1'b0), .total(diff_im));

    assign sum = {sum_re[16:1], sum_im[16:1]};

    always_comb begin
        if (!sel)
            next_delay_sample = '0;
        else if (control)
            next_delay_sample = {diff_re, diff_im};
        else
            next_delay_sample = {sample[31], sample[31:16], sample[15], sample[15:0]};
    end

    delay_line #(.STAGE(STAGE), .WIDTH(34)) delays(
        .CLK(CLK), .nRST(nRST), .sample(next_delay_sample),
        .shift_en(sample_valid), .out(feedback)
    );

    // ------------------------------------------------------------------
    // P1: output select
    // ------------------------------------------------------------------
    logic        p1_valid, p1_rot;
    logic [31:0] p1_byp;
    logic [33:0] p1_diff;
    logic [31:0] p1_tw;

    always_ff @(posedge CLK or negedge nRST) begin
        if (!nRST) begin
            p1_valid <= 1'b0;
            primed   <= 1'b0;
        end else begin
            p1_valid <= sample_valid && (sel ? primed : 1'b1);
            if (sample_valid && count_out == MIDPOINT)
                primed <= 1'b1;
        end
    end

    always_ff @(posedge CLK) begin
        if (sample_valid) begin
            p1_rot  <= sel && !control;  // delayed difference needs rotation
            p1_byp  <= sel ? sum : sample;
            p1_diff <= feedback;
            p1_tw   <= twiddle;
        end
    end

    // ------------------------------------------------------------------
    // P2: products
    // ------------------------------------------------------------------
    logic signed [16:0] d_re, d_im;
    logic signed [15:0] w_re, w_im;
    assign d_re = p1_diff[33:17];
    assign d_im = p1_diff[16:0];
    assign w_re = p1_tw[31:16];
    assign w_im = p1_tw[15:0];

    logic               p2_valid, p2_rot;
    logic        [31:0] p2_byp;
    logic signed [32:0] p2_rr, p2_ii, p2_ri, p2_ir;

    always_ff @(posedge CLK or negedge nRST) begin
        if (!nRST)
            p2_valid <= 1'b0;
        else
            p2_valid <= p1_valid;
    end

    always_ff @(posedge CLK) begin
        if (p1_valid) begin
            p2_rot <= p1_rot;
            p2_byp <= p1_byp;
            p2_rr  <= d_re * w_re;
            p2_ii  <= d_im * w_im;
            p2_ri  <= d_im * w_re;
            p2_ir  <= d_re * w_im;
        end
    end

    // ------------------------------------------------------------------
    // P3: round/saturate each product (same as multiplier.sv)
    // ------------------------------------------------------------------
    function automatic logic signed [15:0] round_sat(input logic signed [32:0] p);
        logic signed [32:0] r;
        r = (p + 33'sd32768) >>> 16;
        if (r > 33'sd32767)
            return 16'sh7FFF;
        else if (r < -33'sd32768)
            return 16'sh8000;
        else
            return r[15:0];
    endfunction

    logic        p3_valid, p3_rot;
    logic [31:0] p3_byp;
    logic [15:0] p3_rr, p3_ii, p3_ri, p3_ir;

    always_ff @(posedge CLK or negedge nRST) begin
        if (!nRST)
            p3_valid <= 1'b0;
        else
            p3_valid <= p2_valid;
    end

    always_ff @(posedge CLK) begin
        if (p2_valid) begin
            p3_rot <= p2_rot;
            p3_byp <= p2_byp;
            p3_rr  <= round_sat(p2_rr);
            p3_ii  <= round_sat(p2_ii);
            p3_ri  <= round_sat(p2_ri);
            p3_ir  <= round_sat(p2_ir);
        end
    end

    // ------------------------------------------------------------------
    // P4: complex combine, output
    // ------------------------------------------------------------------
    logic [15:0] rot_re, rot_im;
    assign rot_re = p3_rr - p3_ii;
    assign rot_im = p3_ri + p3_ir;

    // `out` keeps a reset: it is a module output and the downstream stage
    // registers it on valid only, so this costs nothing in DSP packing.
    always_ff @(posedge CLK or negedge nRST) begin
        if (!nRST) begin
            out       <= '0;
            out_valid <= 1'b0;
        end else begin
            out_valid <= p3_valid;
            if (p3_valid)
                out <= p3_rot ? {rot_re, rot_im} : p3_byp;
        end
    end

endmodule
