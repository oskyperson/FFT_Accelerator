`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_sram_axi ();

    localparam CLK_PERIOD = 10ns;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars;
    end

    logic clk, n_rst;

    //AXI
    logic [31:0] cpu_awaddr, cpu_araddr;
    logic cpu_awvalid, cpu_arvalid, cpu_awready, cpu_arready;
    logic [9:0] cpu_awlen, cpu_arlen;
    logic [31:0] cpu_wdata, cpu_rdata;
    logic [1:0] cpu_wstrb; 
    logic cpu_rresp, cpu_bresp;
    logic cpu_wlast, cpu_rlast, cpu_wvalid, cpu_rvalid, cpu_wready, cpu_rready, cpu_bvalid, cpu_bready;

    logic [31:0] sram_awaddr, sram_araddr;
    logic sram_awvalid, sram_arvalid, sram_awready, sram_arready;
    logic [9:0] sram_awlen, sram_arlen;
    logic [31:0] sram_wdata, sram_rdata;
    logic [1:0] sram_wstrb;
    logic sram_rresp, sram_bresp;
    logic sram_wlast, sram_rlast, sram_wvalid, sram_rvalid, sram_wready, sram_rready, sram_bvalid, sram_bready;

    assign sram_awaddr = cpu_awaddr;
    assign sram_awvalid = cpu_awvalid;
    assign sram_awlen = cpu_awlen;
    assign cpu_awready = sram_awready;

    assign sram_wdata = cpu_wdata;
    assign sram_wstrb = cpu_wstrb;
    assign sram_wlast = cpu_wlast;
    assign sram_wvalid = cpu_wvalid;
    assign cpu_wready = sram_wready;

    assign cpu_bresp = sram_bresp;
    assign cpu_bvalid = sram_bvalid;
    assign sram_bready = cpu_bready;

    assign sram_araddr = cpu_araddr;
    assign sram_arvalid = cpu_arvalid;
    assign sram_arlen = cpu_arlen;
    assign cpu_arready = sram_arready;

    assign cpu_rdata = sram_rdata;
    assign cpu_rresp = sram_rresp;
    assign cpu_rlast = sram_rlast;
    assign cpu_rvalid = sram_rvalid;
    assign sram_rready = cpu_rready;

    //SRAM
    logic [3:0] wen;
    logic ren;
    logic [31:0] read_data, write_data;
    logic [31:0] read_addr, write_addr;
    logic read_valid, write_valid;

    
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

    
    
    
    manager_model BFM (.*);

    
    sram_axi #() DUT (.*);

    
    sram_model #() SRAM (.*);

    
    logic [31:0] w_queue [$];
    logic [31:0] r_queue [$];
    

    initial begin
        
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

        n_rst = 1;
        reset_dut;

         
 
        SRAM.load_mem("/home/ecegridfs/a/337mg041/FFT_Accelerator/Python/input_mem.txt");

        $display(" TEST 1: Single Word Access (Addr 15)");

        w_queue.delete();
        w_queue.push_back(32'hDEADBEEF);
        
        BFM.write_burst(32'd15, w_queue);
        BFM.read_burst(32'd15, 1, r_queue);
        
        if (r_queue[0] == 32'hDEADBEEF)
            $display(" -> [PASS] Read matched written data: %h\n", r_queue[0]);
        else
            $display(" -> [FAIL] Expected DEADBEEF, got: %h\n", r_queue[0]);


         

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

         

         
        

        $display(" TEST 3: Upper Boundary Access (Addr 1038)");

        w_queue.delete();
        w_queue.push_back(32'hDEADBEEF);
        
        BFM.write_burst(32'd15, w_queue);
        BFM.read_burst(32'd15, 1, r_queue);
        
        if (r_queue[0] == 32'hDEADBEEF)
            $display(" -> [PASS] Read matched written data: %h\n", r_queue[0]);
        else
            $display(" -> [FAIL] Expected CAFEBABE, got: %h\n", r_queue[0]);


        $display(" TEST 4: Simultaneous Read and Write");

        w_queue.delete();
        w_queue.push_back(32'h11111111);
        w_queue.push_back(32'h22222222);

        fork

            BFM.write_burst(32'd20, w_queue);

            BFM.read_burst(32'd20, 2, r_queue);
        join

        for(int i = 0; i < 2; i++) begin
            if (r_queue[i] == w_queue[i])
                $display(" -> [PASS] Beat %0d matched: %h", i, r_queue[i]);
            else
                $display(" -> [FAIL] Beat %0d mismatch! Expected %h, got %h", i, w_queue[i], r_queue[i]);
        end
        
        SRAM.dump_mem("/home/ecegridfs/a/337mg041/FFT_Accelerator/sram.txt");

        $finish;
    end
endmodule

/* verilator coverage_on */