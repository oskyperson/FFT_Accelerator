`timescale 1ns / 10ps
/* verilator coverage_off */


module tb_fft_axi_top ();

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

    logic [9:0] len; 
    logic ready, valid, resp;
    logic last;
    logic [9:0] i;

    fft_axi_counter #() DUT (.*);

    string test;

    initial begin
        nRST = 1;
        len = 10'd511;
        ready = 0;
        valid = 1;
        resp = 0;

        reset_dut;
        
        test = "power on reset";
        nRST = 0;
        @(negedge CLK);
        nRST = 1;
        @(negedge CLK);

        test = "max count";
        ready = 1;
        for(int i = 0; i < len + 1; i++)
            @(negedge CLK);
        valid = 0;
        @(negedge CLK);

        test = "min count";
        valid = 1;
        len = 10'd1;
        for(int i = 0; i < len + 1; i++)
            @(negedge CLK);
        ready = 0;
        @(negedge CLK);

        test = "random numbers";
        ready = 1;
        len = 10'd2;
        for(int i = 0; i < len + 1; i++)
            @(negedge CLK);
        ready = 0;
        @(negedge CLK);

        ready = 1;
        len = 10'd53;
        for(int i = 0; i < len + 1; i++)
            @(negedge CLK);
        ready = 0;
        @(negedge CLK);

        ready = 1;
        len = 10'd256;
        for(int i = 0; i < len + 1; i++)
            @(negedge CLK);
        ready = 0;
        @(negedge CLK);

        $finish;
    end
endmodule

/* verilator coverage_on */

