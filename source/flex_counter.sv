`timescale 1ns / 10ps

module flex_counter #(
    parameter SIZE = 9
)(
    input logic clk,
    input logic n_rst,
    input logic clear,
    input logic count_enable,
    output logic [SIZE-1:0] count_out,
    output logic rollover_flag
);

    logic [SIZE-1:0] count, next_count;
    logic flag, flag_next;

    //assign rollover_flag = flag;

    //assign count_out = count;

    always_ff @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            count <= '0;
            //flag <= 1;
        end else begin
            count <= next_count;
           // flag <= flag_next;
        end
    end

    always_comb begin
        if(count >= 9'd512) begin
            rollover_flag = 1;
        end else begin
            rollover_flag = 0;
        end

        count_out = count;
    end

    always_comb begin

        /*next_count = count;
        flag_next = 0;
        if(clear) begin
            next_count = 0;
        end else if (count_enable) begin
            if(count >= rollover_val) begin
                next_count = 1;
            end else  begin	
                next_count = count + 1;
            end

        end

        if(next_count >= rollover_val) begin
            flag_next = 1;
        end*/
        next_count = count;
        if(clear) begin
            next_count = 0;
        end else if (count_enable)begin
            if(count >= 9'd512)begin
                next_count = 1;
            end else begin 
                next_count = count + 1;
            end
        end
        
    end


endmodule

