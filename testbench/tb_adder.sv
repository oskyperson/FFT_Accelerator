`timescale 1ns / 10ps
/* verilator coverage_off */


module tb_fft_axi_top ();

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

    logic [9:0] len; 
    logic ready, valid, resp;
    logic last;
    logic [9:0] i;

    fft_axi_counter #() DUT (.*);

    string test;

    initial begin
        n_rst = 1;
        len = 10'd511;
        ready = 0;
        valid = 1;
        resp = 0;

        reset_dut;
        
        test = "power on reset";
        n_rst = 0;
        @(negedge clk);
        n_rst = 1;
        @(negedge clk);

        test = "max count";
        ready = 1;
        for(int i = 0; i < len + 1; i++)
            @(negedge clk);
        valid = 0;
        @(negedge clk);

        test = "min count";
        valid = 1;
        len = 10'd1;
        for(int i = 0; i < len + 1; i++)
            @(negedge clk);
        ready = 0;
        @(negedge clk);

        test = "random numbers";
        ready = 1;
        len = 10'd2;
        for(int i = 0; i < len + 1; i++)
            @(negedge clk);
        ready = 0;
        @(negedge clk);

        ready = 1;
        len = 10'd53;
        for(int i = 0; i < len + 1; i++)
            @(negedge clk);
        ready = 0;
        @(negedge clk);

        ready = 1;
        len = 10'd256;
        for(int i = 0; i < len + 1; i++)
            @(negedge clk);
        ready = 0;
        @(negedge clk);

        $finish;
    end
endmodule

/* verilator coverage_on */

