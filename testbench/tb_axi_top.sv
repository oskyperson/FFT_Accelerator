`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_axi_top ();

    localparam CLK_PERIOD = 30ns;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars;
    end

    logic CLK, nRST;

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

    string test_name;

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
        @(posedge CLK);
        @(posedge CLK);
    end
    endtask

    axi_top #() DUT (.*);

    manager_model BFM (.*);

    sram_model SRAM (.*);

    logic [31:0] w_queue [$];
    logic [31:0] r_queue [$];

    // Helper task to execute a standard transaction flow
    task automatic run_fft_transaction(string signal_type, int n_samples, int n_per_frame, int start_offset);
    begin
        // The actual AXI address is the offset + 15
        int axi_start_addr = start_offset + 15;
        // Place destination far away, ensuring it also respects the +15 offset
        int axi_dest_addr  = axi_start_addr + 500000; 
        
        test_name = signal_type;

        // 1. Load input data into SRAM model starting at the AXI-mapped address
        $display("Loading %s into SRAM at AXI Addr %0d", signal_type, axi_start_addr);
        SRAM.load_mem($psprintf("/home/ecegridfs/a/337mg041/FFT_Accelerator/sram_inputs/%s_%0d_%0d.txt", signal_type, n_samples, n_per_frame), start_offset);
        
        // 2. Configure the AXI Manager registers
        w_queue.delete();
        w_queue.push_back(n_samples / n_per_frame - 1); // Reg 0: Frame count
        w_queue.push_back(axi_start_addr);              // Reg 1: Source AXI Addr
        w_queue.push_back(n_per_frame - 1);               // Reg 2: Sample count
        w_queue.push_back(axi_dest_addr);               // Reg 3: Destination AXI Addr
        w_queue.push_back(n_per_frame - 1);               // Reg 4: Samples to write
        w_queue.push_back(32'h3);                       // Reg 5: Config
        w_queue.push_back(32'h0);                       // Reg 6: Status/Unused
        w_queue.push_back(32'h1);                       // Reg 7: Start/Go bit
        
        // Write configuration to Manager (assuming Manager registers start at 0)
        BFM.write_burst(32'd0, w_queue);
        w_queue.delete();
        w_queue.push_back(32'h0);  
        BFM.write_burst(32'd7, w_queue);
        // 3. Wait for hardware processing
        // Increased wait time to ensure FFT completion across all frames
        repeat(n_samples * 20) @(posedge CLK);
        
        // 4. Dump from the destination AXI address
        $display("Dumping results for %s from AXI Addr %0d", signal_type, axi_dest_addr);
        SRAM.dump_mem($psprintf("/home/ecegridfs/a/337mg041/FFT_Accelerator/sram_results/%s_%0d_sram", signal_type, n_samples), axi_dest_addr-15, n_samples, n_per_frame);
    end
    endtask

    initial begin
        nRST = 1;
        reset_dut;

        // Functional SRAM test
        test_name = "SRAM read write";
        w_queue.delete();
        w_queue.push_back(32'h11111111);
        w_queue.push_back(32'h22222222);
        w_queue.push_back(32'h33333333);
        w_queue.push_back(32'h44444444);
        BFM.write_burst(32'd20, w_queue);
        BFM.read_burst(32'd20, 4, r_queue);
        for(int i = 0; i < 4; i++) begin
            if (r_queue[i] == w_queue[i])
                $display(" -> [PASS] Beat %0d matched: %h", i, r_queue[i]);
            else
                $display(" -> [FAIL] Beat %0d mismatch! Expected %h, got %h", i, w_queue[i], r_queue[i]);
        end

        // Run standardized transactions matching Python script names
        begin
            string signals[] = '{"sine"};//, "impulse", "squareWave", "dc", "singleTone", "twoTone", "noise1", "noise2", "lowTone", "chirp", "multiTone"};
            int total_s[]    = '{8, 16};//, 32, 64, 128, 256, 512, 1024, 2048};
            int per_frame[]  = '{2, 4};//, 8, 16, 32, 64, 128, 256, 512};
            int offset = 100000;

            foreach (signals[s]) begin
                foreach (total_s[i]) begin
                    test_name = signals[s];
                    run_fft_transaction(signals[s], total_s[i], per_frame[i], offset);
                    offset += 100000; // Increment offset to prevent memory overlap
                end
            end
        end

        test_name = "Simul transactions";
        w_queue.delete();
        w_queue.push_back(32'h1);
        BFM.write_burst(32'd7, w_queue);
        w_queue.delete();
        w_queue.push_back(32'h0);
        BFM.write_burst(32'd7, w_queue);
        
        r_queue.delete();
        BFM.read_burst(32'd20, 4, r_queue);
        
        foreach(r_queue[i])
            $display("Read: %h", r_queue[i]);

        test_name = "invalid_config";
        w_queue.delete();
        w_queue.push_back(32'd3); // Reg 0: Frame count
        w_queue.push_back(32'd15);              // Reg 1: Source AXI Addr
        w_queue.push_back(32'd255);               // Reg 2: Sample count
        w_queue.push_back(32'd100);               // Reg 3: Destination AXI Addr
        w_queue.push_back(32'd255);               // Reg 4: Samples to write
        w_queue.push_back(32'h3); 
        w_queue.push_back(32'h2313);
                            // Reg 7: Start/Go bit
        
        // Write configuration to Manager (assuming Manager registers start at 0)
        BFM.write_burst(32'd0, w_queue);
        
        r_queue.delete();
        BFM.read_burst(32'h0, 6, r_queue);
        foreach(r_queue[i])
            $display("Read: %h", r_queue[i]);

        
        $finish;
    end
endmodule
/* verilator coverage_on */
