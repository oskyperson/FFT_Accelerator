`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_axi_top ();

    localparam CLK_PERIOD = 10ns;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars;
    end

    logic clk, n_rst;

    logic [31:0] cpu_awaddr, cpu_araddr;
    logic cpu_awvalid, cpu_arvalid;
    logic cpu_awready, cpu_arready;
    logic [31:0] cpu_wdata;
    logic cpu_wvalid, cpu_wlast;
    logic cpu_wready;
    logic [31:0] cpu_rdata; 
    logic cpu_rvalid, cpu_rlast;
    logic cpu_rready;
    logic cpu_bvalid;
    logic cpu_bready;
    logic cpu_rresp;
    logic cpu_bresp;
    logic [9:0] cpu_arlen, cpu_awlen;
    logic [1:0] cpu_wstrb;
    logic [3:0] wen;
    logic [31:0] write_addr;
    logic [31:0] write_data;
    logic write_valid;

    logic ren;
    logic [31:0] read_addr;
    logic [31:0] read_data;
    logic read_valid;

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

    axi_top #() DUT (.*);

    manager_model BFM (.*);

    sram_model SRAM (.*);


    initial begin
        n_rst = 1;

        reset_dut;

        $finish;
    end
endmodule

/* verilator coverage_on */

