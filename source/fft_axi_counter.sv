`timescale 1ns / 10ps

module fft_axi_counter #(parameter SIZE = 10) (
    input logic clk, n_rst, clear, count_enable,
    input logic [SIZE - 1:0] rollover_val,
    output logic [SIZE - 1:0] count_out,
    output logic rollover_flag
);

logic [SIZE - 1:0] next_c;
logic next_rflag;

always_ff @ (posedge clk, negedge n_rst) begin : counter 
    if(!n_rst) begin
        count_out <= '0;
        rollover_flag <= 0;
    end else begin
        count_out <= next_c;
        rollover_flag <= next_rflag;
    end
end

always_comb begin : next_count
    next_rflag = rollover_flag;
    next_c = count_out;

    if(clear) begin
        next_c = '0;
        next_rflag = 0;
    end else if (count_enable) begin
        next_rflag = 0;
        next_c = count_out + 1;
        if(next_c == rollover_val) begin
            next_rflag = 1;
        end
        if(count_out >= rollover_val) begin
            next_c = 1;
        end
    end
end

endmodule
