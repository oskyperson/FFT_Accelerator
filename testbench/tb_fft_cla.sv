`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_fft_cla ();

    localparam CLK_PERIOD = 10ns;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars;
    end

    logic CLK, nRST;

    // clockgen
    always begin
        CLK = 0;
        #(CLK_PERIOD / 2.0);
        CLK = 1;
        #(CLK_PERIOD / 2.0);
    end

    task reset_dut;
    begin
        nRST = 0;
        @(posedge CLK);
        @(posedge CLK);
        @(negedge CLK);
        nRST = 1;
        @(posedge CLK);
        @(posedge CLK);
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
        nRST = 1;
        a = 0;
        b = 0;
        cin = 0;

        reset_dut;

        test = "min add unsigned";
        @(negedge CLK);
        a = 32'h00000001;
        b = 32'h00000001;
        cin = 0;
        @(negedge CLK);

        test = "max add unsigned";
        a = 32'hFFFFFFFF;
        b = 32'h00000000;
        cin = 0;
        @(negedge CLK);

        test = "addition with carry in";
        a = 32'h0000000F;
        b = 32'h00000000;
        cin = 1;
        @(negedge CLK);

        test = "random numbers";
        a = 32'hA5A5A5A5;
        b = 32'h5A5A5A5A;
        cin = 0;
        @(negedge CLK);

        test = "overflow carry out";
        a = 32'hFFFFFFFF;
        b = 32'h00000001;
        cin = 0;
        @(negedge CLK);

        test = "done";

        $finish;
    end
endmodule

/* verilator coverage_on */
