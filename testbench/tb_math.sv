`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_math ();

    localparam CLK_PERIOD = 10ns;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars;
    end

    logic CLK, nRST;

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

  
    logic [31:0] sample, feedback, twiddle, sum, rotation;

    math DUT (.CLK(CLK), .nRST(nRST), .sample(sample), .feedback(feedback), .twiddle(twiddle),
        .sum(sum), .rotation(rotation)
    
    );

    logic [16:0] sum_im, sum_re;

    adder img (.a(sample[15:0]), .b(feedback[15:0]), .sel(1'b1), .total(sum_im)); 
    adder rl (.a(sample[31:16]), .b(feedback[31:16]), .sel(1'b1), .total(sum_re)); 

    initial begin
        nRST = 1;

        sample = 32'h3bb61709;
        feedback = 32'h3bb61709;

        #(10s);

        $finish;
    end
endmodule

/* verilator coverage_on */

