`timescale 1ns / 10ps

module fft_axi_subordinate #(
    // parameters
) (
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
    output logic bresp, bvalid,
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
    output logic rresp,

    // config
    output logic [7:0][31:0] config_reg,

    // fft
    input logic fft_done,
    output logic [31:0] fft_config
);

// awready and wready
logic next_awready, next_wready;

always_ff @ (posedge clk, negedge n_rst) begin : awready_wready_reg
    if (!n_rst) begin
        awready <= '0;
        wready <= '0;
    end else begin
        awready <= next_awready;
        wready <= next_wready;
    end
end

always_comb begin : next_write_ready_logic
    next_awready = awready;
    next_wready = 1;

    if (awvalid & awready)
        next_awready = 0;
    else if (fft_done)
        next_awready = 1;

    if(!fft_done)
        next_wready = 0;
end

// awaddr capture
logic [10:0] awaddr_out, next_awaddr;

always_ff @ (posedge clk, negedge n_rst) begin : awaddr_out_reg
    if (!n_rst) begin
        awaddr_out <= '0;
    end else begin
        awaddr_out <= next_awaddr;
    end
end

always_comb begin : next_awaddr_logic
    next_awaddr = awaddr_out;

    if (awvalid & awready)
        next_awaddr = awaddr_out;
end

// write_index counter
logic [9:0] write_index;
logic [9:0] wcount;
logic rcounter_last;
logic [15:0] busy_write, next_busy_write;

always_ff @ (posedge clk, negedge n_rst) begin : busy
    if (!n_rst) begin
        busy_write <= '0;
    end else begin
        busy_write <= next_busy_write;
    end
end

fft_axi_counter #(.WRITE_OR_READ(1)) write_counter (
    .clk(clk),
    .n_rst(n_rst),
    .len(awlen),
    .ready(wready),
    .valid(wvalid),
    .resp(bresp),
    .addr(write_index),
    .last(rcounter_last),
    .i(wcount),
    .busy(next_busy_write)
);

assign write_index = awaddr_out + wcount;

// bresp
always_comb begin : bresp_logic
    bresp = 0;
    if (write_index > 15)
        bresp = 1;
    if (busy_write & busy_read & busy_write == busy_read)
        bresp = 1;
end

// config
logic [7:0][31:0] config_reg, next_config_reg;

always_ff @ (posedge clk, negedge n_rst) begin : config_reg
    if (!n_rst) begin
        config_reg <= '0;
    end else begin
        config_reg <= next_config_reg;
    end
end

always_comb begin : next_config_logic
    next_config_reg = config_reg;

    if (wvalid & wready & !bresp) begin
        if (wstrb == 2'b00)
            next_config_reg[write_index] = {16'h0000, wdata[15:0]};
        else if (wstrb == 2'b01)
            next_config_reg[write_index] = {wdata[31:16], 16'h0000};
        else if (wstrb == 2'b11)
            next_config_reg[write_index] = wdata;
    end
end

// arready and rvalid
logic next_arready, next_rvalid;

always_ff @ (posedge clk, negedge n_rst) begin : arready_rvalid_reg
    if (!n_rst) begin
        arready <= 0;
        rvalid <= 0;
    end else begin
        arready <= next_arready;
        rvalid <= next_rvalid;
    end
end

always_comb begin : next_arready_rvalid
    next_arready = arready;
    next_rvalid = 1;
    if (arvalid & arready)
        next_arready = 0;
    else if (fft_done)
        next_awready = 1;
    if(!fft_done)
        next_rvalid = 0;
end

// araddr capture
logic [10:0] araddr_out, next_araddr;

always_ff @ (posedge clk, negedge n_rst) begin : araddr_capture
    if (!n_rst) begin
        araddr_out <= '0;
    end else begin
        araddr_out <= next_araddr;
    end
end

always_comb begin : next_araddr_logic
    next_araddr = araddr_out;

    if (arvalid & arready)
        next_araddr = araddr_out;
end

// read index counter
logic [9:0] read_index;
logic [9:0] rcount;
logic [15:0] busy_read, next_busy_read;

always_ff @ (posedge clk, negedge n_rst) begin : busy
    if (!n_rst) begin
        busy_read <= '0;
    end else begin
        busy_read <= next_busy_read;
    end
end

fft_axi_counter #(.WRITE_OR_READ(0)) read_counter (
    .clk(clk),
    .n_rst(n_rst),
    .len(arlen),
    .ready(rready),
    .valid(rvalid),
    .resp(rresp),
    .addr(read_index),
    .last(rlast),
    .i(rcount),
    .busy(next_busy_read)
);

assign read_index = araddr_out + rcount;

// rresp
always_comb begin : bresp_logic
    rresp = 0;
    if (read_index > 15)
        rresp = 1;
    if (busy_write & busy_read & busy_write == busy_read)
        rresp = 1;
end

// rdata
always_comb begin : rdata_logic
    rdata = 0;

    if (rvalid & rready & !rresp)
        rdata = config_reg[read_index];
end

// to manager logic and bvalid
always_comb begin : bvalid_manager_logic
    bvalid = 0;

    if (rcounter_last)
        bvalid = 1;

    fft_config = config_reg[7];
end

endmodule

