`timescale 1ns / 10ps

module math #(
    parameter STAGE = 1
)(
    input logic clk,
    input logic n_rst,
    input logic [31:0] sample,
    //input logic sample_valid,
    input logic [31:0] feedback,
    //input logic feedback_valid,
    input logic [31:0] twiddle,
    //input logic count_out,
    output logic [31:0] sum,
    //output logic next_valid,
    output logic [31:0] rotation
);

    logic[33:0] diff;

    logic [31:0] twiddle_reg;

    logic [16:0] sum_im, sum_re;
    
    adder img_t (.a(sample[15:0]), .b(feedback[15:0]), .sel(1'b1), .total(sum_im)); 
    adder rl_t (.a(sample[31:16]), .b(feedback[31:16]), .sel(1'b1), .total(sum_re)); 
    adder img_sub (.b(sample[15:0]), .a(feedback[15:0]), .sel(1'b0), .total(diff[16:0]));
    adder real_sub (.b(sample[31:16]), .a(feedback[31:16]), .sel(1'b0), .total(diff[33:17]));

    logic [16:0] img, rl;
    logic [33:0] diff_reg;
    always_ff@(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            img <= '0;
            rl <= '0;
            diff_reg <= '0;
        end else begin
            img <= sum_im;
            rl <= sum_re;
            diff_reg <= diff;
            twiddle_reg <= twiddle;
        end
    end

    
    assign sum[15:0] = img[16:1];
    assign sum[31:16] = rl[16:1];


    logic [15:0] re_product, im_product, ri_product, ir_product;

    multiplier multi (.diff(diff_reg[16:0]), .twiddle(twiddle_reg[15:0]), .total(im_product)); // Karatsuba 
    multiplier multr (.diff(diff_reg[33:17]), .twiddle(twiddle_reg[31:16]), .total(re_product));
    multiplier multri (.diff(diff_reg[16:0]), .twiddle(twiddle_reg[31:16]), .total(ri_product));
    multiplier multir (.diff(diff_reg[33:17]), .twiddle(twiddle_reg[15:0]), .total(ir_product));
    
    //logic [16:0] temp_im, temp_re;
    //assign rotation[15:0] = temp_im[15:0];
    //assign rotation[31:16] = temp_re[15:0];
    assign rotation[31:16] = $signed(re_product) - $signed(im_product);
    assign rotation[15:0] = $signed(ri_product) + $signed(ir_product);

    //adder re_math (.a(re_product), .b(im_product), .sel(1'b0), .total(temp_re));
    //adder im_math (.a(ri_product), .b(ir_product), .sel(1'b1), .total(temp_im));

endmodule
