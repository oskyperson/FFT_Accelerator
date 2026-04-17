module fft_core(
    input logic clk,
    input logic n_rst,
    input logic [31:0] sample,
    //input logic start,
    input logic valid,
    output logic [31:0] out,
    output logic out_valid
);  
    logic enable;

    logic [31:0] sample_stream [9:0];
    logic [9:0] valid_stream;

    assign sample_stream[0] = sample;
    assign valid_stream[0] = valid;

    assign out = sample_stream[9];
    assign out_valid = valid_stream[9];

    genvar i;
    generate
        for(i = 0; i < 9; i = i + 1) begin : butterfly_units
            fft_stage #(i) stage (.clk(clk), .n_rst(n_rst), .sample(sample_stream[i]), .sample_valid(valid_stream[i]),
                .out(sample_stream[i+1]), .out_valid(valid_stream[i+1])
            );
        end        
    endgenerate






endmodule