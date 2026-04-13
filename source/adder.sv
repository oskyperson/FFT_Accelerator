module adder(
    input logic signed [15:0] a,
    input logic signed [15:0] b,
    input logic sel,
    output logic signed [16:0] total
    //output logic overflow
);
    assign total = (sel) ? (a + b) : (a - b); //TODO addition resizing


    
    //assign overflow = (a[15] == b[15]) && (total[15] != a[15]);

endmodule   