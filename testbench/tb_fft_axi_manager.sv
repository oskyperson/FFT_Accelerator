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

    fft_axi_manager #() DUT (.*);

    axi_subordinate_model BFM (.*);

    string test;

    task configure_manager (
        input logic [31:0] config_araddr,
        input logic [31:0] config_arlen,
        input logic [31:0] config_start_read,
        input logic [31:0] config_awaddr,
        input logic [31:0] config_awlen,
        input logic [31:0] config_wstrb,
        input logic [31:0] config_start_write,
        input logic [31:0] config_fft_config
    );
    begin
        config_reg[0] = config_start_read;
        config_reg[1] = config_araddr;
        config_reg[2] = config_arlen;
        
        config_reg[3] = config_awaddr;
        config_reg[4] = config_awlen;
        config_reg[5] = config_wstrb;
        config_reg[6] = config_start_write;
        
        config_reg[7] = config_fft_config;
    end
    endtask

    task manager_write(
        input logic [31:0] start_addr,
        input logic [9:0]  len,
        input logic [31:0] starting_num,
        input logic expected_bresp
    );
        logic [31:0] current_val;
        begin
            current_val = starting_num;

            @(posedge clk);
            fft_done <= 1'b1;

            for (int i = 0; i <= len; i++) begin
                out <= current_val;
                
                do begin
                    @(posedge clk);
                end while (!(wvalid && wready));

                current_val = current_val + 1;
            end

            @(posedge clk);
            fft_done <= 1'b0;
            out <= 32'h0;

            do begin
                @(posedge clk);
            end while (!(bvalid && bready));

            if (bresp !== expected_bresp) begin
                $display("Expected bresp: %d Got: %d", expected_bresp, bresp);
            end
        end
    endtask


    task manager_read(
        input logic [31:0] start_addr,
        input logic [9:0]  len,
        input logic [31:0] starting_num,
        input logic expected_rresp
    );
        logic [31:0] current_val;
        begin
            current_val = starting_num;

            @(posedge clk);
            fft_done <= 1'b1;

            for (int i = 0; i <= len; i++) begin
                if (rresp) begin
                    if (rresp !== expected_rresp)
                        $display("Expected rresp: %d Got: %d", expected_rresp, rresp);
                    break;
                end

                if (in != current_val)
                    $display("Incorrect message at %d read. Expected: %d Got: %d", i, current_val, in);
                
                do begin
                    @(posedge clk);
                end while (!(rvalid && rready));

                current_val = current_val + 1;
            end

            @(posedge clk);
            fft_done <= 1'b0;
        end
    endtask

    initial begin
        n_rst = 1;

        reset_dut;

        test = "valid max frame";
        configure_manager(32'd1, 32'd0, 32'd511, 32'd0, 32'd511, 32'd3, 32'd0, 32'd1);
        manager_write(32'd0, 10'd511, 32'd0, 0);
        configure_manager(32'd0, 32'd0, 32'd511, 32'd0, 32'd511, 32'd3, 32'd1, 32'd1);
        manager_read(32'd0, 10'd511, 32'd0, 0);

        test = "valid min frame";
        configure_manager(32'd1, 32'd0, 32'd1, 32'd0, 32'd1, 32'd3, 32'd0, 32'd1);
        manager_write(32'd0, 10'd1, 32'd6, 0);
        configure_manager(32'd0, 32'd0, 32'd1, 32'd0, 32'd1, 32'd3, 32'd1, 32'd1);
        manager_read(32'd0, 10'd1, 32'd6, 0);

        test = "invalid write frame";
        configure_manager(32'd1, 32'd10, 32'd511, 32'd0, 32'd511, 32'd3, 32'd0, 32'd1);
        manager_write(32'd10, 10'd511, 32'd0, 1);
        configure_manager(32'd0, 32'd0, 32'd511, 32'd0, 32'd511, 32'd3, 32'd1, 32'd1);
        manager_read(32'd0, 10'd511, 32'd0, 1);

        test = "invalid read frame";
        configure_manager(32'd1, 32'd0, 32'd511, 32'd0, 32'd511, 32'd3, 32'd0, 32'd1);
        manager_write(32'd0, 10'd511, 32'd0, 1);
        configure_manager(32'd0, 32'd10, 32'd511, 32'd0, 32'd511, 32'd3, 32'd1, 32'd1);
        manager_read(32'd10, 10'd511, 32'd0, 1);

        test = "back to back";
        configure_manager(32'd1, 32'd512, 32'd15, 32'd512, 32'd15, 32'd3, 32'd0, 32'd1);
        manager_write(32'd512, 10'd15, 32'hAAAA_0000, 0);
        configure_manager(32'd1, 32'd0, 32'd15, 32'h0, 32'd15, 32'd3, 32'd0, 32'd1);
        manager_write(32'h0, 10'd15, 32'hBBBB_0000, 0);

        configure_manager(32'd1, 32'd512, 32'd15, 32'd512, 32'd15, 32'd3, 32'd0, 32'd1);
        manager_read(32'd512, 10'd15, 32'hAAAA_0000, 0);
        configure_manager(32'd1, 32'd0, 32'd15, 32'h0, 32'd15, 32'd3, 32'd0, 32'd1);
        manager_read(32'h0, 10'd15, 32'hBBBB_0000, 0);

        test = "simultaneous read and write";
        configure_manager(32'd0, 32'd512, 32'd511, 32'd512, 32'd511, 32'd3, 32'd0, 32'd1);
        manager_write(32'd512, 10'd511, 32'hFEED_0000, 0);
        configure_manager(32'd0, 32'd0, 32'd511, 32'd512, 32'd511, 32'd3, 32'd0, 32'd1);
        fork
            begin
                manager_write(32'h0, 10'd511, 32'hAAAA_0000, 0);
            end
            begin
                manager_read(32'd512, 10'd511, 32'hFEED_0000, 0);
            end
        join

        $finish;
    end
endmodule

/* verilator coverage_on */

