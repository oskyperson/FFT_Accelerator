module fft_core(
    input logic clk,
    input logic n_rst,
    input logic [32:0] sample,
    input logic start,
    input logic valid,
    output logic [32:0] out
    output logic out_valid
);  
    logic enable;
    typedef enum logic {
        IDLE,
        WORKING
    } state_t;

    state_t state, next_state;

    always_ff @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            state <= IDLE;
        end else begin
            state <= next_state;
        end
    end

    always_comb begin
        case(state) 
            IDLE: begin
                next_state = (start) ? WORKING : IDLE;
            end
            WORKING: begin
                //TODO some sort of end detection
            end
        endcase

        case(state)
            IDLE: enable = 0;
            WORKING: enable = 1;
        endcase
    end

    genvar i;
    generate
        for(i = 1; i < 10; i = i + 1) begin : butterfly_units
            butterfly #(.stage(i)) stage (.clk(clk), .n_rst(n_rst), .sample(), .sample_valid(), .feedback(), 
                .feedback_valid(), .twiddle(), .count_out(), .sum(), .next_valid(), .rotation()
            );

            delay_line #(.stage(i)) delays (.clk(clk), .n_rst(n_rst), .sample(), .shift_en(), .out());

            flex_counter count (.clk(clk), .n_rst(n_rst), .clear(1'b0), .count_enable(), .rollover_val(), 
                .count_out(), .rollover_flag()
            );

            twiddle_lookup lookup (.addr(), .twiddle());
        end

        
    endgenerate






endmodule