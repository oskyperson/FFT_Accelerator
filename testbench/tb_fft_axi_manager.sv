`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_fft_axi_manager ();

    localparam CLK_PERIOD = 20ns;

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
    
    logic fft_done;
    logic [31:0] data_out;
    logic out_valid;
    logic [31:0] data_in;
    logic in_valid;

    logic load_size;
    logic [9:0] frame_size;
    logic [31:0] windowing;

    fft_axi_manager DUT (
        .clk(clk),
        .n_rst(n_rst),
        .fft_man_awready(awready),
        .fft_man_awaddr(awaddr),
        .fft_man_awlen(awlen),
        .fft_man_awvalid(awvalid),
        .fft_man_wready(wready),
        .fft_man_wdata(wdata),
        .fft_man_wstrb(wstrb),
        .fft_man_wlast(wlast),
        .fft_man_wvalid(wvalid),
        .fft_man_bresp(bresp),
        .fft_man_bvalid(bvalid),
        .fft_man_bready(bready),
        .fft_man_arready(arready),
        .fft_man_araddr(araddr),
        .fft_man_arlen(arlen),
        .fft_man_arvalid(arvalid),
        .fft_man_rlast(rlast),
        .fft_man_rvalid(rvalid),
        .fft_man_rdata(rdata),
        .fft_man_rready(rready),
        .fft_man_rresp(rresp),
        .config_reg(config_reg),
        .data_out(data_out),
        .out_valid(out_valid),
        .data_in(data_in),
        .in_valid(in_valid),
        .load_size(load_size),
        .frame_size(frame_size)
    );

    axi_subordinate_model BFM (.*);

    string test;

    task configure_run(
        input [31:0] frames,
        input [31:0] r_addr,
        input [31:0] r_len,
        input [31:0] w_addr,
        input [31:0] w_len,
        input [31:0] windowing
    );
        wait(DUT.rstate == 0 && DUT.wstate == 0 && DUT.j == 0 && DUT.k == 0);
        @(posedge clk);
        config_reg[0] = frames;
        config_reg[1] = r_addr;
        config_reg[2] = r_len;
        config_reg[3] = w_addr;
        config_reg[4] = w_len;
        config_reg[5] = 32'h3;

        config_reg[7][0] = 1; 
        config_reg[6] = windowing;

        @(posedge clk);
        config_reg[7][0] = 0;
        #1; 
    endtask

    task wait_completion();
        wait(DUT.j == 0 && DUT.k == 0 && DUT.rstate == 0 && DUT.wstate == 0);
        repeat(5) @(posedge clk);
    endtask

    // fft model logic
    logic [31:0] current_frame_len;
    logic [31:0] pipe_memory [0:1023];
    integer wr_ptr; 
    integer rd_ptr;

    always_comb begin
        current_frame_len = config_reg[2] + 1; 
    end

    always @(posedge clk) begin
        if (!n_rst) begin
            wr_ptr <= 0;
            fft_done <= 0;
            data_out <= 0;
        end else begin
            if (in_valid) begin
                data_out <= pipe_memory[wr_ptr];
                pipe_memory[wr_ptr] <= data_in;
                if (wr_ptr >= current_frame_len - 1)
                    wr_ptr <= 0;
                else
                    wr_ptr <= wr_ptr + 1;
            end if (DUT.rstate == 0 && DUT.wstate == 0) begin
                fft_done <= 1;
            end else begin
                fft_done <= 0;
            end
        end
    end

    // always_ff @ (posedge clk)
    //     out_valid <= in_valid;

    assign out_valid = in_valid;

    initial begin
        n_rst = 1;
        config_reg = '0; 
        fft_done = 0;
        test = "IDLE";

        for (integer i = 0; i < 2048; i++) begin
            BFM.mem[32'(i)] = i; 
        end
        
        reset_dut;

        test = "1 frame max samples";
        configure_run(32'd1, 32'h0, 32'd511, 32'h800, 32'd511, 32'd1);
        wait_completion();

        test = "1 frame min samples";
        configure_run(32'd1, 32'h0, 32'd1, 32'h800, 32'd1, 32'd2);
        wait_completion();

        test = "2 frames max samples";
        configure_run(32'd2, 32'h0, 32'd511, 32'h800, 32'd511, 32'd3);
        wait_completion();

        test = "2 frames min samples";
        configure_run(32'd2, 32'h0, 32'd1, 32'h800, 32'd1, 32'd4);
        wait_completion();

        test = "1 frame offset address";
        configure_run(32'd1, 32'd128, 32'd255, 32'd128, 32'd255, 32'd5);
        wait_completion();

        $display("Testbench finished");
        $finish;
    end
endmodule
/* verilator coverage_on */
