`timescale 1ns / 10ps

module sram_model #(
    parameter int ADDR_WIDTH = 32,
    parameter int DATA_WIDTH = 32
)(
    input logic clk,
    input logic n_rst, 
    
    input logic [3:0] wen,
    input logic [ADDR_WIDTH-1:0] write_addr,
    input logic [DATA_WIDTH-1:0] write_data,
    output logic write_valid,

    input logic ren,
    input logic [ADDR_WIDTH-1:0] read_addr,
    output logic [DATA_WIDTH-1:0] read_data,
    output logic read_valid
);

    logic [DATA_WIDTH-1:0] mem [logic [ADDR_WIDTH-1:0]];

    always_ff @(posedge clk, negedge n_rst) begin
        if(!n_rst) begin
            mem.delete();
            write_valid <= '0;
            read_valid <= '0;
            read_data <= '0;
        end else begin
            if (wen[0]) mem[write_addr][7:0] = write_data[7:0];
            if (wen[1]) mem[write_addr][15:8] = write_data[15:8];
            if (wen[2]) mem[write_addr][23:16] = write_data[23:16];
            if (wen[3]) mem[write_addr][31:24] = write_data[31:24];
            write_valid <= |wen; 

            if (ren) begin
                if (mem.exists(read_addr)) begin
                    read_data <= mem[read_addr];
                end else begin
                    read_data <= 'x;
                end
            end
            read_valid <= ren;
        end
    end



endmodule
