`timescale 1ns / 10ps

module axi_top #(
    // parameters
) (
    input logic clk, n_rst,

    input logic [31:0] cpu_awaddr, cpu_araddr,
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
    input logic [9:0] cpu_arlen, cpu_awlen,
    input logic [1:0] cpu_wstrb,

    output logic [3:0] wen,
    output logic [31:0] write_addr,
    output logic [31:0] write_data,
    input logic write_valid,

    output logic ren,
    output logic [31:0] read_addr,
    input logic [31:0] read_data,
    input logic read_valid
);

    logic [31:0] fft_man_awaddr,  fft_man_araddr;
    logic fft_man_awvalid, fft_man_arvalid;
    logic fft_man_awready, fft_man_arready;
    logic [31:0] fft_man_wdata;
    logic fft_man_wvalid, fft_man_wlast;
    logic fft_man_wready;
    logic [31:0] fft_man_rdata; 
    logic fft_man_rvalid, fft_man_rlast;
    logic fft_man_rready;
    logic fft_man_bvalid;
    logic fft_man_bready;
    logic fft_man_rresp;
    logic fft_man_bresp;
    logic [9:0] fft_man_arlen, fft_man_awlen;
    logic [1:0] fft_man_wstrb;

    
    logic [31:0] sram_awaddr, sram_araddr;
    logic sram_awvalid, sram_arvalid;
    logic sram_awready, sram_arready;
    logic [31:0] sram_wdata;
    logic sram_wvalid, sram_wlast;
    logic sram_wready;
    logic [31:0] sram_rdata; 
    logic sram_rvalid, sram_rlast;
    logic sram_rready;
    logic sram_bvalid;
    logic sram_bready;
    logic sram_rresp;
    logic sram_bresp;
    logic [9:0] sram_awlen;
    logic [1:0] sram_wstrb;
    logic [9:0] sram_arlen;
    
    logic [31:0] fft_sub_awaddr, fft_sub_araddr;
    logic fft_sub_awvalid, fft_sub_arvalid;
    logic fft_sub_awready, fft_sub_arready;
    logic [31:0] fft_sub_wdata;
    logic fft_sub_wvalid, fft_sub_wlast;
    logic fft_sub_wready;
    logic [31:0] fft_sub_rdata;
    logic fft_sub_rvalid, fft_sub_rlast;
    logic fft_sub_rready;
    logic fft_sub_bvalid;
    logic fft_sub_bready;
    logic fft_sub_rresp;
    logic fft_sub_bresp;
    logic [9:0] fft_sub_arlen, fft_sub_awlen;
    logic [1:0] fft_sub_wstrb;
    
    logic [7:0][31:0] config_reg;

    logic [31:0] out, data_out;
    logic in_valid, valid;
    logic [31:0] sample, data_in;
    logic load_size;
    logic [9:0] frame_size;

    logic out_valid;

    assign sample = data_in;
    assign valid = in_valid;
    assign data_out = out;

    fft_axi_manager fft_man (.*);
    fft_axi_subordinate fft_sub(.*);
    sram_axi sram (.*);
    arbiter arbit (.*);
    fft_core fft (.*);

endmodule

