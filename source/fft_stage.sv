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
    input logic [9:0] frame_size
          
);

    logic [8:0] twiddle_addr;
    logic [31:0] math_sum_reg, delay_sample, sample_reg, feedback_reg, rotation_reg, next_delay_sample, next_out;
    logic [9:0] count_out;
    logic next_valid, valid_reg, control_delay, out_valid_delay, control_reg;
    
    logic [31:0] twiddle, feedback_sample, rotation, delay_sample_d;
    logic shift_en, primed;

    logic rollover_flag;

    localparam [8:0] ADDR_ADJUST = (9'd1 << (8 - STAGE)) - 9'd1;
    //assign twiddle_addr = (count_out & ADDR_ADJUST) << (STAGE);
    assign twiddle_addr = (count_out & ADDR_ADJUST) << (STAGE);
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

    //logic next_primed;
    //assign next_primed = primed || (sample_valid && (count_out == (1 << (8 - STAGE)) - 1));

    always_ff @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            out <= '0;
            out_valid <= '0;
            primed <= '0;
        end else if(sample_valid) begin
            out <= next_out;
            out_valid <= sel ? primed : 1'b1;
            //primed <= next_primed;
        end else begin
            out_valid <= 1'b0;
        end
    end

    
    twiddle_lookup lut(.addr(twiddle_addr), .twiddle(twiddle));

    assign control = count_out[8 - STAGE]; 

    flex_counter count(
        .clk(clk), .n_rst(n_rst), .clear(1'b0), .count_enable(sample_valid), //NOTE: future AXI integration
        .count_out(count_out), .rollover_flag(rollover_flag), .rollover_val(frame_size - 1'd1)
    );

    always_ff @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            primed <= 1'b0;
        end else if(sample_valid && (count_out == (1 << (8 - STAGE)) - 1))
            primed <= 1'b1;
    end

    math #(.STAGE(STAGE)) mather (.sample(sample),
        .feedback(feedback_sample), .twiddle(twiddle), .sum(math_sum), .rotation(rotation)
    );




    /*always_ff @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            sample_reg <= '0;
            feedback_reg <= '0;
            next_valid <= '0;
            control <= '0;
            valid_reg <= '0;
            rotation_reg <= '0;
            math_sum_reg <= '0;
            control_delay <= '0;
            out_valid_delay <= '0;
            primed <= '0;
        end else begin
            valid_reg <= sample_valid;
            if(sample_valid && (count_out == MIDPOINT)) begin
                primed <= 1'b1;
            end 

            //if(rollover_flag && sample_valid) 
            //    primed <= 1'b1;

            if (sample_valid) begin
                sample_reg <= sample;
                feedback_reg <= feedback_sample;
                delay_sample_d <= delay_sample;
                rotation_reg <= rotation;
                math_sum_reg <= math_sum;
                //out_valid_delay <= (primed) && valid_reg;
                //if(control_reg) begin
                  //  delay_sample <= rotation;
                //end else begin
                 //   delay_sample <= sample;
                //end
                control_delay <= count_out[8 - STAGE];
            end
            
        end
    end

    assign control_reg = count_out[8 - STAGE];

    always_comb begin
       
        if(control_delay) begin
            //out = math_sum;
            delay_sample = rotation;
        end else begin
            //out = feedback_reg;
            delay_sample = sample;
        end

        if(control_delay) begin
            out = math_sum;
        end else
            out = feedback_sample;
    end

    assign shift_en = sample_valid;
    assign out_valid = (primed) && valid_reg;
    //assign out_valid = out_valid_delay;
    math #(.STAGE(STAGE)) stage (.clk(clk), .n_rst(n_rst), .sample(sample_reg),
        .feedback(feedback_reg), .twiddle(twiddle), .sum(math_sum), .rotation(rotation)
    );

    delay_line #(.STAGE(STAGE)) delays (.clk(clk), .n_rst(n_rst), .sample(delay_sample), .shift_en(shift_en), .out(feedback_sample));

    flex_counter count (.clk(clk), .n_rst(n_rst), .clear(1'b0), .count_enable(sample_valid),
        .count_out(count_out), .rollover_flag(rollover_flag)
    );

    twiddle_lookup lookup (.addr(twiddle_addr), .twiddle(twiddle));
    */
    
endmodule
