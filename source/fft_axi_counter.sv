`timescale 1ns / 10ps

module fft_axi_counter #(
    // parameters
    parameter WRITE_OR_READ = 1 // write = 1 read = 0
) (
    input logic clk, n_rst,
    input logic [9:0] len, 
    input logic ready, valid, resp,
    input logic [3:0] addr, // 0 - 15 for each config reg
    output logic last,
    output logic [9:0] i,
    output logic [15:0] busy // indicates which of 16 config regs is busy
);

logic [9:0] next_i;
logic [15:0] next_busy;

always_ff @ (posedge clk, negedge n_rst) begin
    if (!n_rst) begin
        i <= '0;
        busy = '0;
    end else begin
        i <= next_i;
        busy <= next_busy;
    end
end

always_comb begin : counter_logic
    next_i = i;
    last = 0;
    next_busy = busy;

    // count up condition
    if (ready & valid & !resp) begin
        next_i = i + 1;
        next_busy[addr] = 1;
        if (i == len) begin
            next_i = 1;
            last = 1;
            next_busy[addr] = 0;
        end
    end

    // clear condition
    if (!ready && WRITE_OR_READ || !valid && !WRITE_OR_READ) begin
        next_i = 0;
        next_busy[addr] = 0;
    end
end

endmodule

