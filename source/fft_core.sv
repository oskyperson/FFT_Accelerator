`timescale 1ns / 10ps

module fft_core(
    input logic clk,
    input logic n_rst,
    input logic [31:0] sample,
    //input logic start,
    input logic valid,
    output logic [31:0] out,
    output logic out_valid,

    input logic load_size,
    input logic [9:0] frame_size
);  
    logic enable;

    logic [31:0] sample_stream [9:0];
    logic [9:0] valid_stream;

    logic [9:0] size_reg;

    assign sample_stream[0] = sample;
    assign valid_stream[0] = valid;

    assign out = sample_stream[9];
    assign out_valid = valid_stream[9];

    always_ff @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            size_reg <= '0;
        end else if (load_size)
            size_reg <= frame_size;
    end

    logic clear;
    assign clear = load_size || clear_ext;


    genvar i;
    generate
        for(i = 0; i < 9; i = i + 1) begin : butterfly_units
            fft_stage #(i) stage (.clk(clk), .n_rst(n_rst), .sample(sample_stream[i]), .sample_valid(valid_stream[i]),
                .out(sample_stream[i+1]), .out_valid(valid_stream[i+1]), .sel(size_reg > (9'd1 << (8-i))),
                .frame_size(size_reg), .load_size(load_size), .clear(clear)
            );
        end        
    endgenerate






endmodule
