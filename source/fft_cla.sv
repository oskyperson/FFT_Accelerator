`timescale 1ns / 10ps

module fft_cla (
    input [31:0] a,
    input [31:0] b,
    input cin,
    output [31:0] sum,
    output cout
);
    logic [31:0] g [0:5];
    logic [31:0] p [0:5];
    logic [32:0] c;

    // Stage 0: Initial Generate and Propagate
    genvar i;
    generate
        for (i = 0; i < 32; i = i + 1) begin : stage0
            assign g[0][i] = a[i] & b[i];
            assign p[0][i] = a[i] ^ b[i];
        end
    endgenerate

    // Prefix Tree Stages 1 through 5
    genvar stage, j;
    generate
        for (stage = 1; stage <= 5; stage = stage + 1) begin : prefix_stages
            localparam int stride = 1 << (stage - 1);
            for (j = 0; j < 32; j = j + 1) begin : nodes
                if (j < stride) begin
                    assign g[stage][j] = g[stage-1][j];
                    assign p[stage][j] = p[stage-1][j];
                end else begin
                    assign g[stage][j] = g[stage-1][j] | (p[stage-1][j] & g[stage-1][j-stride]);
                    assign p[stage][j] = p[stage-1][j] & p[stage-1][j-stride];
                end
            end
        end
    endgenerate

    assign c[0] = cin;
    generate
        for (i = 0; i < 32; i = i + 1) begin : carry_assign
            if (i == 0) begin
                assign c[1] = g[0][0] | (p[0][0] & cin);
            end else begin
                assign c[i+1] = g[5][i] | (p[5][i] & cin);
            end
        end
    endgenerate

    // Final Sum Generation
    generate
        for (i = 0; i < 32; i = i + 1) begin : sum_gen
            assign sum[i] = (a[i] ^ b[i]) ^ c[i];
        end
    endgenerate

    assign cout = c[32];
endmodule
