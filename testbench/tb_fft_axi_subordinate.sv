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
    logic [31:0] awaddr;
    logic [9:0] awlen;
    logic awvalid; 
    // write data
    logic wready;
    logic [31:0] wdata;
    logic [1:0] wstrb;
    logic wlast, wvalid;
    // write response
    logic bresp, bvalid;
    logic bready;
    // read address
    logic arready;
    logic [31:0] araddr;
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

    fft_axi_subordinate #() sub0 (.*);

    CPU_axi_manager #() BFM (.*);

    logic [31:0] w_queue [$];
    logic [31:0] r_queue [$];

    string test;

    initial begin
        n_rst = 1;

        force BFM.awvalid = 0;
        force BFM.wvalid  = 0;
        force BFM.bready  = 0;
        force BFM.arvalid = 0;
        force BFM.rready  = 0;
        #1;
        release BFM.awvalid;
        release BFM.wvalid;
        release BFM.bready;
        release BFM.arvalid;
        release BFM.rready;

        reset_dut;

        test = "power on reset";
        n_rst = 0;
        @(negedge clk);
        n_rst = 1;

        w_queue.delete();

        test = "1 config reg";
        w_queue.push_back(32'h00000001);
        BFM.write_burst(32'd0, w_queue);
        BFM.read_burst(32'd0, 1, r_queue);

        test = "all config regs";
        w_queue.delete();
        for(int i = 0; i < 8; i++) begin
            w_queue.push_back(i);
        end
        BFM.write_burst(32'd0, w_queue);
        BFM.read_burst(32'd0, 8, r_queue);

        test = "simultaneous read and write same reg";
        w_queue.delete();
        w_queue.push_back(32'h00000001);
        fork
            BFM.write_burst(32'd0, w_queue);
            BFM.read_burst(32'd0, 1, r_queue);
        join

        test = "invalid write address";
        w_queue.delete();
        for(int i = 0; i < 8; i++) begin
            w_queue.push_back(i);
        end
        BFM.write_burst(32'd4, w_queue);

        test = "invalid read address";
        BFM.read_burst(32'd4, 8, r_queue);

        $finish;
    end
endmodule

/* verilator coverage_on */
