`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_fft_core ();

    localparam CLK_PERIOD = 10ns;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars;
    end

    logic clk, n_rst;

    logic [32:0] sample, out;
    logic start, valid, out_valid;

    fft_core dut (.clk(clk), .n_rst(n_rst), .sample(sample), .start(start), .valid(valid), 
        .out(out), .out_valid(out_valid)
    );

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
        input logic [15:0] im,
    );
    begin
        @(negedge clk);
        valid = 1'b1;
        sample = {re, im};
    end



    endtask

    initial begin
        n_rst = 1;

        reset_dut;

        
        

        $finish;
    end
endmodule

/* verilator coverage_on */

