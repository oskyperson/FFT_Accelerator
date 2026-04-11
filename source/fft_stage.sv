module fft_stage #(
    parameter STAGE = 1
)(
    input logic clk,
    input logic n_rst,
    input logic [31:0] sample,
    input logic sample_valid,
    output logic [31:0] out,
    output logic out_valid

);
    logic [8:0] twiddle_addr;
    logic [31:0] math_sample, delay_sample;
    logic [8:0] count_out;

    logic [31:0] twiddle, feedback_sample;
    logic shift_en;

    logic rollover_flag;

    //TODO delay line logic is broken

    logic control; //1 for math mode; 0 for delay mode
    assign control = count_out[STAGE];

    always_comb begin
        math_sample = '0;
        delay_sample = '0;
        if(control) begin
            math_sample = sample;
            shift_en = 1'b0;
        end else begin
            delay_sample = sample;
            shift_en = sample_valid;
        end
    end

    math #(.stage(STAGE)) stage (.clk(clk), .n_rst(n_rst), .sample(math_sample), .sample_valid(sample_valid),
        .feedback(feedback_sample), .twiddle(twiddle), .sum(out), .next_valid(out_valid),
    );

    delay_line #(.stage(STAGE)) delays (.clk(clk), .n_rst(n_rst), .sample(delay_sample), .shift_en(shift_en), .out(feedback_sample));

    flex_counter #(.SIZE(9)) count (.clk(clk), .n_rst(n_rst), .clear(1'b0), .count_enable(sample_valid),
        .count_out(count_out), .rollover_flag(rollover_flag)
    );

    twiddle_lookup lookup (.addr(count_out[STAGE-i:0] << (8-STAGE)), .twiddle(twiddle));
    
endmodule