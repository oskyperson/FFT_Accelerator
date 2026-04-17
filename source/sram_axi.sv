`timescale 1ns / 10ps

module sram_axi #(
    // parameters
) (
    input logic clk, n_rst,
    
    input logic [10:0] awaddr,
    input logic awvalid,
    input logic [9:0] awlen,
    output logic awready,    
 
    input logic [31:0] wdata,
    input logic [1:0] wstrb,
    input logic wlast, 
    input logic wvalid,
    output logic wready,
    
    input logic bready,
    output logic [1:0] bresp,    
    output logic bvalid,
   
    input logic [10:0] araddr,
    input logic arvalid, 
    input logic [9:0] arlen,
    output logic arready,
    
    output logic [31:0] rdata,
    output logic [1:0] rresp,
    output logic rlast, 
    output logic rvalid,
    input logic rready,

    output logic [3:0] wen,      
    output logic ren, 
    input  logic [31:0] read_data, 
    output logic [31:0] write_data,
    output logic [9:0] read_addr, 
    output logic [9:0] write_addr,
    input logic read_valid, 
    input logic write_valid
    
);

typedef enum logic [1:0] {W_IDLE, W_DATA, W_COMMIT, W_RESP} w_state_t;
typedef enum logic [1:0] {R_IDLE, R_REQ, R_WAIT, R_DATA} r_state_t;
w_state_t write_state, next_write;
r_state_t read_state, next_read;

logic [10:0] waddr_reg, raddr_reg;
logic [9:0] wlen_reg, rlen_reg;
logic [31:0] wdata_reg;
logic [1:0] wstrb_reg;

logic [10:0] next_waddr_reg;
logic [9:0] next_wlen_reg;
logic [31:0] next_wdata_reg;
logic [1:0] next_wstrb_reg;
logic [10:0] next_raddr_reg;
logic [9:0] next_rlen_reg;
logic next_awready, next_wready, next_bvalid, next_arready, next_rvalid, next_rlast;

always_ff @(posedge clk, negedge n_rst) begin : next_states
    if(!n_rst) begin
        read_state <= R_IDLE;
        write_state <= W_IDLE;
    end else begin
        read_state <= next_read;
        write_state <= next_write;
    end
end

always_comb begin : WRITE_LOGIC
    next_write = write_state;
   
    bresp = '0;
    wen = '0;
    write_addr = waddr_reg-4'hF;
    write_data = wdata_reg;

    case(write_state)
        W_IDLE: begin
            if(awvalid && awready) next_write = W_DATA;
        end
        W_DATA: begin
            if(wvalid) next_write = W_COMMIT;
        end
        W_COMMIT: begin
            case(wstrb_reg)
                2'b00: wen = 4'b0011;
                2'b01: wen = 4'b1100;
                2'b11: wen = 4'b1111;
                default: wen = 4'b0000;
            endcase
            if (write_valid) begin
                    next_write = (wlen_reg == 0) ? W_RESP : W_DATA;
            end
        end
        W_RESP: begin
            if (bready) next_write = W_IDLE;
        end
    endcase
end 

always_comb begin : READ_LOGIC
    next_read = read_state;
    rresp = 2'b00;
    ren = 1'b0;
    read_addr = raddr_reg[9:0] - 4'hF;
    rdata = read_data;
    case (read_state)
        R_IDLE: begin
            if (arvalid && arready) next_read = R_REQ;
        end
        R_REQ: begin
            ren = 1'b1;
            next_read = R_WAIT;
        end
        R_WAIT: begin
            if (read_valid) next_read = R_DATA;
        end
        R_DATA: begin
            
            if (rready) begin
                if (rlen_reg == 0) next_read = R_IDLE;
                else next_read = R_REQ;
            end
        end
    endcase
end

always_ff @(posedge clk, negedge n_rst) begin: registers
    if (!n_rst) begin
        waddr_reg <= '0;
        wlen_reg  <= '0;
        wdata_reg <= '0; 
        wstrb_reg <= '0;
        raddr_reg <= '0; 
        rlen_reg <= '0;
        awready <= 1'b0;
        wready <= 1'b0;
        bvalid <= 1'b0;
        arready <= 1'b0;
        rvalid <= 1'b0;
        rlast <= 1'b0;
    end else begin
        waddr_reg <= next_waddr_reg;
        wlen_reg  <= next_wlen_reg;
        wdata_reg <= next_wdata_reg; 
        wstrb_reg <= next_wstrb_reg;
        raddr_reg <= next_raddr_reg; 
        rlen_reg <= next_rlen_reg;
        awready <= next_awready;
        wready <= next_wready;
        bvalid <= next_bvalid;
        arready <= next_arready;
        rvalid <= next_rvalid;
        rlast <= next_rlast;
    end
end



always_comb begin : next_reg

        next_waddr_reg = waddr_reg;
        next_wlen_reg  = wlen_reg;
        next_raddr_reg = raddr_reg;
        next_rlen_reg  = rlen_reg;
        next_wdata_reg = wdata_reg;
        next_wstrb_reg = wstrb_reg;
        
        next_awready = (next_write == W_IDLE) && (awaddr >= 11'd15) && (awaddr <= 11'd1038);
        next_wready = (next_write == W_DATA);
        next_bvalid = (next_write == W_RESP);
        
        next_arready = (next_read == R_IDLE) && (araddr >= 11'd15) && (araddr <= 11'd1038);
        next_rvalid = (next_read == R_DATA);
        next_rlast = (next_read == R_DATA) && (rlen_reg == 0);
        if (awvalid && awready) begin
            next_waddr_reg = awaddr;
            next_wlen_reg = awlen;
        end
        if (arvalid && arready) begin
            next_raddr_reg = araddr;
            next_rlen_reg = arlen;
        end
        if (wvalid && wready) begin
            next_wdata_reg = wdata;
            next_wstrb_reg = wstrb;
        end
        if (write_state == W_COMMIT && write_valid) begin
            next_waddr_reg = waddr_reg + 1'b1;
            next_wlen_reg = wlen_reg - 1'b1;
        end
        if (read_state == R_DATA && rready && rvalid) begin
            next_raddr_reg = raddr_reg + 1'b1;
            next_rlen_reg = rlen_reg - 1'b1;
        end
end


endmodule


