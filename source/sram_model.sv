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

    always_ff @(negedge clk, negedge n_rst) begin
        if(!n_rst) begin
            mem.delete();
            write_valid <=  '0;
            read_valid <=  '0;
            read_data <=  '0;
        end else begin
            if (wen[0]) mem[write_addr][7:0] = write_data[7:0];
            if (wen[1]) mem[write_addr][15:8] = write_data[15:8];
            if (wen[2]) mem[write_addr][23:16] = write_data[23:16];
            if (wen[3]) mem[write_addr][31:24] = write_data[31:24];
            
            write_valid <= |wen;
            read_valid <= ren;

            if (ren) begin
                if (|wen && (read_addr == write_addr)) begin
                    read_data[7:0] <= #1000ps wen[0] ? write_data[7:0] : (mem.exists(read_addr) ? mem[read_addr][7:0] : 8'h0);
                    read_data[15:8] <= #1000ps wen[1] ? write_data[15:8] : (mem.exists(read_addr) ? mem[read_addr][15:8] : 8'h0);
                    read_data[23:16] <= #1000ps wen[2] ? write_data[23:16] : (mem.exists(read_addr) ? mem[read_addr][23:16] : 8'h0);
                    read_data[31:24] <= #1000ps wen[3] ? write_data[31:24] : (mem.exists(read_addr) ? mem[read_addr][31:24] : 8'h0);
                end else begin
                    if (mem.exists(read_addr)) begin
                        read_data <= #1000ps mem[read_addr];
                    end else begin
                        read_data <= #1000ps '0;
                    end
                end
            end
        end
    end
    
    // Modified load_mem: Uses an offset to match the start_addr from the TB
    task automatic load_mem(input string filename, input int offset);
        int file;
        int addr;
        logic [DATA_WIDTH-1:0] data;
        file = $fopen(filename, "r");
        addr = offset; // Start loading at the specified address
        if (file) begin
            while (!$feof(file)) begin
                if ($fscanf(file, "%h\n", data) == 1) begin
                    mem[addr] = data;
                    addr++;
                end
            end
            $fclose(file);
        end else begin
            $display("SRAM Error: Could not open %s", filename);
        end
    endtask

    // Modified dump_mem: Correctly iterates through the result range and formats for Python
    task automatic dump_mem(input string filename, input int start_addr, input int total_samples, input int n_per_frame);
        int file;
        int temp = total_samples - n_per_frame;
        logic [DATA_WIDTH-1:0] data;
        shortreal real_val, imag_val;
        file = $fopen(filename, "w");
        
        

        if (file) begin
            for (int i = 0; i < temp; i++) begin
                if (mem.exists(start_addr + i)) begin
                    data = mem[start_addr + i];
                    // Convert fixed-point back to float for the Python SNR script
                    // Assumes 16-bit Real [31:16] and 16-bit Imag [15:0] in Q1.14
                    real_val = shortreal'($signed(data[31:16])) / 16384.0;
                    imag_val = shortreal'($signed(data[15:0])) / 16384.0;
                    $fdisplay(file, "%f %f", real_val, imag_val);
                end else begin
                    $fdisplay(file, "999999999999999 999999999999999");
                end
            end
            $fclose(file);
        end
    endtask
endmodule