module bufferfly #(
    parameter STAGE = 1;
)(
    input logic clk,
    input logic n_rst,
    input logic [31:0] sample,
    input logic sample_valid,
    input logic [31:0] feedback,
    input logic feedback_valid,
    input logic twiddle,
    input logic count_out,
    output logic [31:0] sum,
    output logic next_valid,
    output logic [31:0] rotation
);

    logic [31:0] sample_reg, feedback_reg, diff;

    logic control; //1 for math mode; 0 for delay mode
    assign control = count_out[STAGE];

    adder img (.a(sample_reg[15:0], .b(feedback_reg[15:0]), .sel(1'b0), .sum(sum[15:0])));
    adder real (.a(sample_reg[31:16]), .b(feedback_reg[31:16]), .sel(1'b0), .sum(sum[31:16]));

    adder img_sub (.a(sample_reg[15:0], .b(feedback_reg[15:0]), .sel(1'b1), .sum(diff[15:0])));
    adder real_sub (.a(sample_reg[31:16]), .b(feedback_reg[31:16]), .sel(1'b1), .sum(diff[31:16]));

    multiplier mult (.a(diff), .b(twiddle), .total(rotation));


    always_ff @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
        end else if (sample_valid & feedback_valid) begin
            sample_reg = sample;
            feedback_reg = feedback;
        end
    end

    always_comb begin
        rotation = diff * twiddle;
    end


endmodule