`timescale 1ns / 10ps

module sram_axi #(
    // parameters
) (
    input logic CLK, nRST,
    
    input logic [31:0] sram_awaddr,
    input logic sram_awvalid,
    input logic [9:0] sram_awlen,
    output logic sram_awready,    
 
    input logic [31:0] sram_wdata,
    input logic [1:0] sram_wstrb,
    input logic sram_wlast, 
    input logic sram_wvalid,
    output logic sram_wready,
    
    input logic sram_bready,
    output logic sram_bresp,    
    output logic sram_bvalid,
   
    input logic [31:0] sram_araddr,
    input logic sram_arvalid, 
    input logic [9:0] sram_arlen,
    output logic sram_arready,
    
    output logic [31:0] sram_rdata,
    output logic sram_rresp,
    output logic sram_rlast, 
    output logic sram_rvalid,
    input logic sram_rready,

    output logic [3:0] wen,      
    output logic ren, 
    input logic [31:0] read_data, 
    output logic [31:0] write_data,
    output logic [31:0] read_addr, 
    output logic [31:0] write_addr,
    input logic read_valid, 
    input logic write_valid
    
);

typedef enum logic [1:0] {W_IDLE, W_DATA, W_COMMIT, W_RESP} w_state_t;
typedef enum logic [1:0] {R_IDLE, R_REQ, R_WAIT, R_DATA} r_state_t;
w_state_t write_state, next_write;
r_state_t read_state, next_read;

logic [31:0] waddr_reg, raddr_reg;
logic [9:0] wlen_reg, rlen_reg;
logic [31:0] wdata_reg;
logic [1:0] wstrb_reg;

logic [31:0] next_waddr_reg;
logic [9:0] next_wlen_reg;
logic [31:0] next_wdata_reg;
logic [1:0] next_wstrb_reg;
logic [31:0] next_raddr_reg;
logic [9:0] next_rlen_reg;
logic next_awready, next_wready, next_bvalid, next_arready, next_rvalid, next_rlast;
logic [31:0] next_sram_rdata;

always_ff @(posedge CLK, negedge nRST) begin : next_states
    if(!nRST) begin
        read_state <= R_IDLE;
        write_state <= W_IDLE;
        sram_rdata <= '0;
    end else begin
        read_state <= next_read;
        write_state <= next_write;
        sram_rdata <= next_sram_rdata;
    end
end

always_comb begin : WRITE_LOGIC
    next_write = write_state;
   
    sram_bresp = '0;
    wen = '0;
    write_addr = waddr_reg-32'hF;
    write_data = wdata_reg;

    case(write_state)
        W_IDLE: begin
            if(sram_awvalid && sram_awready) next_write = W_DATA;
        end
        W_DATA: begin
            if(sram_wvalid) next_write = W_COMMIT;
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
            if (sram_bready) next_write = W_IDLE;
        end
    endcase
end 

always_comb begin : READ_LOGIC
    next_read = read_state;
    sram_rresp = 2'b00;
    ren = 1'b0;
    read_addr = raddr_reg - 32'hF;
    
    case (read_state)
        R_IDLE: begin
            if (sram_arvalid && sram_arready) next_read = R_REQ;
        end
        R_REQ: begin
            ren = 1'b1;
            if (read_valid) next_read = R_DATA;
        end
        R_DATA: begin
            
            if (sram_rready) begin
                if (rlen_reg == 0) next_read = R_IDLE;
                else next_read = R_REQ;
            end
        end
    endcase
end

always_ff @(posedge CLK, negedge nRST) begin: registers
    if (!nRST) begin
        waddr_reg <= '0;
        wlen_reg  <= '0;
        wdata_reg <= '0; 
        wstrb_reg <= '0;
        raddr_reg <= '0; 
        rlen_reg <= '0;
        sram_awready <= 1'b0;
        sram_wready <= 1'b0;
        sram_bvalid <= 1'b0;
        sram_arready <= 1'b0;
        sram_rvalid <= 1'b0;
        sram_rlast <= 1'b0;
    end else begin
        waddr_reg <= next_waddr_reg;
        wlen_reg <= next_wlen_reg;
        wdata_reg <= next_wdata_reg; 
        wstrb_reg <= next_wstrb_reg;
        raddr_reg <= next_raddr_reg; 
        rlen_reg <= next_rlen_reg;
        sram_awready <= next_awready;
        sram_wready <= next_wready;
        sram_bvalid <= next_bvalid;
        sram_arready <= next_arready;
        sram_rvalid <= next_rvalid;
        sram_rlast <= next_rlast;
    end
end



always_comb begin : next_reg

        next_waddr_reg = waddr_reg;
        next_wlen_reg = wlen_reg;
        next_raddr_reg = raddr_reg;
        next_rlen_reg = rlen_reg;
        next_wdata_reg = wdata_reg;
        next_wstrb_reg = wstrb_reg;
        next_sram_rdata = read_valid ? read_data :  '0;
        next_awready = (next_write == W_IDLE) && (sram_awaddr >= 11'd15);
        next_wready = (next_write == W_DATA);
        next_bvalid = (next_write == W_RESP);
        
        next_arready = (next_read == R_IDLE) && (sram_araddr >= 11'd15);
        next_rvalid = (next_read == R_DATA);
        next_rlast = (next_read == R_DATA) && (rlen_reg == 0);
        if (sram_awvalid && sram_awready) begin
            next_waddr_reg = sram_awaddr;
            next_wlen_reg = sram_awlen;
        end
        if (sram_arvalid && sram_arready) begin
            next_raddr_reg = sram_araddr;
            next_rlen_reg = sram_arlen;
        end
        if (sram_wvalid && sram_wready) begin
            next_wdata_reg = sram_wdata;
            next_wstrb_reg = sram_wstrb;
        end
        if (write_state == W_COMMIT && write_valid) begin
            next_waddr_reg = waddr_reg + 1'b1;
            next_wlen_reg = wlen_reg - 1'b1;
        end
        if (read_state == R_DATA && sram_rready && sram_rvalid) begin
            next_raddr_reg = raddr_reg + 1'b1;
            next_rlen_reg = rlen_reg - 1'b1;
        end
end


endmodule


