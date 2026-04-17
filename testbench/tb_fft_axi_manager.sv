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
    
    logic fft_done;
    logic [31:0] data_out;
    logic out_valid;
    logic [31:0] data_in;
    logic in_valid;

    fft_axi_manager DUT (.*);

    axi_subordinate_model BFM (.*);

    string test;

    task configure_manager (
        input logic [31:0] config_start_read,
        input logic [31:0] config_araddr,
        input logic [31:0] config_arlen,
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
            
            for (int i = 0; i <= len; i++) begin
                data_out <= current_val;
                out_valid <= 1'b1;
                
                do begin
                    @(posedge clk);
                end while (!(wvalid && wready));

                current_val = current_val + 1;
            end

            @(posedge clk);
            out_valid <= 1'b0;
            data_out <= 32'h0;

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
            fft_done = 1;

            for (int i = 0; i <= len; i++) begin
                do begin
                    @(posedge clk);
                end while (!(in_valid));

                if (rresp) begin
                    if (rresp !== expected_rresp)
                        $display("Expected rresp: %d Got: %d", expected_rresp, rresp);
                    break;
                end

                if (data_in != current_val) // Use renamed signal
                    $display("Incorrect message at %d read. Expected: %d Got: %d", i, current_val, data_in);
                
                current_val = current_val + 1;
            end

            @(posedge clk);
            fft_done = 0;
        end
    endtask

    initial begin
        n_rst = 1;
        fft_done = 0;
        reset_dut;

        test = "valid max frame";
        @(posedge clk);
        configure_manager(32'd0, 32'd0, 32'd512, 32'd0, 32'd512, 32'd3, 32'd1, 32'd1);
        @(posedge clk);
        manager_write(32'd0, 10'd512, 32'd0, 0);
        @(posedge clk);
        configure_manager(32'd1, 32'd0, 32'd512, 32'd0, 32'd512, 32'd3, 32'd0, 32'd1);
        @(posedge clk);
        manager_read(32'd0, 10'd512, 32'd0, 0);

        test = "valid min frame";
        configure_manager(32'd0, 32'd0, 32'd1, 32'd0, 32'd1, 32'd3, 32'd1, 32'd1);
        @(posedge clk);
        manager_write(32'd0, 10'd1, 32'd6, 0);
        @(posedge clk);
        configure_manager(32'd1, 32'd0, 32'd1, 32'd0, 32'd1, 32'd3, 32'd0, 32'd1);
        @(posedge clk);
        manager_read(32'd0, 10'd1, 32'd6, 0);
        @(posedge clk);

        test = "invalid write frame";
        configure_manager(32'd0, 32'd10, 32'd512, 32'd10, 32'd512, 32'd3, 32'd1, 32'd1);
        @(posedge clk);
        manager_write(32'd10, 10'd512, 32'd0, 1);
        @(posedge clk);

        test = "invalid read frame";
        configure_manager(32'd1, 32'd10, 32'd512, 32'd10, 32'd512, 32'd3, 32'd0, 32'd1);
        @(posedge clk);
        manager_read(32'd10, 10'd512, 32'd0, 1);
        @(posedge clk);

        n_rst = 0;
        @(negedge clk);
        n_rst = 1;

        test = "simultaneous read and write";
        configure_manager(32'd0, 32'd0, 32'd10, 32'd256, 32'd10, 32'd3, 32'd1, 32'd1);
        @(posedge clk);
        manager_write(32'd0, 10'd10, 32'd0, 0);
        @(posedge clk);

        configure_manager(32'd1, 32'd0, 32'd10, 32'd256, 32'd10, 32'd3, 32'd1, 32'd1);
        
        fork : timeout_watchdog
            begin
                fork
                    begin
                        $display("Starting simultaneous write...");
                        manager_write(32'h256, 10'd10, 32'h0, 0);
                        $display("Simultaneous write finished.");
                    end
                    begin
                        $display("Starting simultaneous read...");
                        manager_read(32'd0, 10'd10, 32'h0, 0);
                        $display("Simultaneous read finished.");
                    end
                join
                disable timeout_watchdog;
            end
            begin
                #1ms; // High safety margin
                $display("Error: Simulation hung in simultaneous test!");
                $finish;
            end
        join
        $finish;
    end
endmodule

/* verilator coverage_on */

