module multiplier(
    input logic [16:0] diff,
    input logic [15:0] twiddle,
    output logic [15:0] total,
    //output logic overflow
);
    localparam signed [15:0] MAX = 16'sh7FFF;
    localparam signed [15:0] MIN = 16'sh8000;

    logic [32:0] product;
    logic [32:0] bias;
    logic [32:0] snipped_total
    
    assign total = (1 << 14) + temp[31];
    
    always_comb begin
        product = diff * twiddle;
        bias = (33'sd1 << 14) + product[32];
        snipped_total = (product + bias) >>> 15;

        if (shifted > 16'sh7FFF)
            total = 16'sh7FFF;
        else if (shifted < -16'sh8000)
            total = -16'sh8000;
        else
            total = shifted[15:0];
        end
endmodule