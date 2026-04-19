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

    fft_axi_manager
    fft_axi_subordinate
    sram_axi
    arbiter

endmodule

