`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_multiplier ();

    localparam CLK_PERIOD = 10ns;

    localparam HOLD_TIME = 2ns;
    localparam real ERROR_THRESHOLD = 0.05;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars;
    end

    logic [15:0] a, b, twiddle, product;
    logic sel;
    logic [16:0] sum, diff;

    integer i;

    multiplier mult(.diff(diff), .twiddle(twiddle), .total(product));
    adder add(.a(a), .b(b), .sel(sel), .total(sum));
    logic CLK, nRST;

    task sums_test(
        input logic [15:0] a_in, 
        input logic [15:0] b_in,
        input logic sel_in
    );
        a = a_in;
        b = b_in;
        sel = sel_in;

        #(HOLD_TIME);

        if(sum != (sel_in ? a_in + b_in : a_in - b_in))
            $display("Somehow Failed Addition?? a: %h   b: %h   got: %h", a_in, b_in, sum);
    endtask

    integer expected;
    task mul(
        input logic [16:0] diff_in,
        input logic [15:0] twiddle_in
    );
        real diff_f, twiddle_f;
        real expected_f, got_f;
        real percent_f, abs_diff; 

        diff = diff_in;
        twiddle = twiddle_in;
        
        #(HOLD_TIME);

        diff_f = $signed(diff) / 32768.0; 
        twiddle_f = $signed(twiddle) / 32768.0;
        expected_f = diff_f * twiddle_f;    
        got_f = $signed(product) / 32768.0;

        abs_diff = (expected_f > got_f) ? (expected_f - got_f) : (got_f - expected_f);

        if (expected_f == 0) begin
            percent_f = (got_f == 0) ? 0.0 : 1.0; 
        end else begin
            percent_f = abs_diff / (expected_f > 0 ? expected_f : -expected_f);
        end

        if (percent_f > ERROR_THRESHOLD && abs_diff > (1.0/32768.0)) begin
            $display("[!] HIGH ERROR: diff=%f twiddle=%f | Expected=%f Got=%f | Error=%0.2f%%", 
                     diff_f, twiddle_f, expected_f, got_f, percent_f * 100.0);
        end else if (abs_diff > (1.0/32768.0)) begin
            $display("[?] Quantization: Expected=%f Got=%f | Diff=%f ( > 1 LSB)", 
                     expected_f, got_f, abs_diff);
        end else begin
            $display("We chillin: Expected=%f Got=%f", expected_f, got_f);
        end
    endtask

    // clockgen
    always begin
        CLK = 0;
        #(CLK_PERIOD / 2.0);
        CLK = 1;
        #(CLK_PERIOD / 2.0);
    end

    task reset_dut;
    begin
        nRST = 0;
        @(posedge CLK);
        @(posedge CLK);
        @(negedge CLK);
        nRST = 1;
        @(posedge CLK);
        @(posedge CLK);
    end
    endtask

    initial begin
        nRST = 1;
        i = 0;

        reset_dut;
        $display("NORMAL");
        mul(16'h4000, 16'h2000);
        mul(17'sh04000, -16'sh2000); // 0.5 * -0.25
        mul(-17'sh04000, -16'sh2000); // -0.5 * -0.25

        $display("WEIRD");
        
        mul(17'sh07FFF, 16'sh7FFF); // max * max
        mul(-17'sh08000, 16'sh7FFF); // min * max
        mul(17'sh07FFF, -16'sh8000); // max * min

        mul(17'sh00001, 16'sh0001); // very small * very small
        mul(17'sh00002, 16'sh4000); // small * 0.5
        mul(17'sh7FFF, 16'sh0001);  // max * tiny

        mul(17'sh08000, 16'sh8000); // -1 * -1 (saturate)
        mul(17'sh08000, 16'sh7FFF); // -1 * max

        mul(17'h01234, 16'h0567);
        mul(-17'sh02345, 16'h1234);
        mul(17'sh05555, -16'sh2222);
        
        $finish;
    end
endmodule

/* verilator coverage_on */

