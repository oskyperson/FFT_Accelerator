`timescale 1ns / 10ps

/* verilator lint_off UNUSEDSIGNAL */
module fft_axi_subordinate (
    input  logic CLK, nRST,
    // write address
    output logic fft_sub_awready,
    input  logic [31:0] fft_sub_awaddr,
    input  logic [9:0]  fft_sub_awlen,
    input  logic fft_sub_awvalid,
    // write data
    output logic fft_sub_wready,
    input  logic [31:0] fft_sub_wdata,
    input  logic [1:0]  fft_sub_wstrb,
    input  logic fft_sub_wlast, fft_sub_wvalid,
    // write response
    output logic fft_sub_bresp,
    output logic fft_sub_bvalid,
    input  logic fft_sub_bready,
    // read address
    output logic fft_sub_arready,
    input  logic [31:0] fft_sub_araddr,
    input  logic [9:0]  fft_sub_arlen,
    input  logic fft_sub_arvalid,
    // read data
    output logic fft_sub_rlast, fft_sub_rvalid,
    output logic [31:0] fft_sub_rdata,
    input  logic fft_sub_rready,
    // read response
    output logic fft_sub_rresp,

    // config
    output logic [7:0][31:0] config_reg
);

    logic [7:0][31:0] next_config_reg;
    logic [31:0] awaddr_reg, next_awaddr;
    logic [31:0] araddr_reg, next_araddr;
    logic [9:0] wcount, rcount;
    
    logic next_awready, next_wready;
    logic next_bvalid, next_bresp;
    logic next_arready, next_rvalid, next_rresp;
    logic write_last;

    logic [2:0] waddr_idx;
    logic [2:0] raddr_idx;

    logic write_addr_ok;
    logic read_addr_ok;

    assign waddr_idx = awaddr_reg[2:0] + wcount[2:0];
    assign raddr_idx = araddr_reg[2:0] + rcount[2:0];
    assign write_addr_ok = (awaddr_reg[31:3] == 29'b0);
    assign read_addr_ok  = (araddr_reg[31:3] == 29'b0);

    // --- Write Channel ---

    always_ff @(posedge CLK, negedge nRST) begin : write_ctrl_regs
        if (!nRST) begin
            fft_sub_awready <= 1'b1;
            fft_sub_wready <= 1'b0;
            awaddr_reg <= '0;
        end else begin
            fft_sub_awready <= next_awready;
            fft_sub_wready <= next_wready;
            awaddr_reg <= next_awaddr;
        end
    end

    always_comb begin : write_ctrl_logic
        next_awready = fft_sub_awready;
        next_wready = fft_sub_wready;
        next_awaddr = awaddr_reg;

        if (fft_sub_awvalid && fft_sub_awready) begin
            next_awready = 1'b0;
            next_wready = 1'b1;
            next_awaddr = fft_sub_awaddr;
        end else if (fft_sub_wvalid && fft_sub_wready && fft_sub_wlast) begin
            next_awready = 1'b1;
            next_wready = 1'b0;
        end
    end

    fft_axi_counter #(.WRITE_OR_READ(1)) write_counter (
        .CLK(CLK),
        .nRST(nRST),
        .len(fft_sub_awlen),
        .ready(fft_sub_wready),
        .valid(fft_sub_wvalid),
        .resp(fft_sub_bresp),
        .last(write_last),
        .i(wcount)
    );

    always_ff @(posedge CLK, negedge nRST) begin : config_data_regs
        if (!nRST)
            config_reg <= '0;
        else if (waddr_idx == 3'd2 || waddr_idx == 3'd4) begin
            if ((next_config_reg[waddr_idx] == 0) || 
                (((next_config_reg[waddr_idx] + 1) & next_config_reg[waddr_idx]) != 0) ||
                (next_config_reg[waddr_idx] < 32'd1) || 
                (next_config_reg[waddr_idx] > 32'd511))
                config_reg <= '0;
            else
                config_reg <= next_config_reg;
        end
        else if (waddr_idx == 3'd6 && next_config_reg[waddr_idx] > 32'd5)
            config_reg <= '0;
        else
            config_reg <= next_config_reg;
    end

    always_comb begin : write_data_logic
        next_config_reg = config_reg;

        if (fft_sub_wvalid && fft_sub_wready && (next_awaddr[31:3] == 29'b0)) begin
            case (fft_sub_wstrb)
                2'b00: begin 
                    next_config_reg[waddr_idx] = {16'h0000, fft_sub_wdata[15:0]};
                end
                2'b01: begin 
                    next_config_reg[waddr_idx] = {fft_sub_wdata[31:16], 16'h0000};
                end
                default: begin 
                    next_config_reg[waddr_idx] = fft_sub_wdata;
                end
            endcase
        end
    end

    always_ff @(posedge CLK, negedge nRST) begin : write_resp_regs
        if (!nRST) begin
            fft_sub_bvalid <= 1'b0;
            fft_sub_bresp <= 1'b0;
        end else begin
            fft_sub_bvalid <= next_bvalid;
            fft_sub_bresp <= next_bresp;
        end
    end

    always_comb begin : write_resp_logic
        next_bvalid = fft_sub_bvalid;
        next_bresp = 0;

        if (fft_sub_wvalid && fft_sub_wready && (fft_sub_wlast || write_last)) begin
            next_bvalid = 1'b1;
            next_bresp = ({1'b0, awaddr_reg[2:0]} + {1'b0, wcount[2:0]}) > 4'd7;
        end else if (fft_sub_bready && fft_sub_bvalid) begin
            next_bvalid = 1'b0;
        end
    end

    // --- Read Channel ---

    always_ff @(posedge CLK, negedge nRST) begin : read_ctrl_regs
        if (!nRST) begin
            fft_sub_arready <= 1'b1;
            araddr_reg <= '0;
        end else begin
            fft_sub_arready <= next_arready;
            araddr_reg <= next_araddr;
        end
    end

    always_comb begin : read_ctrl_logic
        next_arready = fft_sub_arready;
        next_araddr = araddr_reg;

        if (fft_sub_arvalid && fft_sub_arready) begin
            next_arready = 1'b0;
            next_araddr  = fft_sub_araddr;
        end else if (fft_sub_rlast && fft_sub_rvalid && fft_sub_rready) begin
            next_arready = 1'b1;
        end
    end

    fft_axi_counter #(.WRITE_OR_READ(0)) read_counter (
        .CLK(CLK),
        .nRST(nRST),
        .len(fft_sub_arlen),
        .ready(fft_sub_rready),
        .valid(fft_sub_rvalid),
        .resp(fft_sub_rresp),
        .last(fft_sub_rlast),
        .i(rcount)
    );

    always_ff @(posedge CLK, negedge nRST) begin : read_resp_regs
        if (!nRST) begin
            fft_sub_rvalid <= 1'b0;
            fft_sub_rresp <= 1'b0;
        end else begin
            fft_sub_rvalid <= next_rvalid;
            fft_sub_rresp <= next_rresp;
        end
    end

    always_comb begin : read_resp_logic
        next_rvalid = fft_sub_rvalid;
        next_rresp = 0;

        if (fft_sub_arvalid && fft_sub_arready) begin
            next_rvalid = 1'b1;
        end else if (fft_sub_rlast && fft_sub_rready && fft_sub_rvalid) begin
            next_rvalid = 1'b0;
        end
        if (fft_sub_rready && fft_sub_rvalid) begin
            next_rresp = ({1'b0, araddr_reg[2:0]} + {1'b0, rcount[2:0]}) > 4'd7;
        end
    end

    always_comb begin : read_data_logic
        if (read_addr_ok) begin
            fft_sub_rdata = config_reg[raddr_idx];
        end else begin
            fft_sub_rdata = 32'h0;
        end
    end

endmodule
/* verilator lint_on UNUSEDSIGNAL */
