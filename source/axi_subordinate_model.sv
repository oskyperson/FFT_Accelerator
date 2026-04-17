`timescale 1ns / 10ps

module axi_subordinate_model (
    input logic clk, n_rst,

    // write address
    output logic awready,
    input logic [10:0] awaddr,
    input logic [9:0] awlen,
    input logic awvalid, 

    // write data
    output logic wready,
    input logic [31:0] wdata,
    input logic [1:0] wstrb,
    input logic wlast, wvalid,

    // write response
    output logic bresp,
    output logic bvalid,
    input logic bready,

    // read address
    output logic arready,
    input logic [10:0] araddr,
    input logic [9:0] arlen,
    input logic arvalid,

    // read data
    output logic rlast, rvalid,
    output logic [31:0] rdata,
    input logic rready,

    // read response
    output logic rresp
);

    // Associative array for sparse memory simulation
    logic [31:0] mem [logic [10:0]];

    // Queues for tracking pending transactions
    logic [10:0] wr_addr_q [$];
    logic        wr_err_q [$]; 
    logic [10:0] rd_addr_q [$];
    logic [9:0]  rd_len_q [$];
    logic        rd_err_q [$];
    integer wcount;

    initial begin
        // Reset output signals
        awready = 0;
        wready  = 0;
        bvalid  = 0;
        bresp   = 0;
        arready = 0;
        rvalid  = 0;
        rlast   = 0;
        rdata   = 0;
        rresp   = 0;
        wcount = 0;

        wait(n_rst);

        fork
            // Write Address Channel
            forever begin
                @(posedge clk);
                awready <= 1'b1;
                if (awvalid && awready) begin
                    wr_addr_q.push_back(awaddr);
                    wr_err_q.push_back((awaddr + awlen) > 512);
                    awready <= 1'b0;
                    repeat (2) @(posedge clk);
                    // wcount = awaddr;
                end
            end

            // Write Data Channel
            forever begin
                @(posedge clk);
                wready <= 1'b1;
                if (wvalid && wready) begin
                    if (wr_addr_q.size() > 0) begin
                        mem[wr_addr_q[0]] = wdata;
                        wr_addr_q[0] = wr_addr_q[0] + 1;
                    end
                    wready <= 1'b0;
                    if (wlast) begin
                        void'(wr_addr_q.pop_front());
                    end
                    repeat (2) @(posedge clk);
                    // wcount = wcount + 1;
                end
            end

            // Write Response Channel
            forever begin
                @(posedge clk);
                if (wvalid && wready && wlast) begin
                    repeat (2) @(posedge clk);
                    bvalid <= 1'b1;
                    bresp  <= wr_err_q.pop_front(); 
                    
                    // Wait for manager to be ready
                    while (!bready) begin
                        @(posedge clk);
                    end
                    
                    // Handshake occurs on this edge
                    @(posedge clk);
                    bvalid <= 1'b0;
                    bresp  <= 1'b0;
                    // Processing delay after response handshake
                    repeat (2) @(posedge clk);
                end
            end

            // Read Address Channel
            forever begin
                @(posedge clk);
                arready <= 1'b1;
                if (arvalid && arready) begin
                    rd_addr_q.push_back(araddr);
                    rd_len_q.push_back(arlen);
                    rd_err_q.push_back((araddr + arlen) > 512);
                    arready <= 1'b0;
                    repeat (2) @(posedge clk);
                end
            end

            // Read Data Channel
            forever begin
                logic [10:0] curr_addr;
                logic [9:0]  curr_len;
                logic        curr_err;
                
                @(posedge clk);
                if (rd_addr_q.size() > 0) begin
                    // Pop the request
                    curr_addr = rd_addr_q.pop_front();
                    curr_len  = rd_len_q.pop_front();
                    curr_err  = rd_err_q.pop_front();

                    // Delay BEFORE asserting rvalid to allow manager state transition
                    repeat (2) @(posedge clk);

                    for (int i = 0; i <= curr_len; i++) begin
                        rvalid <= 1'b1;
                        rresp  <= ((i + araddr) > 512);
                        rlast  <= (i == curr_len);
                        
                        if (mem.exists(curr_addr)) begin
                            rdata <= mem[curr_addr];
                        end else begin
                            rdata <= 32'hDEADBEEF;
                        end
                        
                        while (!rready) begin
                            @(posedge clk);
                        end
                        
                        @(posedge clk);
                        rvalid <= 1'b0;
                        rresp  <= 1'b0;
                        rlast  <= 1'b0;
                        curr_addr += 1;
                        
                        // Delay between beats of a burst
                        repeat (2) @(posedge clk);
                    end
                end
            end
        join
    end

endmodule