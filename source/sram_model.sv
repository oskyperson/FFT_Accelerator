`timescale 1ns / 10ps

module sram_model #(
    parameter int ADDR_WIDTH = 10,
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

   
    logic [DATA_WIDTH-1:0] mem [0:(1<<ADDR_WIDTH)-1];

    always_ff @(posedge clk) begin
        if (wen[0]) mem[write_addr][7:0]   <= write_data[7:0];
        if (wen[1]) mem[write_addr][15:8]  <= write_data[15:8];
        if (wen[2]) mem[write_addr][23:16] <= write_data[23:16];
        if (wen[3]) mem[write_addr][31:24] <= write_data[31:24];
        write_valid <= |wen; 
    end

    always_ff @(posedge clk) begin
        if (ren) begin
            read_data <= mem[read_addr];
        end
        read_valid <= ren;
    end
    //fills with 0
    initial begin
        for (int i = 0; i < (1<<ADDR_WIDTH); i++) begin
            mem[i] = '0;
        end
    end

endmodule