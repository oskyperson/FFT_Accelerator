`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_fft_axi_subordinate ();

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

    // write address
    logic awready;
    logic [10:0] awaddr;
    logic [9:0] awlen;
    logic awvalid; 
    // write data
    logic wready;
    logic [31:0] wdata;
    logic [1:0] wstrb;
    logic wlast; wvalid;
    // write response
    logic bresp, bvalid;
    logic bready;
    // read address
    logic arready;
    logic [10:0] araddr;
    logic [9:0] arlen;
    logic arvalid;
    // read data
    logic rlast, rvalid;
    logic [31:0] rdata;
    logic rready;
    // read response
    logic rresp;

    // config_reg from subordinate
    logic [7:0][31:0] config_reg;

    logic [31:0] fft_config;

    fft_axi_subordinate #() sub0 (.*);

    string test;

    initial begin
        n_rst = 1;

        reset_dut;

        test = "power on reset";
        n_rst = 0;
        @(negedge clk);
        n_rst = 1;

        test = "write to 1 config reg";

        test = "write to all config regs";

        test = "read from 1 confg reg";

        test = "read from all config regs";

        test = "simultaneous read and write same reg";

        $finish;
    end
endmodule

/* verilator coverage_on */

