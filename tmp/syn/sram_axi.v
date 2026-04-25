/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4
// Date      : Fri Apr 24 20:41:25 2026
/////////////////////////////////////////////////////////////


module sram_axi_DW01_inc_0 ( A, SUM );
  input [31:0] A;
  output [31:0] SUM;

  wire   [31:2] carry;

  HAX1 U1_1_30 ( .A(A[30]), .B(carry[30]), .YC(carry[31]), .YS(SUM[30]) );
  HAX1 U1_1_29 ( .A(A[29]), .B(carry[29]), .YC(carry[30]), .YS(SUM[29]) );
  HAX1 U1_1_28 ( .A(A[28]), .B(carry[28]), .YC(carry[29]), .YS(SUM[28]) );
  HAX1 U1_1_27 ( .A(A[27]), .B(carry[27]), .YC(carry[28]), .YS(SUM[27]) );
  HAX1 U1_1_26 ( .A(A[26]), .B(carry[26]), .YC(carry[27]), .YS(SUM[26]) );
  HAX1 U1_1_25 ( .A(A[25]), .B(carry[25]), .YC(carry[26]), .YS(SUM[25]) );
  HAX1 U1_1_24 ( .A(A[24]), .B(carry[24]), .YC(carry[25]), .YS(SUM[24]) );
  HAX1 U1_1_23 ( .A(A[23]), .B(carry[23]), .YC(carry[24]), .YS(SUM[23]) );
  HAX1 U1_1_22 ( .A(A[22]), .B(carry[22]), .YC(carry[23]), .YS(SUM[22]) );
  HAX1 U1_1_21 ( .A(A[21]), .B(carry[21]), .YC(carry[22]), .YS(SUM[21]) );
  HAX1 U1_1_20 ( .A(A[20]), .B(carry[20]), .YC(carry[21]), .YS(SUM[20]) );
  HAX1 U1_1_19 ( .A(A[19]), .B(carry[19]), .YC(carry[20]), .YS(SUM[19]) );
  HAX1 U1_1_18 ( .A(A[18]), .B(carry[18]), .YC(carry[19]), .YS(SUM[18]) );
  HAX1 U1_1_17 ( .A(A[17]), .B(carry[17]), .YC(carry[18]), .YS(SUM[17]) );
  HAX1 U1_1_16 ( .A(A[16]), .B(carry[16]), .YC(carry[17]), .YS(SUM[16]) );
  HAX1 U1_1_15 ( .A(A[15]), .B(carry[15]), .YC(carry[16]), .YS(SUM[15]) );
  HAX1 U1_1_14 ( .A(A[14]), .B(carry[14]), .YC(carry[15]), .YS(SUM[14]) );
  HAX1 U1_1_13 ( .A(A[13]), .B(carry[13]), .YC(carry[14]), .YS(SUM[13]) );
  HAX1 U1_1_12 ( .A(A[12]), .B(carry[12]), .YC(carry[13]), .YS(SUM[12]) );
  HAX1 U1_1_11 ( .A(A[11]), .B(carry[11]), .YC(carry[12]), .YS(SUM[11]) );
  HAX1 U1_1_10 ( .A(A[10]), .B(carry[10]), .YC(carry[11]), .YS(SUM[10]) );
  HAX1 U1_1_9 ( .A(A[9]), .B(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  HAX1 U1_1_8 ( .A(A[8]), .B(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  HAX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  HAX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  HAX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  HAX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  HAX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  HAX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  HAX1 U1_1_1 ( .A(A[1]), .B(A[0]), .YC(carry[2]), .YS(SUM[1]) );
  XOR2X1 U1 ( .A(carry[31]), .B(A[31]), .Y(SUM[31]) );
endmodule


module sram_axi_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3;
  wire   [32:0] carry;
  assign carry[1] = A[0];

  AND2X2 U1 ( .A(n3), .B(A[3]), .Y(n1) );
  AND2X2 U2 ( .A(carry[1]), .B(A[1]), .Y(n2) );
  AND2X2 U3 ( .A(n2), .B(A[2]), .Y(n3) );
  OR2X1 U4 ( .A(A[10]), .B(carry[10]), .Y(carry[11]) );
  XNOR2X1 U5 ( .A(carry[10]), .B(A[10]), .Y(DIFF[10]) );
  OR2X1 U6 ( .A(A[11]), .B(carry[11]), .Y(carry[12]) );
  XNOR2X1 U7 ( .A(carry[11]), .B(A[11]), .Y(DIFF[11]) );
  OR2X1 U8 ( .A(A[12]), .B(carry[12]), .Y(carry[13]) );
  XNOR2X1 U9 ( .A(carry[12]), .B(A[12]), .Y(DIFF[12]) );
  OR2X1 U10 ( .A(A[13]), .B(carry[13]), .Y(carry[14]) );
  XNOR2X1 U11 ( .A(carry[13]), .B(A[13]), .Y(DIFF[13]) );
  OR2X1 U12 ( .A(A[14]), .B(carry[14]), .Y(carry[15]) );
  XNOR2X1 U13 ( .A(carry[14]), .B(A[14]), .Y(DIFF[14]) );
  OR2X1 U14 ( .A(A[15]), .B(carry[15]), .Y(carry[16]) );
  XNOR2X1 U15 ( .A(carry[15]), .B(A[15]), .Y(DIFF[15]) );
  OR2X1 U16 ( .A(A[16]), .B(carry[16]), .Y(carry[17]) );
  XNOR2X1 U17 ( .A(carry[16]), .B(A[16]), .Y(DIFF[16]) );
  OR2X1 U18 ( .A(A[17]), .B(carry[17]), .Y(carry[18]) );
  XNOR2X1 U19 ( .A(carry[17]), .B(A[17]), .Y(DIFF[17]) );
  OR2X1 U20 ( .A(A[18]), .B(carry[18]), .Y(carry[19]) );
  XNOR2X1 U21 ( .A(carry[18]), .B(A[18]), .Y(DIFF[18]) );
  OR2X1 U22 ( .A(A[19]), .B(carry[19]), .Y(carry[20]) );
  XNOR2X1 U23 ( .A(carry[19]), .B(A[19]), .Y(DIFF[19]) );
  OR2X1 U24 ( .A(A[20]), .B(carry[20]), .Y(carry[21]) );
  XNOR2X1 U25 ( .A(carry[20]), .B(A[20]), .Y(DIFF[20]) );
  OR2X1 U26 ( .A(A[21]), .B(carry[21]), .Y(carry[22]) );
  XNOR2X1 U27 ( .A(carry[21]), .B(A[21]), .Y(DIFF[21]) );
  OR2X1 U28 ( .A(A[22]), .B(carry[22]), .Y(carry[23]) );
  XNOR2X1 U29 ( .A(carry[22]), .B(A[22]), .Y(DIFF[22]) );
  OR2X1 U30 ( .A(A[23]), .B(carry[23]), .Y(carry[24]) );
  XNOR2X1 U31 ( .A(carry[23]), .B(A[23]), .Y(DIFF[23]) );
  OR2X1 U32 ( .A(A[24]), .B(carry[24]), .Y(carry[25]) );
  XNOR2X1 U33 ( .A(carry[24]), .B(A[24]), .Y(DIFF[24]) );
  OR2X1 U34 ( .A(A[25]), .B(carry[25]), .Y(carry[26]) );
  XNOR2X1 U35 ( .A(carry[25]), .B(A[25]), .Y(DIFF[25]) );
  OR2X1 U36 ( .A(A[26]), .B(carry[26]), .Y(carry[27]) );
  XNOR2X1 U37 ( .A(carry[26]), .B(A[26]), .Y(DIFF[26]) );
  OR2X1 U38 ( .A(A[27]), .B(carry[27]), .Y(carry[28]) );
  XNOR2X1 U39 ( .A(carry[27]), .B(A[27]), .Y(DIFF[27]) );
  OR2X1 U40 ( .A(A[28]), .B(carry[28]), .Y(carry[29]) );
  XNOR2X1 U41 ( .A(carry[28]), .B(A[28]), .Y(DIFF[28]) );
  OR2X1 U42 ( .A(A[29]), .B(carry[29]), .Y(carry[30]) );
  XNOR2X1 U43 ( .A(carry[29]), .B(A[29]), .Y(DIFF[29]) );
  OR2X1 U44 ( .A(A[30]), .B(carry[30]), .Y(carry[31]) );
  XNOR2X1 U45 ( .A(carry[30]), .B(A[30]), .Y(DIFF[30]) );
  XNOR2X1 U46 ( .A(A[31]), .B(carry[31]), .Y(DIFF[31]) );
  OR2X1 U47 ( .A(A[4]), .B(n1), .Y(carry[5]) );
  XNOR2X1 U48 ( .A(n1), .B(A[4]), .Y(DIFF[4]) );
  OR2X1 U49 ( .A(A[5]), .B(carry[5]), .Y(carry[6]) );
  XNOR2X1 U50 ( .A(carry[5]), .B(A[5]), .Y(DIFF[5]) );
  OR2X1 U51 ( .A(A[6]), .B(carry[6]), .Y(carry[7]) );
  XNOR2X1 U52 ( .A(carry[6]), .B(A[6]), .Y(DIFF[6]) );
  OR2X1 U53 ( .A(A[7]), .B(carry[7]), .Y(carry[8]) );
  XNOR2X1 U54 ( .A(carry[7]), .B(A[7]), .Y(DIFF[7]) );
  OR2X1 U55 ( .A(A[8]), .B(carry[8]), .Y(carry[9]) );
  XNOR2X1 U56 ( .A(carry[8]), .B(A[8]), .Y(DIFF[8]) );
  OR2X1 U57 ( .A(A[9]), .B(carry[9]), .Y(carry[10]) );
  XNOR2X1 U58 ( .A(carry[9]), .B(A[9]), .Y(DIFF[9]) );
  XOR2X1 U59 ( .A(carry[1]), .B(A[1]), .Y(DIFF[1]) );
  XOR2X1 U60 ( .A(n2), .B(A[2]), .Y(DIFF[2]) );
  XOR2X1 U61 ( .A(n3), .B(A[3]), .Y(DIFF[3]) );
  INVX2 U62 ( .A(carry[1]), .Y(DIFF[0]) );
endmodule


module sram_axi_DW01_inc_1 ( A, SUM );
  input [31:0] A;
  output [31:0] SUM;

  wire   [31:2] carry;

  HAX1 U1_1_30 ( .A(A[30]), .B(carry[30]), .YC(carry[31]), .YS(SUM[30]) );
  HAX1 U1_1_29 ( .A(A[29]), .B(carry[29]), .YC(carry[30]), .YS(SUM[29]) );
  HAX1 U1_1_28 ( .A(A[28]), .B(carry[28]), .YC(carry[29]), .YS(SUM[28]) );
  HAX1 U1_1_27 ( .A(A[27]), .B(carry[27]), .YC(carry[28]), .YS(SUM[27]) );
  HAX1 U1_1_26 ( .A(A[26]), .B(carry[26]), .YC(carry[27]), .YS(SUM[26]) );
  HAX1 U1_1_25 ( .A(A[25]), .B(carry[25]), .YC(carry[26]), .YS(SUM[25]) );
  HAX1 U1_1_24 ( .A(A[24]), .B(carry[24]), .YC(carry[25]), .YS(SUM[24]) );
  HAX1 U1_1_23 ( .A(A[23]), .B(carry[23]), .YC(carry[24]), .YS(SUM[23]) );
  HAX1 U1_1_22 ( .A(A[22]), .B(carry[22]), .YC(carry[23]), .YS(SUM[22]) );
  HAX1 U1_1_21 ( .A(A[21]), .B(carry[21]), .YC(carry[22]), .YS(SUM[21]) );
  HAX1 U1_1_20 ( .A(A[20]), .B(carry[20]), .YC(carry[21]), .YS(SUM[20]) );
  HAX1 U1_1_19 ( .A(A[19]), .B(carry[19]), .YC(carry[20]), .YS(SUM[19]) );
  HAX1 U1_1_18 ( .A(A[18]), .B(carry[18]), .YC(carry[19]), .YS(SUM[18]) );
  HAX1 U1_1_17 ( .A(A[17]), .B(carry[17]), .YC(carry[18]), .YS(SUM[17]) );
  HAX1 U1_1_16 ( .A(A[16]), .B(carry[16]), .YC(carry[17]), .YS(SUM[16]) );
  HAX1 U1_1_15 ( .A(A[15]), .B(carry[15]), .YC(carry[16]), .YS(SUM[15]) );
  HAX1 U1_1_14 ( .A(A[14]), .B(carry[14]), .YC(carry[15]), .YS(SUM[14]) );
  HAX1 U1_1_13 ( .A(A[13]), .B(carry[13]), .YC(carry[14]), .YS(SUM[13]) );
  HAX1 U1_1_12 ( .A(A[12]), .B(carry[12]), .YC(carry[13]), .YS(SUM[12]) );
  HAX1 U1_1_11 ( .A(A[11]), .B(carry[11]), .YC(carry[12]), .YS(SUM[11]) );
  HAX1 U1_1_10 ( .A(A[10]), .B(carry[10]), .YC(carry[11]), .YS(SUM[10]) );
  HAX1 U1_1_9 ( .A(A[9]), .B(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  HAX1 U1_1_8 ( .A(A[8]), .B(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  HAX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  HAX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  HAX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  HAX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  HAX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  HAX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  HAX1 U1_1_1 ( .A(A[1]), .B(A[0]), .YC(carry[2]), .YS(SUM[1]) );
  XOR2X1 U1 ( .A(carry[31]), .B(A[31]), .Y(SUM[31]) );
endmodule


module sram_axi_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3;
  wire   [32:0] carry;
  assign carry[1] = A[0];

  AND2X2 U1 ( .A(n3), .B(A[3]), .Y(n1) );
  AND2X2 U2 ( .A(carry[1]), .B(A[1]), .Y(n2) );
  AND2X2 U3 ( .A(n2), .B(A[2]), .Y(n3) );
  OR2X1 U4 ( .A(A[10]), .B(carry[10]), .Y(carry[11]) );
  XNOR2X1 U5 ( .A(carry[10]), .B(A[10]), .Y(DIFF[10]) );
  OR2X1 U6 ( .A(A[11]), .B(carry[11]), .Y(carry[12]) );
  XNOR2X1 U7 ( .A(carry[11]), .B(A[11]), .Y(DIFF[11]) );
  OR2X1 U8 ( .A(A[12]), .B(carry[12]), .Y(carry[13]) );
  XNOR2X1 U9 ( .A(carry[12]), .B(A[12]), .Y(DIFF[12]) );
  OR2X1 U10 ( .A(A[13]), .B(carry[13]), .Y(carry[14]) );
  XNOR2X1 U11 ( .A(carry[13]), .B(A[13]), .Y(DIFF[13]) );
  OR2X1 U12 ( .A(A[14]), .B(carry[14]), .Y(carry[15]) );
  XNOR2X1 U13 ( .A(carry[14]), .B(A[14]), .Y(DIFF[14]) );
  OR2X1 U14 ( .A(A[15]), .B(carry[15]), .Y(carry[16]) );
  XNOR2X1 U15 ( .A(carry[15]), .B(A[15]), .Y(DIFF[15]) );
  OR2X1 U16 ( .A(A[16]), .B(carry[16]), .Y(carry[17]) );
  XNOR2X1 U17 ( .A(carry[16]), .B(A[16]), .Y(DIFF[16]) );
  OR2X1 U18 ( .A(A[17]), .B(carry[17]), .Y(carry[18]) );
  XNOR2X1 U19 ( .A(carry[17]), .B(A[17]), .Y(DIFF[17]) );
  OR2X1 U20 ( .A(A[18]), .B(carry[18]), .Y(carry[19]) );
  XNOR2X1 U21 ( .A(carry[18]), .B(A[18]), .Y(DIFF[18]) );
  OR2X1 U22 ( .A(A[19]), .B(carry[19]), .Y(carry[20]) );
  XNOR2X1 U23 ( .A(carry[19]), .B(A[19]), .Y(DIFF[19]) );
  OR2X1 U24 ( .A(A[20]), .B(carry[20]), .Y(carry[21]) );
  XNOR2X1 U25 ( .A(carry[20]), .B(A[20]), .Y(DIFF[20]) );
  OR2X1 U26 ( .A(A[21]), .B(carry[21]), .Y(carry[22]) );
  XNOR2X1 U27 ( .A(carry[21]), .B(A[21]), .Y(DIFF[21]) );
  OR2X1 U28 ( .A(A[22]), .B(carry[22]), .Y(carry[23]) );
  XNOR2X1 U29 ( .A(carry[22]), .B(A[22]), .Y(DIFF[22]) );
  OR2X1 U30 ( .A(A[23]), .B(carry[23]), .Y(carry[24]) );
  XNOR2X1 U31 ( .A(carry[23]), .B(A[23]), .Y(DIFF[23]) );
  OR2X1 U32 ( .A(A[24]), .B(carry[24]), .Y(carry[25]) );
  XNOR2X1 U33 ( .A(carry[24]), .B(A[24]), .Y(DIFF[24]) );
  OR2X1 U34 ( .A(A[25]), .B(carry[25]), .Y(carry[26]) );
  XNOR2X1 U35 ( .A(carry[25]), .B(A[25]), .Y(DIFF[25]) );
  OR2X1 U36 ( .A(A[26]), .B(carry[26]), .Y(carry[27]) );
  XNOR2X1 U37 ( .A(carry[26]), .B(A[26]), .Y(DIFF[26]) );
  OR2X1 U38 ( .A(A[27]), .B(carry[27]), .Y(carry[28]) );
  XNOR2X1 U39 ( .A(carry[27]), .B(A[27]), .Y(DIFF[27]) );
  OR2X1 U40 ( .A(A[28]), .B(carry[28]), .Y(carry[29]) );
  XNOR2X1 U41 ( .A(carry[28]), .B(A[28]), .Y(DIFF[28]) );
  OR2X1 U42 ( .A(A[29]), .B(carry[29]), .Y(carry[30]) );
  XNOR2X1 U43 ( .A(carry[29]), .B(A[29]), .Y(DIFF[29]) );
  OR2X1 U44 ( .A(A[30]), .B(carry[30]), .Y(carry[31]) );
  XNOR2X1 U45 ( .A(carry[30]), .B(A[30]), .Y(DIFF[30]) );
  XNOR2X1 U46 ( .A(A[31]), .B(carry[31]), .Y(DIFF[31]) );
  OR2X1 U47 ( .A(A[4]), .B(n1), .Y(carry[5]) );
  XNOR2X1 U48 ( .A(n1), .B(A[4]), .Y(DIFF[4]) );
  OR2X1 U49 ( .A(A[5]), .B(carry[5]), .Y(carry[6]) );
  XNOR2X1 U50 ( .A(carry[5]), .B(A[5]), .Y(DIFF[5]) );
  OR2X1 U51 ( .A(A[6]), .B(carry[6]), .Y(carry[7]) );
  XNOR2X1 U52 ( .A(carry[6]), .B(A[6]), .Y(DIFF[6]) );
  OR2X1 U53 ( .A(A[7]), .B(carry[7]), .Y(carry[8]) );
  XNOR2X1 U54 ( .A(carry[7]), .B(A[7]), .Y(DIFF[7]) );
  OR2X1 U55 ( .A(A[8]), .B(carry[8]), .Y(carry[9]) );
  XNOR2X1 U56 ( .A(carry[8]), .B(A[8]), .Y(DIFF[8]) );
  OR2X1 U57 ( .A(A[9]), .B(carry[9]), .Y(carry[10]) );
  XNOR2X1 U58 ( .A(carry[9]), .B(A[9]), .Y(DIFF[9]) );
  XOR2X1 U59 ( .A(carry[1]), .B(A[1]), .Y(DIFF[1]) );
  XOR2X1 U60 ( .A(n2), .B(A[2]), .Y(DIFF[2]) );
  XOR2X1 U61 ( .A(n3), .B(A[3]), .Y(DIFF[3]) );
  INVX2 U62 ( .A(carry[1]), .Y(DIFF[0]) );
endmodule


module sram_axi ( clk, n_rst, sram_awaddr, sram_awvalid, sram_awlen, 
        sram_awready, sram_wdata, sram_wstrb, sram_wlast, sram_wvalid, 
        sram_wready, sram_bready, sram_bresp, sram_bvalid, sram_araddr, 
        sram_arvalid, sram_arlen, sram_arready, sram_rdata, sram_rresp, 
        sram_rlast, sram_rvalid, sram_rready, wen, ren, read_data, write_data, 
        read_addr, write_addr, read_valid, write_valid );
  input [31:0] sram_awaddr;
  input [9:0] sram_awlen;
  input [31:0] sram_wdata;
  input [1:0] sram_wstrb;
  input [31:0] sram_araddr;
  input [9:0] sram_arlen;
  output [31:0] sram_rdata;
  output [3:0] wen;
  input [31:0] read_data;
  output [31:0] write_data;
  output [31:0] read_addr;
  output [31:0] write_addr;
  input clk, n_rst, sram_awvalid, sram_wlast, sram_wvalid, sram_bready,
         sram_arvalid, sram_rready, read_valid, write_valid;
  output sram_awready, sram_wready, sram_bresp, sram_bvalid, sram_arready,
         sram_rresp, sram_rlast, sram_rvalid, ren;
  wire   next_rlast, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95,
         N96, N97, N98, N99, N100, N101, N102, N103, N104, N105, N106, N107,
         N108, N109, N110, N111, N112, N113, N114, N115, N129, N130, N131,
         N132, N133, N134, N135, N136, N137, N138, N139, N140, N141, N142,
         N143, N144, N145, N146, N147, N148, N149, N150, N151, N152, N153,
         N154, N155, N156, N157, N158, N159, N178, n384, n386, n469, n470,
         n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
         n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, n536,
         n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547,
         n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558,
         n559, n560, n561, n562, n563, n564, n565, n566, n567, n568, n569,
         n570, n571, n572, n573, n574, n575, n576, n577, n578, n579, n580,
         n581, n582, n583, n584, n585, n586, n587, n588, n589, n590, n591,
         n592, n593, n594, n595, n596, n597, n598, n599, n600, n601, n602,
         n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613,
         n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n624,
         n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, n635,
         n636, n637, n638, n639, n640, n641, n642, n643, n644, n645, n646,
         n647, n648, n649, n650, n651, n652, n653, n654, n655, n656, n657,
         n658, n659, n660, n661, n662, n663, n664, n665, n666, n667, n668,
         n669, n670, n671, n672, n673, n674, n675, n676, n677, n678, n679,
         n680, n681, n682, n683, n684, n685, n686, n687, n688, n689, n690,
         n691, n692, n693, n694, n695, n696, n697, n698, n699, n700, n701,
         n702, n703, n704, n705, n706, n707, n708, n709, n710, n711, n712,
         n713, n714, n715, n716, n717, n718, n719, n720, n721, n722, n723,
         n724, n725, n726, n727, n728, n729, n730, n731, n732, n733, n734,
         n735, n736, n737, n738, n739, n740, n741, n742, n743, n744, n745,
         n746, n747, n748, n749, n750, n751, n752, n753, n754, n755, n756,
         n757, n758, n759, n760, n761, n762, n763, n764, n765, n766, n767,
         n768, n769, n770, n771, n772, n773, n774, n775, n776, n777, n778,
         n779, n780, n781, n782, n783, n784, n785, n786, n787, n788, n789,
         n790, n791, n792, n793, n794, n795, n796, n797, n798, n799, n800,
         n801, n802, n803, n804, n805, n806, n807, n808, n809, n810, n811,
         n812, n813, n814, n815, n816, n817, n818, n819, n820, n821, n822,
         n823, n824, n825, n826, n827, n828, n829, n830, n831, n832, n833,
         n834, n835, n836, n837, n838, n839, n840, n841, n842, n843, n844,
         n845, n846, n847, n848, n849, n850, n851, n852, n853, n854, n855,
         n856, n857, n858, n859, n860, n861, n862, n863, n864, n865, n866,
         n867, n868, n869, n870, n871, n872, n873, n874, n875, n876, n877,
         n878, n879, n880, n881, n882, n883, n884, n885, n886, n887, n888,
         n889, n890, n891, n892, n893, n894, n895, n896, n897, n898, n899,
         n900, n901, n902, n903, n904, n905, n906, n907, n908, n909, n910,
         n911, n912, n913, n914, n915, n916, n917, n918, n919, n920, n921,
         n922, n923, n924, n925, n926, n927, n928, n929, n930, n931, n932,
         n933, n934, n935, n936, n937, n938, n939, n940, n941, n942, n943,
         n944, n945, n946, n947, n948, n949, n950, n951, n952, n953, n954,
         n955, n956, n957, n958, n959, n960, n961, n962, n963, n964, n965,
         n966, n967, n968, n969, n970, n971, n972, n973, n974;
  wire   [1:0] read_state;
  wire   [1:0] write_state;
  wire   [1:0] next_write;
  wire   [31:0] next_sram_rdata;
  wire   [1:0] wstrb_reg;
  wire   [31:0] waddr_reg;
  wire   [9:0] wlen_reg;
  wire   [31:0] raddr_reg;
  wire   [9:0] rlen_reg;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;
  assign sram_rresp = 1'b0;
  assign sram_bresp = 1'b0;
  assign wen[2] = wen[3];
  assign wen[0] = wen[1];

  DFFSR \sram_rdata_reg[31]  ( .D(next_sram_rdata[31]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[31]) );
  DFFSR \sram_rdata_reg[30]  ( .D(next_sram_rdata[30]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[30]) );
  DFFSR \sram_rdata_reg[29]  ( .D(next_sram_rdata[29]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[29]) );
  DFFSR \sram_rdata_reg[28]  ( .D(next_sram_rdata[28]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[28]) );
  DFFSR \sram_rdata_reg[27]  ( .D(next_sram_rdata[27]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[27]) );
  DFFSR \sram_rdata_reg[26]  ( .D(next_sram_rdata[26]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[26]) );
  DFFSR \sram_rdata_reg[25]  ( .D(next_sram_rdata[25]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[25]) );
  DFFSR \sram_rdata_reg[24]  ( .D(next_sram_rdata[24]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[24]) );
  DFFSR \sram_rdata_reg[23]  ( .D(next_sram_rdata[23]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[23]) );
  DFFSR \sram_rdata_reg[22]  ( .D(next_sram_rdata[22]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[22]) );
  DFFSR \sram_rdata_reg[21]  ( .D(next_sram_rdata[21]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[21]) );
  DFFSR \sram_rdata_reg[20]  ( .D(next_sram_rdata[20]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[20]) );
  DFFSR \sram_rdata_reg[19]  ( .D(next_sram_rdata[19]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[19]) );
  DFFSR \sram_rdata_reg[18]  ( .D(next_sram_rdata[18]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[18]) );
  DFFSR \sram_rdata_reg[17]  ( .D(next_sram_rdata[17]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[17]) );
  DFFSR \sram_rdata_reg[16]  ( .D(next_sram_rdata[16]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[16]) );
  DFFSR \sram_rdata_reg[15]  ( .D(next_sram_rdata[15]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[15]) );
  DFFSR \sram_rdata_reg[14]  ( .D(next_sram_rdata[14]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[14]) );
  DFFSR \sram_rdata_reg[13]  ( .D(next_sram_rdata[13]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[13]) );
  DFFSR \sram_rdata_reg[12]  ( .D(next_sram_rdata[12]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[12]) );
  DFFSR \sram_rdata_reg[11]  ( .D(next_sram_rdata[11]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[11]) );
  DFFSR \sram_rdata_reg[10]  ( .D(next_sram_rdata[10]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[10]) );
  DFFSR \sram_rdata_reg[9]  ( .D(next_sram_rdata[9]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[9]) );
  DFFSR \sram_rdata_reg[8]  ( .D(next_sram_rdata[8]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[8]) );
  DFFSR \sram_rdata_reg[7]  ( .D(next_sram_rdata[7]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[7]) );
  DFFSR \sram_rdata_reg[6]  ( .D(next_sram_rdata[6]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[6]) );
  DFFSR \sram_rdata_reg[5]  ( .D(next_sram_rdata[5]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[5]) );
  DFFSR \sram_rdata_reg[4]  ( .D(next_sram_rdata[4]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[4]) );
  DFFSR \sram_rdata_reg[3]  ( .D(next_sram_rdata[3]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[3]) );
  DFFSR \sram_rdata_reg[2]  ( .D(next_sram_rdata[2]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[2]) );
  DFFSR \sram_rdata_reg[1]  ( .D(next_sram_rdata[1]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[1]) );
  DFFSR \sram_rdata_reg[0]  ( .D(next_sram_rdata[0]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(sram_rdata[0]) );
  DFFSR sram_awready_reg ( .D(n939), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_awready) );
  DFFSR \wlen_reg_reg[0]  ( .D(n553), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[0]) );
  DFFSR \write_state_reg[1]  ( .D(next_write[1]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(write_state[1]) );
  DFFSR \write_state_reg[0]  ( .D(next_write[0]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(write_state[0]) );
  DFFSR \wlen_reg_reg[9]  ( .D(n544), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[9]) );
  DFFSR \wlen_reg_reg[1]  ( .D(n552), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[1]) );
  DFFSR \wlen_reg_reg[2]  ( .D(n551), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[2]) );
  DFFSR \wlen_reg_reg[3]  ( .D(n550), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[3]) );
  DFFSR \wlen_reg_reg[4]  ( .D(n549), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[4]) );
  DFFSR \wlen_reg_reg[5]  ( .D(n548), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[5]) );
  DFFSR \wlen_reg_reg[6]  ( .D(n547), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[6]) );
  DFFSR \wlen_reg_reg[7]  ( .D(n546), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[7]) );
  DFFSR \wlen_reg_reg[8]  ( .D(n545), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[8]) );
  DFFSR \waddr_reg_reg[31]  ( .D(n512), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[31]) );
  DFFSR \waddr_reg_reg[0]  ( .D(n543), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[0]) );
  DFFSR \waddr_reg_reg[1]  ( .D(n542), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[1]) );
  DFFSR \waddr_reg_reg[2]  ( .D(n541), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[2]) );
  DFFSR \waddr_reg_reg[3]  ( .D(n540), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[3]) );
  DFFSR \waddr_reg_reg[4]  ( .D(n539), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[4]) );
  DFFSR \waddr_reg_reg[5]  ( .D(n538), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[5]) );
  DFFSR \waddr_reg_reg[6]  ( .D(n537), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[6]) );
  DFFSR \waddr_reg_reg[7]  ( .D(n536), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[7]) );
  DFFSR \waddr_reg_reg[8]  ( .D(n535), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[8]) );
  DFFSR \waddr_reg_reg[9]  ( .D(n534), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[9]) );
  DFFSR \waddr_reg_reg[10]  ( .D(n533), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[10]) );
  DFFSR \waddr_reg_reg[11]  ( .D(n532), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[11]) );
  DFFSR \waddr_reg_reg[12]  ( .D(n531), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[12]) );
  DFFSR \waddr_reg_reg[13]  ( .D(n530), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[13]) );
  DFFSR \waddr_reg_reg[14]  ( .D(n529), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[14]) );
  DFFSR \waddr_reg_reg[15]  ( .D(n528), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[15]) );
  DFFSR \waddr_reg_reg[16]  ( .D(n527), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[16]) );
  DFFSR \waddr_reg_reg[17]  ( .D(n526), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[17]) );
  DFFSR \waddr_reg_reg[18]  ( .D(n525), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[18]) );
  DFFSR \waddr_reg_reg[19]  ( .D(n524), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[19]) );
  DFFSR \waddr_reg_reg[20]  ( .D(n523), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[20]) );
  DFFSR \waddr_reg_reg[21]  ( .D(n522), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[21]) );
  DFFSR \waddr_reg_reg[22]  ( .D(n521), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[22]) );
  DFFSR \waddr_reg_reg[23]  ( .D(n520), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[23]) );
  DFFSR \waddr_reg_reg[24]  ( .D(n519), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[24]) );
  DFFSR \waddr_reg_reg[25]  ( .D(n518), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[25]) );
  DFFSR \waddr_reg_reg[26]  ( .D(n517), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[26]) );
  DFFSR \waddr_reg_reg[27]  ( .D(n516), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[27]) );
  DFFSR \waddr_reg_reg[28]  ( .D(n515), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[28]) );
  DFFSR \waddr_reg_reg[29]  ( .D(n514), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[29]) );
  DFFSR \waddr_reg_reg[30]  ( .D(n513), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[30]) );
  DFFSR sram_wready_reg ( .D(n554), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_wready) );
  DFFSR \wdata_reg_reg[31]  ( .D(n940), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[31]) );
  DFFSR \wstrb_reg_reg[0]  ( .D(n386), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wstrb_reg[0]) );
  DFFSR \wstrb_reg_reg[1]  ( .D(n384), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wstrb_reg[1]) );
  DFFSR \wdata_reg_reg[0]  ( .D(n971), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[0]) );
  DFFSR \wdata_reg_reg[1]  ( .D(n970), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[1]) );
  DFFSR \wdata_reg_reg[2]  ( .D(n969), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[2]) );
  DFFSR \wdata_reg_reg[3]  ( .D(n968), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[3]) );
  DFFSR \wdata_reg_reg[4]  ( .D(n967), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[4]) );
  DFFSR \wdata_reg_reg[5]  ( .D(n966), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[5]) );
  DFFSR \wdata_reg_reg[6]  ( .D(n965), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[6]) );
  DFFSR \wdata_reg_reg[7]  ( .D(n964), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[7]) );
  DFFSR \wdata_reg_reg[8]  ( .D(n963), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[8]) );
  DFFSR \wdata_reg_reg[9]  ( .D(n962), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[9]) );
  DFFSR \wdata_reg_reg[10]  ( .D(n961), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[10]) );
  DFFSR \wdata_reg_reg[11]  ( .D(n960), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[11]) );
  DFFSR \wdata_reg_reg[12]  ( .D(n959), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[12]) );
  DFFSR \wdata_reg_reg[13]  ( .D(n958), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[13]) );
  DFFSR \wdata_reg_reg[14]  ( .D(n957), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[14]) );
  DFFSR \wdata_reg_reg[15]  ( .D(n956), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[15]) );
  DFFSR \wdata_reg_reg[16]  ( .D(n955), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[16]) );
  DFFSR \wdata_reg_reg[17]  ( .D(n954), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[17]) );
  DFFSR \wdata_reg_reg[18]  ( .D(n953), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[18]) );
  DFFSR \wdata_reg_reg[19]  ( .D(n952), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[19]) );
  DFFSR \wdata_reg_reg[20]  ( .D(n951), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[20]) );
  DFFSR \wdata_reg_reg[21]  ( .D(n950), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[21]) );
  DFFSR \wdata_reg_reg[22]  ( .D(n949), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[22]) );
  DFFSR \wdata_reg_reg[23]  ( .D(n948), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[23]) );
  DFFSR \wdata_reg_reg[24]  ( .D(n947), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[24]) );
  DFFSR \wdata_reg_reg[25]  ( .D(n946), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[25]) );
  DFFSR \wdata_reg_reg[26]  ( .D(n945), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[26]) );
  DFFSR \wdata_reg_reg[27]  ( .D(n944), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[27]) );
  DFFSR \wdata_reg_reg[28]  ( .D(n943), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[28]) );
  DFFSR \wdata_reg_reg[29]  ( .D(n942), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[29]) );
  DFFSR \wdata_reg_reg[30]  ( .D(n941), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[30]) );
  DFFSR sram_bvalid_reg ( .D(N178), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_bvalid) );
  DFFSR sram_arready_reg ( .D(n972), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_arready) );
  DFFSR \rlen_reg_reg[9]  ( .D(n502), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[9]) );
  DFFSR \read_state_reg[0]  ( .D(n469), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        read_state[0]) );
  DFFSR \read_state_reg[1]  ( .D(n974), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        read_state[1]) );
  DFFSR sram_rvalid_reg ( .D(n973), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_rvalid) );
  DFFSR \rlen_reg_reg[8]  ( .D(n503), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[8]) );
  DFFSR \rlen_reg_reg[0]  ( .D(n511), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[0]) );
  DFFSR \rlen_reg_reg[1]  ( .D(n510), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[1]) );
  DFFSR \rlen_reg_reg[2]  ( .D(n509), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[2]) );
  DFFSR \rlen_reg_reg[3]  ( .D(n508), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[3]) );
  DFFSR \rlen_reg_reg[4]  ( .D(n507), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[4]) );
  DFFSR \rlen_reg_reg[5]  ( .D(n506), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[5]) );
  DFFSR \rlen_reg_reg[6]  ( .D(n505), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[6]) );
  DFFSR \rlen_reg_reg[7]  ( .D(n504), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[7]) );
  DFFSR sram_rlast_reg ( .D(next_rlast), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_rlast) );
  DFFSR \raddr_reg_reg[31]  ( .D(n470), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[31]) );
  DFFSR \raddr_reg_reg[0]  ( .D(n501), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[0]) );
  DFFSR \raddr_reg_reg[1]  ( .D(n500), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[1]) );
  DFFSR \raddr_reg_reg[2]  ( .D(n499), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[2]) );
  DFFSR \raddr_reg_reg[3]  ( .D(n498), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[3]) );
  DFFSR \raddr_reg_reg[4]  ( .D(n497), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[4]) );
  DFFSR \raddr_reg_reg[5]  ( .D(n496), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[5]) );
  DFFSR \raddr_reg_reg[6]  ( .D(n495), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[6]) );
  DFFSR \raddr_reg_reg[7]  ( .D(n494), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[7]) );
  DFFSR \raddr_reg_reg[8]  ( .D(n493), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[8]) );
  DFFSR \raddr_reg_reg[9]  ( .D(n492), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[9]) );
  DFFSR \raddr_reg_reg[10]  ( .D(n491), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[10]) );
  DFFSR \raddr_reg_reg[11]  ( .D(n490), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[11]) );
  DFFSR \raddr_reg_reg[12]  ( .D(n489), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[12]) );
  DFFSR \raddr_reg_reg[13]  ( .D(n488), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[13]) );
  DFFSR \raddr_reg_reg[14]  ( .D(n487), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[14]) );
  DFFSR \raddr_reg_reg[15]  ( .D(n486), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[15]) );
  DFFSR \raddr_reg_reg[16]  ( .D(n485), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[16]) );
  DFFSR \raddr_reg_reg[17]  ( .D(n484), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[17]) );
  DFFSR \raddr_reg_reg[18]  ( .D(n483), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[18]) );
  DFFSR \raddr_reg_reg[19]  ( .D(n482), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[19]) );
  DFFSR \raddr_reg_reg[20]  ( .D(n481), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[20]) );
  DFFSR \raddr_reg_reg[21]  ( .D(n480), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[21]) );
  DFFSR \raddr_reg_reg[22]  ( .D(n479), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[22]) );
  DFFSR \raddr_reg_reg[23]  ( .D(n478), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[23]) );
  DFFSR \raddr_reg_reg[24]  ( .D(n477), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[24]) );
  DFFSR \raddr_reg_reg[25]  ( .D(n476), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[25]) );
  DFFSR \raddr_reg_reg[26]  ( .D(n475), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[26]) );
  DFFSR \raddr_reg_reg[27]  ( .D(n474), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[27]) );
  DFFSR \raddr_reg_reg[28]  ( .D(n473), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[28]) );
  DFFSR \raddr_reg_reg[29]  ( .D(n472), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[29]) );
  DFFSR \raddr_reg_reg[30]  ( .D(n471), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[30]) );
  sram_axi_DW01_inc_0 add_193 ( .A(waddr_reg), .SUM({N115, N114, N113, N112, 
        N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, 
        N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, 
        N85, SYNOPSYS_UNCONNECTED__0}) );
  sram_axi_DW01_sub_0 sub_81 ( .A(waddr_reg), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 
        1'b1, 1'b1, 1'b1}), .CI(1'b0), .DIFF(write_addr) );
  sram_axi_DW01_inc_1 add_197 ( .A(raddr_reg), .SUM({N159, N158, N157, N156, 
        N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, 
        N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, 
        N131, N130, N129, SYNOPSYS_UNCONNECTED__1}) );
  sram_axi_DW01_sub_1 sub_112 ( .A(raddr_reg), .B({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b1, 1'b1, 1'b1, 1'b1}), .CI(1'b0), .DIFF(read_addr) );
  INVX2 U592 ( .A(n813), .Y(n555) );
  INVX4 U593 ( .A(n676), .Y(n720) );
  INVX4 U594 ( .A(n796), .Y(n847) );
  INVX4 U595 ( .A(n693), .Y(n680) );
  NAND2X1 U596 ( .A(sram_wready), .B(sram_wvalid), .Y(n602) );
  INVX4 U597 ( .A(n602), .Y(n556) );
  INVX4 U598 ( .A(n799), .Y(n557) );
  INVX4 U599 ( .A(n679), .Y(n558) );
  INVX1 U600 ( .A(n559), .Y(wen[3]) );
  MUX2X1 U601 ( .B(n560), .A(n559), .S(wstrb_reg[1]), .Y(wen[1]) );
  NAND2X1 U602 ( .A(wstrb_reg[0]), .B(n561), .Y(n559) );
  NAND2X1 U603 ( .A(n561), .B(n562), .Y(n560) );
  AND2X1 U604 ( .A(read_valid), .B(read_data[9]), .Y(next_sram_rdata[9]) );
  AND2X1 U605 ( .A(read_data[8]), .B(read_valid), .Y(next_sram_rdata[8]) );
  AND2X1 U606 ( .A(read_data[7]), .B(read_valid), .Y(next_sram_rdata[7]) );
  AND2X1 U607 ( .A(read_data[6]), .B(read_valid), .Y(next_sram_rdata[6]) );
  AND2X1 U608 ( .A(read_data[5]), .B(read_valid), .Y(next_sram_rdata[5]) );
  AND2X1 U609 ( .A(read_data[4]), .B(read_valid), .Y(next_sram_rdata[4]) );
  AND2X1 U610 ( .A(read_data[3]), .B(read_valid), .Y(next_sram_rdata[3]) );
  AND2X1 U611 ( .A(read_data[31]), .B(read_valid), .Y(next_sram_rdata[31]) );
  AND2X1 U612 ( .A(read_data[30]), .B(read_valid), .Y(next_sram_rdata[30]) );
  AND2X1 U613 ( .A(read_data[2]), .B(read_valid), .Y(next_sram_rdata[2]) );
  AND2X1 U614 ( .A(read_data[29]), .B(read_valid), .Y(next_sram_rdata[29]) );
  AND2X1 U615 ( .A(read_data[28]), .B(read_valid), .Y(next_sram_rdata[28]) );
  AND2X1 U616 ( .A(read_data[27]), .B(read_valid), .Y(next_sram_rdata[27]) );
  AND2X1 U617 ( .A(read_data[26]), .B(read_valid), .Y(next_sram_rdata[26]) );
  AND2X1 U618 ( .A(read_data[25]), .B(read_valid), .Y(next_sram_rdata[25]) );
  AND2X1 U619 ( .A(read_data[24]), .B(read_valid), .Y(next_sram_rdata[24]) );
  AND2X1 U620 ( .A(read_data[23]), .B(read_valid), .Y(next_sram_rdata[23]) );
  AND2X1 U621 ( .A(read_data[22]), .B(read_valid), .Y(next_sram_rdata[22]) );
  AND2X1 U622 ( .A(read_data[21]), .B(read_valid), .Y(next_sram_rdata[21]) );
  AND2X1 U623 ( .A(read_data[20]), .B(read_valid), .Y(next_sram_rdata[20]) );
  AND2X1 U624 ( .A(read_data[1]), .B(read_valid), .Y(next_sram_rdata[1]) );
  AND2X1 U625 ( .A(read_data[19]), .B(read_valid), .Y(next_sram_rdata[19]) );
  AND2X1 U626 ( .A(read_data[18]), .B(read_valid), .Y(next_sram_rdata[18]) );
  AND2X1 U627 ( .A(read_data[17]), .B(read_valid), .Y(next_sram_rdata[17]) );
  AND2X1 U628 ( .A(read_data[16]), .B(read_valid), .Y(next_sram_rdata[16]) );
  AND2X1 U629 ( .A(read_data[15]), .B(read_valid), .Y(next_sram_rdata[15]) );
  AND2X1 U630 ( .A(read_data[14]), .B(read_valid), .Y(next_sram_rdata[14]) );
  AND2X1 U631 ( .A(read_data[13]), .B(read_valid), .Y(next_sram_rdata[13]) );
  AND2X1 U632 ( .A(read_data[12]), .B(read_valid), .Y(next_sram_rdata[12]) );
  AND2X1 U633 ( .A(read_data[11]), .B(read_valid), .Y(next_sram_rdata[11]) );
  AND2X1 U634 ( .A(read_data[10]), .B(read_valid), .Y(next_sram_rdata[10]) );
  AND2X1 U635 ( .A(read_data[0]), .B(read_valid), .Y(next_sram_rdata[0]) );
  NOR2X1 U636 ( .A(n563), .B(n564), .Y(next_rlast) );
  INVX1 U637 ( .A(n565), .Y(n939) );
  OAI21X1 U638 ( .A(n566), .B(n567), .C(n568), .Y(n565) );
  NOR2X1 U639 ( .A(next_write[1]), .B(next_write[0]), .Y(n568) );
  NAND2X1 U640 ( .A(n569), .B(n570), .Y(n567) );
  NOR2X1 U641 ( .A(n571), .B(n572), .Y(n570) );
  INVX1 U642 ( .A(n573), .Y(n572) );
  NOR3X1 U643 ( .A(sram_awaddr[17]), .B(sram_awaddr[18]), .C(sram_awaddr[16]), 
        .Y(n573) );
  NAND3X1 U644 ( .A(n574), .B(n575), .C(n576), .Y(n571) );
  NOR2X1 U645 ( .A(sram_awaddr[22]), .B(sram_awaddr[21]), .Y(n576) );
  INVX1 U646 ( .A(sram_awaddr[20]), .Y(n575) );
  INVX1 U647 ( .A(sram_awaddr[19]), .Y(n574) );
  NOR2X1 U648 ( .A(n577), .B(n578), .Y(n569) );
  OAI21X1 U649 ( .A(n579), .B(n580), .C(n581), .Y(n578) );
  NOR2X1 U650 ( .A(sram_awaddr[11]), .B(sram_awaddr[10]), .Y(n581) );
  NAND2X1 U651 ( .A(sram_awaddr[3]), .B(sram_awaddr[2]), .Y(n580) );
  NAND2X1 U652 ( .A(sram_awaddr[1]), .B(sram_awaddr[0]), .Y(n579) );
  NAND3X1 U653 ( .A(n582), .B(n583), .C(n584), .Y(n577) );
  NOR2X1 U654 ( .A(sram_awaddr[15]), .B(sram_awaddr[14]), .Y(n584) );
  INVX1 U655 ( .A(sram_awaddr[13]), .Y(n583) );
  INVX1 U656 ( .A(sram_awaddr[12]), .Y(n582) );
  NAND2X1 U657 ( .A(n585), .B(n586), .Y(n566) );
  NOR2X1 U658 ( .A(n587), .B(n588), .Y(n586) );
  NAND3X1 U659 ( .A(n589), .B(n590), .C(n591), .Y(n588) );
  NOR2X1 U660 ( .A(sram_awaddr[5]), .B(sram_awaddr[4]), .Y(n591) );
  INVX1 U661 ( .A(sram_awaddr[31]), .Y(n590) );
  INVX1 U662 ( .A(sram_awaddr[30]), .Y(n589) );
  NAND3X1 U663 ( .A(n592), .B(n593), .C(n594), .Y(n587) );
  NOR2X1 U664 ( .A(sram_awaddr[9]), .B(sram_awaddr[8]), .Y(n594) );
  INVX1 U665 ( .A(sram_awaddr[7]), .Y(n593) );
  INVX1 U666 ( .A(sram_awaddr[6]), .Y(n592) );
  NOR2X1 U667 ( .A(n595), .B(n596), .Y(n585) );
  INVX1 U668 ( .A(n597), .Y(n596) );
  NOR3X1 U669 ( .A(sram_awaddr[24]), .B(sram_awaddr[25]), .C(sram_awaddr[23]), 
        .Y(n597) );
  NAND3X1 U670 ( .A(n598), .B(n599), .C(n600), .Y(n595) );
  NOR2X1 U671 ( .A(sram_awaddr[29]), .B(sram_awaddr[28]), .Y(n600) );
  INVX1 U672 ( .A(sram_awaddr[27]), .Y(n599) );
  INVX1 U673 ( .A(sram_awaddr[26]), .Y(n598) );
  INVX1 U674 ( .A(n601), .Y(n940) );
  MUX2X1 U675 ( .B(write_data[31]), .A(sram_wdata[31]), .S(n556), .Y(n601) );
  INVX1 U676 ( .A(n603), .Y(n941) );
  MUX2X1 U677 ( .B(write_data[30]), .A(sram_wdata[30]), .S(n556), .Y(n603) );
  INVX1 U678 ( .A(n604), .Y(n942) );
  MUX2X1 U679 ( .B(write_data[29]), .A(sram_wdata[29]), .S(n556), .Y(n604) );
  INVX1 U680 ( .A(n605), .Y(n943) );
  MUX2X1 U681 ( .B(write_data[28]), .A(sram_wdata[28]), .S(n556), .Y(n605) );
  INVX1 U682 ( .A(n606), .Y(n944) );
  MUX2X1 U683 ( .B(write_data[27]), .A(sram_wdata[27]), .S(n556), .Y(n606) );
  INVX1 U684 ( .A(n607), .Y(n945) );
  MUX2X1 U685 ( .B(write_data[26]), .A(sram_wdata[26]), .S(n556), .Y(n607) );
  INVX1 U686 ( .A(n608), .Y(n946) );
  MUX2X1 U687 ( .B(write_data[25]), .A(sram_wdata[25]), .S(n556), .Y(n608) );
  INVX1 U688 ( .A(n609), .Y(n947) );
  MUX2X1 U689 ( .B(write_data[24]), .A(sram_wdata[24]), .S(n556), .Y(n609) );
  INVX1 U690 ( .A(n610), .Y(n948) );
  MUX2X1 U691 ( .B(write_data[23]), .A(sram_wdata[23]), .S(n556), .Y(n610) );
  INVX1 U692 ( .A(n611), .Y(n949) );
  MUX2X1 U693 ( .B(write_data[22]), .A(sram_wdata[22]), .S(n556), .Y(n611) );
  INVX1 U694 ( .A(n612), .Y(n950) );
  MUX2X1 U695 ( .B(write_data[21]), .A(sram_wdata[21]), .S(n556), .Y(n612) );
  INVX1 U696 ( .A(n613), .Y(n951) );
  MUX2X1 U697 ( .B(write_data[20]), .A(sram_wdata[20]), .S(n556), .Y(n613) );
  INVX1 U698 ( .A(n614), .Y(n952) );
  MUX2X1 U699 ( .B(write_data[19]), .A(sram_wdata[19]), .S(n556), .Y(n614) );
  INVX1 U700 ( .A(n615), .Y(n953) );
  MUX2X1 U701 ( .B(write_data[18]), .A(sram_wdata[18]), .S(n556), .Y(n615) );
  INVX1 U702 ( .A(n616), .Y(n954) );
  MUX2X1 U703 ( .B(write_data[17]), .A(sram_wdata[17]), .S(n556), .Y(n616) );
  INVX1 U704 ( .A(n617), .Y(n955) );
  MUX2X1 U705 ( .B(write_data[16]), .A(sram_wdata[16]), .S(n556), .Y(n617) );
  INVX1 U706 ( .A(n618), .Y(n956) );
  MUX2X1 U707 ( .B(write_data[15]), .A(sram_wdata[15]), .S(n556), .Y(n618) );
  INVX1 U708 ( .A(n619), .Y(n957) );
  MUX2X1 U709 ( .B(write_data[14]), .A(sram_wdata[14]), .S(n556), .Y(n619) );
  INVX1 U710 ( .A(n620), .Y(n958) );
  MUX2X1 U711 ( .B(write_data[13]), .A(sram_wdata[13]), .S(n556), .Y(n620) );
  INVX1 U712 ( .A(n621), .Y(n959) );
  MUX2X1 U713 ( .B(write_data[12]), .A(sram_wdata[12]), .S(n556), .Y(n621) );
  INVX1 U714 ( .A(n622), .Y(n960) );
  MUX2X1 U715 ( .B(write_data[11]), .A(sram_wdata[11]), .S(n556), .Y(n622) );
  INVX1 U716 ( .A(n623), .Y(n961) );
  MUX2X1 U717 ( .B(write_data[10]), .A(sram_wdata[10]), .S(n556), .Y(n623) );
  INVX1 U718 ( .A(n624), .Y(n962) );
  MUX2X1 U719 ( .B(write_data[9]), .A(sram_wdata[9]), .S(n556), .Y(n624) );
  INVX1 U720 ( .A(n625), .Y(n963) );
  MUX2X1 U721 ( .B(write_data[8]), .A(sram_wdata[8]), .S(n556), .Y(n625) );
  INVX1 U722 ( .A(n626), .Y(n964) );
  MUX2X1 U723 ( .B(write_data[7]), .A(sram_wdata[7]), .S(n556), .Y(n626) );
  INVX1 U724 ( .A(n627), .Y(n965) );
  MUX2X1 U725 ( .B(write_data[6]), .A(sram_wdata[6]), .S(n556), .Y(n627) );
  INVX1 U726 ( .A(n628), .Y(n966) );
  MUX2X1 U727 ( .B(write_data[5]), .A(sram_wdata[5]), .S(n556), .Y(n628) );
  INVX1 U728 ( .A(n629), .Y(n967) );
  MUX2X1 U729 ( .B(write_data[4]), .A(sram_wdata[4]), .S(n556), .Y(n629) );
  INVX1 U730 ( .A(n630), .Y(n968) );
  MUX2X1 U731 ( .B(write_data[3]), .A(sram_wdata[3]), .S(n556), .Y(n630) );
  INVX1 U732 ( .A(n631), .Y(n969) );
  MUX2X1 U733 ( .B(write_data[2]), .A(sram_wdata[2]), .S(n556), .Y(n631) );
  INVX1 U734 ( .A(n632), .Y(n970) );
  MUX2X1 U735 ( .B(write_data[1]), .A(sram_wdata[1]), .S(n556), .Y(n632) );
  INVX1 U736 ( .A(n633), .Y(n971) );
  MUX2X1 U737 ( .B(write_data[0]), .A(sram_wdata[0]), .S(n556), .Y(n633) );
  INVX1 U738 ( .A(n634), .Y(n972) );
  OAI21X1 U739 ( .A(n635), .B(n636), .C(n637), .Y(n634) );
  NOR2X1 U740 ( .A(n974), .B(n469), .Y(n637) );
  NAND2X1 U741 ( .A(n638), .B(n639), .Y(n636) );
  NOR2X1 U742 ( .A(n640), .B(n641), .Y(n639) );
  INVX1 U743 ( .A(n642), .Y(n641) );
  NOR3X1 U744 ( .A(sram_araddr[17]), .B(sram_araddr[18]), .C(sram_araddr[16]), 
        .Y(n642) );
  NAND3X1 U745 ( .A(n643), .B(n644), .C(n645), .Y(n640) );
  NOR2X1 U746 ( .A(sram_araddr[22]), .B(sram_araddr[21]), .Y(n645) );
  INVX1 U747 ( .A(sram_araddr[20]), .Y(n644) );
  INVX1 U748 ( .A(sram_araddr[19]), .Y(n643) );
  NOR2X1 U749 ( .A(n646), .B(n647), .Y(n638) );
  OAI21X1 U750 ( .A(n648), .B(n649), .C(n650), .Y(n647) );
  NOR2X1 U751 ( .A(sram_araddr[11]), .B(sram_araddr[10]), .Y(n650) );
  NAND2X1 U752 ( .A(sram_araddr[3]), .B(sram_araddr[2]), .Y(n649) );
  NAND2X1 U753 ( .A(sram_araddr[1]), .B(sram_araddr[0]), .Y(n648) );
  NAND3X1 U754 ( .A(n651), .B(n652), .C(n653), .Y(n646) );
  NOR2X1 U755 ( .A(sram_araddr[15]), .B(sram_araddr[14]), .Y(n653) );
  INVX1 U756 ( .A(sram_araddr[13]), .Y(n652) );
  INVX1 U757 ( .A(sram_araddr[12]), .Y(n651) );
  NAND2X1 U758 ( .A(n654), .B(n655), .Y(n635) );
  NOR2X1 U759 ( .A(n656), .B(n657), .Y(n655) );
  NAND3X1 U760 ( .A(n658), .B(n659), .C(n660), .Y(n657) );
  NOR2X1 U761 ( .A(sram_araddr[5]), .B(sram_araddr[4]), .Y(n660) );
  INVX1 U762 ( .A(sram_araddr[31]), .Y(n659) );
  INVX1 U763 ( .A(sram_araddr[30]), .Y(n658) );
  NAND3X1 U764 ( .A(n661), .B(n662), .C(n663), .Y(n656) );
  NOR2X1 U765 ( .A(sram_araddr[9]), .B(sram_araddr[8]), .Y(n663) );
  INVX1 U766 ( .A(sram_araddr[7]), .Y(n662) );
  INVX1 U767 ( .A(sram_araddr[6]), .Y(n661) );
  NOR2X1 U768 ( .A(n664), .B(n665), .Y(n654) );
  INVX1 U769 ( .A(n666), .Y(n665) );
  NOR3X1 U770 ( .A(sram_araddr[24]), .B(sram_araddr[25]), .C(sram_araddr[23]), 
        .Y(n666) );
  NAND3X1 U771 ( .A(n667), .B(n668), .C(n669), .Y(n664) );
  NOR2X1 U772 ( .A(sram_araddr[29]), .B(sram_araddr[28]), .Y(n669) );
  INVX1 U773 ( .A(sram_araddr[27]), .Y(n668) );
  INVX1 U774 ( .A(sram_araddr[26]), .Y(n667) );
  INVX1 U775 ( .A(n564), .Y(n973) );
  NAND2X1 U776 ( .A(n469), .B(n974), .Y(n564) );
  OAI21X1 U777 ( .A(n670), .B(n671), .C(n672), .Y(n974) );
  OAI21X1 U778 ( .A(n673), .B(n674), .C(read_state[1]), .Y(n672) );
  INVX1 U779 ( .A(read_valid), .Y(n670) );
  INVX1 U780 ( .A(n671), .Y(ren) );
  NOR2X1 U781 ( .A(next_write[1]), .B(n675), .Y(n554) );
  INVX1 U782 ( .A(next_write[0]), .Y(n675) );
  OAI21X1 U783 ( .A(n676), .B(n677), .C(n678), .Y(n553) );
  MUX2X1 U784 ( .B(n679), .A(n680), .S(wlen_reg[0]), .Y(n678) );
  INVX1 U785 ( .A(sram_awlen[0]), .Y(n677) );
  OAI21X1 U786 ( .A(n676), .B(n681), .C(n682), .Y(n552) );
  MUX2X1 U787 ( .B(n683), .A(n684), .S(wlen_reg[1]), .Y(n682) );
  NOR2X1 U788 ( .A(wlen_reg[0]), .B(n558), .Y(n683) );
  INVX1 U789 ( .A(sram_awlen[1]), .Y(n681) );
  OAI21X1 U790 ( .A(n676), .B(n686), .C(n687), .Y(n551) );
  AOI22X1 U791 ( .A(wlen_reg[2]), .B(n688), .C(n679), .D(n689), .Y(n687) );
  OAI21X1 U792 ( .A(n558), .B(n690), .C(n691), .Y(n688) );
  INVX1 U793 ( .A(n684), .Y(n691) );
  OAI21X1 U794 ( .A(n558), .B(n692), .C(n693), .Y(n684) );
  INVX1 U795 ( .A(sram_awlen[2]), .Y(n686) );
  OAI21X1 U796 ( .A(n676), .B(n694), .C(n695), .Y(n550) );
  MUX2X1 U797 ( .B(n696), .A(n697), .S(wlen_reg[3]), .Y(n695) );
  NOR2X1 U798 ( .A(n698), .B(n558), .Y(n696) );
  INVX1 U799 ( .A(sram_awlen[3]), .Y(n694) );
  OAI21X1 U800 ( .A(n676), .B(n699), .C(n700), .Y(n549) );
  AOI22X1 U801 ( .A(wlen_reg[4]), .B(n701), .C(n679), .D(n702), .Y(n700) );
  OAI21X1 U802 ( .A(n558), .B(n703), .C(n704), .Y(n701) );
  INVX1 U803 ( .A(n697), .Y(n704) );
  OAI21X1 U804 ( .A(n689), .B(n685), .C(n693), .Y(n697) );
  INVX1 U805 ( .A(sram_awlen[4]), .Y(n699) );
  OAI21X1 U806 ( .A(n676), .B(n705), .C(n706), .Y(n548) );
  MUX2X1 U807 ( .B(n707), .A(n708), .S(wlen_reg[5]), .Y(n706) );
  NOR2X1 U808 ( .A(n709), .B(n558), .Y(n707) );
  INVX1 U809 ( .A(sram_awlen[5]), .Y(n705) );
  OAI21X1 U810 ( .A(n676), .B(n710), .C(n711), .Y(n547) );
  AOI22X1 U811 ( .A(wlen_reg[6]), .B(n712), .C(n713), .D(n679), .Y(n711) );
  INVX1 U812 ( .A(n714), .Y(n712) );
  AOI21X1 U813 ( .A(n679), .B(wlen_reg[5]), .C(n708), .Y(n714) );
  OAI21X1 U814 ( .A(n702), .B(n685), .C(n693), .Y(n708) );
  INVX1 U815 ( .A(n709), .Y(n702) );
  INVX1 U816 ( .A(sram_awlen[6]), .Y(n710) );
  OAI21X1 U817 ( .A(n676), .B(n715), .C(n716), .Y(n546) );
  AOI21X1 U818 ( .A(wlen_reg[7]), .B(n717), .C(n718), .Y(n716) );
  INVX1 U819 ( .A(sram_awlen[7]), .Y(n715) );
  INVX1 U820 ( .A(n719), .Y(n545) );
  AOI21X1 U821 ( .A(n720), .B(sram_awlen[8]), .C(n721), .Y(n719) );
  MUX2X1 U822 ( .B(n722), .A(n723), .S(wlen_reg[8]), .Y(n721) );
  OAI21X1 U823 ( .A(n676), .B(n724), .C(n725), .Y(n544) );
  AOI21X1 U824 ( .A(wlen_reg[9]), .B(n726), .C(n727), .Y(n725) );
  INVX1 U825 ( .A(n728), .Y(n727) );
  OAI21X1 U826 ( .A(n558), .B(n729), .C(n723), .Y(n726) );
  AOI21X1 U827 ( .A(n679), .B(wlen_reg[7]), .C(n717), .Y(n723) );
  OAI21X1 U828 ( .A(n713), .B(n685), .C(n693), .Y(n717) );
  INVX1 U829 ( .A(sram_awlen[9]), .Y(n724) );
  OAI21X1 U830 ( .A(n730), .B(n676), .C(n731), .Y(n543) );
  MUX2X1 U831 ( .B(n679), .A(n680), .S(waddr_reg[0]), .Y(n731) );
  INVX1 U832 ( .A(sram_awaddr[0]), .Y(n730) );
  OAI21X1 U833 ( .A(n558), .B(n732), .C(n733), .Y(n542) );
  AOI22X1 U834 ( .A(n720), .B(sram_awaddr[1]), .C(waddr_reg[1]), .D(n680), .Y(
        n733) );
  INVX1 U835 ( .A(N85), .Y(n732) );
  OAI21X1 U836 ( .A(n558), .B(n734), .C(n735), .Y(n541) );
  AOI22X1 U837 ( .A(n720), .B(sram_awaddr[2]), .C(waddr_reg[2]), .D(n680), .Y(
        n735) );
  INVX1 U838 ( .A(N86), .Y(n734) );
  OAI21X1 U839 ( .A(n558), .B(n736), .C(n737), .Y(n540) );
  AOI22X1 U840 ( .A(n720), .B(sram_awaddr[3]), .C(waddr_reg[3]), .D(n680), .Y(
        n737) );
  INVX1 U841 ( .A(N87), .Y(n736) );
  OAI21X1 U842 ( .A(n558), .B(n738), .C(n739), .Y(n539) );
  AOI22X1 U843 ( .A(sram_awaddr[4]), .B(n720), .C(waddr_reg[4]), .D(n680), .Y(
        n739) );
  INVX1 U844 ( .A(N88), .Y(n738) );
  OAI21X1 U845 ( .A(n558), .B(n740), .C(n741), .Y(n538) );
  AOI22X1 U846 ( .A(sram_awaddr[5]), .B(n720), .C(waddr_reg[5]), .D(n680), .Y(
        n741) );
  INVX1 U847 ( .A(N89), .Y(n740) );
  OAI21X1 U848 ( .A(n558), .B(n742), .C(n743), .Y(n537) );
  AOI22X1 U849 ( .A(sram_awaddr[6]), .B(n720), .C(waddr_reg[6]), .D(n680), .Y(
        n743) );
  INVX1 U850 ( .A(N90), .Y(n742) );
  OAI21X1 U851 ( .A(n558), .B(n744), .C(n745), .Y(n536) );
  AOI22X1 U852 ( .A(sram_awaddr[7]), .B(n720), .C(waddr_reg[7]), .D(n680), .Y(
        n745) );
  INVX1 U853 ( .A(N91), .Y(n744) );
  OAI21X1 U854 ( .A(n558), .B(n746), .C(n747), .Y(n535) );
  AOI22X1 U855 ( .A(sram_awaddr[8]), .B(n720), .C(waddr_reg[8]), .D(n680), .Y(
        n747) );
  INVX1 U856 ( .A(N92), .Y(n746) );
  OAI21X1 U857 ( .A(n558), .B(n748), .C(n749), .Y(n534) );
  AOI22X1 U858 ( .A(sram_awaddr[9]), .B(n720), .C(waddr_reg[9]), .D(n680), .Y(
        n749) );
  INVX1 U859 ( .A(N93), .Y(n748) );
  OAI21X1 U860 ( .A(n558), .B(n750), .C(n751), .Y(n533) );
  AOI22X1 U861 ( .A(sram_awaddr[10]), .B(n720), .C(waddr_reg[10]), .D(n680), 
        .Y(n751) );
  INVX1 U862 ( .A(N94), .Y(n750) );
  OAI21X1 U863 ( .A(n558), .B(n752), .C(n753), .Y(n532) );
  AOI22X1 U864 ( .A(sram_awaddr[11]), .B(n720), .C(waddr_reg[11]), .D(n680), 
        .Y(n753) );
  INVX1 U865 ( .A(N95), .Y(n752) );
  OAI21X1 U866 ( .A(n558), .B(n754), .C(n755), .Y(n531) );
  AOI22X1 U867 ( .A(sram_awaddr[12]), .B(n720), .C(waddr_reg[12]), .D(n680), 
        .Y(n755) );
  INVX1 U868 ( .A(N96), .Y(n754) );
  OAI21X1 U869 ( .A(n558), .B(n756), .C(n757), .Y(n530) );
  AOI22X1 U870 ( .A(sram_awaddr[13]), .B(n720), .C(waddr_reg[13]), .D(n680), 
        .Y(n757) );
  INVX1 U871 ( .A(N97), .Y(n756) );
  OAI21X1 U872 ( .A(n558), .B(n758), .C(n759), .Y(n529) );
  AOI22X1 U873 ( .A(sram_awaddr[14]), .B(n720), .C(waddr_reg[14]), .D(n680), 
        .Y(n759) );
  INVX1 U874 ( .A(N98), .Y(n758) );
  OAI21X1 U875 ( .A(n558), .B(n760), .C(n761), .Y(n528) );
  AOI22X1 U876 ( .A(sram_awaddr[15]), .B(n720), .C(waddr_reg[15]), .D(n680), 
        .Y(n761) );
  INVX1 U877 ( .A(N99), .Y(n760) );
  OAI21X1 U878 ( .A(n558), .B(n762), .C(n763), .Y(n527) );
  AOI22X1 U879 ( .A(sram_awaddr[16]), .B(n720), .C(waddr_reg[16]), .D(n680), 
        .Y(n763) );
  INVX1 U880 ( .A(N100), .Y(n762) );
  OAI21X1 U881 ( .A(n558), .B(n764), .C(n765), .Y(n526) );
  AOI22X1 U882 ( .A(sram_awaddr[17]), .B(n720), .C(waddr_reg[17]), .D(n680), 
        .Y(n765) );
  INVX1 U883 ( .A(N101), .Y(n764) );
  OAI21X1 U884 ( .A(n558), .B(n766), .C(n767), .Y(n525) );
  AOI22X1 U885 ( .A(sram_awaddr[18]), .B(n720), .C(waddr_reg[18]), .D(n680), 
        .Y(n767) );
  INVX1 U886 ( .A(N102), .Y(n766) );
  OAI21X1 U887 ( .A(n558), .B(n768), .C(n769), .Y(n524) );
  AOI22X1 U888 ( .A(sram_awaddr[19]), .B(n720), .C(waddr_reg[19]), .D(n680), 
        .Y(n769) );
  INVX1 U889 ( .A(N103), .Y(n768) );
  OAI21X1 U890 ( .A(n558), .B(n770), .C(n771), .Y(n523) );
  AOI22X1 U891 ( .A(sram_awaddr[20]), .B(n720), .C(waddr_reg[20]), .D(n680), 
        .Y(n771) );
  INVX1 U892 ( .A(N104), .Y(n770) );
  OAI21X1 U893 ( .A(n558), .B(n772), .C(n773), .Y(n522) );
  AOI22X1 U894 ( .A(sram_awaddr[21]), .B(n720), .C(waddr_reg[21]), .D(n680), 
        .Y(n773) );
  INVX1 U895 ( .A(N105), .Y(n772) );
  OAI21X1 U896 ( .A(n558), .B(n774), .C(n775), .Y(n521) );
  AOI22X1 U897 ( .A(sram_awaddr[22]), .B(n720), .C(waddr_reg[22]), .D(n680), 
        .Y(n775) );
  INVX1 U898 ( .A(N106), .Y(n774) );
  OAI21X1 U899 ( .A(n558), .B(n776), .C(n777), .Y(n520) );
  AOI22X1 U900 ( .A(sram_awaddr[23]), .B(n720), .C(waddr_reg[23]), .D(n680), 
        .Y(n777) );
  INVX1 U901 ( .A(N107), .Y(n776) );
  OAI21X1 U902 ( .A(n558), .B(n778), .C(n779), .Y(n519) );
  AOI22X1 U903 ( .A(sram_awaddr[24]), .B(n720), .C(waddr_reg[24]), .D(n680), 
        .Y(n779) );
  INVX1 U904 ( .A(N108), .Y(n778) );
  OAI21X1 U905 ( .A(n685), .B(n780), .C(n781), .Y(n518) );
  AOI22X1 U906 ( .A(sram_awaddr[25]), .B(n720), .C(waddr_reg[25]), .D(n680), 
        .Y(n781) );
  INVX1 U907 ( .A(N109), .Y(n780) );
  OAI21X1 U908 ( .A(n685), .B(n782), .C(n783), .Y(n517) );
  AOI22X1 U909 ( .A(sram_awaddr[26]), .B(n720), .C(waddr_reg[26]), .D(n680), 
        .Y(n783) );
  INVX1 U910 ( .A(N110), .Y(n782) );
  OAI21X1 U911 ( .A(n685), .B(n784), .C(n785), .Y(n516) );
  AOI22X1 U912 ( .A(sram_awaddr[27]), .B(n720), .C(waddr_reg[27]), .D(n680), 
        .Y(n785) );
  INVX1 U913 ( .A(N111), .Y(n784) );
  OAI21X1 U914 ( .A(n685), .B(n786), .C(n787), .Y(n515) );
  AOI22X1 U915 ( .A(sram_awaddr[28]), .B(n720), .C(waddr_reg[28]), .D(n680), 
        .Y(n787) );
  INVX1 U916 ( .A(N112), .Y(n786) );
  OAI21X1 U917 ( .A(n685), .B(n788), .C(n789), .Y(n514) );
  AOI22X1 U918 ( .A(sram_awaddr[29]), .B(n720), .C(waddr_reg[29]), .D(n680), 
        .Y(n789) );
  INVX1 U919 ( .A(N113), .Y(n788) );
  OAI21X1 U920 ( .A(n685), .B(n790), .C(n791), .Y(n513) );
  AOI22X1 U921 ( .A(sram_awaddr[30]), .B(n720), .C(waddr_reg[30]), .D(n680), 
        .Y(n791) );
  INVX1 U922 ( .A(N114), .Y(n790) );
  OAI21X1 U923 ( .A(n685), .B(n792), .C(n793), .Y(n512) );
  AOI22X1 U924 ( .A(sram_awaddr[31]), .B(n720), .C(waddr_reg[31]), .D(n680), 
        .Y(n793) );
  NAND2X1 U925 ( .A(n558), .B(n693), .Y(n676) );
  OAI21X1 U926 ( .A(n794), .B(n795), .C(n558), .Y(n693) );
  INVX1 U927 ( .A(N115), .Y(n792) );
  OAI21X1 U928 ( .A(n796), .B(n797), .C(n798), .Y(n511) );
  MUX2X1 U929 ( .B(n799), .A(n555), .S(rlen_reg[0]), .Y(n798) );
  INVX1 U930 ( .A(sram_arlen[0]), .Y(n797) );
  OAI21X1 U931 ( .A(n796), .B(n801), .C(n802), .Y(n510) );
  MUX2X1 U932 ( .B(n803), .A(n804), .S(rlen_reg[1]), .Y(n802) );
  NOR2X1 U933 ( .A(rlen_reg[0]), .B(n557), .Y(n803) );
  INVX1 U934 ( .A(sram_arlen[1]), .Y(n801) );
  OAI21X1 U935 ( .A(n796), .B(n806), .C(n807), .Y(n509) );
  AOI22X1 U936 ( .A(rlen_reg[2]), .B(n808), .C(n799), .D(n809), .Y(n807) );
  OAI21X1 U937 ( .A(n557), .B(n810), .C(n811), .Y(n808) );
  INVX1 U938 ( .A(n804), .Y(n811) );
  OAI21X1 U939 ( .A(n812), .B(n805), .C(n813), .Y(n804) );
  INVX1 U940 ( .A(sram_arlen[2]), .Y(n806) );
  OAI21X1 U941 ( .A(n796), .B(n814), .C(n815), .Y(n508) );
  MUX2X1 U942 ( .B(n816), .A(n817), .S(rlen_reg[3]), .Y(n815) );
  NOR2X1 U943 ( .A(n818), .B(n557), .Y(n816) );
  INVX1 U944 ( .A(sram_arlen[3]), .Y(n814) );
  OAI21X1 U945 ( .A(n796), .B(n819), .C(n820), .Y(n507) );
  AOI22X1 U946 ( .A(rlen_reg[4]), .B(n821), .C(n799), .D(n822), .Y(n820) );
  OAI21X1 U947 ( .A(n557), .B(n823), .C(n824), .Y(n821) );
  INVX1 U948 ( .A(n817), .Y(n824) );
  OAI21X1 U949 ( .A(n809), .B(n805), .C(n813), .Y(n817) );
  INVX1 U950 ( .A(sram_arlen[4]), .Y(n819) );
  OAI21X1 U951 ( .A(n796), .B(n825), .C(n826), .Y(n506) );
  MUX2X1 U952 ( .B(n827), .A(n828), .S(rlen_reg[5]), .Y(n826) );
  NOR2X1 U953 ( .A(n829), .B(n557), .Y(n827) );
  INVX1 U954 ( .A(sram_arlen[5]), .Y(n825) );
  OAI21X1 U955 ( .A(n796), .B(n830), .C(n831), .Y(n505) );
  AOI21X1 U956 ( .A(rlen_reg[6]), .B(n832), .C(n833), .Y(n831) );
  INVX1 U957 ( .A(n834), .Y(n832) );
  AOI21X1 U958 ( .A(n799), .B(rlen_reg[5]), .C(n828), .Y(n834) );
  OAI21X1 U959 ( .A(n822), .B(n805), .C(n813), .Y(n828) );
  INVX1 U960 ( .A(n829), .Y(n822) );
  INVX1 U961 ( .A(sram_arlen[6]), .Y(n830) );
  OAI21X1 U962 ( .A(n796), .B(n835), .C(n836), .Y(n504) );
  MUX2X1 U963 ( .B(n833), .A(n837), .S(rlen_reg[7]), .Y(n836) );
  INVX1 U964 ( .A(n838), .Y(n833) );
  INVX1 U965 ( .A(sram_arlen[7]), .Y(n835) );
  OAI21X1 U966 ( .A(n796), .B(n839), .C(n840), .Y(n503) );
  MUX2X1 U967 ( .B(n841), .A(n842), .S(rlen_reg[8]), .Y(n840) );
  INVX1 U968 ( .A(n843), .Y(n842) );
  NOR2X1 U969 ( .A(rlen_reg[7]), .B(n838), .Y(n841) );
  NAND2X1 U970 ( .A(n799), .B(n844), .Y(n838) );
  INVX1 U971 ( .A(sram_arlen[8]), .Y(n839) );
  OAI21X1 U972 ( .A(n563), .B(n805), .C(n845), .Y(n502) );
  AOI22X1 U973 ( .A(rlen_reg[9]), .B(n846), .C(sram_arlen[9]), .D(n847), .Y(
        n845) );
  OAI21X1 U974 ( .A(n557), .B(n848), .C(n843), .Y(n846) );
  AOI21X1 U975 ( .A(n799), .B(rlen_reg[7]), .C(n837), .Y(n843) );
  OAI21X1 U976 ( .A(n844), .B(n805), .C(n813), .Y(n837) );
  INVX1 U977 ( .A(rlen_reg[8]), .Y(n848) );
  OAI21X1 U978 ( .A(n849), .B(n796), .C(n850), .Y(n501) );
  MUX2X1 U979 ( .B(n799), .A(n555), .S(raddr_reg[0]), .Y(n850) );
  INVX1 U980 ( .A(sram_araddr[0]), .Y(n849) );
  OAI21X1 U981 ( .A(n557), .B(n851), .C(n852), .Y(n500) );
  AOI22X1 U982 ( .A(n847), .B(sram_araddr[1]), .C(raddr_reg[1]), .D(n555), .Y(
        n852) );
  INVX1 U983 ( .A(N129), .Y(n851) );
  OAI21X1 U984 ( .A(n557), .B(n853), .C(n854), .Y(n499) );
  AOI22X1 U985 ( .A(n847), .B(sram_araddr[2]), .C(raddr_reg[2]), .D(n555), .Y(
        n854) );
  INVX1 U986 ( .A(N130), .Y(n853) );
  OAI21X1 U987 ( .A(n557), .B(n855), .C(n856), .Y(n498) );
  AOI22X1 U988 ( .A(n847), .B(sram_araddr[3]), .C(raddr_reg[3]), .D(n555), .Y(
        n856) );
  INVX1 U989 ( .A(N131), .Y(n855) );
  OAI21X1 U990 ( .A(n557), .B(n857), .C(n858), .Y(n497) );
  AOI22X1 U991 ( .A(sram_araddr[4]), .B(n847), .C(raddr_reg[4]), .D(n555), .Y(
        n858) );
  INVX1 U992 ( .A(N132), .Y(n857) );
  OAI21X1 U993 ( .A(n557), .B(n859), .C(n860), .Y(n496) );
  AOI22X1 U994 ( .A(sram_araddr[5]), .B(n847), .C(raddr_reg[5]), .D(n555), .Y(
        n860) );
  INVX1 U995 ( .A(N133), .Y(n859) );
  OAI21X1 U996 ( .A(n557), .B(n861), .C(n862), .Y(n495) );
  AOI22X1 U997 ( .A(sram_araddr[6]), .B(n847), .C(raddr_reg[6]), .D(n555), .Y(
        n862) );
  INVX1 U998 ( .A(N134), .Y(n861) );
  OAI21X1 U999 ( .A(n557), .B(n863), .C(n864), .Y(n494) );
  AOI22X1 U1000 ( .A(sram_araddr[7]), .B(n847), .C(raddr_reg[7]), .D(n555), 
        .Y(n864) );
  INVX1 U1001 ( .A(N135), .Y(n863) );
  OAI21X1 U1002 ( .A(n557), .B(n865), .C(n866), .Y(n493) );
  AOI22X1 U1003 ( .A(sram_araddr[8]), .B(n847), .C(raddr_reg[8]), .D(n555), 
        .Y(n866) );
  INVX1 U1004 ( .A(N136), .Y(n865) );
  OAI21X1 U1005 ( .A(n557), .B(n867), .C(n868), .Y(n492) );
  AOI22X1 U1006 ( .A(sram_araddr[9]), .B(n847), .C(raddr_reg[9]), .D(n555), 
        .Y(n868) );
  INVX1 U1007 ( .A(N137), .Y(n867) );
  OAI21X1 U1008 ( .A(n557), .B(n869), .C(n870), .Y(n491) );
  AOI22X1 U1009 ( .A(sram_araddr[10]), .B(n847), .C(raddr_reg[10]), .D(n555), 
        .Y(n870) );
  INVX1 U1010 ( .A(N138), .Y(n869) );
  OAI21X1 U1011 ( .A(n557), .B(n871), .C(n872), .Y(n490) );
  AOI22X1 U1012 ( .A(sram_araddr[11]), .B(n847), .C(raddr_reg[11]), .D(n555), 
        .Y(n872) );
  INVX1 U1013 ( .A(N139), .Y(n871) );
  OAI21X1 U1014 ( .A(n557), .B(n873), .C(n874), .Y(n489) );
  AOI22X1 U1015 ( .A(sram_araddr[12]), .B(n847), .C(raddr_reg[12]), .D(n555), 
        .Y(n874) );
  INVX1 U1016 ( .A(N140), .Y(n873) );
  OAI21X1 U1017 ( .A(n557), .B(n875), .C(n876), .Y(n488) );
  AOI22X1 U1018 ( .A(sram_araddr[13]), .B(n847), .C(raddr_reg[13]), .D(n555), 
        .Y(n876) );
  INVX1 U1019 ( .A(N141), .Y(n875) );
  OAI21X1 U1020 ( .A(n557), .B(n877), .C(n878), .Y(n487) );
  AOI22X1 U1021 ( .A(sram_araddr[14]), .B(n847), .C(raddr_reg[14]), .D(n555), 
        .Y(n878) );
  INVX1 U1022 ( .A(N142), .Y(n877) );
  OAI21X1 U1023 ( .A(n557), .B(n879), .C(n880), .Y(n486) );
  AOI22X1 U1024 ( .A(sram_araddr[15]), .B(n847), .C(raddr_reg[15]), .D(n555), 
        .Y(n880) );
  INVX1 U1025 ( .A(N143), .Y(n879) );
  OAI21X1 U1026 ( .A(n557), .B(n881), .C(n882), .Y(n485) );
  AOI22X1 U1027 ( .A(sram_araddr[16]), .B(n847), .C(raddr_reg[16]), .D(n555), 
        .Y(n882) );
  INVX1 U1028 ( .A(N144), .Y(n881) );
  OAI21X1 U1029 ( .A(n557), .B(n883), .C(n884), .Y(n484) );
  AOI22X1 U1030 ( .A(sram_araddr[17]), .B(n847), .C(raddr_reg[17]), .D(n555), 
        .Y(n884) );
  INVX1 U1031 ( .A(N145), .Y(n883) );
  OAI21X1 U1032 ( .A(n557), .B(n885), .C(n886), .Y(n483) );
  AOI22X1 U1033 ( .A(sram_araddr[18]), .B(n847), .C(raddr_reg[18]), .D(n555), 
        .Y(n886) );
  INVX1 U1034 ( .A(N146), .Y(n885) );
  OAI21X1 U1035 ( .A(n557), .B(n887), .C(n888), .Y(n482) );
  AOI22X1 U1036 ( .A(sram_araddr[19]), .B(n847), .C(raddr_reg[19]), .D(n555), 
        .Y(n888) );
  INVX1 U1037 ( .A(N147), .Y(n887) );
  OAI21X1 U1038 ( .A(n557), .B(n889), .C(n890), .Y(n481) );
  AOI22X1 U1039 ( .A(sram_araddr[20]), .B(n847), .C(raddr_reg[20]), .D(n555), 
        .Y(n890) );
  INVX1 U1040 ( .A(N148), .Y(n889) );
  OAI21X1 U1041 ( .A(n557), .B(n891), .C(n892), .Y(n480) );
  AOI22X1 U1042 ( .A(sram_araddr[21]), .B(n847), .C(raddr_reg[21]), .D(n555), 
        .Y(n892) );
  INVX1 U1043 ( .A(N149), .Y(n891) );
  OAI21X1 U1044 ( .A(n557), .B(n893), .C(n894), .Y(n479) );
  AOI22X1 U1045 ( .A(sram_araddr[22]), .B(n847), .C(raddr_reg[22]), .D(n555), 
        .Y(n894) );
  INVX1 U1046 ( .A(N150), .Y(n893) );
  OAI21X1 U1047 ( .A(n557), .B(n895), .C(n896), .Y(n478) );
  AOI22X1 U1048 ( .A(sram_araddr[23]), .B(n847), .C(raddr_reg[23]), .D(n555), 
        .Y(n896) );
  INVX1 U1049 ( .A(N151), .Y(n895) );
  OAI21X1 U1050 ( .A(n557), .B(n897), .C(n898), .Y(n477) );
  AOI22X1 U1051 ( .A(sram_araddr[24]), .B(n847), .C(raddr_reg[24]), .D(n800), 
        .Y(n898) );
  INVX1 U1052 ( .A(N152), .Y(n897) );
  OAI21X1 U1053 ( .A(n557), .B(n899), .C(n900), .Y(n476) );
  AOI22X1 U1054 ( .A(sram_araddr[25]), .B(n847), .C(raddr_reg[25]), .D(n800), 
        .Y(n900) );
  INVX1 U1055 ( .A(N153), .Y(n899) );
  OAI21X1 U1056 ( .A(n557), .B(n901), .C(n902), .Y(n475) );
  AOI22X1 U1057 ( .A(sram_araddr[26]), .B(n847), .C(raddr_reg[26]), .D(n800), 
        .Y(n902) );
  INVX1 U1058 ( .A(N154), .Y(n901) );
  OAI21X1 U1059 ( .A(n557), .B(n903), .C(n904), .Y(n474) );
  AOI22X1 U1060 ( .A(sram_araddr[27]), .B(n847), .C(raddr_reg[27]), .D(n800), 
        .Y(n904) );
  INVX1 U1061 ( .A(N155), .Y(n903) );
  OAI21X1 U1062 ( .A(n805), .B(n905), .C(n906), .Y(n473) );
  AOI22X1 U1063 ( .A(sram_araddr[28]), .B(n847), .C(raddr_reg[28]), .D(n800), 
        .Y(n906) );
  INVX1 U1064 ( .A(N156), .Y(n905) );
  OAI21X1 U1065 ( .A(n805), .B(n907), .C(n908), .Y(n472) );
  AOI22X1 U1066 ( .A(sram_araddr[29]), .B(n847), .C(raddr_reg[29]), .D(n800), 
        .Y(n908) );
  INVX1 U1067 ( .A(N157), .Y(n907) );
  OAI21X1 U1068 ( .A(n805), .B(n909), .C(n910), .Y(n471) );
  AOI22X1 U1069 ( .A(sram_araddr[30]), .B(n847), .C(raddr_reg[30]), .D(n800), 
        .Y(n910) );
  INVX1 U1070 ( .A(N158), .Y(n909) );
  OAI21X1 U1071 ( .A(n805), .B(n911), .C(n912), .Y(n470) );
  AOI22X1 U1072 ( .A(sram_araddr[31]), .B(n847), .C(raddr_reg[31]), .D(n800), 
        .Y(n912) );
  NAND2X1 U1073 ( .A(n813), .B(n557), .Y(n796) );
  INVX1 U1074 ( .A(n800), .Y(n813) );
  AOI21X1 U1075 ( .A(sram_arready), .B(sram_arvalid), .C(n799), .Y(n800) );
  INVX1 U1076 ( .A(n805), .Y(n799) );
  INVX1 U1077 ( .A(N159), .Y(n911) );
  NAND3X1 U1078 ( .A(sram_rvalid), .B(read_state[1]), .C(n913), .Y(n805) );
  NOR2X1 U1079 ( .A(n673), .B(n674), .Y(n913) );
  INVX1 U1080 ( .A(sram_rready), .Y(n674) );
  INVX1 U1081 ( .A(read_state[0]), .Y(n673) );
  OAI21X1 U1082 ( .A(n914), .B(n915), .C(n916), .Y(n469) );
  OAI21X1 U1083 ( .A(n563), .B(n917), .C(read_state[0]), .Y(n916) );
  NAND2X1 U1084 ( .A(sram_rready), .B(n671), .Y(n917) );
  NAND2X1 U1085 ( .A(read_state[0]), .B(n918), .Y(n671) );
  NAND3X1 U1086 ( .A(n844), .B(n919), .C(n920), .Y(n563) );
  NOR2X1 U1087 ( .A(rlen_reg[9]), .B(rlen_reg[8]), .Y(n920) );
  INVX1 U1088 ( .A(rlen_reg[7]), .Y(n919) );
  NOR3X1 U1089 ( .A(rlen_reg[5]), .B(rlen_reg[6]), .C(n829), .Y(n844) );
  NAND3X1 U1090 ( .A(n823), .B(n921), .C(n809), .Y(n829) );
  INVX1 U1091 ( .A(n818), .Y(n809) );
  NAND3X1 U1092 ( .A(n810), .B(n922), .C(n812), .Y(n818) );
  INVX1 U1093 ( .A(rlen_reg[0]), .Y(n812) );
  INVX1 U1094 ( .A(rlen_reg[2]), .Y(n922) );
  INVX1 U1095 ( .A(rlen_reg[1]), .Y(n810) );
  INVX1 U1096 ( .A(rlen_reg[4]), .Y(n921) );
  INVX1 U1097 ( .A(rlen_reg[3]), .Y(n823) );
  NAND2X1 U1098 ( .A(sram_arready), .B(n918), .Y(n915) );
  INVX1 U1099 ( .A(read_state[1]), .Y(n918) );
  INVX1 U1100 ( .A(sram_arvalid), .Y(n914) );
  MUX2X1 U1101 ( .B(n562), .A(n923), .S(n556), .Y(n386) );
  INVX1 U1102 ( .A(sram_wstrb[0]), .Y(n923) );
  INVX1 U1103 ( .A(wstrb_reg[0]), .Y(n562) );
  INVX1 U1104 ( .A(n924), .Y(n384) );
  MUX2X1 U1105 ( .B(wstrb_reg[1]), .A(sram_wstrb[1]), .S(n556), .Y(n924) );
  AND2X1 U1106 ( .A(next_write[1]), .B(next_write[0]), .Y(N178) );
  OAI21X1 U1107 ( .A(write_state[1]), .B(n925), .C(n926), .Y(next_write[0]) );
  AND2X1 U1108 ( .A(n927), .B(n558), .Y(n926) );
  MUX2X1 U1109 ( .B(n928), .A(n929), .S(write_state[0]), .Y(n925) );
  INVX1 U1110 ( .A(sram_wvalid), .Y(n929) );
  NOR2X1 U1111 ( .A(n794), .B(n795), .Y(n928) );
  INVX1 U1112 ( .A(sram_awvalid), .Y(n795) );
  INVX1 U1113 ( .A(sram_awready), .Y(n794) );
  NAND3X1 U1114 ( .A(n927), .B(n728), .C(n930), .Y(next_write[1]) );
  AOI22X1 U1115 ( .A(n931), .B(sram_wvalid), .C(n561), .D(n932), .Y(n930) );
  INVX1 U1116 ( .A(write_valid), .Y(n932) );
  AND2X1 U1117 ( .A(n933), .B(write_state[0]), .Y(n931) );
  NAND3X1 U1118 ( .A(n729), .B(n934), .C(n718), .Y(n728) );
  INVX1 U1119 ( .A(n722), .Y(n718) );
  NAND3X1 U1120 ( .A(n679), .B(n935), .C(n713), .Y(n722) );
  NOR3X1 U1121 ( .A(wlen_reg[5]), .B(wlen_reg[6]), .C(n709), .Y(n713) );
  NAND3X1 U1122 ( .A(n703), .B(n936), .C(n689), .Y(n709) );
  INVX1 U1123 ( .A(n698), .Y(n689) );
  NAND3X1 U1124 ( .A(n690), .B(n937), .C(n692), .Y(n698) );
  INVX1 U1125 ( .A(wlen_reg[0]), .Y(n692) );
  INVX1 U1126 ( .A(wlen_reg[2]), .Y(n937) );
  INVX1 U1127 ( .A(wlen_reg[1]), .Y(n690) );
  INVX1 U1128 ( .A(wlen_reg[4]), .Y(n936) );
  INVX1 U1129 ( .A(wlen_reg[3]), .Y(n703) );
  INVX1 U1130 ( .A(wlen_reg[7]), .Y(n935) );
  INVX1 U1131 ( .A(n685), .Y(n679) );
  NAND2X1 U1132 ( .A(write_valid), .B(n561), .Y(n685) );
  NOR2X1 U1133 ( .A(n933), .B(write_state[0]), .Y(n561) );
  INVX1 U1134 ( .A(wlen_reg[9]), .Y(n934) );
  INVX1 U1135 ( .A(wlen_reg[8]), .Y(n729) );
  NAND2X1 U1136 ( .A(n938), .B(write_state[0]), .Y(n927) );
  NOR2X1 U1137 ( .A(sram_bready), .B(n933), .Y(n938) );
  INVX1 U1138 ( .A(write_state[1]), .Y(n933) );
endmodule

