module delay_line #(
    parameter STAGE = 1,
    parameter WIDTH = 32
)(
    input logic clk,
    input logic n_rst,
    input logic [WIDTH-1:0] sample,
    input logic shift_en,
    output logic [WIDTH-1:0] out
);
    localparam int DEPTH = 1 << (8 - STAGE);

    logic [WIDTH-1:0] shift [DEPTH];

    always_ff @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            for (int i = 0; i < DEPTH; i++)
                shift[i] <= '0;
        end else if (shift_en) begin
            for (int j = DEPTH-1; j > 0; j--)
                shift[j] <= shift[j-1];
            shift[0] <= sample;
        end
    end

    assign out = shift[DEPTH-1];
   
    /*logic [8:0] ptr;

    always_ff @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            ptr <= '0;
        end else if (shift_en) begin
            if(ptr == DEPTH - 1)
                ptr <= '0;
            else 
                ptr <= ptr + 1;
        end
    end

    generate
        if(DEPTH >= 128) begin : BRAM_INFER
            (* ram_style = "block" *) logic [31:0] mem [0:DEPTH-1];
            logic [31:0] sample_d;
            logic [8:0] wptr_d;
            logic wen_d;

            
            always_ff @(posedge clk or negedge n_rst) begin
                if(!n_rst) begin
                    wen_d <= 1'b0;
                    wptr_d <= '0;
                    sample_d <= '0;
                end else begin
                    sample_d <= sample;
                    wptr_d <= ptr;
                    wen_d <= shift_en;    
                end
            end

            always_ff @(posedge clk) begin
                if(wen_d)
                    mem[wptr_d] <= sample_d;
            end

            assign out = mem[ptr];  
        end else begin : FF_INFER
            logic [31:0] shift [DEPTH];

            always_ff @(posedge clk or negedge n_rst) begin
                if (!n_rst) begin
                    for (int i = 0; i < DEPTH; i++) begin
                        shift[i] <= '0;
                    end
                end else if (shift_en) begin
                    for (int j = DEPTH-1; j > 0; j--)
                        shift[j] <= shift[j-1];
                    shift[0] <= sample;
                    
                end
            end

            assign out = shift[DEPTH-1];
        end

    endgenerate*/


endmodule
