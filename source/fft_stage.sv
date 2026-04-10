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

    butterfly #(.stage(STAGE)) stage (.clk(clk), .n_rst(n_rst), .sample(math_sample), .sample_valid(sample_valid),
        .feedback(feedback_sample), .twiddle(twiddle), .sum(out), .next_valid(out_valid),
    );

    delay_line #(.stage(i)) delays (.clk(clk), .n_rst(n_rst), .sample(delay_sample), .shift_en(shift_en), .out(feedback_sample));

    flex_counter #(.SIZE(8)) count (.clk(clk), .n_rst(n_rst), .clear(1'b0), .count_enable(sample_valid), .rollover_val(8'd512), 
        .count_out(count_out), .rollover_flag()
    );

    twiddle_lookup lookup (.addr(twiddle_addr), .twiddle(twiddle));
    
endmodule