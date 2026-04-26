`timescale 1ns / 10ps

module manager_model (
    input logic clk,
    input logic n_rst,

    // Write Address Channel
    output logic [31:0] cpu_awaddr,
    output logic cpu_awvalid,
    output logic [9:0] cpu_awlen,
    input logic cpu_awready,

    // Write Data Channel
    output logic [31:0] cpu_wdata,
    output logic [1:0] cpu_wstrb,
    output logic cpu_wlast,
    output logic cpu_wvalid,
    input logic cpu_wready,

    // Write Response Channel
    input logic cpu_bresp,
    input logic cpu_bvalid,
    output logic cpu_bready,

    // Read Address Channel
    output logic [31:0] cpu_araddr,
    output logic cpu_arvalid,
    output logic [9:0] cpu_arlen,
    input logic cpu_arready,

    // Read Data Channel
    input logic [31:0] cpu_rdata,
    input logic cpu_rresp,
    input logic cpu_rlast,
    input logic cpu_rvalid,
    output logic cpu_rready
);

    

    initial begin
        
        cpu_awaddr = '0;
        cpu_awvalid = '0;
        cpu_awlen = '0;
        cpu_wdata = '0;
        cpu_wstrb = '0;
        cpu_wlast = '0;
        cpu_wvalid = '0;
        cpu_bready = '0;
        cpu_araddr = '0;
        cpu_arvalid = '0;
        cpu_arlen = '0;
        cpu_rready = '0;
    end

    task automatic write_burst(input [31:0] start_addr, input [31:0] data_queue [$]);
        int num_beats = data_queue.size();
        if (num_beats == 0) return;

        @(posedge clk);
        
        cpu_awaddr <= start_addr;
        cpu_awlen <= num_beats - 1; 
        cpu_awvalid <= 1'b1;
        do begin
            @(negedge clk);
        end while(!cpu_awready);
        @(negedge clk);
        cpu_awvalid <= 1'b0;

        
        for (int i = 0; i < num_beats; i++) begin
            cpu_wdata <= data_queue[i];
            cpu_wstrb <= 2'b11;
            cpu_wvalid <= 1'b1;
            cpu_wlast <= (i == num_beats - 1); 
            do begin
                @(posedge clk);
            end while (!cpu_wready);
        end
        cpu_wvalid <= 1'b0;
        cpu_wlast <= 1'b0;

        
        cpu_bready <= 1'b1;
        wait(cpu_bvalid);
        @(posedge clk);
        cpu_bready <= 1'b0;
        $display("[AXI Manager] Burst Write of %0d beats to Addr %0d finished.", num_beats, start_addr);
    endtask

    
    task automatic read_burst(input [31:0] start_addr, input int num_beats, output [31:0] result_queue [$]);
        result_queue.delete();

        @(posedge clk);
       
        cpu_araddr <= start_addr;
        cpu_arlen <= num_beats - 1;
        cpu_arvalid <= 1'b1;
        do begin
            @(negedge clk);
        end while(!cpu_arready);
        
        @(negedge clk);
        cpu_arvalid <= 1'b0;

        
        cpu_rready <= 1'b1;
        for (int i = 0; i < num_beats; i++) begin

            wait(cpu_rvalid);
            
            result_queue.push_back(cpu_rdata);
            
            $display("read: %d", i);
            if (i == num_beats - 1 && !cpu_rlast) 
                $display("[ERROR] cpu_rlast not asserted on final beat!");
            
            @(posedge clk);
            @(negedge clk);
        end
        cpu_rready <= 1'b0;
        $display("[AXI Manager] Burst Read of %0d beats from Addr %0d finished.", num_beats, start_addr);
    endtask

endmodule
