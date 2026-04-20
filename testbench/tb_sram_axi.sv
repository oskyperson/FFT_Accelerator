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
    logic [31:0] awaddr, araddr;
    logic        awvalid, arvalid, awready, arready;
    logic [9:0]  awlen, arlen;
    logic [31:0] wdata, rdata;
    logic [1:0]  wstrb, rresp, bresp;
    logic        wlast, rlast, wvalid, rvalid, wready, rready, bvalid, bready;

    //SRAM
    logic [3:0]  wen;
    logic        ren;
    logic [31:0] read_data, write_data;
    logic [31:0]  read_addr, write_addr;
    logic        read_valid, write_valid;

    
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

    
    
    
    axi_manager_model BFM (.*);

    
    sram_axi #() DUT (.*);

    
    sram_model #() SRAM (.*);

    
    logic [31:0] w_queue [$];
    logic [31:0] r_queue [$];

    initial begin
        
        force BFM.awvalid = 0;
        force BFM.wvalid  = 0;
        force BFM.bready  = 0;
        force BFM.arvalid = 0;
        force BFM.rready  = 0;
        force BFM.araddr = '0;
        force BFM.awaddr = '0;

        #1;
        release BFM.awvalid;
        release BFM.wvalid;
        release BFM.bready;
        release BFM.arvalid;
        release BFM.rready;
        release BFM.araddr;
        release BFM.awaddr;

        n_rst = 1;
        reset_dut;

         
 
         

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
        w_queue.push_back(32'hCAFEBABE);
        
        BFM.write_burst(32'd1038, w_queue);
        BFM.read_burst(32'd1038, 1, r_queue);
        
        if (r_queue[0] == 32'hCAFEBABE)
            $display(" -> [PASS] Read matched written data: %h\n", r_queue[0]);
        else
            $display(" -> [FAIL] Expected CAFEBABE, got: %h\n", r_queue[0]);


        $display(" TEST 4: Simultaneous Read and Write");

        w_queue.delete();
        w_queue.push_back(32'h11111111);
        w_queue.push_back(32'h22222222);

        fork

            BFM.write_burst(32'd30, w_queue);

            BFM.read_burst(32'd20, 2, r_queue);
        join

        for(int i = 0; i < 2; i++) begin
            if (r_queue[i] == w_queue[i])
                $display(" -> [PASS] Beat %0d matched: %h", i, r_queue[i]);
            else
                $display(" -> [FAIL] Beat %0d mismatch! Expected %h, got %h", i, w_queue[i], r_queue[i]);
        end
        
        BFM.read_burst(32'd30, 2, r_queue);

        for(int i = 0; i < 2; i++) begin
            if (r_queue[i] == w_queue[i])
                $display(" -> [PASS] Beat %0d matched: %h", i, r_queue[i]);
            else
                $display(" -> [FAIL] Beat %0d mismatch! Expected %h, got %h", i, w_queue[i], r_queue[i]);
        end
        $finish;
    end
endmodule

/* verilator coverage_on */