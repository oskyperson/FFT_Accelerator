`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_delay_line ();

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

    delay_line #() DUT (.*);

    initial begin
        nRST = 1;

        reset_dut;

        $finish;
    end
endmodule

/* verilator coverage_on */

