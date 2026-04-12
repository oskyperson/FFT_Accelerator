`timescale 1ns / 10ps

module sram_axi #(
    // parameters
) (
    input logic clk, n_rst,
    
    input logic [9:0] awaddr,
    input logic awvalid,
    input logic [7:0] awlen,
    output logic awready,    
 
    input logic [31:0] wdata,
    input logic [1:0] wstrb,
    input logic wlast, 
    input logic wvalid,
    output logic wready,
    
    input logic bready,
    output logic [1:0] bresp,    
    output logic bvalid,
   
    input  logic [9:0] araddr,
    input  logic arvalid, 
    input  logic [7:0] arlen,
    output logic arready,
    
    output logic [31:0] rdata,
    output logic [1:0] rresp,
    output logic rlast, 
    output logic rvalid,
    input  logic rready,

    output logic [3:0] wen,      
    output logic ren, 
    input  logic [31:0] read_data, 
    output logic [31:0] write_data,
    output logic [9:0] read_addr, 
    output logic [9:0] write_addr,
    input  logic read_valid, 
    input  logic write_valid
    
);

typedef enum logic [1:0] {W_IDLE, W_DATA, W_COMMIT, W_RESP} w_state_t;
typedef enum logic [1:0] {R_IDLE, R_REQ, R_WAIT, R_DATA} r_state_t;
w_state_t write_state, next_write;
r_state_t read_state, next_read;

logic [11:0] waddr_reg, raddr_reg;
logic [7:0]  wlen_reg, rlen_reg;
logic [31:0] wdata_reg;
logic [1:0]  wstrb_reg;

always_ff @(posedge clk, negedge n_rst) begin : next_states
    if(!n_rst) begin
        read_state <= READ_IDLE;
        write_state <= WRITE_IDLE;
    end else begin
        read_state <= next_read_state;
        write_state <= next_write_state;
    end
end

always_comb begin : WRITE_LOGIC
    w_next = w_state;
    awready = '0;
    wready = '0;
    bvalid = '0;
    bresp = '0;
    sram_be = '0;
    write_addr = waddr_reg;
    write_data = wdata_reg;

    case(w_state)
        W_IDLE: begin
            awready = 1'b1;
            if(awvalid) w_next = W_DATA;
        end
        W_DATA: begin
            wready = 1'b1;
            if(wvalid) w_next = W_COMMIT;
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
            bvalid = 1'b1;
            if (bready) next_write = W_IDLE;
        end
    endcase
end 

always_comb begin : READ_LOGIC
    next_read = read_state;
    arready = (read_state == R_IDLE) && araddr_in_range;
    rvalid = 1'b0;
    rlast = 1'b0;
    rresp = 2'b00;
    ren = 1'b0;
        

    read_addr = raddr_reg[9:0] - OFFSET[9:0];
    rdata     = read_data;
    case (read_state)
        R_IDLE: begin
            if (arvalid && araddr_in_range) next_read = R_REQ;
        end
        R_REQ: begin
            ren = 1'b1;
            next_read = R_WAIT;
        end
        R_WAIT: begin
            if (read_valid) next_read = R_DATA;
        end
        R_DATA: begin
            rvalid = 1'b1;
            rlast  = (rlen_reg == 0);
            if (rready) begin
                if (rlen_reg == 0) next_read = R_IDLE;
                else               next_read = R_REQ;
            end
        end
    endcase
end
always_ff @(posedge clk, negedge n_rst) begin: registers
    if (!n_rst) begin
        waddr_reg <= '0; wlen_reg <= '0; wdata_reg <= '0; wstrb_reg <= '0;
        raddr_reg <= '0; rlen_reg <= '0;
    end else begin
        
        if (awvalid && awready) begin
            waddr_reg <= awaddr;
            wlen_reg  <= awlen;
        end
        if (arvalid && arready) begin
            raddr_reg <= araddr;
            rlen_reg  <= arlen;
        end
        
        if (wvalid && wready) begin
            wdata_reg <= wdata;
            wstrb_reg <= wstrb;
        end
       
        if (write_state == W_COMMIT && write_valid) begin
            waddr_reg <= waddr_reg + 1;
            wlen_reg  <= wlen_reg - 1;
        end
        if (read_state == R_DATA && rready && rvalid) begin
            raddr_reg <= raddr_reg + 1;
            rlen_reg  <= rlen_reg - 1;
        end
    end
end

endmodule

