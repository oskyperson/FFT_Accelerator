`timescale 1ns / 10ps

module arbiter #(
    // parameters
) (
    input logic clk, n_rst,
    
    input logic [10:0] cpu_awaddr, cpu_araddr,
    input logic cpu_awvalid, cpu_arvalid,
    output logic cpu_awready, cpu_arready,
    input logic [31:0] cpu_wdata, cpu_wvalid, cpu_wlast,
    output logic cpu_wready,
    output logic [31:0] cpu_rdata, cpu_rvalid, cpu_rlast,
    input logic cpu_rready,
    output logic cpu_bvalid,
    input logic cpu_bready,
    output logic cpu_rresp,
    output logic cpu_bresp,

    
    input logic [10:0] fft_man_awaddr,  fft_man_araddr,
    input logic fft_man_awvalid, fft_man_arvalid,
    output logic fft_man_awready, fft_man_arready,
    input logic [31:0] fft_man_wdata, fft_man_wvalid, fft_man_wlast,
    output logic fft_man_wready,
    output logic [31:0] fft_man_rdata, fft_man_rvalid, fft_man_rlast,
    input logic fft_man_rready,
    output logic fft_man_bvalid,
    input logic fft_man_bready,
    output logic fft_man_rresp,
    output logic fft_man_bresp,

    
    output logic [10:0] sram_awaddr, sram_araddr,
    output logic sram_awvalid, sram_arvalid,
    input logic sram_awready, sram_arready,
    output logic [31:0] sram_wdata, sram_wvalid, sram_wlast,
    input logic sram_wready,
    input logic [31:0] sram_rdata, sram_rvalid, sram_rlast,
    output logic sram_rready,
    input logic sram_bvalid,
    output logic sram_bready,
    input logic sram_rresp,
    input logic sram_bresp,

    
    output logic [10:0] fft_sub_awaddr, fft_sub_araddr,
    output logic fft_sub_awvalid, fft_sub_arvalid,
    input logic fft_sub_awready, fft_sub_arready,
    output logic [31:0] fft_sub_wdata,  fft_sub_wvalid, fft_sub_wlast,
    input logic fft_sub_wready,
    input logic [31:0] fft_sub_rdata, fft_sub_rvalid, fft_sub_rlast,
    output logic fft_sub_rready,
    input logic fft_sub_bvalid,
    output logic fft_sub_bready,
    input logic fft_sub_rresp,
    input logic fft_sub_bresp

);

    typedef enum logic {IDLE, BUSY} state_t;
    state_t w_state, r_state, w_next_state, r_next_state;

    logic [1:0] w_perms, w_next_perms; //00 no one, 01 cpu has control, 10 fft has perms
    logic [1:0] r_perms, r_next_perms;

    logic [1:0] w_dest, w_next_dest;
    logic [1:0] r_dest, r_next_dest;

    logic w_done, r_done;
    assign w_done = (w_perms == 2'b01) ? (cpu_bvalid && cpu_bready) : (fft_man_bvalid && fft_man_bready);
    assign r_done = (r_perms == 2'b01) ? (cpu_rvalid && cpu_rready && cpu_rlast) : (fft_man_rvalid && fft_man_rready && fft_man_rlast);

    always_ff @( posedge clk, negedge n_rst ) begin : states
        if(!n_rst) begin
            w_state <= IDLE;
            r_state <= IDLE;
        end else begin
            w_state <= w_next_state;
            r_state <= r_next_state;
        end
    end

    always_ff @(posedge clk, negedge n_rst ) begin : perms_dest
        if(!n_rst) begin
            w_perms <= '0;
            w_dest <= '0;
            r_dest <= '0;
            r_perms <= '0;
        end else begin
            w_perms <= w_next_perms;
            w_dest <= w_next_dest;
            r_dest <= r_next_dest;
            r_perms <= r_next_perms;
        end
    end

    always_comb begin : next_state
        r_next_state = r_state;
        w_next_state = w_state;
        case(w_state)
            IDLE: begin
                if(cpu_awvalid || fft_man_awvalid) begin
                    w_next_state = BUSY;
                end 
            end
            BUSY: begin
                if(w_done) w_next_state = IDLE;
            end
        endcase
        case(r_state)
            IDLE: begin
                if(cpu_arvalid || fft_man_arvalid) r_next_state = BUSY;
            end
            BUSY: begin
                if(r_done) r_next_state = IDLE;
            end
        endcase
    end

    always_comb begin : next_perm
        w_next_perms = w_perms;
        r_next_perms = r_perms;
        case(w_state)
            IDLE: begin
                if(cpu_awvalid || fft_man_awvalid) begin
                    w_next_perms = cpu_awvalid ? 2'b01 : 2'b10;
                end
            end
            BUSY: begin
                if(w_done) w_next_perms = 2'b00;
            end
        endcase
        case(r_state)
            IDLE: begin
                if(cpu_arvalid || fft_man_arvalid) r_next_perms = cpu_arvalid ? 2'b01: 2'b10;
            end
            BUSY: begin
                if(r_done) r_next_perms = 2'b00;
            end
        endcase
    end


    always_comb begin : next_dest
        r_next_dest = r_dest;
        w_next_dest = w_dest;
        if (w_state == IDLE) begin
            logic [10:0] addr = cpu_awvalid ? cpu_awaddr : fft_man_awaddr;
            if (addr < 15)          w_next_dest = 2'b01; // FFT_SUB
            else if (addr <= 1038)  w_next_dest = 2'b10; // SRAM
            else                    w_next_dest = 2'b00;
        end else if (w_done)        w_next_dest = 2'b00;

        
        if (r_state == IDLE) begin
            logic [10:0] addr = cpu_arvalid ? cpu_araddr : fft_man_araddr;
            if (addr < 15)          r_next_dest = 2'b01; // FFT_SUB
            else if (addr <= 1038)  r_next_dest = 2'b10; // SRAM
            else                    r_next_dest = 2'b00;
        end else if (r_done)        r_next_dest = 2'b00;
    end

    always_comb begin : signal_routing
        // Default Outputs to 0 to prevent latches
        {fft_sub_awvalid, sram_awvalid, fft_sub_arvalid, sram_arvalid} = '0;
        {fft_sub_wvalid,  sram_wvalid,  fft_sub_bready,  sram_bready}  = '0;
        {fft_sub_rready,  sram_rready} = '0;
        {cpu_awready, fft_man_awready, cpu_arready, fft_man_arready}   = '0;
        {cpu_wready,  fft_man_wready,  cpu_bvalid,  fft_man_bvalid}    = '0;
        {cpu_rvalid,  fft_man_rvalid} = '0;

        {fft_sub_awaddr, sram_awaddr, fft_sub_araddr, sram_araddr} = '0;
        {fft_sub_wdata,  sram_wdata,  cpu_rdata,      fft_man_rdata} = '0;
        {fft_sub_wlast,  sram_wlast,  cpu_rlast,      fft_man_rlast} = '0;
        {cpu_bresp,      fft_man_bresp, cpu_rresp,    fft_man_rresp} = '0;

        //write routing
        if (w_perms == 2'b01) begin
            if (w_dest == 2'b01) begin
                fft_sub_awaddr = cpu_awaddr; fft_sub_awvalid = cpu_awvalid; cpu_awready = fft_sub_awready;
                fft_sub_wdata  = cpu_wdata;  fft_sub_wvalid  = cpu_wvalid;  fft_sub_wlast = cpu_wlast; cpu_wready = fft_sub_wready;
                cpu_bresp = fft_sub_bresp;   cpu_bvalid = fft_sub_bvalid;   fft_sub_bready = cpu_bready;
            end else if (w_dest == 2'b10) begin
                sram_awaddr = cpu_awaddr; sram_awvalid = cpu_awvalid; cpu_awready = sram_awready;
                sram_wdata  = cpu_wdata;  sram_wvalid  = cpu_wvalid;  sram_wlast = cpu_wlast; cpu_wready = sram_wready;
                cpu_bresp = sram_bresp;   cpu_bvalid = sram_bvalid;   sram_bready = cpu_bready;
            end else if (w_state == BUSY) begin 
                cpu_bresp = 2'b11; 
                cpu_awready = 1'b1; cpu_wready = 1'b1; cpu_bvalid = 1'b1;
            end
        end else if (w_perms == 2'b10) begin 
            if (w_dest == 2'b01) begin 
                fft_sub_awaddr = fft_man_awaddr; fft_sub_awvalid = fft_man_awvalid; fft_man_awready = fft_sub_awready;
                fft_sub_wdata  = fft_man_wdata;  fft_sub_wvalid  = fft_man_wvalid;  fft_sub_wlast = fft_man_wlast; fft_man_wready = fft_sub_wready;
                fft_man_bresp = fft_sub_bresp;   fft_man_bvalid = fft_sub_bvalid;   fft_sub_bready = fft_man_bready;
            end else if (w_dest == 2'b10) begin
                sram_awaddr = fft_man_awaddr; sram_awvalid = fft_man_awvalid; fft_man_awready = sram_awready;
                sram_wdata  = fft_man_wdata;  sram_wvalid  = fft_man_wvalid;  sram_wlast = fft_man_wlast; fft_man_wready = sram_wready;
                fft_man_bresp = sram_bresp;   fft_man_bvalid = sram_bvalid;   sram_bready = fft_man_bready;
            end else if (w_state == BUSY) begin
                fft_man_bresp = 2'b11; 
                fft_man_awready = 1'b1; fft_man_wready = 1'b1; fft_man_bvalid = 1'b1;
            end
        end
        //read
        if (r_perms == 2'b01) begin 
            if (r_dest == 2'b01) begin 
                fft_sub_araddr = cpu_araddr; fft_sub_arvalid = cpu_arvalid; cpu_arready = fft_sub_arready;
                cpu_rdata = fft_sub_rdata;   cpu_rresp = fft_sub_rresp;   cpu_rlast = fft_sub_rlast;   cpu_rvalid = fft_sub_rvalid; fft_sub_rready = cpu_rready;
            end else if (r_dest == 2'b10) begin // From SRAM
                sram_araddr = cpu_araddr; sram_arvalid = cpu_arvalid; cpu_arready = sram_arready;
                cpu_rdata = sram_rdata;   cpu_rresp = sram_rresp;   cpu_rlast = sram_rlast;   cpu_rvalid = sram_rvalid; sram_rready = cpu_rready;
            end else if (r_state == BUSY) begin // Invalid Address
                cpu_rresp = 2'b11; // DECERR
                cpu_arready = 1'b1; cpu_rvalid = 1'b1; cpu_rlast = 1'b1;
            end
            
        end else if (r_perms == 2'b10) begin // FFT Manager Wins Read
            if (r_dest == 2'b01) begin // From FFT_SUB
                fft_sub_araddr = fft_man_araddr; fft_sub_arvalid = fft_man_arvalid; fft_man_arready = fft_sub_arready;
                fft_man_rdata = fft_sub_rdata;   fft_man_rresp = fft_sub_rresp;   fft_man_rlast = fft_sub_rlast;   fft_man_rvalid = fft_sub_rvalid; fft_sub_rready = fft_man_rready;
            end else if (r_dest == 2'b10) begin // From SRAM
                sram_araddr = fft_man_araddr; sram_arvalid = fft_man_arvalid; fft_man_arready = sram_arready;
                fft_man_rdata = sram_rdata;   fft_man_rresp = sram_rresp;   fft_man_rlast = sram_rlast;   fft_man_rvalid = sram_rvalid; sram_rready = fft_man_rready;
            end else if (r_state == BUSY) begin // Invalid Address
                fft_man_rresp = 2'b11;
                fft_man_arready = 1'b1; fft_man_rvalid = 1'b1; fft_man_rlast = 1'b1;
            end
        end
    end

    always_comb begin : signal_routing
        fft_sub_awvalid = 1'b0;
        sram_awvalid = 1'b0;
        cpu_awready = 1'b0;
        fft_man_awready = 1'b0;
        fft_sub_awaddr = '0;
        sram_awaddr = '0;

        fft_sub_wvalid = 1'b0;
        sram_wvalid = 1'b0;
        cpu_wready = 1'b0;
        fft_man_wready = 1'b0;
        fft_sub_wdata = '0;
        sram_wdata = '0;
        fft_sub_wlast = 1'b0;
        sram_wlast = 1'b0;

        cpu_bvalid = 1'b0;
        fft_man_bvalid = 1'b0;
        fft_sub_bready = 1'b0;
        sram_bready = 1'b0;
        cpu_bresp = '0;
        fft_man_bresp = '0;

        fft_sub_arvalid = 1'b0;
        sram_arvalid = 1'b0;
        cpu_arready = 1'b0;
        fft_man_arready = 1'b0;
        fft_sub_araddr = '0;
        sram_araddr = '0;

        cpu_rvalid = 1'b0;
        fft_man_rvalid = 1'b0;
        fft_sub_rready = 1'b0;
        sram_rready = 1'b0;
        cpu_rdata = '0;
        fft_man_rdata = '0;
        cpu_rlast = 1'b0;
        fft_man_rlast = 1'b0;
        cpu_rresp = '0;
        fft_man_rresp = '0;

        //write
        if (w_perms == 2'b01) begin
            if (w_dest == 2'b01) begin
                fft_sub_awaddr = cpu_awaddr;
                fft_sub_awvalid = cpu_awvalid;
                cpu_awready = fft_sub_awready;
                fft_sub_wdata = cpu_wdata;
                fft_sub_wvalid = cpu_wvalid;
                fft_sub_wlast = cpu_wlast;
                cpu_wready = fft_sub_wready;
                cpu_bresp = fft_sub_bresp;
                cpu_bvalid = fft_sub_bvalid;
                fft_sub_bready = cpu_bready;
            end else if (w_dest == 2'b10) begin
                sram_awaddr = cpu_awaddr;
                sram_awvalid = cpu_awvalid;
                cpu_awready = sram_awready;
                sram_wdata = cpu_wdata;
                sram_wvalid = cpu_wvalid;
                sram_wlast = cpu_wlast;
                cpu_wready = sram_wready;
                cpu_bresp = sram_bresp;
                cpu_bvalid = sram_bvalid;
                sram_bready = cpu_bready;
            end else if (w_state == BUSY) begin
                cpu_bresp = 2'b11;
                cpu_awready = 1'b1;
                cpu_wready = 1'b1;
                cpu_bvalid = 1'b1;
            end
        end else if (w_perms == 2'b10) begin
            if (w_dest == 2'b01) begin
                fft_sub_awaddr = fft_man_awaddr;
                fft_sub_awvalid = fft_man_awvalid;
                fft_man_awready = fft_sub_awready;
                fft_sub_wdata = fft_man_wdata;
                fft_sub_wvalid = fft_man_wvalid;
                fft_sub_wlast = fft_man_wlast;
                fft_man_wready = fft_sub_wready;
                fft_man_bresp = fft_sub_bresp;
                fft_man_bvalid = fft_sub_bvalid;
                fft_sub_bready = fft_man_bready;
            end else if (w_dest == 2'b10) begin
                sram_awaddr = fft_man_awaddr;
                sram_awvalid = fft_man_awvalid;
                fft_man_awready = sram_awready;
                sram_wdata = fft_man_wdata;
                sram_wvalid = fft_man_wvalid;
                sram_wlast = fft_man_wlast;
                fft_man_wready = sram_wready;
                fft_man_bresp = sram_bresp;
                fft_man_bvalid = sram_bvalid;
                sram_bready = fft_man_bready;
            end else if (w_state == BUSY) begin
                fft_man_bresp = 2'b11;
                fft_man_awready = 1'b1;
                fft_man_wready = 1'b1;
                fft_man_bvalid = 1'b1;
            end
        end

        //read 
        if (r_perms == 2'b01) begin
            if (r_dest == 2'b01) begin
                fft_sub_araddr = cpu_araddr;
                fft_sub_arvalid = cpu_arvalid;
                cpu_arready = fft_sub_arready;
                cpu_rdata = fft_sub_rdata;
                cpu_rresp = fft_sub_rresp;
                cpu_rlast = fft_sub_rlast;
                cpu_rvalid = fft_sub_rvalid;
                fft_sub_rready = cpu_rready;
            end else if (r_dest == 2'b10) begin
                sram_araddr = cpu_araddr;
                sram_arvalid = cpu_arvalid;
                cpu_arready = sram_arready;
                cpu_rdata = sram_rdata;
                cpu_rresp = sram_rresp;
                cpu_rlast = sram_rlast;
                cpu_rvalid = sram_rvalid;
                sram_rready = cpu_rready;
            end else if (r_state == BUSY) begin
                cpu_rresp = 2'b11;
                cpu_arready = 1'b1;
                cpu_rvalid = 1'b1;
                cpu_rlast = 1'b1;
            end
        end else if (r_perms == 2'b10) begin
            if (r_dest == 2'b01) begin
                fft_sub_araddr = fft_man_araddr;
                fft_sub_arvalid = fft_man_arvalid;
                fft_man_arready = fft_sub_arready;
                fft_man_rdata = fft_sub_rdata;
                fft_man_rresp = fft_sub_rresp;
                fft_man_rlast = fft_sub_rlast;
                fft_man_rvalid = fft_sub_rvalid;
                fft_sub_rready = fft_man_rready;
            end else if (r_dest == 2'b10) begin
                sram_araddr = fft_man_araddr;
                sram_arvalid = fft_man_arvalid;
                fft_man_arready = sram_arready;
                fft_man_rdata = sram_rdata;
                fft_man_rresp = sram_rresp;
                fft_man_rlast = sram_rlast;
                fft_man_rvalid = sram_rvalid;
                sram_rready = fft_man_rready;
            end else if (r_state == BUSY) begin
                fft_man_rresp = 2'b11;
                fft_man_arready = 1'b1;
                fft_man_rvalid = 1'b1;
                fft_man_rlast = 1'b1;
            end
        end
    end

endmodule

