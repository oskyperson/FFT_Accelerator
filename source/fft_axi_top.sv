`timescale 1ns / 10ps

module fft_axi_top #(
    // parameters
) (
    input logic clk, n_rst
);

logic [511:0][31:0] in_buf, out_buf;

always_ff @(posedge clk, negedge n_rst) begin
    if (!n_rst) begin
        in_buf = '0;
    end else (wen_to_inbuf) begin
        in_buf[rcount] <= in;
    end
end

always_ff @(posedge clk, negedge n_rst) begin
    if (!n_rst) begin
        out = '0;
    end else begin
        out <= out_buf[wcount];
    end
end

fft_axi_manager manager0 (.*);

// fft core

endmodule
