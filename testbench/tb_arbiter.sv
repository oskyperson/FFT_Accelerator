`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_arbiter ();

    localparam CLK_PERIOD = 10ns;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars;
    end

    logic clk, n_rst;

    //CPU Manager Interface
    logic [31:0] cpu_awaddr, cpu_araddr;
    logic cpu_awvalid, cpu_arvalid, cpu_awready, cpu_arready;
    logic [31:0] cpu_wdata;
    logic cpu_wvalid, cpu_wlast;
    logic cpu_wready, cpu_rready, cpu_bready;
    logic [31:0] cpu_rdata;
    logic cpu_rvalid, cpu_rlast;
    logic cpu_bvalid, cpu_rresp, cpu_bresp; 

    //FFT Manager Interface
    logic [31:0] fft_man_awaddr, fft_man_araddr;
    logic fft_man_awvalid, fft_man_arvalid, fft_man_awready, fft_man_arready;
    logic [31:0] fft_man_wdata;
    logic fft_man_wvalid, fft_man_wlast;
    logic fft_man_wready, fft_man_rready, fft_man_bready;
    logic [31:0] fft_man_rdata;
    logic fft_man_rvalid, fft_man_rlast;
    logic fft_man_bvalid, fft_man_rresp, fft_man_bresp;

    //FFT Subordinate Interface
    logic [31:0] fft_sub_awaddr, fft_sub_araddr;
    logic fft_sub_awvalid, fft_sub_arvalid, fft_sub_awready, fft_sub_arready;
    logic [31:0] fft_sub_wdata;
    logic fft_sub_wvalid, fft_sub_wlast;
    logic fft_sub_wready, fft_sub_rready, fft_sub_bready;
    logic [31:0] fft_sub_rdata;
    logic fft_sub_rvalid, fft_sub_rlast;
    logic fft_sub_rresp, fft_sub_bresp;
    logic fft_sub_bvalid;

    //SRAM Subordinate Interface 
    logic [31:0] sram_awaddr, sram_araddr;
    logic sram_awvalid, sram_arvalid, sram_awready, sram_arready;
    logic [31:0] sram_wdata;
    logic sram_wvalid, sram_wlast;
    logic sram_wready, sram_rready, sram_bready;
    logic [31:0] sram_rdata;
    logic sram_rvalid, sram_rlast;
    logic sram_rresp, sram_bresp;
    logic sram_bvalid;

    
    always begin
        clk = 0;
        #(CLK_PERIOD / 2.0);
        clk = 1;
        #(CLK_PERIOD / 2.0);
    end

    task reset_dut;
    begin
        n_rst = 0;
        
        {cpu_awvalid, cpu_arvalid, cpu_wvalid, cpu_rready, cpu_bready} = '0;
        {fft_man_awvalid, fft_man_arvalid, fft_man_wvalid, fft_man_rready, fft_man_bready} = '0;
        {fft_sub_awready, fft_sub_arready, fft_sub_wready, fft_sub_rvalid, fft_sub_bvalid} = '0;
        {sram_awready, sram_arready, sram_wready, sram_rvalid, sram_bvalid} = '0;
        
        
        {cpu_awaddr, cpu_araddr, cpu_wdata} = '0;
        {fft_man_awaddr, fft_man_araddr, fft_man_wdata} = '0;
        
        @(posedge clk);
        @(posedge clk);
        @(negedge clk);
        n_rst = 1;
        @(posedge clk);
        @(posedge clk);
    end
    endtask

    
    arbiter #() DUT (.*);

    initial begin
        reset_dut;

        
        $display("TEST 1: CPU to SRAM Routing");
        cpu_awaddr = 11'd20;
        cpu_awvalid = 1'b1;
        
        @(posedge clk);
        @(negedge clk);
        if (sram_awvalid && !fft_sub_awvalid) 
            $display("  -> [PASS] Correct routing to SRAM");
        else 
            $display("  -> [FAIL] Wrong routing! SRAM: %b FFT_SUB: %b", sram_awvalid, fft_sub_awvalid);
        
        cpu_awvalid = 1'b0;

        $display("TEST 2: Priority CPU vs FFT");
        reset_dut;
        // Both managers request SRAM access at same time
        cpu_araddr = 11'd30;
        cpu_arvalid = 1'b1;
        fft_man_araddr = 11'd40;
        fft_man_arvalid = 1'b1;

        @(posedge clk);
        @(posedge clk);
        #1;
        if (sram_araddr == 11'd30)
            $display("  -> [PASS] CPU granted priority");
        else
            $display("  -> [FAIL] FFT granted priority or wrong address: %d", fft_sub_awvalid);
        
        cpu_arvalid = 1'b0;
        fft_man_arvalid = 1'b0;

        
        $display("TEST 3: OOB Error Handling (Addr )");
        reset_dut;
        cpu_araddr = 11'd2000;
        cpu_arvalid = 1'b1;
        
        
        
        $display("  -> [INFO] Received Response: %h", cpu_rresp);
        
        @(posedge clk);
        cpu_arvalid = 1'b0;

        #50;
        $display("SIMULATION COMPLETE");
        $finish;
    end
endmodule
/* verilator coverage_on */

