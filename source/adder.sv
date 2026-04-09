module adder(
    input logic [15:0] a,
    input logic [15:0] b,
    input logic sel,
    output logic [15:0] sum,
    output logic overflow
);
    assign total = a + b;
    assign overflow = (a[15] == b[15]) && (total[15] != a[15]);

endmodule   