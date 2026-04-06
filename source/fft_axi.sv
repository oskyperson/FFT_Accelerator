`timescale 1ns / 10ps

module fft_axi #(
    // parameters
    parameter DATAWIDTH = 32
) (
    input logic clk, n_rst, 
    // write address
    input logic [9:0] awaddr,
    input logic awvalid, awlen,
    output logic awready,
    // write data
    input logic [31:0] wdata,
    input logic [1:0] wstrb,
    input logic wlast, wvalid,
    output logic wready,
    // write response
    input logic bready,
    output logic bresp, bvalid,
    // read address
    input logic [9:0] araddr,
    input logic arvalid, arlen,
    output logc arready,
    // read data
    output logic [31:0] rdata,
    output logic rresp, rlast, rvalid,
    input logic rready
);



endmodule

