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
    logic [9:0] down_count, next_down;
    logic [9:0] up_count, next_up;
    logic is_zero, is_one;

    assign is_zero = ~(|down_count);
    assign is_one  = (down_count == 10'd1);

    assign i = up_count;

    always_ff @(posedge clk, negedge n_rst) begin : counter_registers
        if (!n_rst) begin
            down_count <= '0;
            up_count <= '0;
        end else begin
            down_count <= next_down;
            up_count <= next_up;
        end
    end

    always_comb begin : counter_logic
        next_down = down_count;
        next_up = up_count;
        last = 1'b0;

        if ((WRITE_OR_READ && !ready) || (!WRITE_OR_READ && !valid)) begin
            next_down = len;
            next_up = 10'd0;
        end 
        else if (ready && valid && !resp) begin
            if (is_zero) begin
                next_down = len;
                next_up = 10'd0;
                last = 1'b1;
            end else begin
                next_down = down_count - 10'd1;
                next_up = up_count + 10'd1;
                
                if (is_one) begin
                    last = 1'b1;
                end
            end
        end
    end

endmodule
