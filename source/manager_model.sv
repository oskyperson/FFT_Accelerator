`timescale 1ns / 10ps

module axi_manager_model (
    input logic clk,
    input logic n_rst,

    // Write Address Channel
    output logic [10:0] awaddr,
    output logic awvalid,
    output logic [9:0] awlen,
    input logic awready,

    // Write Data Channel
    output logic [31:0] wdata,
    output logic [1:0] wstrb,
    output logic wlast,
    output logic wvalid,
    input logic wready,

    // Write Response Channel
    input logic [1:0] bresp,
    input logic bvalid,
    output logic bready,

    // Read Address Channel
    output logic [10:0] araddr,
    output logic arvalid,
    output logic [9:0] arlen,
    input logic arready,

    // Read Data Channel
    input logic [31:0] rdata,
    input logic [1:0] rresp,
    input logic rlast,
    input logic rvalid,
    output logic rready
);

    
    task automatic write_burst(input [10:0] start_addr, input [31:0] data_queue [$]);
        int num_beats = data_queue.size();
        if (num_beats == 0) return;

        @(posedge clk);
        
        awaddr  <= start_addr;
        awlen   <= num_beats - 1; 
        awvalid <= 1'b1;
        wait(awready);
        @(posedge clk);
        awvalid <= 1'b0;

        
        for (int i = 0; i < num_beats; i++) begin
            wdata <= data_queue[i];
            wstrb <= 2'b11;
            wvalid <= 1'b1;
            wlast  <= (i == num_beats - 1); 
            do begin
                @(posedge clk);
            end while (!wready);
        end
        wvalid <= 1'b0;
        wlast <= 1'b0;

        
        bready <= 1'b1;
        wait(bvalid);
        @(posedge clk);
        bready <= 1'b0;
        $display("[AXI Manager] Burst Write of %0d beats to Addr %0d finished.", num_beats, start_addr);
    endtask

    
    task automatic read_burst(input [10:0] start_addr, input int num_beats, output [31:0] result_queue [$]);
        result_queue.delete();

        @(posedge clk);
       
        araddr <= start_addr;
        arlen <= num_beats - 1;
        arvalid <= 1'b1;
        wait(arready);
        @(posedge clk);
        arvalid <= 1'b0;

        
        
        rready <= 1'b1; // Assert ready before the loop to accept data continuously
        for (int i = 0; i < num_beats; i++) begin
            do begin
                @(posedge clk);
            end while (!rvalid); // Wait for a valid handshake on a clock edge
            
            result_queue.push_back(rdata);
            
            if (i == num_beats - 1 && !rlast) 
                $display("[ERROR] RLAST not asserted on final beat!");
        end
        rready <= 1'b0;
        $display("[AXI Manager] Burst Read of %0d beats from Addr %0d finished.", num_beats, start_addr);
    endtask

endmodule
