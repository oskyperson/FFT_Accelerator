`timescale 1ns / 10ps

module fft_stage #(
    parameter STAGE = 1
)(
    input logic clk,
    input logic n_rst,
    input logic [31:0] sample,
    input logic sample_valid,
    output logic [31:0] out,
    output logic out_valid,

    input logic sel,
    input logic [9:0] frame_size,
    output logic rollover_flag

          
);

    logic [8:0] twiddle_addr, twiddle_addr_next;
    logic [31:0] delay_sample, next_delay_sample, next_out;
    logic [9:0] count_out, next_count_out;
    
    logic [31:0] twiddle, feedback_sample, rotation, delay_sample_d, twiddle_reg;
    logic shift_en, primed;

    //logic rollover_flag;

    localparam [8:0] ADDR_ADJUST = (9'd1 << (8 - STAGE)) - 9'd1;
    //assign twiddle_addr = (count_out & ADDR_ADJUST) << (STAGE);

    


    logic control; //1 for math mode 0 for delay mode

    logic [31:0] math_sum;

    localparam bit [10:0] MIDPOINT = (10'd1 << (8 - STAGE)) - 10'd1;

    always_comb begin
        if(!sel) begin
            next_delay_sample = '0;
            next_out = sample;
        end else if(control) begin
            next_delay_sample = rotation;
            next_out = math_sum;
        end else begin
            next_delay_sample = sample;
            next_out = feedback_sample;
        end
    end

    delay_line #(.STAGE(STAGE)) delays(.clk(clk), .n_rst(n_rst), .sample(next_delay_sample), 
        .shift_en(sample_valid), .out(feedback_sample)
    );

    logic next_primed;
    assign next_primed = primed || (sample_valid && (count_out == MIDPOINT));

    always_ff @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            out <= '0;
            out_valid <= '0;
            primed <= '0;
        end else if(sample_valid) begin
            out <= next_out;
            out_valid <= sel ? primed : 1'b1;
            //out_valid <= sel ? next_primed : 1'b1;
            //primed <= next_primed;
            if(count_out == MIDPOINT) begin
                primed <= 1'b1;
            end
        end else begin
            out_valid <= 1'b0;
        end
    end

    
    twiddle_lookup lut(.addr(twiddle_addr), .twiddle(twiddle)); //NEW
    //NEW
    assign twiddle_addr_next = (next_count_out[8:0] & ADDR_ADJUST) << (STAGE);

    //NEW
    always_ff @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            twiddle_reg <= '0;
            twiddle_addr <= '0;
        end else if (sample_valid) begin
            twiddle_reg <= twiddle;
            twiddle_addr <= twiddle_addr_next;
            
        end
    end


    assign control = count_out[8 - STAGE]; 

    flex_counter count(
        .clk(clk), .n_rst(n_rst), .clear(1'b0), .count_enable(sample_valid), //NOTE: future AXI integration
        .count_out(count_out), .rollover_flag(rollover_flag), .rollover_val(frame_size - 1'd1), .next_count_out(next_count_out)
    );


    math #(.STAGE(STAGE)) mather (.sample(sample),
        .feedback(feedback_sample), .twiddle(twiddle), .sum(math_sum), .rotation(rotation)
    );

endmodule
