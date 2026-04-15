`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_sram_axi ();

    localparam CLK_PERIOD = 10ns;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars;
    end

    logic clk, n_rst;

    // --- AXI Bus Wires (Manager to DUT) ---
    logic [10:0] awaddr, araddr;
    logic        awvalid, arvalid, awready, arready;
    logic [7:0]  awlen, arlen;
    logic [31:0] wdata, rdata;
    logic [1:0]  wstrb, rresp, bresp;
    logic        wlast, rlast, wvalid, rvalid, wready, rready, bvalid, bready;

    // --- SRAM Interface Wires (DUT to Memory) ---
    logic [3:0]  wen;
    logic        ren;
    logic [31:0] read_data, write_data;
    logic [9:0]  read_addr, write_addr;
    logic        read_valid, write_valid;

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

    // --- Instantiate Components ---
    
    // 1. AXI Manager BFM
    axi_manager_model BFM (.*);

    // 2. The DUT (SRAM AXI Subordinate)
    sram_axi #() DUT (.*);

    // 3. The SRAM Memory Model
    sram_model #() SRAM (.*);

    // Queues for Test Data Handling
    logic [31:0] w_queue [$];
    logic [31:0] r_queue [$];

    initial begin
        // Force BFM outputs to 0 temporarily to prevent X-state propagation 
        // through the DUT logic before the first tasks are called.
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

        n_rst = 1;
        reset_dut;

        // ---------------------------------------------------------
        // TEST 1: Single Word Write and Read (Base Address)
        // ---------------------------------------------------------
        $display("========================================");
        $display(" TEST 1: Single Word Access (Addr 15)");
        $display("========================================");
        w_queue.delete();
        w_queue.push_back(32'hDEADBEEF);
        
        BFM.write_burst(11'd15, w_queue);
        BFM.read_burst(11'd15, 1, r_queue);
        
        if (r_queue[0] == 32'hDEADBEEF)
            $display(" -> [PASS] Read matched written data: %h\n", r_queue[0]);
        else
            $display(" -> [FAIL] Expected DEADBEEF, got: %h\n", r_queue[0]);

        // ---------------------------------------------------------
        // TEST 2: Multi-Beat Burst Write and Read
        // ---------------------------------------------------------
        $display("========================================");
        $display(" TEST 2: 4-Beat Burst Access (Addr 20)");
        $display("========================================");
        w_queue.delete();
        w_queue.push_back(32'h11111111);
        w_queue.push_back(32'h22222222);
        w_queue.push_back(32'h33333333);
        w_queue.push_back(32'h44444444);
        
        BFM.write_burst(11'd20, w_queue);
        BFM.read_burst(11'd20, 4, r_queue);
        
        for(int i = 0; i < 4; i++) begin
            if (r_queue[i] == w_queue[i])
                $display(" -> [PASS] Beat %0d matched: %h", i, r_queue[i]);
            else
                $display(" -> [FAIL] Beat %0d mismatch! Expected %h, got %h", i, w_queue[i], r_queue[i]);
        end
        $display("");

        // ---------------------------------------------------------
        // TEST 3: Edge Case (Upper Address Boundary)
        // ---------------------------------------------------------
        /*
        $display("========================================");
        $display(" TEST 3: Upper Boundary Access (Addr 1038)");
        $display("========================================");
        w_queue.delete();
        w_queue.push_back(32'hCAFEBABE);
        
        BFM.write_burst(11'd1038, w_queue);
        BFM.read_burst(11'd1038, 1, r_queue);
        
        if (r_queue[0] == 32'hCAFEBABE)
            $display(" -> [PASS] Read matched written data: %h\n", r_queue[0]);
        else
            $display(" -> [FAIL] Expected CAFEBABE, got: %h\n", r_queue[0]);
        */
        $display("========================================");
        $display(" SIMULATION COMPLETE ");
        $display("========================================");

        $finish;
    end
endmodule

/* verilator coverage_on */