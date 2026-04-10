`timescale 1ns / 10ps

module fft_axi_subordinate (
    input  logic clk, n_rst,
    // write address
    output logic awready,
    input  logic [10:0] awaddr,
    input  logic [9:0]  awlen,
    input  logic awvalid,
    // write data
    output logic wready,
    input  logic [31:0] wdata,
    input  logic [1:0]  wstrb,
    input  logic wlast, wvalid,
    // write response
    output logic bresp,
    output logic bvalid,
    input  logic bready,
    // read address
    output logic arready,
    input  logic [10:0] araddr,
    input  logic [9:0]  arlen,
    input  logic arvalid,
    // read data
    output logic rlast, rvalid,
    output logic [31:0] rdata,
    input  logic rready,
    // read response
    output logic rresp,

    // config
    output logic [7:0][31:0] config_reg,

    // fft
    output logic [31:0] fft_config
);

    logic [7:0][31:0] next_config_reg;
    logic [10:0] awaddr_reg, next_awaddr;
    logic [10:0] araddr_reg, next_araddr;
    logic [9:0]  wcount, rcount;
    logic next_awready, next_wready;
    logic next_bvalid, next_bresp;
    logic next_arready, next_rvalid, next_rresp;
    logic write_last;

    logic [2:0] waddr_idx;
    logic [2:0] raddr_idx;

    logic write_addr_ok;
    logic read_addr_ok;

    // calculates new index
    assign waddr_idx = awaddr_reg[2:0] + wcount[2:0];
    assign raddr_idx = araddr_reg[2:0] + rcount[2:0];
    // determines of addr in bounds
    assign write_addr_ok = (awaddr_reg[9:3] == 7'b0);
    assign read_addr_ok  = (araddr_reg[9:3] == 7'b0);

    // --- Write Channel ---

    always_ff @(posedge clk, negedge n_rst) begin : write_ctrl_regs
        if (!n_rst) begin
            awready <= 1'b1;
            wready <= 1'b0;
            awaddr_reg <= '0;
        end else begin
            awready <= next_awready;
            wready <= next_wready;
            awaddr_reg <= next_awaddr;
        end
    end

    always_comb begin : write_ctrl_logic
        next_awready = awready;
        next_wready = wready;
        next_awaddr = awaddr_reg;

        if (awvalid && awready) begin
            next_awready = 1'b0;
            next_wready = 1'b1;
            next_awaddr = awaddr;
        end else if (wvalid && wready && wlast) begin
            next_awready = 1'b1;
            next_wready = 1'b0;
        end
    end

    fft_axi_counter #(.WRITE_OR_READ(1)) write_counter (
        .clk(clk),
        .n_rst(n_rst),
        .len(awlen),
        .ready(wready),
        .valid(wvalid),
        .resp(bresp),
        .last(write_last),
        .i(wcount)
    );

    always_ff @(posedge clk, negedge n_rst) begin : config_data_regs
        if (!n_rst)
            config_reg <= '0;
        else
            config_reg <= next_config_reg;
    end

    always_comb begin : write_data_logic
        next_config_reg = config_reg;

        if (wvalid && wready && write_addr_ok) begin
            case (wstrb)
                2'b00: next_config_reg[waddr_idx] = {16'h0000, wdata[15:0]};
                2'b01: next_config_reg[waddr_idx] = {wdata[31:16], 16'h0000};
                default: next_config_reg[waddr_idx] = wdata;
            endcase
        end
    end

    always_ff @(posedge clk, negedge n_rst) begin : write_resp_regs
        if (!n_rst) begin
            bvalid <= 1'b0;
            bresp <= 1'b0;
        end else begin
            bvalid <= next_bvalid;
            bresp <= next_bresp;
        end
    end

    always_comb begin : write_resp_logic
        next_bvalid = bvalid;
        next_bresp = bresp;

        if (wvalid && wready && (wlast || write_last)) begin
            next_bvalid = 1'b1;

            // check if index in range
            next_bresp = (awaddr_reg[9:3] != 7'b0) || (wcount[9:3]!= 7'b0) || (({1'b0, awaddr_reg[2:0]} + {1'b0, wcount[2:0]}) > 4'd7);
        end else if (bready && bvalid) begin
            next_bvalid = 1'b0;
        end
    end

    // --- Read Channel ---

    always_ff @(posedge clk, negedge n_rst) begin : read_ctrl_regs
        if (!n_rst) begin
            arready <= 1'b1;
            araddr_reg <= '0;
        end else begin
            arready <= next_arready;
            araddr_reg <= next_araddr;
        end
    end

    always_comb begin : read_ctrl_logic
        next_arready = arready;
        next_araddr = araddr_reg;

        if (arvalid && arready) begin
            next_arready = 1'b0;
            next_araddr  = araddr;
        end else if (rlast && rvalid && rready) begin
            next_arready = 1'b1;
        end
    end

    fft_axi_counter #(.WRITE_OR_READ(0)) read_counter (
        .clk(clk),
        .n_rst(n_rst),
        .len(arlen),
        .ready(rready),
        .valid(rvalid),
        .resp(rresp),
        .last(rlast),
        .i(rcount)
    );

    always_ff @(posedge clk, negedge n_rst) begin : read_resp_regs
        if (!n_rst) begin
            rvalid <= 1'b0;
            rresp <= 1'b0;
        end else begin
            rvalid <= next_rvalid;
            rresp <= next_rresp;
        end
    end

    always_comb begin : read_resp_logic
        next_rvalid = rvalid;
        next_rresp = rresp;

        if (arvalid && arready) begin
            next_rvalid = 1'b1;
            // check if in range
            next_rresp = (araddr[9:3] != 7'b0);
        end else if (rlast && rready && rvalid) begin
            next_rvalid = 1'b0;
        end
    end

    always_comb begin : read_data_logic
        if (read_addr_ok) begin
            rdata = config_reg[raddr_idx];
        end else begin
            rdata = 32'h0;
        end
    end

    assign fft_config = config_reg[7];

endmodule