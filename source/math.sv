module math #(
    parameter STAGE = 1
)(
    input logic clk,
    input logic n_rst,
    input logic [31:0] sample,
    input logic sample_valid,
    input logic [31:0] feedback,
    //input logic feedback_valid,
    input logic [31:0] twiddle,
    //input logic count_out,
    output logic [31:0] sum,
    output logic next_valid,
    output logic [31:0] rotation
);

    logic [31:0] sample_reg, feedback_reg;

    logic[33:0] diff;
    logic [16:0] sum_im, sum_re;
    assign sum[15:0] = sum_im[16:1];
    assign sum[31:16] = sum_re[16:1];
    adder img (.a(sample_reg[15:0]), .b(feedback_reg[15:0]), .sel(1'b1), .total(sum_im)); 
    adder rl (.a(sample_reg[31:16]), .b(feedback_reg[31:16]), .sel(1'b1), .total(sum_re)); 

    adder img_sub (.a(sample_reg[15:0]), .b(feedback_reg[15:0]), .sel(1'b0), .total(diff[16:0]));
    adder real_sub (.a(sample_reg[31:16]), .b(feedback_reg[31:16]), .sel(1'b0), .total(diff[33:17]));

    logic [15:0] re_product, im_product, ri_product, ir_product;

    multiplier multr (.diff(diff[16:0]), .twiddle(twiddle[15:0]), .total(re_product)); // Karatsuba 
    multiplier multi (.diff(diff[33:17]), .twiddle(twiddle[31:16]), .total(im_product));
    multiplier multri (.diff(diff[16:0]), .twiddle(twiddle[31:16]), .total(ri_product));
    multiplier multir (.diff(diff[33:17]), .twiddle(twiddle[15:0]), .total(ir_product));
    
    logic [16:0] temp_im, temp_re;
    assign rotation[15:0] = temp_im[16:1];
    assign rotation[31:16] = temp_re[16:1];

    adder re_math (.a(im_product), .b(re_product), .sel(1'b0), .total(temp_re));
    adder im_math (.a(ri_product), .b(ir_product), .sel(1'b1), .total(temp_im));

    always_ff @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            sample_reg <= '0;
            feedback_reg <= '0;
            next_valid <= '0;
        end else if (sample_valid) begin
            sample_reg <= sample;
            feedback_reg <= feedback;
            next_valid <= 1'b1;
        end else begin
            next_valid <= 1'b0;
            /*sample_reg <= '0;
            feedback_reg <= '0;*/
        end
    end


endmodule