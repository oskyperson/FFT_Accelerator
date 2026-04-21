`timescale 1ns / 10ps
/* verilator coverage_off */

// -----------------------------------------------------------------------------
//                 
//
//
//
//
//
//
//
//
//
//                      IF YOU USE THIS FIND REPLACE ALL FILE PATHS WITH UR ID
//                      SET THE NUM VARIABLE TO EITHER 1 OR 2 FOR NUMBER OF FRAMES
//
//
//
//
//
//
//
//
//
//
//
//
// -------------------------------------------------------------------------------

module tb_fft_core ();
    integer num;
    initial begin
        num = 1;
    end

    localparam CLK_PERIOD = 15ns;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars;
    end

    logic clk, n_rst;

    logic [31:0] sample, out;
    logic start, valid, out_valid;

    logic [8:0] frame_size;
    logic load_size;

    fft_core dut (.clk(clk), .n_rst(n_rst), .sample(sample), .valid(valid), 
        .out(out), .out_valid(out_valid), .frame_size(frame_size), .load_size(load_size)
    );
    integer p;
    // clockgen
    always begin
        clk = 0;
        #(CLK_PERIOD / 2.0);
        clk = 1;
        #(CLK_PERIOD / 2.0);
    end

    task reset_dut;
    begin
        n_rst = 0;
        @(posedge clk);
        @(posedge clk);
        @(negedge clk);
        p = 0;
        n_rst = 1;
        valid = '0;
        sample = '0;
        start = 0;
        @(posedge clk);
        @(posedge clk);
    end
    endtask

    task stream_frame(
        input logic [15:0] re,
        input logic [15:0] im
    );
    begin
        @(negedge clk);
        valid = 1'b1;
        sample = {re, im};
    end

    endtask

    integer out_file;
    initial out_file = $fopen("/home/ecegridfs/a/337mg041/FFT_Accelerator/connor.txt");

    logic signed [15:0] out_re, out_im;
    assign {out_re, out_im} = out;

    

    always @(posedge clk) begin
        if (out_valid) begin
            if(num == 1) begin
                if(p <= 511) begin
                    p = p + 1;
                    $fwrite(out_file, "%f, %f\n", real'(out_re) / 32768.0, real'(out_im) / 32768.0);
                end
            end else begin
                 if(p <= 511 + 511) begin
                    p = p + 1;
                    $fwrite(out_file, "%f, %f\n", real'(out_re) / 32768.0, real'(out_im) / 32768.0);
                end
            end         
        end
    end
    logic [31:0] memory [0:511];
    logic [31:0] memory2 [0:511];
    integer j;
    initial begin
        $readmemh("/home/ecegridfs/a/337mg041/FFT_Accelerator/Python/input_mem.txt", memory);
        if(num == 2) begin
            $readmemh("/home/ecegridfs/a/337mg041/FFT_Accelerator/Python/input_mem2.txt", memory2);
        end
        n_rst = 1;
        reset_dut;
        @(negedge clk);
        frame_size = 8'd128;
        load_size = 1'b1;
        @(posedge clk);
        @(posedge clk);
        @(negedge clk);
        load_size = 1'b0;
        @(posedge clk);
        @(posedge clk);
        
        $fwrite(out_file, "Real ----- Imaginary\n");

        for(j = 0; j < 100; j++) begin
            @(negedge clk);
            valid = 1'b1;
            sample = memory[j];
        end

        repeat(50) begin
            @(negedge clk);
            valid = 1'b0;
            sample = 32'h7FFF7FFF;
        end

        for(; j < 512; j++) begin
            @(negedge clk);
            valid = 1'b1;
            sample = memory[j];
        end


        if(num == 2) begin
            for(j = 0; j < 512; j++) begin
                @(negedge clk);
                valid = 1'b1;
                sample = memory2[j];
            end
        end
        
        /*stream_frame(16'h4000, 16'h0000);
        stream_frame(16'h3BB6, 16'h1709);
        stream_frame(16'h2F6C, 16'h2AFB);
        stream_frame(16'h1CC6, 16'h392B);
        stream_frame(16'h0646, 16'h3FB1);
        stream_frame(16'hEEEE, 16'h3DAF);
        stream_frame(16'hD9E0, 16'h3368);
        stream_frame(16'hC9EE, 16'h223D);
        stream_frame(16'hC13B, 16'h0C7C);
        stream_frame(16'hC0F1, 16'hF50F);
        stream_frame(16'hC91B, 16'hDF19);
        stream_frame(16'hD8A0, 16'hCD8C);
        stream_frame(16'hED6C, 16'hC2C1);
        stream_frame(16'h04B5, 16'hC02C);
        stream_frame(16'h1B5D, 16'hC625);
        stream_frame(16'h2E5A, 16'hD3DF);
        stream_frame(16'h3B21, 16'hE782);
        stream_frame(16'h3FFB, 16'hFE6E);
        stream_frame(16'h3C42, 16'h1590);
        stream_frame(16'h3076, 16'h29CE);
        stream_frame(16'h1E2B, 16'h3871);
        stream_frame(16'h07D6, 16'h3F85);
        stream_frame(16'hF073, 16'h3E15);
        stream_frame(16'hDB26, 16'h3453);
        stream_frame(16'hCAC9, 16'h238E);
        stream_frame(16'hC18E, 16'h0E06);
        stream_frame(16'hC0B1, 16'hF69C);
        stream_frame(16'hC850, 16'hE074);
        stream_frame(16'hD766, 16'hCE87);
        stream_frame(16'hEBED, 16'hC33B);
        stream_frame(16'h0324, 16'hC014);
        stream_frame(16'h19EF, 16'hC57E);
        stream_frame(16'h2D41, 16'hD2BF);
        stream_frame(16'h3A82, 16'hE611);
        stream_frame(16'h3FEC, 16'hFCDC);
        stream_frame(16'h3CC5, 16'h1413);
        stream_frame(16'h3179, 16'h289A);
        stream_frame(16'h1F8C, 16'h37B0);
        stream_frame(16'h0964, 16'h3F4F);
        stream_frame(16'hF1FA, 16'h3E72);
        stream_frame(16'hDC72, 16'h3537);
        stream_frame(16'hCBAD, 16'h24DA);
        stream_frame(16'hC1EB, 16'h0F8D);
        stream_frame(16'hC07B, 16'hF82A);
        stream_frame(16'hC78F, 16'hE1D5);
        stream_frame(16'hD632, 16'hCF8A);
        stream_frame(16'hEA70, 16'hC3BE);
        stream_frame(16'h0192, 16'hC005);
        stream_frame(16'h187E, 16'hC4DF);
        stream_frame(16'h2C21, 16'hD1A6);
        stream_frame(16'h39DB, 16'hE4A3);
        stream_frame(16'h3FD4, 16'hFB4B);
        stream_frame(16'h3D3F, 16'h1294);
        stream_frame(16'h3274, 16'h2760);
        stream_frame(16'h20E7, 16'h36E5);
        stream_frame(16'h0AF1, 16'h3F0F);
        stream_frame(16'hF384, 16'h3EC5);
        stream_frame(16'hDDC3, 16'h3612);
        stream_frame(16'hCC98, 16'h2620);
        stream_frame(16'hC251, 16'h1112);
        stream_frame(16'hC04F, 16'hF9BA);
        stream_frame(16'hC6D5, 16'hE33A);
        stream_frame(16'hD505, 16'hD094);
        stream_frame(16'hE8F7, 16'hC44A);
        stream_frame(16'h0000, 16'hC000);
        stream_frame(16'h1709, 16'hC44A);
        stream_frame(16'h2AFB, 16'hD094);
        stream_frame(16'h392B, 16'hE33A);
        stream_frame(16'h3FB1, 16'hF9BA);
        stream_frame(16'h3DAF, 16'h1112);
        stream_frame(16'h3368, 16'h2620);
        stream_frame(16'h223D, 16'h3612);
        stream_frame(16'h0C7C, 16'h3EC5);
        stream_frame(16'hF50F, 16'h3F0F);
        stream_frame(16'hDF19, 16'h36E5);
        stream_frame(16'hCD8C, 16'h2760);
        stream_frame(16'hC2C1, 16'h1294);
        stream_frame(16'hC02C, 16'hFB4B);
        stream_frame(16'hC625, 16'hE4A3);
        stream_frame(16'hD3DF, 16'hD1A6);
        stream_frame(16'hE782, 16'hC4DF);
        stream_frame(16'hFE6E, 16'hC005);
        stream_frame(16'h1590, 16'hC3BE);
        stream_frame(16'h29CE, 16'hCF8A);
        stream_frame(16'h3871, 16'hE1D5);
        stream_frame(16'h3F85, 16'hF82A);
        stream_frame(16'h3E15, 16'h0F8D);
        stream_frame(16'h3453, 16'h24DA);
        stream_frame(16'h238E, 16'h3537);
        stream_frame(16'h0E06, 16'h3E72);
        stream_frame(16'hF69C, 16'h3F4F);
        stream_frame(16'hE074, 16'h37B0);
        stream_frame(16'hCE87, 16'h289A);
        stream_frame(16'hC33B, 16'h1413);
        stream_frame(16'hC014, 16'hFCDC);
        stream_frame(16'hC57E, 16'hE611);
        stream_frame(16'hD2BF, 16'hD2BF);
        stream_frame(16'hE611, 16'hC57E);
        stream_frame(16'hFCDC, 16'hC014);
        stream_frame(16'h1413, 16'hC33B);
        stream_frame(16'h289A, 16'hCE87);
        stream_frame(16'h37B0, 16'hE074);
        stream_frame(16'h3F4F, 16'hF69C);
        stream_frame(16'h3E72, 16'h0E06);
        stream_frame(16'h3537, 16'h238E);
        stream_frame(16'h24DA, 16'h3453);
        stream_frame(16'h0F8D, 16'h3E15);
        stream_frame(16'hF82A, 16'h3F85);
        stream_frame(16'hE1D5, 16'h3871);
        stream_frame(16'hCF8A, 16'h29CE);
        stream_frame(16'hC3BE, 16'h1590);
        stream_frame(16'hC005, 16'hFE6E);
        stream_frame(16'hC4DF, 16'hE782);
        stream_frame(16'hD1A6, 16'hD3DF);
        stream_frame(16'hE4A3, 16'hC625);
        stream_frame(16'hFB4B, 16'hC02C);
        stream_frame(16'h1294, 16'hC2C1);
        stream_frame(16'h2760, 16'hCD8C);
        stream_frame(16'h36E5, 16'hDF19);
        stream_frame(16'h3F0F, 16'hF50F);
        stream_frame(16'h3EC5, 16'h0C7C);
        stream_frame(16'h3612, 16'h223D);
        stream_frame(16'h2620, 16'h3368);
        stream_frame(16'h1112, 16'h3DAF);
        stream_frame(16'hF9BA, 16'h3FB1);
        stream_frame(16'hE33A, 16'h392B);
        stream_frame(16'hD094, 16'h2AFB);
        stream_frame(16'hC44A, 16'h1709);
        stream_frame(16'hC000, 16'h0000);
        stream_frame(16'hC44A, 16'hE8F7);
        stream_frame(16'hD094, 16'hD505);
        stream_frame(16'hE33A, 16'hC6D5);
        stream_frame(16'hF9BA, 16'hC04F);
        stream_frame(16'h1112, 16'hC251);
        stream_frame(16'h2620, 16'hCC98);
        stream_frame(16'h3612, 16'hDDC3);
        stream_frame(16'h3EC5, 16'hF384);
        stream_frame(16'h3F0F, 16'h0AF1);
        stream_frame(16'h36E5, 16'h20E7);
        stream_frame(16'h2760, 16'h3274);
        stream_frame(16'h1294, 16'h3D3F);
        stream_frame(16'hFB4B, 16'h3FD4);
        stream_frame(16'hE4A3, 16'h39DB);
        stream_frame(16'hD1A6, 16'h2C21);
        stream_frame(16'hC4DF, 16'h187E);
        stream_frame(16'hC005, 16'h0192);
        stream_frame(16'hC3BE, 16'hEA70);
        stream_frame(16'hCF8A, 16'hD632);
        stream_frame(16'hE1D5, 16'hC78F);
        stream_frame(16'hF82A, 16'hC07B);
        stream_frame(16'h0F8D, 16'hC1EB);
        stream_frame(16'h24DA, 16'hCBAD);
        stream_frame(16'h3537, 16'hDC72);
        stream_frame(16'h3E72, 16'hF1FA);
        stream_frame(16'h3F4F, 16'h0964);
        stream_frame(16'h37B0, 16'h1F8C);
        stream_frame(16'h289A, 16'h3179);
        stream_frame(16'h1413, 16'h3CC5);
        stream_frame(16'hFCDC, 16'h3FEC);
        stream_frame(16'hE611, 16'h3A82);
        stream_frame(16'hD2BF, 16'h2D41);
        stream_frame(16'hC57E, 16'h19EF);
        stream_frame(16'hC014, 16'h0324);
        stream_frame(16'hC33B, 16'hEBED);
        stream_frame(16'hCE87, 16'hD766);
        stream_frame(16'hE074, 16'hC850);
        stream_frame(16'hF69C, 16'hC0B1);
        stream_frame(16'h0E06, 16'hC18E);
        stream_frame(16'h238E, 16'hCAC9);
        stream_frame(16'h3453, 16'hDB26);
        stream_frame(16'h3E15, 16'hF073);
        stream_frame(16'h3F85, 16'h07D6);
        stream_frame(16'h3871, 16'h1E2B);
        stream_frame(16'h29CE, 16'h3076);
        stream_frame(16'h1590, 16'h3C42);
        stream_frame(16'hFE6E, 16'h3FFB);
        stream_frame(16'hE782, 16'h3B21);
        stream_frame(16'hD3DF, 16'h2E5A);
        stream_frame(16'hC625, 16'h1B5D);
        stream_frame(16'hC02C, 16'h04B5);
        stream_frame(16'hC2C1, 16'hED6C);
        stream_frame(16'hCD8C, 16'hD8A0);
        stream_frame(16'hDF19, 16'hC91B);
        stream_frame(16'hF50F, 16'hC0F1);
        stream_frame(16'h0C7C, 16'hC13B);
        stream_frame(16'h223D, 16'hC9EE);
        stream_frame(16'h3368, 16'hD9E0);
        stream_frame(16'h3DAF, 16'hEEEE);
        stream_frame(16'h3FB1, 16'h0646);
        stream_frame(16'h392B, 16'h1CC6);
        stream_frame(16'h2AFB, 16'h2F6C);
        stream_frame(16'h1709, 16'h3BB6);
        stream_frame(16'h0000, 16'h4000);
        stream_frame(16'hE8F7, 16'h3BB6);
        stream_frame(16'hD505, 16'h2F6C);
        stream_frame(16'hC6D5, 16'h1CC6);
        stream_frame(16'hC04F, 16'h0646);
        stream_frame(16'hC251, 16'hEEEE);
        stream_frame(16'hCC98, 16'hD9E0);
        stream_frame(16'hDDC3, 16'hC9EE);
        stream_frame(16'hF384, 16'hC13B);
        stream_frame(16'h0AF1, 16'hC0F1);
        stream_frame(16'h20E7, 16'hC91B);
        stream_frame(16'h3274, 16'hD8A0);
        stream_frame(16'h3D3F, 16'hED6C);
        stream_frame(16'h3FD4, 16'h04B5);
        stream_frame(16'h39DB, 16'h1B5D);
        stream_frame(16'h2C21, 16'h2E5A);
        stream_frame(16'h187E, 16'h3B21);
        stream_frame(16'h0192, 16'h3FFB);
        stream_frame(16'hEA70, 16'h3C42);
        stream_frame(16'hD632, 16'h3076);
        stream_frame(16'hC78F, 16'h1E2B);
        stream_frame(16'hC07B, 16'h07D6);
        stream_frame(16'hC1EB, 16'hF073);
        stream_frame(16'hCBAD, 16'hDB26);
        stream_frame(16'hDC72, 16'hCAC9);
        stream_frame(16'hF1FA, 16'hC18E);
        stream_frame(16'h0964, 16'hC0B1);
        stream_frame(16'h1F8C, 16'hC850);
        stream_frame(16'h3179, 16'hD766);
        stream_frame(16'h3CC5, 16'hEBED);
        stream_frame(16'h3FEC, 16'h0324);
        stream_frame(16'h3A82, 16'h19EF);
        stream_frame(16'h2D41, 16'h2D41);
        stream_frame(16'h19EF, 16'h3A82);
        stream_frame(16'h0324, 16'h3FEC);
        stream_frame(16'hEBED, 16'h3CC5);
        stream_frame(16'hD766, 16'h3179);
        stream_frame(16'hC850, 16'h1F8C);
        stream_frame(16'hC0B1, 16'h0964);
        stream_frame(16'hC18E, 16'hF1FA);
        stream_frame(16'hCAC9, 16'hDC72);
        stream_frame(16'hDB26, 16'hCBAD);
        stream_frame(16'hF073, 16'hC1EB);
        stream_frame(16'h07D6, 16'hC07B);
        stream_frame(16'h1E2B, 16'hC78F);
        stream_frame(16'h3076, 16'hD632);
        stream_frame(16'h3C42, 16'hEA70);
        stream_frame(16'h3FFB, 16'h0192);
        stream_frame(16'h3B21, 16'h187E);
        stream_frame(16'h2E5A, 16'h2C21);
        stream_frame(16'h1B5D, 16'h39DB);
        stream_frame(16'h04B5, 16'h3FD4);
        stream_frame(16'hED6C, 16'h3D3F);
        stream_frame(16'hD8A0, 16'h3274);
        stream_frame(16'hC91B, 16'h20E7);
        stream_frame(16'hC0F1, 16'h0AF1);
        stream_frame(16'hC13B, 16'hF384);
        stream_frame(16'hC9EE, 16'hDDC3);
        stream_frame(16'hD9E0, 16'hCC98);
        stream_frame(16'hEEEE, 16'hC251);
        stream_frame(16'h0646, 16'hC04F);
        stream_frame(16'h1CC6, 16'hC6D5);
        stream_frame(16'h2F6C, 16'hD505);
        stream_frame(16'h3BB6, 16'hE8F7);
        stream_frame(16'h4000, 16'h0000);
        stream_frame(16'h3BB6, 16'h1709);
        stream_frame(16'h2F6C, 16'h2AFB);
        stream_frame(16'h1CC6, 16'h392B);
        stream_frame(16'h0646, 16'h3FB1);
        stream_frame(16'hEEEE, 16'h3DAF);
        stream_frame(16'hD9E0, 16'h3368);
        stream_frame(16'hC9EE, 16'h223D);
        stream_frame(16'hC13B, 16'h0C7C);
        stream_frame(16'hC0F1, 16'hF50F);
        stream_frame(16'hC91B, 16'hDF19);
        stream_frame(16'hD8A0, 16'hCD8C);
        stream_frame(16'hED6C, 16'hC2C1);
        stream_frame(16'h04B5, 16'hC02C);
        stream_frame(16'h1B5D, 16'hC625);
        stream_frame(16'h2E5A, 16'hD3DF);
        stream_frame(16'h3B21, 16'hE782);
        stream_frame(16'h3FFB, 16'hFE6E);
        stream_frame(16'h3C42, 16'h1590);
        stream_frame(16'h3076, 16'h29CE);
        stream_frame(16'h1E2B, 16'h3871);
        stream_frame(16'h07D6, 16'h3F85);
        stream_frame(16'hF073, 16'h3E15);
        stream_frame(16'hDB26, 16'h3453);
        stream_frame(16'hCAC9, 16'h238E);
        stream_frame(16'hC18E, 16'h0E06);
        stream_frame(16'hC0B1, 16'hF69C);
        stream_frame(16'hC850, 16'hE074);
        stream_frame(16'hD766, 16'hCE87);
        stream_frame(16'hEBED, 16'hC33B);
        stream_frame(16'h0324, 16'hC014);
        stream_frame(16'h19EF, 16'hC57E);
        stream_frame(16'h2D41, 16'hD2BF);
        stream_frame(16'h3A82, 16'hE611);
        stream_frame(16'h3FEC, 16'hFCDC);
        stream_frame(16'h3CC5, 16'h1413);
        stream_frame(16'h3179, 16'h289A);
        stream_frame(16'h1F8C, 16'h37B0);
        stream_frame(16'h0964, 16'h3F4F);
        stream_frame(16'hF1FA, 16'h3E72);
        stream_frame(16'hDC72, 16'h3537);
        stream_frame(16'hCBAD, 16'h24DA);
        stream_frame(16'hC1EB, 16'h0F8D);
        stream_frame(16'hC07B, 16'hF82A);
        stream_frame(16'hC78F, 16'hE1D5);
        stream_frame(16'hD632, 16'hCF8A);
        stream_frame(16'hEA70, 16'hC3BE);
        stream_frame(16'h0192, 16'hC005);
        stream_frame(16'h187E, 16'hC4DF);
        stream_frame(16'h2C21, 16'hD1A6);
        stream_frame(16'h39DB, 16'hE4A3);
        stream_frame(16'h3FD4, 16'hFB4B);
        stream_frame(16'h3D3F, 16'h1294);
        stream_frame(16'h3274, 16'h2760);
        stream_frame(16'h20E7, 16'h36E5);
        stream_frame(16'h0AF1, 16'h3F0F);
        stream_frame(16'hF384, 16'h3EC5);
        stream_frame(16'hDDC3, 16'h3612);
        stream_frame(16'hCC98, 16'h2620);
        stream_frame(16'hC251, 16'h1112);
        stream_frame(16'hC04F, 16'hF9BA);
        stream_frame(16'hC6D5, 16'hE33A);
        stream_frame(16'hD505, 16'hD094);
        stream_frame(16'hE8F7, 16'hC44A);
        stream_frame(16'h0000, 16'hC000);
        stream_frame(16'h1709, 16'hC44A);
        stream_frame(16'h2AFB, 16'hD094);
        stream_frame(16'h392B, 16'hE33A);
        stream_frame(16'h3FB1, 16'hF9BA);
        stream_frame(16'h3DAF, 16'h1112);
        stream_frame(16'h3368, 16'h2620);
        stream_frame(16'h223D, 16'h3612);
        stream_frame(16'h0C7C, 16'h3EC5);
        stream_frame(16'hF50F, 16'h3F0F);
        stream_frame(16'hDF19, 16'h36E5);
        stream_frame(16'hCD8C, 16'h2760);
        stream_frame(16'hC2C1, 16'h1294);
        stream_frame(16'hC02C, 16'hFB4B);
        stream_frame(16'hC625, 16'hE4A3);
        stream_frame(16'hD3DF, 16'hD1A6);
        stream_frame(16'hE782, 16'hC4DF);
        stream_frame(16'hFE6E, 16'hC005);
        stream_frame(16'h1590, 16'hC3BE);
        stream_frame(16'h29CE, 16'hCF8A);
        stream_frame(16'h3871, 16'hE1D5);
        stream_frame(16'h3F85, 16'hF82A);
        stream_frame(16'h3E15, 16'h0F8D);
        stream_frame(16'h3453, 16'h24DA);
        stream_frame(16'h238E, 16'h3537);
        stream_frame(16'h0E06, 16'h3E72);
        stream_frame(16'hF69C, 16'h3F4F);
        stream_frame(16'hE074, 16'h37B0);
        stream_frame(16'hCE87, 16'h289A);
        stream_frame(16'hC33B, 16'h1413);
        stream_frame(16'hC014, 16'hFCDC);
        stream_frame(16'hC57E, 16'hE611);
        stream_frame(16'hD2BF, 16'hD2BF);
        stream_frame(16'hE611, 16'hC57E);
        stream_frame(16'hFCDC, 16'hC014);
        stream_frame(16'h1413, 16'hC33B);
        stream_frame(16'h289A, 16'hCE87);
        stream_frame(16'h37B0, 16'hE074);
        stream_frame(16'h3F4F, 16'hF69C);
        stream_frame(16'h3E72, 16'h0E06);
        stream_frame(16'h3537, 16'h238E);
        stream_frame(16'h24DA, 16'h3453);
        stream_frame(16'h0F8D, 16'h3E15);
        stream_frame(16'hF82A, 16'h3F85);
        stream_frame(16'hE1D5, 16'h3871);
        stream_frame(16'hCF8A, 16'h29CE);
        stream_frame(16'hC3BE, 16'h1590);
        stream_frame(16'hC005, 16'hFE6E);
        stream_frame(16'hC4DF, 16'hE782);
        stream_frame(16'hD1A6, 16'hD3DF);
        stream_frame(16'hE4A3, 16'hC625);
        stream_frame(16'hFB4B, 16'hC02C);
        stream_frame(16'h1294, 16'hC2C1);
        stream_frame(16'h2760, 16'hCD8C);
        stream_frame(16'h36E5, 16'hDF19);
        stream_frame(16'h3F0F, 16'hF50F);
        stream_frame(16'h3EC5, 16'h0C7C);
        stream_frame(16'h3612, 16'h223D);
        stream_frame(16'h2620, 16'h3368);
        stream_frame(16'h1112, 16'h3DAF);
        stream_frame(16'hF9BA, 16'h3FB1);
        stream_frame(16'hE33A, 16'h392B);
        stream_frame(16'hD094, 16'h2AFB);
        stream_frame(16'hC44A, 16'h1709);
        stream_frame(16'hC000, 16'h0000);
        stream_frame(16'hC44A, 16'hE8F7);
        stream_frame(16'hD094, 16'hD505);
        stream_frame(16'hE33A, 16'hC6D5);
        stream_frame(16'hF9BA, 16'hC04F);
        stream_frame(16'h1112, 16'hC251);
        stream_frame(16'h2620, 16'hCC98);
        stream_frame(16'h3612, 16'hDDC3);
        stream_frame(16'h3EC5, 16'hF384);
        stream_frame(16'h3F0F, 16'h0AF1);
        stream_frame(16'h36E5, 16'h20E7);
        stream_frame(16'h2760, 16'h3274);
        stream_frame(16'h1294, 16'h3D3F);
        stream_frame(16'hFB4B, 16'h3FD4);
        stream_frame(16'hE4A3, 16'h39DB);
        stream_frame(16'hD1A6, 16'h2C21);
        stream_frame(16'hC4DF, 16'h187E);
        stream_frame(16'hC005, 16'h0192);
        stream_frame(16'hC3BE, 16'hEA70);
        stream_frame(16'hCF8A, 16'hD632);
        stream_frame(16'hE1D5, 16'hC78F);
        stream_frame(16'hF82A, 16'hC07B);
        stream_frame(16'h0F8D, 16'hC1EB);
        stream_frame(16'h24DA, 16'hCBAD);
        stream_frame(16'h3537, 16'hDC72);
        stream_frame(16'h3E72, 16'hF1FA);
        stream_frame(16'h3F4F, 16'h0964);
        stream_frame(16'h37B0, 16'h1F8C);
        stream_frame(16'h289A, 16'h3179);
        stream_frame(16'h1413, 16'h3CC5);
        stream_frame(16'hFCDC, 16'h3FEC);
        stream_frame(16'hE611, 16'h3A82);
        stream_frame(16'hD2BF, 16'h2D41);
        stream_frame(16'hC57E, 16'h19EF);
        stream_frame(16'hC014, 16'h0324);
        stream_frame(16'hC33B, 16'hEBED);
        stream_frame(16'hCE87, 16'hD766);
        stream_frame(16'hE074, 16'hC850);
        stream_frame(16'hF69C, 16'hC0B1);
        stream_frame(16'h0E06, 16'hC18E);
        stream_frame(16'h238E, 16'hCAC9);
        stream_frame(16'h3453, 16'hDB26);
        stream_frame(16'h3E15, 16'hF073);
        stream_frame(16'h3F85, 16'h07D6);
        stream_frame(16'h3871, 16'h1E2B);
        stream_frame(16'h29CE, 16'h3076);
        stream_frame(16'h1590, 16'h3C42);
        stream_frame(16'hFE6E, 16'h3FFB);
        stream_frame(16'hE782, 16'h3B21);
        stream_frame(16'hD3DF, 16'h2E5A);
        stream_frame(16'hC625, 16'h1B5D);
        stream_frame(16'hC02C, 16'h04B5);
        stream_frame(16'hC2C1, 16'hED6C);
        stream_frame(16'hCD8C, 16'hD8A0);
        stream_frame(16'hDF19, 16'hC91B);
        stream_frame(16'hF50F, 16'hC0F1);
        stream_frame(16'h0C7C, 16'hC13B);
        stream_frame(16'h223D, 16'hC9EE);
        stream_frame(16'h3368, 16'hD9E0);
        stream_frame(16'h3DAF, 16'hEEEE);
        stream_frame(16'h3FB1, 16'h0646);
        stream_frame(16'h392B, 16'h1CC6);
        stream_frame(16'h2AFB, 16'h2F6C);
        stream_frame(16'h1709, 16'h3BB6);
        stream_frame(16'h0000, 16'h4000);
        stream_frame(16'hE8F7, 16'h3BB6);
        stream_frame(16'hD505, 16'h2F6C);
        stream_frame(16'hC6D5, 16'h1CC6);
        stream_frame(16'hC04F, 16'h0646);
        stream_frame(16'hC251, 16'hEEEE);
        stream_frame(16'hCC98, 16'hD9E0);
        stream_frame(16'hDDC3, 16'hC9EE);
        stream_frame(16'hF384, 16'hC13B);
        stream_frame(16'h0AF1, 16'hC0F1);
        stream_frame(16'h20E7, 16'hC91B);
        stream_frame(16'h3274, 16'hD8A0);
        stream_frame(16'h3D3F, 16'hED6C);
        stream_frame(16'h3FD4, 16'h04B5);
        stream_frame(16'h39DB, 16'h1B5D);
        stream_frame(16'h2C21, 16'h2E5A);
        stream_frame(16'h187E, 16'h3B21);
        stream_frame(16'h0192, 16'h3FFB);
        stream_frame(16'hEA70, 16'h3C42);
        stream_frame(16'hD632, 16'h3076);
        stream_frame(16'hC78F, 16'h1E2B);
        stream_frame(16'hC07B, 16'h07D6);
        stream_frame(16'hC1EB, 16'hF073);
        stream_frame(16'hCBAD, 16'hDB26);
        stream_frame(16'hDC72, 16'hCAC9);
        stream_frame(16'hF1FA, 16'hC18E);
        stream_frame(16'h0964, 16'hC0B1);
        stream_frame(16'h1F8C, 16'hC850);
        stream_frame(16'h3179, 16'hD766);
        stream_frame(16'h3CC5, 16'hEBED);
        stream_frame(16'h3FEC, 16'h0324);
        stream_frame(16'h3A82, 16'h19EF);
        stream_frame(16'h2D41, 16'h2D41);
        stream_frame(16'h19EF, 16'h3A82);
        stream_frame(16'h0324, 16'h3FEC);
        stream_frame(16'hEBED, 16'h3CC5);
        stream_frame(16'hD766, 16'h3179);
        stream_frame(16'hC850, 16'h1F8C);
        stream_frame(16'hC0B1, 16'h0964);
        stream_frame(16'hC18E, 16'hF1FA);
        stream_frame(16'hCAC9, 16'hDC72);
        stream_frame(16'hDB26, 16'hCBAD);
        stream_frame(16'hF073, 16'hC1EB);
        stream_frame(16'h07D6, 16'hC07B);
        stream_frame(16'h1E2B, 16'hC78F);
        stream_frame(16'h3076, 16'hD632);
        stream_frame(16'h3C42, 16'hEA70);
        stream_frame(16'h3FFB, 16'h0192);
        stream_frame(16'h3B21, 16'h187E);
        stream_frame(16'h2E5A, 16'h2C21);
        stream_frame(16'h1B5D, 16'h39DB);
        stream_frame(16'h04B5, 16'h3FD4);
        stream_frame(16'hED6C, 16'h3D3F);
        stream_frame(16'hD8A0, 16'h3274);
        stream_frame(16'hC91B, 16'h20E7);
        stream_frame(16'hC0F1, 16'h0AF1);
        stream_frame(16'hC13B, 16'hF384);
        stream_frame(16'hC9EE, 16'hDDC3);
        stream_frame(16'hD9E0, 16'hCC98);
        stream_frame(16'hEEEE, 16'hC251);
        stream_frame(16'h0646, 16'hC04F);
        stream_frame(16'h1CC6, 16'hC6D5);
        stream_frame(16'h2F6C, 16'hD505);
        stream_frame(16'h3BB6, 16'hE8F7);*/

        repeat(550) begin
            @(negedge clk);
            sample = '0;
            valid = 1'b1;
        end

        @(negedge clk);
        valid = 1'b0;

        repeat(700) begin
            @(posedge clk);
        end
        $fclose(out_file);
        $finish;
    end

    
endmodule

/* verilator coverage_on */

