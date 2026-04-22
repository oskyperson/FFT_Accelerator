`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_axi_top ();

    localparam CLK_PERIOD = 100ns;

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

    logic [31:0] w_queue [$];
    logic [31:0] r_queue [$];

    initial begin
        n_rst = 1;

        reset_dut;
        
        force BFM.cpu_awvalid = 0;
        force BFM.cpu_wvalid  = 0;
        force BFM.cpu_bready  = 0;
        force BFM.cpu_arvalid = 0;
        force BFM.cpu_rready  = 0;
        force BFM.cpu_araddr = '0;
        force BFM.cpu_awaddr = '0;

        #1;
        release BFM.cpu_awvalid;
        release BFM.cpu_wvalid;
        release BFM.cpu_bready;
        release BFM.cpu_arvalid;
        release BFM.cpu_rready;
        release BFM.cpu_araddr;
        release BFM.cpu_awaddr;


        $display(" TEST 2: 4-Beat Burst Access (Addr 20)");

        w_queue.delete();
        w_queue.push_back(32'h11111111);
        w_queue.push_back(32'h22222222);
        w_queue.push_back(32'h33333333);
        w_queue.push_back(32'h44444444);
        
        BFM.write_burst(31'd20, w_queue);
        BFM.read_burst(31'd20, 4, r_queue);
        
        for(int i = 0; i < 4; i++) begin
            if (r_queue[i] == w_queue[i])
                $display(" -> [PASS] Beat %0d matched: %h", i, r_queue[i]);
            else
                $display(" -> [FAIL] Beat %0d mismatch! Expected %h, got %h", i, w_queue[i], r_queue[i]);
        end
        $display("");

        SRAM.load_mem("/home/ecegridfs/a/337mg227/FFT_Accelerator/Python/input_mem.txt");
        
        w_queue.delete();
        w_queue.push_back(32'h1);
        w_queue.push_back(32'd15);
        w_queue.push_back(32'd511);
        w_queue.push_back(32'd600);
        w_queue.push_back(32'd511);
        w_queue.push_back(32'h3);
        w_queue.push_back(32'h1);
        BFM.write_burst(32'd0, w_queue);
        w_queue.delete();
        w_queue.push_back(32'h1);
        BFM.write_burst(32'd6, w_queue);
        w_queue.delete();
        r_queue.delete();
        BFM.read_burst(32'd15,511,r_queue);
        for(int i = 0; i<1024; i++)begin
            @(posedge clk);
            @(posedge clk);
            @(posedge clk);
            @(posedge clk);
        end
        SRAM.dump_mem("/home/ecegridfs/a/337mg227/FFT_Accelerator/sram.txt");
        
        $finish;
    end
endmodule

/* verilator coverage_on */

