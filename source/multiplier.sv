`timescale 1ns / 10ps

module multiplier(
    input logic signed [16:0] diff,
    input logic signed [15:0] twiddle,
    output logic [15:0] total
    //output logic overflow
);
    localparam signed [15:0] MAX = 16'sh7FFF;
    localparam signed [15:0] MIN = 16'sh8000;

    logic signed [32:0] product;
    logic signed [32:0] shifted;
    logic signed [32:0] rounded;

    always_comb begin
        product = diff * twiddle;
        rounded = product + (33'sd32768);
        shifted = rounded >>> 16;
        //shifted = product >>> 15;

        if (shifted > MAX)
            total = MAX;
        else if (shifted < MIN)
            total = MIN;
        else
            total = shifted[15:0];
    end
endmodule