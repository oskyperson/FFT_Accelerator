`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_fft_axi_manager ();

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
    
    // signals to/from fft
    logic fft_done;
    logic fft_start;
    logic fft_valid;
    // to/from buffers
    logic [31:0] in;
    logic [9:0] rcount;
    logic wen_to_inbuf;
    logic [31:0] out;
    logic [9:0] wcount;

    // write address
    logic awready;
    logic [10:0] awaddr;
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
    
    logic fft_done;
    logic [31:0] data_out;
    logic out_valid;
    logic [31:0] data_in;
    logic in_valid;

    fft_axi_manager DUT (.*);

    axi_subordinate_model BFM (.*);

    string test;

    task configure_run(
        input [31:0] frames,
        input [31:0] r_addr,
        input [31:0] r_len,
        input [31:0] w_addr,
        input [31:0] w_len
    );
        // Wait for idle before applying new config
        wait(rstate == RIDLE && wstate == WIDLE && j == 0 && k == 0);
        @(posedge clk);
        config_reg[0] = frames;
        config_reg[1] = r_addr;
        config_reg[2] = r_len;
        config_reg[3] = w_addr;
        config_reg[4] = w_len;
        config_reg[5] = 32'h3; // wstrb for 32-bit data
        
        // Wait for capture
        @(posedge clk);
        #1; 
    endtask

    task wait_completion();
        // Wait for counters to clear and states to return to idle
        wait(j == 0 && k == 0 && rstate == RIDLE && wstate == WIDLE);
        repeat(5) @(posedge clk);
    endtask

    // fft model (basically a shft reg)
    logic [31:0] current_frame_len;
    logic [31:0] pipe_memory [0:1023]; // Large enough for max frame
    integer pipe_ptr;
    integer valid_count;

    always_comb begin
        // len is N-1, so add 1 to get the number of samples
        current_frame_len = configs[2] + 1; 
    end

    always @(posedge clk) begin
        if (!n_rst) begin
            pipe_ptr <= 0;
            valid_count <= 0;
            out_valid <= 0;
            fft_done <= 0;
        end else begin
            // Input logic
            if (in_valid) begin
                pipe_memory[pipe_ptr] <= data_in;
                // Wrap pointer based on the specific frame length configured
                pipe_ptr <= (pipe_ptr >= current_frame_len - 1) ? 0 : pipe_ptr + 1;
                
                if (valid_count < (current_frame_len * 2)) begin
                    valid_count <= valid_count + 1;
                end
            end

            // Output logic: Flush after 'current_frame_len' samples are received
            if (valid_count >= current_frame_len && wstate == WADDR) begin
                out_valid <= 1;
            end else if (wlast && wready) begin
                out_valid <= 0;
            end

            data_out <= pipe_memory[pipe_ptr];

            if (wlast && wready) begin
                fft_done <= 1;
            end else begin
                fft_done <= 0;
            end
        end
    end

    initial begin
        n_rst = 1;
        fft_done = 0;
        reset_dut;

        // 1. Max frame numbers (512 numbers per frame)
        // AXI len is N-1, so 511
        configure_run(0, 32'h0, 32'd511, 32'h400, 32'd511);
        wait_completion();

        // 2. Min frame number (2 numbers per frame)
        configure_run(0, 32'h0, 32'd1, 32'h400, 32'd1);
        wait_completion();

        // 3. Invalid address/size (Address 256 + 512 numbers)
        // Total range: 256 to 768. 
        configure_run(0, 32'd256, 32'd511, 32'd256, 32'd511);
        wait_completion();

        // 5. Max frame number for a total of 2 frames
        // config[0] = 1 results in 2 read frames (1+1) and 1 write frame based on module logic
        // To get 2 full cycles, we set frames to 1
        configure_run(1, 32'h0, 32'd511, 32'h400, 32'd511);
        wait_completion();

        $display("Testbench finished");
        $finish;
    end
endmodule

/* verilator coverage_on */

