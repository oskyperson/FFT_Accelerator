`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_multiplier ();

    localparam CLK_PERIOD = 10ns;

    localparam HOLD_TIME = 2ns;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars;
    end

    logic [15:0] a, b, twiddle, product;
    logic sel;
    logic [16:0] sum, diff;

    multiplier mult(.diff(diff), .twiddle(twiddle), .total(product));
    adder add(.a(a), .b(b), .sel(sel), .total(sum));
    logic clk, n_rst;

    task sums_test(
        input logic [15:0] a_in, 
        input logic [15:0] b_in,
        input logic sel_in,
    );
        a = a_in;
        b = b_in;
        sel = sel_in;

        #(HOLD_TIME);

        sum_out = sum;

        if(sum_out != (sel_in ? a_in + b_in : a_in - b_in))
            $display("Somehow Failed Addition?? a: %h   b: %h   got: %h", a_in, b_in, sum_out);
    endtask


    task mul(
        input logic [16:0] diff_in,
        input logic [15:0] twiddle_in,
    );
        diff = diff_in;
        twiddle = twiddle_in;
        
        #(HOLD_TIME);

        total_out = product;

        integer expected = (diff / (2 << 15)) * (twiddle / (2 << 15));
        $display("Expected: %d    Got: %d", expected, (total / (2 << 15)));
    endtask

    // clockgen
    always begin
        clk = 0;
        #(CLK_PERIOD / 2.0);
        clk = 1;
        #(CLK_PERIOD / 2.0);
    end

    task reset_dut;
    begin
        n_rst = 0;
        @(posedge clk);
        @(posedge clk);
        @(negedge clk);
        n_rst = 1;
        @(posedge clk);
        @(posedge clk);
    end
    endtask

    multiplier #() DUT (.*);

    initial begin
        n_rst = 1;

        reset_dut;
        mul(16'h4000, 16'h2000);
        add(16'h4000, 16'h2000, 1);
        
        $finish;
    end
endmodule

/* verilator coverage_on */

