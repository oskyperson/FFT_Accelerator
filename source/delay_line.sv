module delay_line #(
    parameter STAGE = 1
)(
    input logic clk,
    input logic n_rst,
    input logic [31:0] sample,
    input logic shift_en,
    output logic [31:0] out
);
    localparam int DEPTH = 1 << (8 - STAGE);

    logic [31:0] shift [DEPTH];

    always_ff @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            for (int i = 0; i < DEPTH; i++)
                shift[i] <= '0;
        end else if (shift_en) begin
            for (int j = DEPTH-1; j > 0; j--)
                shift[j] <= shift[j-1];
            shift[0] <= sample;
        end
    end

    assign out = shift[DEPTH-1];

endmodule