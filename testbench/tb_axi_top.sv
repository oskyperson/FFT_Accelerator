`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_axi_top ();

    localparam CLK_PERIOD = 20ns;

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
        $display("");


        w_queue.delete();
        for(int i = 0; i < 1024; i++) begin
            w_queue.push_back(32'd0);
        end
        BFM.write_burst(32'd15, w_queue);
        BFM.write_burst(32'd1039, w_queue);

        SRAM.load_mem("/home/ecegridfs/a/337mg227/FFT_Accelerator/Python/input_mem1.txt");
        
        w_queue.delete();
        w_queue.push_back(32'h1);
        w_queue.push_back(32'd15);
        w_queue.push_back(32'd511);
        w_queue.push_back(32'd3000);
        w_queue.push_back(32'd511);
        w_queue.push_back(32'h3);
        w_queue.push_back(32'h0);
        w_queue.push_back(32'h1);
        BFM.write_burst(32'd0, w_queue);
        w_queue.delete();
        w_queue.push_back(32'h0);
        BFM.write_burst(32'd7, w_queue);
        w_queue.delete();
        r_queue.delete();
        $display("ugh");
        
        $display("ugh2");
        for(int i = 0; i<2048; i++)begin
            @(posedge clk);
            @(posedge clk);
            @(posedge clk);
            @(posedge clk);
            $display("I HATE OSCAR, %d", i);
        end
        $display("mem dumped1");
        SRAM.dump_mem("/home/ecegridfs/a/337mg227/FFT_Accelerator/sram1.txt", 2048, 1);

        

        // next frame
        SRAM.load_mem("/home/ecegridfs/a/337mg227/FFT_Accelerator/Python/input_mem2.txt");
        w_queue.delete();
        w_queue.push_back(32'h1);
        w_queue.push_back(32'd15);
        w_queue.push_back(32'd511);
        w_queue.push_back(32'd3000);
        w_queue.push_back(32'd511);
        w_queue.push_back(32'h3);
        w_queue.push_back(32'h0);
        w_queue.push_back(32'h1);
        BFM.write_burst(32'd0, w_queue);
        w_queue.delete();
        w_queue.push_back(32'h0);
        BFM.write_burst(32'd7, w_queue);
        w_queue.delete();
        r_queue.delete();
        $display("ugh");
        
        $display("ugh2");
        for(int i = 0; i<2048; i++)begin
            @(posedge clk);
            @(posedge clk);
            @(posedge clk);
            @(posedge clk);
            $display("I HATE OSCAR, %d", i);
        end
        $display("mem dumped");
        SRAM.dump_mem("/home/ecegridfs/a/337mg227/FFT_Accelerator/sram2.txt", 2048, 1);

        $finish;
    end
endmodule

/* verilator coverage_on */

