module delay_line #(
    parameter STAGE = 1;
)(
    input logic clk,
    input logic n_rst,
    input logic [31:0] sample,
    input logic shift_en,
    //input logic valid,
    output logic [31:0] out,
    //output logic valid_out
);
    localparam DEPTH = ; //TODO delay depth calculations

    logic [DEPTH-1:0] shift_next, shift [31:0];
    //logic [DEPTH-1:0] pipe, pipe_next;

    always_ff @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            shift <= '0; 
        end else begin
            shift <= shift_next;
        end
    end

    always_comb begin
        if(shift_en) begin
            shift_next = {shift_next[DEPTH-2:0], sample};
        end else 
            shift_next = shift;
    end



endmodule