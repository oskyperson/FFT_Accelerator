module delay_line #(
    parameter STAGE = 1
)(
    input logic clk,
    input logic n_rst,
    input logic [31:0] sample,
    input logic shift_en,
    //input logic valid,
    output logic [31:0] out
    //output logic valid_out
);
    localparam DEPTH = 1 << STAGE; //TODO delay depth calculations

    logic [31:0] shift [DEPTH-1:0];
    logic [31:0] shift_next [DEPTH-1:0];
    //logic [DEPTH-1:0] pipe, pipe_next;

    always_ff @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin 
            for(i = 0; i < DEPTH; i++)
                shift[i] <= '0;
        end else begin
            shift <= shift_next;
        end
    end

    always_comb begin
        shift_next = shift;          
        if (shift_en) begin
            for (int j = DEPTH-1; j > 0; j--) begin
                shift_next[j] = shift[j-1];
            end
            shift_next[0] = sample;
        end
    end

    assign out = shift[DEPTH-1];

endmodule