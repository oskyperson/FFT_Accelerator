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
    
    logic [31:0] twiddle, feedback_sample, rotation;
    logic shift_en;

    logic rollover_flag;

    localparam [8:0] ADDR_ADJUST = (9'd1 << (8 - STAGE)) - 9'd1;
    assign twiddle_addr = (count_out & ADDR_ADJUST) << STAGE;

    logic control; //1 for math mode 0 for delay mode
    assign control = count_out[8 - STAGE];

    /*always_comb begin
        math_sample = '0;
        delay_sample = '0;
        if(control) begin
            math_sample = sample;
            shift_en = 1'b0;
        end else begin
            delay_sample = sample;
            shift_en = sample_valid;
        end
    end*/

    always_comb begin
        shift_en = sample_valid;    
        delay_sample = control_d ? rotation : sample;
    end

    logic [31:0] sample_d;
    logic sample_valid_d, control_d;

    logic [31:0] math_sum;
    logic math_valid;

    always_ff @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            sample_d <= '0;
            sample_valid_d <= '0;
            control_d <= '0;
        end else begin
            sample_d <= sample;
            sample_valid_d <= sample_valid;
            control_d <= control;
        end
    end

    assign out = control_d ? math_sum : feedback_sample;
    assign out_valid = control_d ? math_valid : sample_valid_d;

    math #(.STAGE(STAGE)) stage (.clk(clk), .n_rst(n_rst), .sample(sample), .sample_valid(sample_valid),
        .feedback(feedback_sample), .twiddle(twiddle), .sum(math_sum), .next_valid(math_valid), .rotation(rotation)
    );

    delay_line #(.STAGE(STAGE)) delays (.clk(clk), .n_rst(n_rst), .sample(delay_sample), .shift_en(shift_en), .out(feedback_sample));

    flex_counter #(.SIZE(9)) count (.clk(clk), .n_rst(n_rst), .clear(1'b0), .count_enable(sample_valid),
        .count_out(count_out), .rollover_flag(rollover_flag)
    );

    twiddle_lookup lookup (.addr(twiddle_addr), .twiddle(twiddle));
    
endmodule