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
    logic [9:0] valid_stream, rollover_flag;

    logic [9:0] size_reg;

    assign sample_stream[0] = sample;
    assign valid_stream[0] = valid;

    //assign out = sample_stream[9];
    //assign out_valid = valid_stream[9];

    

    always_ff @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            size_reg <= '0;
        end else if (load_size)
            size_reg <= frame_size;
    end

    logic temp1_v;
    logic [31:0] temp1;

    logic [31:0] out_internal;
    logic out_valid_internal;

    always_ff @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            temp1 <= '0;
            temp1_v <= '0;
            out_internal <= '0;
            out_valid_internal <= '0;
        end else begin
            if(valid_stream[9]) begin
                temp1 <= sample_stream[9];
                temp1_v <= 1'b1;
                out_valid_internal <= temp1_v;
                out_internal <= temp1;
            end else begin
                out_valid_internal <= '0;
                out_internal <= '0;
            end
        end
    end

    assign out = out_internal;
    assign out_valid = out_valid_internal;

    //logic temp1_v;
    //logic [31:0] temp1;


    /*always_ff @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            temp1 <= '0;
            temp1_v <= '0;
        end else begin
            if(valid_stream[9]) begin
                temp1 <= sample_stream[9];
                temp1_v <= 1'b1;
                out_valid <= temp1_v;
                out <= temp1;
            end else begin
                out_valid <= '0;
                out <= '0;
            end
        end
    end*/


    logic [9:0] out_count;
    logic frame_active;

    /*always_ff @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            out_count <= '0;
            frame_active <= '0;
        end else begin
            if (valid)
                frame_active <= 1'b1;
            if (frame_active && valid_stream[9]) begin
                if (out_count == size_reg - 1) begin
                    out_count <= '0;
                    frame_active <= '0;
                end else begin
                    out_count <= out_count + 1;
                end
            end
        end
    end

    assign out  = sample_stream[9];
    assign out_valid = valid_stream[9] & frame_active;*/

    genvar i;
    generate
        for(i = 0; i < 9; i = i + 1) begin : butterfly_units
            fft_stage #(i) stage (.clk(clk), .n_rst(n_rst), .sample(sample_stream[i]), .sample_valid(valid_stream[i]),
                .out(sample_stream[i+1]), .out_valid(valid_stream[i+1]), .sel(size_reg > (9'd1 << (8-i))),
                .frame_size(size_reg), .rollover_flag(rollover_flag[i])
            );
        end        
    endgenerate






endmodule