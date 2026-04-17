`timescale 1ns / 10ps

module fft_axi_counter #(
    parameter WRITE_OR_READ = 1
) (
    input logic clk, n_rst,
    input logic [9:0] len, 
    input logic ready, valid, resp,
    output logic last,
    output logic [9:0] i
);
    logic [9:0] next_i;

    always_ff @(posedge clk, negedge n_rst) begin : counter_registers
        if (!n_rst) begin
            i <= '0;
        end else begin
            i <= next_i;
        end
    end

    always_comb begin : counter_logic
        next_i = i;
        last = 0;

        // reset if busy
        if ((WRITE_OR_READ && !valid) || (!WRITE_OR_READ && !ready)) begin
            last = 0;
            next_i = 0;
        end 
        // increment with handshakes
        else if (ready && valid) begin
            next_i = i + 1;
            if (i >= len) begin
                next_i = 0;
                last = 1;
            end
        end
        // increment to flush out fft data
        else if (resp) begin
            next_i = i + 1;
            if (i >= len) begin
                next_i = 0;
                last = 1;
            end
        end
    end

endmodule
