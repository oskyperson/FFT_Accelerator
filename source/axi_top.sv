`timescale 1ns / 10ps

module axi_top #(
    // parameters
) (
    input logic clk, n_rst

    input logic [10:0] cpu_awaddr, cpu_araddr,
    input logic cpu_awvalid, cpu_arvalid,
    output logic cpu_awready, cpu_arready,
    input logic [31:0] cpu_wdata,
    input logic cpu_wvalid, cpu_wlast,
    output logic cpu_wready,
    output logic [31:0] cpu_rdata, 
    output logic cpu_rvalid, cpu_rlast,
    input logic cpu_rready,
    output logic cpu_bvalid,
    input logic cpu_bready,
    output logic cpu_rresp,
    output logic cpu_bresp,

    output logic [3:0] wen,
    output logic [ADDR_WIDTH-1:0] write_addr,
    output logic [DATA_WIDTH-1:0] write_data,
    input logic write_valid,

    output logic ren,
    output logic [ADDR_WIDTH-1:0] read_addr,
    input logic [DATA_WIDTH-1:0] read_data,
    input logic read_valid
);

    input logic [10:0] fft_man_awaddr,  fft_man_araddr,
    input logic fft_man_awvalid, fft_man_arvalid,
    output logic fft_man_awready, fft_man_arready,
    input logic [31:0] fft_man_wdata, 
    input logic fft_man_wvalid, fft_man_wlast,
    output logic fft_man_wready,
    output logic [31:0] fft_man_rdata, 
    output logic fft_man_rvalid, fft_man_rlast,
    input logic fft_man_rready,
    output logic fft_man_bvalid,
    input logic fft_man_bready,
    output logic fft_man_rresp,
    output logic fft_man_bresp,

    
    output logic [10:0] sram_awaddr, sram_araddr,
    output logic sram_awvalid, sram_arvalid,
    input logic sram_awready, sram_arready,
    output logic [31:0] sram_wdata, 
    output logic sram_wvalid, sram_wlast,
    input logic sram_wready,
    input logic [31:0] sram_rdata, 
    input logic sram_rvalid, sram_rlast,
    output logic sram_rready,
    input logic sram_bvalid,
    output logic sram_bready,
    input logic sram_rresp,
    input logic sram_bresp,

    
    output logic [10:0] fft_sub_awaddr, fft_sub_araddr,
    output logic fft_sub_awvalid, fft_sub_arvalid,
    input logic fft_sub_awready, fft_sub_arready,
    output logic [31:0] fft_sub_wdata, 
    output logic fft_sub_wvalid, fft_sub_wlast,
    input logic fft_sub_wready,
    input logic [31:0] fft_sub_rdata, 
    input logic fft_sub_rvalid, fft_sub_rlast,
    output logic fft_sub_rready,
    input logic fft_sub_bvalid,
    output logic fft_sub_bready,
    input logic fft_sub_rresp,
    input logic fft_sub_bresp
    fft_axi_manager
    fft_axi_subordinate
    sram_axi
    arbiter

endmodule

