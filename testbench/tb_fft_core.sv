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
//                          ONLY N = 1 IS VALID FOR THIS FILE
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
    localparam FRAME_SIZE = 128;

    integer num;
    initial begin
        num = 1;
    end

    localparam CLK_PERIOD = 12ns;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars;
    end

    logic clk, n_rst;

    logic [31:0] sample, out;
    logic start, valid, out_valid;

    logic [9:0] frame_size;
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
        load_size = 0;
        frame_size = 0;
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
    initial out_file = $fopen("/home/ecegridfs/a/337mg041/FFT_Accelerator/connor.txt", "w");

    logic signed [15:0] out_re, out_im;
    assign {out_re, out_im} = out;

    

    always @(posedge clk) begin
        if (out_valid) begin
            if(p <= FRAME_SIZE + 5) begin
                p = p + 1;
                $fwrite(out_file, "%f, %f\n", real'(out_re) / 32768.0, real'(out_im) / 32768.0);
            end
        end
    end
    logic [31:0] memory [0:511];
    logic [31:0] memory2 [0:511];
    integer j;
    initial begin
        $readmemh("/home/ecegridfs/a/337mg041/FFT_Accelerator/Python/input_mem.txt", memory);
        n_rst = 1;
        reset_dut;
        @(negedge clk);
        frame_size = FRAME_SIZE;
        load_size = 1'b1;
        @(posedge clk);
        @(posedge clk);
        @(negedge clk);
        load_size = 1'b0;
        @(posedge clk);
        @(posedge clk);
        
        $fwrite(out_file, "Real ----- Imaginary\n");

        for(j = 0; j < FRAME_SIZE; j++) begin
            @(negedge clk);
            valid = 1'b1;
            sample = memory[j];
        end

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

