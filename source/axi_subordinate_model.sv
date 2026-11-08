`timescale 1ns / 10ps

module axi_subordinate_model (
    input logic CLK, nRST,

    // write address
    output logic awready,
    input logic [31:0] awaddr, 
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
    input logic [31:0] araddr, 
    input logic [9:0] arlen,
    input logic arvalid,

    // read data
    output logic rlast, rvalid,
    output logic [31:0] rdata,
    input logic rready,

    // read response
    output logic rresp
);

    // Define the valid addressable range for this model
    localparam [31:0] ADDR_MAX = 32'h00010000;

    // Associative array for sparse memory simulation
    logic [31:0] mem [logic [31:0]];

    // Queues for tracking pending transactions
    logic [31:0] wr_addr_q [$];
    logic wr_err_q [$]; 
    logic [31:0] rd_addr_q [$];
    logic [9:0] rd_len_q [$];
    logic rd_err_q [$];
    integer wcount;

    initial begin
        // Reset output signals
        awready = 0;
        wready = 0;
        bvalid = 0;
        bresp = 0;
        arready = 0;
        rvalid = 0;
        rlast = 0;
        rdata = 0;
        rresp = 0;
        wcount = 0;

        wait(nRST);

        fork
            // Write Address Channel
            forever begin
                @(posedge CLK);
                awready <= 1'b1;
                if (awvalid && awready) begin
                    wr_addr_q.push_back(awaddr);
                    // Check if the start or end of burst is out of range
                    wr_err_q.push_back((awaddr > ADDR_MAX) || ((awaddr + awlen) > ADDR_MAX)); 
                    awready <= 1'b0;
                    repeat (2) @(posedge CLK);
                end
            end

            // Write Data Channel
            forever begin
                @(posedge CLK);
                wready <= 1'b1;
                if (wvalid && wready) begin
                    if (wr_addr_q.size() > 0) begin
                        mem[wr_addr_q[0]] = wdata;
                        wr_addr_q[0] = wr_addr_q[0] + 1'b1;
                    end
                    wready <= 1'b0;
                    if (wlast) begin
                        void'(wr_addr_q.pop_front());
                    end
                    repeat (1) @(posedge CLK);
                end
            end

            // Write Response Channel
            forever begin
                @(posedge CLK);
                if (wvalid && wready && wlast) begin
                    repeat (2) @(posedge CLK);
                    bvalid <= 1'b1;
                    bresp  <= wr_err_q.pop_front(); 
                    
                    while (!bready) begin
                        @(posedge CLK);
                    end
                    
                    @(posedge CLK);
                    bvalid <= 1'b0;
                    bresp  <= 1'b0;
                    repeat (2) @(posedge CLK);
                end
            end

            // Read Address Channel
            forever begin
                @(posedge CLK);
                arready <= 1'b1;
                if (arvalid && arready) begin
                    rd_addr_q.push_back(araddr);
                    rd_len_q.push_back(arlen);
                    // Check if the read request is out of range
                    rd_err_q.push_back((araddr > ADDR_MAX) || ((araddr + arlen) > ADDR_MAX));
                    arready <= 1'b0;
                    repeat (2) @(posedge CLK);
                end
            end

            // Read Data Channel
            forever begin
                logic [31:0] curr_addr;
                logic [9:0]  curr_len;
                logic        curr_err;
                
                @(posedge CLK);
                if (rd_addr_q.size() > 0) begin
                    curr_addr = rd_addr_q.pop_front();
                    curr_len  = rd_len_q.pop_front();
                    curr_err  = rd_err_q.pop_front();

                    repeat (2) @(posedge CLK);

                    for (int i = 0; i <= curr_len; i++) begin
                        rvalid <= 1'b1;
                        // Trigger rresp if the specific beat address is out of range
                        rresp  <= (curr_addr > ADDR_MAX);
                        rlast  <= (i == curr_len);
                        
                        if (mem.exists(curr_addr)) begin
                            rdata <= mem[curr_addr];
                        end else begin
                            rdata <= 32'hDEADBEEF;
                        end
                        
                        while (!rready) begin
                            @(posedge CLK);
                        end
                        
                        @(posedge CLK);
                        rvalid <= 1'b0;
                        rresp  <= 1'b0;
                        rlast  <= 1'b0;
                        curr_addr += 1'b1;
                        
                        repeat (2) @(posedge CLK);
                    end
                end
            end
        join
    end

endmodule
