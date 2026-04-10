module adder(
    input logic [15:0] a,
    input logic [15:0] b,
    input logic sel,
    output logic [16:0] total,
    //output logic overflow
);
    assign total = (sel) ? (a + b) : (a - b);
    //assign overflow = (a[15] == b[15]) && (total[15] != a[15]);

endmodule   