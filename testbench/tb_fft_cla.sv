`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_fft_cla ();

    localparam CLK_PERIOD = 10ns;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars;
    end

    logic clk, n_rst;

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
        @(posedge clk);
        @(posedge clk);
    end
    endtask

    logic [31:0] a;
    logic [31:0] b;
    logic cin;
    logic [31:0] sum;
    logic cout;

    fft_cla #() DUT (.*);

    string test;

    initial begin
        n_rst = 1;
        a = 0;
        b = 0;
        cin = 0;

        reset_dut;

        test = "min add unsigned";
        @(negedge clk);
        a = 32'h00000001;
        b = 32'h00000001;
        cin = 0;
        @(negedge clk);

        test = "max add unsigned";
        a = 32'hFFFFFFFF;
        b = 32'h00000000;
        cin = 0;
        @(negedge clk);

        test = "addition with carry in";
        a = 32'h0000000F;
        b = 32'h00000000;
        cin = 1;
        @(negedge clk);

        test = "random numbers";
        a = 32'hA5A5A5A5;
        b = 32'h5A5A5A5A;
        cin = 0;
        @(negedge clk);

        test = "overflow carry out";
        a = 32'hFFFFFFFF;
        b = 32'h00000001;
        cin = 0;
        @(negedge clk);

        test = "done";

        $finish;
    end
endmodule

/* verilator coverage_on */
