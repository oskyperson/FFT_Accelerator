module adder(
    input logic signed [15:0] a,
    input logic signed [15:0] b,
    input logic sel,
    output logic signed [16:0] total
    //output logic overflow
);
    logic signed [16:0] a_big, b_big;
    assign a_big = {a[15], a};
    assign b_big = {b[15], b};
    assign total = (sel) ? (a_big + b_big) : (a_big - b_big); 


    
    //assign overflow = (a[15] == b[15]) && (total[15] != a[15]);

endmodule   