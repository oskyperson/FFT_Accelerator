module multiplier(
    input logic [15:0] a,
    input logic [15:0] b,
    output logic [15:0] total,
    output logic overflow
);
    localparam signed [15:0] MAX = 16'sh7FFF;
    localparam signed [15:0] MIN = 16'sh8000;
    
    logic [31:0] temp;
    always_comb begin
        temp = a * b;
        total = temp >>> 15;
    end

endmodule