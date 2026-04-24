/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4
// Date      : Fri Apr 24 18:33:38 2026
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
         N154, N155, N156, N157, N158, N159, N174, N178, n383, n385, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
         n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534,
         n535, n536, n537, n538, n539, n540, n541, n542, n543, n544, n545,
         n546, n547, n548, n549, n550, n551, n552, n553, n554, n555, n556,
         n557, n558, n559, n560, n561, n562, n563, n564, n565, n566, n567,
         n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578,
         n579, n580, n581, n582, n583, n584, n585, n586, n587, n588, n589,
         n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600,
         n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611,
         n612, n613, n614, n615, n616, n617, n618, n619, n620, n621, n622,
         n623, n624, n625, n626, n627, n628, n629, n630, n631, n632, n633,
         n634, n635, n636, n637, n638, n639, n640, n641, n642, n643, n644,
         n645, n646, n647, n648, n649, n650, n651, n652, n653, n654, n655,
         n656, n657, n658, n659, n660, n661, n662, n663, n664, n665, n666,
         n667, n668, n669, n670, n671, n672, n673, n674, n675, n676, n677,
         n678, n679, n680, n681, n682, n683, n684, n685, n686, n687, n688,
         n689, n690, n691, n692, n693, n694, n695, n696, n697, n698, n699,
         n700, n701, n702, n703, n704, n705, n706, n707, n708, n709, n710,
         n711, n712, n713, n714, n715, n716, n717, n718, n719, n720, n721,
         n722, n723, n724, n725, n726, n727, n728, n729, n730, n731, n732,
         n733, n734, n735, n736, n737, n738, n739, n740, n741, n742, n743,
         n744, n745, n746, n747, n748, n749, n750, n751, n752, n753, n754,
         n755, n756, n757, n758, n759, n760, n761, n762, n763, n764, n765,
         n766, n767, n768, n769, n770, n771, n772, n773, n774, n775, n776,
         n777, n778, n779, n780, n781, n782, n783, n784, n785, n786, n787,
         n788, n789, n790, n791, n792, n793, n794, n795, n796, n797, n798,
         n799, n800, n801, n802, n803, n804, n805, n806, n807, n808, n809,
         n810, n811, n812, n813, n814, n815, n816, n817, n818, n819, n820,
         n821, n822, n823, n824, n825, n826, n827, n828, n829, n830, n831,
         n832, n833, n834, n835, n836, n837, n838, n839, n840, n841, n842,
         n843, n844, n845, n846, n847, n848, n849, n850, n851, n852, n853,
         n854, n855, n856, n857, n858, n859, n860, n861, n862, n863, n864,
         n865, n866, n867, n868, n869, n870, n871, n872, n873, n874, n875,
         n876, n877, n878, n879, n880, n881, n882, n883, n884, n885, n886,
         n887, n888, n889, n890, n891, n892, n893, n894, n895, n896, n897,
         n898, n899, n900, n901, n902, n903, n904, n905, n906, n907, n908,
         n909, n910, n911, n912, n913, n914, n915, n916, n917, n918, n919,
         n920, n921, n922, n923, n924, n925, n926, n927, n928, n929, n930,
         n931, n932, n933, n934, n935, n936, n937, n938, n939, n940, n941,
         n942, n943, n944, n945, n946, n947, n948, n949, n950, n951, n952,
         n953, n954, n955, n956, n957, n958, n959, n960, n961, n962, n963,
         n964, n965, n966, n967, n968, n969;
  wire   [1:0] read_state;
  wire   [1:0] write_state;
  wire   [1:0] next_read;
  wire   [1:0] next_write;
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

  DFFSR \sram_rdata_reg[31]  ( .D(read_data[31]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(sram_rdata[31]) );
  DFFSR \sram_rdata_reg[30]  ( .D(read_data[30]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(sram_rdata[30]) );
  DFFSR \sram_rdata_reg[29]  ( .D(read_data[29]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(sram_rdata[29]) );
  DFFSR \sram_rdata_reg[28]  ( .D(read_data[28]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(sram_rdata[28]) );
  DFFSR \sram_rdata_reg[27]  ( .D(read_data[27]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(sram_rdata[27]) );
  DFFSR \sram_rdata_reg[26]  ( .D(read_data[26]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(sram_rdata[26]) );
  DFFSR \sram_rdata_reg[25]  ( .D(read_data[25]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(sram_rdata[25]) );
  DFFSR \sram_rdata_reg[24]  ( .D(read_data[24]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(sram_rdata[24]) );
  DFFSR \sram_rdata_reg[23]  ( .D(read_data[23]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(sram_rdata[23]) );
  DFFSR \sram_rdata_reg[22]  ( .D(read_data[22]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(sram_rdata[22]) );
  DFFSR \sram_rdata_reg[21]  ( .D(read_data[21]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(sram_rdata[21]) );
  DFFSR \sram_rdata_reg[20]  ( .D(read_data[20]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(sram_rdata[20]) );
  DFFSR \sram_rdata_reg[19]  ( .D(read_data[19]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(sram_rdata[19]) );
  DFFSR \sram_rdata_reg[18]  ( .D(read_data[18]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(sram_rdata[18]) );
  DFFSR \sram_rdata_reg[17]  ( .D(read_data[17]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(sram_rdata[17]) );
  DFFSR \sram_rdata_reg[16]  ( .D(read_data[16]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(sram_rdata[16]) );
  DFFSR \sram_rdata_reg[15]  ( .D(read_data[15]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(sram_rdata[15]) );
  DFFSR \sram_rdata_reg[14]  ( .D(read_data[14]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(sram_rdata[14]) );
  DFFSR \sram_rdata_reg[13]  ( .D(read_data[13]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(sram_rdata[13]) );
  DFFSR \sram_rdata_reg[12]  ( .D(read_data[12]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(sram_rdata[12]) );
  DFFSR \sram_rdata_reg[11]  ( .D(read_data[11]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(sram_rdata[11]) );
  DFFSR \sram_rdata_reg[10]  ( .D(read_data[10]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(sram_rdata[10]) );
  DFFSR \sram_rdata_reg[9]  ( .D(read_data[9]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(sram_rdata[9]) );
  DFFSR \sram_rdata_reg[8]  ( .D(read_data[8]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(sram_rdata[8]) );
  DFFSR \sram_rdata_reg[7]  ( .D(read_data[7]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(sram_rdata[7]) );
  DFFSR \sram_rdata_reg[6]  ( .D(read_data[6]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(sram_rdata[6]) );
  DFFSR \sram_rdata_reg[5]  ( .D(read_data[5]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(sram_rdata[5]) );
  DFFSR \sram_rdata_reg[4]  ( .D(read_data[4]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(sram_rdata[4]) );
  DFFSR \sram_rdata_reg[3]  ( .D(read_data[3]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(sram_rdata[3]) );
  DFFSR \sram_rdata_reg[2]  ( .D(read_data[2]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(sram_rdata[2]) );
  DFFSR \sram_rdata_reg[1]  ( .D(read_data[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(sram_rdata[1]) );
  DFFSR \sram_rdata_reg[0]  ( .D(read_data[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(sram_rdata[0]) );
  DFFSR sram_awready_reg ( .D(n936), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_awready) );
  DFFSR \wlen_reg_reg[0]  ( .D(n551), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[0]) );
  DFFSR \write_state_reg[1]  ( .D(next_write[1]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(write_state[1]) );
  DFFSR \write_state_reg[0]  ( .D(next_write[0]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(write_state[0]) );
  DFFSR \wlen_reg_reg[9]  ( .D(n542), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[9]) );
  DFFSR \wlen_reg_reg[1]  ( .D(n550), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[1]) );
  DFFSR \wlen_reg_reg[2]  ( .D(n549), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[2]) );
  DFFSR \wlen_reg_reg[3]  ( .D(n548), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[3]) );
  DFFSR \wlen_reg_reg[4]  ( .D(n547), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[4]) );
  DFFSR \wlen_reg_reg[5]  ( .D(n546), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[5]) );
  DFFSR \wlen_reg_reg[6]  ( .D(n545), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[6]) );
  DFFSR \wlen_reg_reg[7]  ( .D(n544), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[7]) );
  DFFSR \wlen_reg_reg[8]  ( .D(n543), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[8]) );
  DFFSR \waddr_reg_reg[31]  ( .D(n510), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[31]) );
  DFFSR \waddr_reg_reg[0]  ( .D(n541), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[0]) );
  DFFSR \waddr_reg_reg[1]  ( .D(n540), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[1]) );
  DFFSR \waddr_reg_reg[2]  ( .D(n539), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[2]) );
  DFFSR \waddr_reg_reg[3]  ( .D(n538), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[3]) );
  DFFSR \waddr_reg_reg[4]  ( .D(n537), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[4]) );
  DFFSR \waddr_reg_reg[5]  ( .D(n536), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[5]) );
  DFFSR \waddr_reg_reg[6]  ( .D(n535), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[6]) );
  DFFSR \waddr_reg_reg[7]  ( .D(n534), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[7]) );
  DFFSR \waddr_reg_reg[8]  ( .D(n533), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[8]) );
  DFFSR \waddr_reg_reg[9]  ( .D(n532), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[9]) );
  DFFSR \waddr_reg_reg[10]  ( .D(n531), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[10]) );
  DFFSR \waddr_reg_reg[11]  ( .D(n530), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[11]) );
  DFFSR \waddr_reg_reg[12]  ( .D(n529), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[12]) );
  DFFSR \waddr_reg_reg[13]  ( .D(n528), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[13]) );
  DFFSR \waddr_reg_reg[14]  ( .D(n527), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[14]) );
  DFFSR \waddr_reg_reg[15]  ( .D(n526), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[15]) );
  DFFSR \waddr_reg_reg[16]  ( .D(n525), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[16]) );
  DFFSR \waddr_reg_reg[17]  ( .D(n524), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[17]) );
  DFFSR \waddr_reg_reg[18]  ( .D(n523), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[18]) );
  DFFSR \waddr_reg_reg[19]  ( .D(n522), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[19]) );
  DFFSR \waddr_reg_reg[20]  ( .D(n521), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[20]) );
  DFFSR \waddr_reg_reg[21]  ( .D(n520), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[21]) );
  DFFSR \waddr_reg_reg[22]  ( .D(n519), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[22]) );
  DFFSR \waddr_reg_reg[23]  ( .D(n518), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[23]) );
  DFFSR \waddr_reg_reg[24]  ( .D(n517), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[24]) );
  DFFSR \waddr_reg_reg[25]  ( .D(n516), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[25]) );
  DFFSR \waddr_reg_reg[26]  ( .D(n515), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[26]) );
  DFFSR \waddr_reg_reg[27]  ( .D(n514), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[27]) );
  DFFSR \waddr_reg_reg[28]  ( .D(n513), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[28]) );
  DFFSR \waddr_reg_reg[29]  ( .D(n512), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[29]) );
  DFFSR \waddr_reg_reg[30]  ( .D(n511), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[30]) );
  DFFSR sram_wready_reg ( .D(n552), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_wready) );
  DFFSR \wdata_reg_reg[31]  ( .D(n937), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[31]) );
  DFFSR \wstrb_reg_reg[0]  ( .D(n385), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wstrb_reg[0]) );
  DFFSR \wstrb_reg_reg[1]  ( .D(n383), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wstrb_reg[1]) );
  DFFSR \wdata_reg_reg[0]  ( .D(n968), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[0]) );
  DFFSR \wdata_reg_reg[1]  ( .D(n967), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[1]) );
  DFFSR \wdata_reg_reg[2]  ( .D(n966), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[2]) );
  DFFSR \wdata_reg_reg[3]  ( .D(n965), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[3]) );
  DFFSR \wdata_reg_reg[4]  ( .D(n964), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[4]) );
  DFFSR \wdata_reg_reg[5]  ( .D(n963), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[5]) );
  DFFSR \wdata_reg_reg[6]  ( .D(n962), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[6]) );
  DFFSR \wdata_reg_reg[7]  ( .D(n961), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[7]) );
  DFFSR \wdata_reg_reg[8]  ( .D(n960), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[8]) );
  DFFSR \wdata_reg_reg[9]  ( .D(n959), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[9]) );
  DFFSR \wdata_reg_reg[10]  ( .D(n958), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[10]) );
  DFFSR \wdata_reg_reg[11]  ( .D(n957), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[11]) );
  DFFSR \wdata_reg_reg[12]  ( .D(n956), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[12]) );
  DFFSR \wdata_reg_reg[13]  ( .D(n955), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[13]) );
  DFFSR \wdata_reg_reg[14]  ( .D(n954), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[14]) );
  DFFSR \wdata_reg_reg[15]  ( .D(n953), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[15]) );
  DFFSR \wdata_reg_reg[16]  ( .D(n952), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[16]) );
  DFFSR \wdata_reg_reg[17]  ( .D(n951), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[17]) );
  DFFSR \wdata_reg_reg[18]  ( .D(n950), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[18]) );
  DFFSR \wdata_reg_reg[19]  ( .D(n949), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[19]) );
  DFFSR \wdata_reg_reg[20]  ( .D(n948), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[20]) );
  DFFSR \wdata_reg_reg[21]  ( .D(n947), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[21]) );
  DFFSR \wdata_reg_reg[22]  ( .D(n946), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[22]) );
  DFFSR \wdata_reg_reg[23]  ( .D(n945), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[23]) );
  DFFSR \wdata_reg_reg[24]  ( .D(n944), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[24]) );
  DFFSR \wdata_reg_reg[25]  ( .D(n943), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[25]) );
  DFFSR \wdata_reg_reg[26]  ( .D(n942), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[26]) );
  DFFSR \wdata_reg_reg[27]  ( .D(n941), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[27]) );
  DFFSR \wdata_reg_reg[28]  ( .D(n940), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[28]) );
  DFFSR \wdata_reg_reg[29]  ( .D(n939), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[29]) );
  DFFSR \wdata_reg_reg[30]  ( .D(n938), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[30]) );
  DFFSR sram_bvalid_reg ( .D(N178), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_bvalid) );
  DFFSR sram_arready_reg ( .D(n969), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_arready) );
  DFFSR \rlen_reg_reg[9]  ( .D(n500), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[9]) );
  DFFSR \read_state_reg[0]  ( .D(next_read[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(read_state[0]) );
  DFFSR \read_state_reg[1]  ( .D(next_read[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(read_state[1]) );
  DFFSR sram_rvalid_reg ( .D(N174), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_rvalid) );
  DFFSR \rlen_reg_reg[8]  ( .D(n501), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[8]) );
  DFFSR \rlen_reg_reg[0]  ( .D(n509), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[0]) );
  DFFSR \rlen_reg_reg[1]  ( .D(n508), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[1]) );
  DFFSR \rlen_reg_reg[2]  ( .D(n507), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[2]) );
  DFFSR \rlen_reg_reg[3]  ( .D(n506), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[3]) );
  DFFSR \rlen_reg_reg[4]  ( .D(n505), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[4]) );
  DFFSR \rlen_reg_reg[5]  ( .D(n504), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[5]) );
  DFFSR \rlen_reg_reg[6]  ( .D(n503), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[6]) );
  DFFSR \rlen_reg_reg[7]  ( .D(n502), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[7]) );
  DFFSR sram_rlast_reg ( .D(next_rlast), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_rlast) );
  DFFSR \raddr_reg_reg[31]  ( .D(n468), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[31]) );
  DFFSR \raddr_reg_reg[0]  ( .D(n499), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[0]) );
  DFFSR \raddr_reg_reg[1]  ( .D(n498), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[1]) );
  DFFSR \raddr_reg_reg[2]  ( .D(n497), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[2]) );
  DFFSR \raddr_reg_reg[3]  ( .D(n496), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[3]) );
  DFFSR \raddr_reg_reg[4]  ( .D(n495), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[4]) );
  DFFSR \raddr_reg_reg[5]  ( .D(n494), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[5]) );
  DFFSR \raddr_reg_reg[6]  ( .D(n493), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[6]) );
  DFFSR \raddr_reg_reg[7]  ( .D(n492), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[7]) );
  DFFSR \raddr_reg_reg[8]  ( .D(n491), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[8]) );
  DFFSR \raddr_reg_reg[9]  ( .D(n490), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[9]) );
  DFFSR \raddr_reg_reg[10]  ( .D(n489), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[10]) );
  DFFSR \raddr_reg_reg[11]  ( .D(n488), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[11]) );
  DFFSR \raddr_reg_reg[12]  ( .D(n487), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[12]) );
  DFFSR \raddr_reg_reg[13]  ( .D(n486), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[13]) );
  DFFSR \raddr_reg_reg[14]  ( .D(n485), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[14]) );
  DFFSR \raddr_reg_reg[15]  ( .D(n484), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[15]) );
  DFFSR \raddr_reg_reg[16]  ( .D(n483), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[16]) );
  DFFSR \raddr_reg_reg[17]  ( .D(n482), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[17]) );
  DFFSR \raddr_reg_reg[18]  ( .D(n481), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[18]) );
  DFFSR \raddr_reg_reg[19]  ( .D(n480), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[19]) );
  DFFSR \raddr_reg_reg[20]  ( .D(n479), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[20]) );
  DFFSR \raddr_reg_reg[21]  ( .D(n478), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[21]) );
  DFFSR \raddr_reg_reg[22]  ( .D(n477), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[22]) );
  DFFSR \raddr_reg_reg[23]  ( .D(n476), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[23]) );
  DFFSR \raddr_reg_reg[24]  ( .D(n475), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[24]) );
  DFFSR \raddr_reg_reg[25]  ( .D(n474), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[25]) );
  DFFSR \raddr_reg_reg[26]  ( .D(n473), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[26]) );
  DFFSR \raddr_reg_reg[27]  ( .D(n472), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[27]) );
  DFFSR \raddr_reg_reg[28]  ( .D(n471), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[28]) );
  DFFSR \raddr_reg_reg[29]  ( .D(n470), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[29]) );
  DFFSR \raddr_reg_reg[30]  ( .D(n469), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[30]) );
  sram_axi_DW01_inc_0 add_195 ( .A(waddr_reg), .SUM({N115, N114, N113, N112, 
        N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, 
        N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, 
        N85, SYNOPSYS_UNCONNECTED__0}) );
  sram_axi_DW01_sub_0 sub_80 ( .A(waddr_reg), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 
        1'b1, 1'b1, 1'b1}), .CI(1'b0), .DIFF(write_addr) );
  sram_axi_DW01_inc_1 add_199 ( .A(raddr_reg), .SUM({N159, N158, N157, N156, 
        N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, 
        N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, 
        N131, N130, N129, SYNOPSYS_UNCONNECTED__1}) );
  sram_axi_DW01_sub_1 sub_111 ( .A(raddr_reg), .B({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b1, 1'b1, 1'b1, 1'b1}), .CI(1'b0), .DIFF(read_addr) );
  INVX2 U559 ( .A(n791), .Y(n553) );
  INVX2 U560 ( .A(n671), .Y(n554) );
  INVX2 U561 ( .A(n808), .Y(n555) );
  INVX4 U562 ( .A(n688), .Y(n674) );
  NAND2X1 U563 ( .A(sram_wready), .B(sram_wvalid), .Y(n602) );
  INVX4 U564 ( .A(n602), .Y(n556) );
  INVX4 U565 ( .A(n795), .Y(n557) );
  INVX4 U566 ( .A(n675), .Y(n558) );
  INVX1 U567 ( .A(n559), .Y(wen[3]) );
  MUX2X1 U568 ( .B(n560), .A(n559), .S(wstrb_reg[1]), .Y(wen[1]) );
  NAND2X1 U569 ( .A(wstrb_reg[0]), .B(n561), .Y(n559) );
  NAND2X1 U570 ( .A(n561), .B(n562), .Y(n560) );
  INVX1 U571 ( .A(wstrb_reg[0]), .Y(n562) );
  NOR2X1 U572 ( .A(n563), .B(n564), .Y(next_rlast) );
  INVX1 U573 ( .A(n565), .Y(n936) );
  OAI21X1 U574 ( .A(n566), .B(n567), .C(n568), .Y(n565) );
  NOR2X1 U575 ( .A(next_write[1]), .B(next_write[0]), .Y(n568) );
  NAND2X1 U576 ( .A(n569), .B(n570), .Y(n567) );
  NOR2X1 U577 ( .A(n571), .B(n572), .Y(n570) );
  INVX1 U578 ( .A(n573), .Y(n572) );
  NOR3X1 U579 ( .A(sram_awaddr[17]), .B(sram_awaddr[18]), .C(sram_awaddr[16]), 
        .Y(n573) );
  NAND3X1 U580 ( .A(n574), .B(n575), .C(n576), .Y(n571) );
  NOR2X1 U581 ( .A(sram_awaddr[22]), .B(sram_awaddr[21]), .Y(n576) );
  INVX1 U582 ( .A(sram_awaddr[20]), .Y(n575) );
  INVX1 U583 ( .A(sram_awaddr[19]), .Y(n574) );
  NOR2X1 U584 ( .A(n577), .B(n578), .Y(n569) );
  OAI21X1 U585 ( .A(n579), .B(n580), .C(n581), .Y(n578) );
  NOR2X1 U586 ( .A(sram_awaddr[11]), .B(sram_awaddr[10]), .Y(n581) );
  NAND2X1 U587 ( .A(sram_awaddr[3]), .B(sram_awaddr[2]), .Y(n580) );
  NAND2X1 U588 ( .A(sram_awaddr[1]), .B(sram_awaddr[0]), .Y(n579) );
  NAND3X1 U589 ( .A(n582), .B(n583), .C(n584), .Y(n577) );
  NOR2X1 U590 ( .A(sram_awaddr[15]), .B(sram_awaddr[14]), .Y(n584) );
  INVX1 U591 ( .A(sram_awaddr[13]), .Y(n583) );
  INVX1 U592 ( .A(sram_awaddr[12]), .Y(n582) );
  NAND2X1 U593 ( .A(n585), .B(n586), .Y(n566) );
  NOR2X1 U594 ( .A(n587), .B(n588), .Y(n586) );
  NAND3X1 U595 ( .A(n589), .B(n590), .C(n591), .Y(n588) );
  NOR2X1 U596 ( .A(sram_awaddr[5]), .B(sram_awaddr[4]), .Y(n591) );
  INVX1 U597 ( .A(sram_awaddr[31]), .Y(n590) );
  INVX1 U598 ( .A(sram_awaddr[30]), .Y(n589) );
  NAND3X1 U599 ( .A(n592), .B(n593), .C(n594), .Y(n587) );
  NOR2X1 U600 ( .A(sram_awaddr[9]), .B(sram_awaddr[8]), .Y(n594) );
  INVX1 U601 ( .A(sram_awaddr[7]), .Y(n593) );
  INVX1 U602 ( .A(sram_awaddr[6]), .Y(n592) );
  NOR2X1 U603 ( .A(n595), .B(n596), .Y(n585) );
  INVX1 U604 ( .A(n597), .Y(n596) );
  NOR3X1 U605 ( .A(sram_awaddr[24]), .B(sram_awaddr[25]), .C(sram_awaddr[23]), 
        .Y(n597) );
  NAND3X1 U606 ( .A(n598), .B(n599), .C(n600), .Y(n595) );
  NOR2X1 U607 ( .A(sram_awaddr[29]), .B(sram_awaddr[28]), .Y(n600) );
  INVX1 U608 ( .A(sram_awaddr[27]), .Y(n599) );
  INVX1 U609 ( .A(sram_awaddr[26]), .Y(n598) );
  INVX1 U610 ( .A(n601), .Y(n937) );
  MUX2X1 U611 ( .B(write_data[31]), .A(sram_wdata[31]), .S(n556), .Y(n601) );
  INVX1 U612 ( .A(n603), .Y(n938) );
  MUX2X1 U613 ( .B(write_data[30]), .A(sram_wdata[30]), .S(n556), .Y(n603) );
  INVX1 U614 ( .A(n604), .Y(n939) );
  MUX2X1 U615 ( .B(write_data[29]), .A(sram_wdata[29]), .S(n556), .Y(n604) );
  INVX1 U616 ( .A(n605), .Y(n940) );
  MUX2X1 U617 ( .B(write_data[28]), .A(sram_wdata[28]), .S(n556), .Y(n605) );
  INVX1 U618 ( .A(n606), .Y(n941) );
  MUX2X1 U619 ( .B(write_data[27]), .A(sram_wdata[27]), .S(n556), .Y(n606) );
  INVX1 U620 ( .A(n607), .Y(n942) );
  MUX2X1 U621 ( .B(write_data[26]), .A(sram_wdata[26]), .S(n556), .Y(n607) );
  INVX1 U622 ( .A(n608), .Y(n943) );
  MUX2X1 U623 ( .B(write_data[25]), .A(sram_wdata[25]), .S(n556), .Y(n608) );
  INVX1 U624 ( .A(n609), .Y(n944) );
  MUX2X1 U625 ( .B(write_data[24]), .A(sram_wdata[24]), .S(n556), .Y(n609) );
  INVX1 U626 ( .A(n610), .Y(n945) );
  MUX2X1 U627 ( .B(write_data[23]), .A(sram_wdata[23]), .S(n556), .Y(n610) );
  INVX1 U628 ( .A(n611), .Y(n946) );
  MUX2X1 U629 ( .B(write_data[22]), .A(sram_wdata[22]), .S(n556), .Y(n611) );
  INVX1 U630 ( .A(n612), .Y(n947) );
  MUX2X1 U631 ( .B(write_data[21]), .A(sram_wdata[21]), .S(n556), .Y(n612) );
  INVX1 U632 ( .A(n613), .Y(n948) );
  MUX2X1 U633 ( .B(write_data[20]), .A(sram_wdata[20]), .S(n556), .Y(n613) );
  INVX1 U634 ( .A(n614), .Y(n949) );
  MUX2X1 U635 ( .B(write_data[19]), .A(sram_wdata[19]), .S(n556), .Y(n614) );
  INVX1 U636 ( .A(n615), .Y(n950) );
  MUX2X1 U637 ( .B(write_data[18]), .A(sram_wdata[18]), .S(n556), .Y(n615) );
  INVX1 U638 ( .A(n616), .Y(n951) );
  MUX2X1 U639 ( .B(write_data[17]), .A(sram_wdata[17]), .S(n556), .Y(n616) );
  INVX1 U640 ( .A(n617), .Y(n952) );
  MUX2X1 U641 ( .B(write_data[16]), .A(sram_wdata[16]), .S(n556), .Y(n617) );
  INVX1 U642 ( .A(n618), .Y(n953) );
  MUX2X1 U643 ( .B(write_data[15]), .A(sram_wdata[15]), .S(n556), .Y(n618) );
  INVX1 U644 ( .A(n619), .Y(n954) );
  MUX2X1 U645 ( .B(write_data[14]), .A(sram_wdata[14]), .S(n556), .Y(n619) );
  INVX1 U646 ( .A(n620), .Y(n955) );
  MUX2X1 U647 ( .B(write_data[13]), .A(sram_wdata[13]), .S(n556), .Y(n620) );
  INVX1 U648 ( .A(n621), .Y(n956) );
  MUX2X1 U649 ( .B(write_data[12]), .A(sram_wdata[12]), .S(n556), .Y(n621) );
  INVX1 U650 ( .A(n622), .Y(n957) );
  MUX2X1 U651 ( .B(write_data[11]), .A(sram_wdata[11]), .S(n556), .Y(n622) );
  INVX1 U652 ( .A(n623), .Y(n958) );
  MUX2X1 U653 ( .B(write_data[10]), .A(sram_wdata[10]), .S(n556), .Y(n623) );
  INVX1 U654 ( .A(n624), .Y(n959) );
  MUX2X1 U655 ( .B(write_data[9]), .A(sram_wdata[9]), .S(n556), .Y(n624) );
  INVX1 U656 ( .A(n625), .Y(n960) );
  MUX2X1 U657 ( .B(write_data[8]), .A(sram_wdata[8]), .S(n556), .Y(n625) );
  INVX1 U658 ( .A(n626), .Y(n961) );
  MUX2X1 U659 ( .B(write_data[7]), .A(sram_wdata[7]), .S(n556), .Y(n626) );
  INVX1 U660 ( .A(n627), .Y(n962) );
  MUX2X1 U661 ( .B(write_data[6]), .A(sram_wdata[6]), .S(n556), .Y(n627) );
  INVX1 U662 ( .A(n628), .Y(n963) );
  MUX2X1 U663 ( .B(write_data[5]), .A(sram_wdata[5]), .S(n556), .Y(n628) );
  INVX1 U664 ( .A(n629), .Y(n964) );
  MUX2X1 U665 ( .B(write_data[4]), .A(sram_wdata[4]), .S(n556), .Y(n629) );
  INVX1 U666 ( .A(n630), .Y(n965) );
  MUX2X1 U667 ( .B(write_data[3]), .A(sram_wdata[3]), .S(n556), .Y(n630) );
  INVX1 U668 ( .A(n631), .Y(n966) );
  MUX2X1 U669 ( .B(write_data[2]), .A(sram_wdata[2]), .S(n556), .Y(n631) );
  INVX1 U670 ( .A(n632), .Y(n967) );
  MUX2X1 U671 ( .B(write_data[1]), .A(sram_wdata[1]), .S(n556), .Y(n632) );
  INVX1 U672 ( .A(n633), .Y(n968) );
  MUX2X1 U673 ( .B(write_data[0]), .A(sram_wdata[0]), .S(n556), .Y(n633) );
  NOR2X1 U674 ( .A(next_read[0]), .B(n634), .Y(n969) );
  OAI21X1 U675 ( .A(n635), .B(n636), .C(n637), .Y(n634) );
  NAND2X1 U676 ( .A(n638), .B(n639), .Y(n636) );
  NOR2X1 U677 ( .A(n640), .B(n641), .Y(n639) );
  INVX1 U678 ( .A(n642), .Y(n641) );
  NOR3X1 U679 ( .A(sram_araddr[17]), .B(sram_araddr[18]), .C(sram_araddr[16]), 
        .Y(n642) );
  NAND3X1 U680 ( .A(n643), .B(n644), .C(n645), .Y(n640) );
  NOR2X1 U681 ( .A(sram_araddr[22]), .B(sram_araddr[21]), .Y(n645) );
  INVX1 U682 ( .A(sram_araddr[20]), .Y(n644) );
  INVX1 U683 ( .A(sram_araddr[19]), .Y(n643) );
  NOR2X1 U684 ( .A(n646), .B(n647), .Y(n638) );
  OAI21X1 U685 ( .A(n648), .B(n649), .C(n650), .Y(n647) );
  NOR2X1 U686 ( .A(sram_araddr[11]), .B(sram_araddr[10]), .Y(n650) );
  NAND2X1 U687 ( .A(sram_araddr[3]), .B(sram_araddr[2]), .Y(n649) );
  NAND2X1 U688 ( .A(sram_araddr[1]), .B(sram_araddr[0]), .Y(n648) );
  NAND3X1 U689 ( .A(n651), .B(n652), .C(n653), .Y(n646) );
  NOR2X1 U690 ( .A(sram_araddr[15]), .B(sram_araddr[14]), .Y(n653) );
  INVX1 U691 ( .A(sram_araddr[13]), .Y(n652) );
  INVX1 U692 ( .A(sram_araddr[12]), .Y(n651) );
  NAND2X1 U693 ( .A(n654), .B(n655), .Y(n635) );
  NOR2X1 U694 ( .A(n656), .B(n657), .Y(n655) );
  NAND3X1 U695 ( .A(n658), .B(n659), .C(n660), .Y(n657) );
  NOR2X1 U696 ( .A(sram_araddr[5]), .B(sram_araddr[4]), .Y(n660) );
  INVX1 U697 ( .A(sram_araddr[31]), .Y(n659) );
  INVX1 U698 ( .A(sram_araddr[30]), .Y(n658) );
  NAND3X1 U699 ( .A(n661), .B(n662), .C(n663), .Y(n656) );
  NOR2X1 U700 ( .A(sram_araddr[9]), .B(sram_araddr[8]), .Y(n663) );
  INVX1 U701 ( .A(sram_araddr[7]), .Y(n662) );
  INVX1 U702 ( .A(sram_araddr[6]), .Y(n661) );
  NOR2X1 U703 ( .A(n664), .B(n665), .Y(n654) );
  INVX1 U704 ( .A(n666), .Y(n665) );
  NOR3X1 U705 ( .A(sram_araddr[24]), .B(sram_araddr[25]), .C(sram_araddr[23]), 
        .Y(n666) );
  NAND3X1 U706 ( .A(n667), .B(n668), .C(n669), .Y(n664) );
  NOR2X1 U707 ( .A(sram_araddr[29]), .B(sram_araddr[28]), .Y(n669) );
  INVX1 U708 ( .A(sram_araddr[27]), .Y(n668) );
  INVX1 U709 ( .A(sram_araddr[26]), .Y(n667) );
  NOR2X1 U710 ( .A(next_write[1]), .B(n670), .Y(n552) );
  INVX1 U711 ( .A(next_write[0]), .Y(n670) );
  OAI21X1 U712 ( .A(n671), .B(n672), .C(n673), .Y(n551) );
  MUX2X1 U713 ( .B(n674), .A(n675), .S(n676), .Y(n673) );
  INVX1 U714 ( .A(sram_awlen[0]), .Y(n672) );
  OAI21X1 U715 ( .A(n671), .B(n677), .C(n678), .Y(n550) );
  MUX2X1 U716 ( .B(n679), .A(n680), .S(n681), .Y(n678) );
  NOR2X1 U717 ( .A(wlen_reg[0]), .B(n558), .Y(n680) );
  INVX1 U718 ( .A(sram_awlen[1]), .Y(n677) );
  OAI21X1 U719 ( .A(n671), .B(n683), .C(n684), .Y(n549) );
  AOI22X1 U720 ( .A(wlen_reg[2]), .B(n685), .C(n675), .D(n686), .Y(n684) );
  OAI21X1 U721 ( .A(n558), .B(n681), .C(n687), .Y(n685) );
  INVX1 U722 ( .A(n679), .Y(n687) );
  OAI21X1 U723 ( .A(n558), .B(n676), .C(n688), .Y(n679) );
  INVX1 U724 ( .A(sram_awlen[2]), .Y(n683) );
  OAI21X1 U725 ( .A(n671), .B(n689), .C(n690), .Y(n548) );
  MUX2X1 U726 ( .B(n691), .A(n692), .S(n693), .Y(n690) );
  NOR2X1 U727 ( .A(n694), .B(n558), .Y(n692) );
  INVX1 U728 ( .A(sram_awlen[3]), .Y(n689) );
  OAI21X1 U729 ( .A(n671), .B(n695), .C(n696), .Y(n547) );
  AOI22X1 U730 ( .A(wlen_reg[4]), .B(n697), .C(n675), .D(n698), .Y(n696) );
  OAI21X1 U731 ( .A(n558), .B(n693), .C(n699), .Y(n697) );
  INVX1 U732 ( .A(n691), .Y(n699) );
  OAI21X1 U733 ( .A(n686), .B(n682), .C(n688), .Y(n691) );
  INVX1 U734 ( .A(sram_awlen[4]), .Y(n695) );
  OAI21X1 U735 ( .A(n671), .B(n700), .C(n701), .Y(n546) );
  MUX2X1 U736 ( .B(n702), .A(n703), .S(wlen_reg[5]), .Y(n701) );
  NOR2X1 U737 ( .A(n704), .B(n558), .Y(n702) );
  INVX1 U738 ( .A(sram_awlen[5]), .Y(n700) );
  OAI21X1 U739 ( .A(n671), .B(n705), .C(n706), .Y(n545) );
  AOI22X1 U740 ( .A(wlen_reg[6]), .B(n707), .C(n675), .D(n708), .Y(n706) );
  INVX1 U741 ( .A(n709), .Y(n707) );
  AOI21X1 U742 ( .A(n675), .B(wlen_reg[5]), .C(n703), .Y(n709) );
  OAI21X1 U743 ( .A(n698), .B(n682), .C(n688), .Y(n703) );
  INVX1 U744 ( .A(n704), .Y(n698) );
  INVX1 U745 ( .A(sram_awlen[6]), .Y(n705) );
  OAI21X1 U746 ( .A(n671), .B(n710), .C(n711), .Y(n544) );
  AOI21X1 U747 ( .A(wlen_reg[7]), .B(n712), .C(n713), .Y(n711) );
  INVX1 U748 ( .A(sram_awlen[7]), .Y(n710) );
  INVX1 U749 ( .A(n714), .Y(n543) );
  AOI21X1 U750 ( .A(n554), .B(sram_awlen[8]), .C(n716), .Y(n714) );
  MUX2X1 U751 ( .B(n717), .A(n718), .S(n719), .Y(n716) );
  OAI21X1 U752 ( .A(n671), .B(n720), .C(n721), .Y(n542) );
  AOI21X1 U753 ( .A(wlen_reg[9]), .B(n722), .C(n723), .Y(n721) );
  INVX1 U754 ( .A(n724), .Y(n723) );
  OAI21X1 U755 ( .A(n558), .B(n719), .C(n717), .Y(n722) );
  AOI21X1 U756 ( .A(n675), .B(wlen_reg[7]), .C(n712), .Y(n717) );
  OAI21X1 U757 ( .A(n708), .B(n682), .C(n688), .Y(n712) );
  INVX1 U758 ( .A(sram_awlen[9]), .Y(n720) );
  OAI21X1 U759 ( .A(n725), .B(n671), .C(n726), .Y(n541) );
  MUX2X1 U760 ( .B(n675), .A(n674), .S(waddr_reg[0]), .Y(n726) );
  INVX1 U761 ( .A(n715), .Y(n671) );
  INVX1 U762 ( .A(sram_awaddr[0]), .Y(n725) );
  OAI21X1 U763 ( .A(n558), .B(n727), .C(n728), .Y(n540) );
  AOI22X1 U764 ( .A(n554), .B(sram_awaddr[1]), .C(waddr_reg[1]), .D(n674), .Y(
        n728) );
  INVX1 U765 ( .A(N85), .Y(n727) );
  OAI21X1 U766 ( .A(n558), .B(n729), .C(n730), .Y(n539) );
  AOI22X1 U767 ( .A(n554), .B(sram_awaddr[2]), .C(waddr_reg[2]), .D(n674), .Y(
        n730) );
  INVX1 U768 ( .A(N86), .Y(n729) );
  OAI21X1 U769 ( .A(n558), .B(n731), .C(n732), .Y(n538) );
  AOI22X1 U770 ( .A(n554), .B(sram_awaddr[3]), .C(waddr_reg[3]), .D(n674), .Y(
        n732) );
  INVX1 U771 ( .A(N87), .Y(n731) );
  OAI21X1 U772 ( .A(n558), .B(n733), .C(n734), .Y(n537) );
  AOI22X1 U773 ( .A(sram_awaddr[4]), .B(n554), .C(waddr_reg[4]), .D(n674), .Y(
        n734) );
  INVX1 U774 ( .A(N88), .Y(n733) );
  OAI21X1 U775 ( .A(n558), .B(n735), .C(n736), .Y(n536) );
  AOI22X1 U776 ( .A(sram_awaddr[5]), .B(n554), .C(waddr_reg[5]), .D(n674), .Y(
        n736) );
  INVX1 U777 ( .A(N89), .Y(n735) );
  OAI21X1 U778 ( .A(n558), .B(n737), .C(n738), .Y(n535) );
  AOI22X1 U779 ( .A(sram_awaddr[6]), .B(n554), .C(waddr_reg[6]), .D(n674), .Y(
        n738) );
  INVX1 U780 ( .A(N90), .Y(n737) );
  OAI21X1 U781 ( .A(n558), .B(n739), .C(n740), .Y(n534) );
  AOI22X1 U782 ( .A(sram_awaddr[7]), .B(n554), .C(waddr_reg[7]), .D(n674), .Y(
        n740) );
  INVX1 U783 ( .A(N91), .Y(n739) );
  OAI21X1 U784 ( .A(n558), .B(n741), .C(n742), .Y(n533) );
  AOI22X1 U785 ( .A(sram_awaddr[8]), .B(n554), .C(waddr_reg[8]), .D(n674), .Y(
        n742) );
  INVX1 U786 ( .A(N92), .Y(n741) );
  OAI21X1 U787 ( .A(n558), .B(n743), .C(n744), .Y(n532) );
  AOI22X1 U788 ( .A(sram_awaddr[9]), .B(n554), .C(waddr_reg[9]), .D(n674), .Y(
        n744) );
  INVX1 U789 ( .A(N93), .Y(n743) );
  OAI21X1 U790 ( .A(n558), .B(n745), .C(n746), .Y(n531) );
  AOI22X1 U791 ( .A(sram_awaddr[10]), .B(n554), .C(waddr_reg[10]), .D(n674), 
        .Y(n746) );
  INVX1 U792 ( .A(N94), .Y(n745) );
  OAI21X1 U793 ( .A(n558), .B(n747), .C(n748), .Y(n530) );
  AOI22X1 U794 ( .A(sram_awaddr[11]), .B(n554), .C(waddr_reg[11]), .D(n674), 
        .Y(n748) );
  INVX1 U795 ( .A(N95), .Y(n747) );
  OAI21X1 U796 ( .A(n558), .B(n749), .C(n750), .Y(n529) );
  AOI22X1 U797 ( .A(sram_awaddr[12]), .B(n554), .C(waddr_reg[12]), .D(n674), 
        .Y(n750) );
  INVX1 U798 ( .A(N96), .Y(n749) );
  OAI21X1 U799 ( .A(n558), .B(n751), .C(n752), .Y(n528) );
  AOI22X1 U800 ( .A(sram_awaddr[13]), .B(n554), .C(waddr_reg[13]), .D(n674), 
        .Y(n752) );
  INVX1 U801 ( .A(N97), .Y(n751) );
  OAI21X1 U802 ( .A(n558), .B(n753), .C(n754), .Y(n527) );
  AOI22X1 U803 ( .A(sram_awaddr[14]), .B(n554), .C(waddr_reg[14]), .D(n674), 
        .Y(n754) );
  INVX1 U804 ( .A(N98), .Y(n753) );
  OAI21X1 U805 ( .A(n558), .B(n755), .C(n756), .Y(n526) );
  AOI22X1 U806 ( .A(sram_awaddr[15]), .B(n554), .C(waddr_reg[15]), .D(n674), 
        .Y(n756) );
  INVX1 U807 ( .A(N99), .Y(n755) );
  OAI21X1 U808 ( .A(n558), .B(n757), .C(n758), .Y(n525) );
  AOI22X1 U809 ( .A(sram_awaddr[16]), .B(n554), .C(waddr_reg[16]), .D(n674), 
        .Y(n758) );
  INVX1 U810 ( .A(N100), .Y(n757) );
  OAI21X1 U811 ( .A(n558), .B(n759), .C(n760), .Y(n524) );
  AOI22X1 U812 ( .A(sram_awaddr[17]), .B(n554), .C(waddr_reg[17]), .D(n674), 
        .Y(n760) );
  INVX1 U813 ( .A(N101), .Y(n759) );
  OAI21X1 U814 ( .A(n558), .B(n761), .C(n762), .Y(n523) );
  AOI22X1 U815 ( .A(sram_awaddr[18]), .B(n554), .C(waddr_reg[18]), .D(n674), 
        .Y(n762) );
  INVX1 U816 ( .A(N102), .Y(n761) );
  OAI21X1 U817 ( .A(n558), .B(n763), .C(n764), .Y(n522) );
  AOI22X1 U818 ( .A(sram_awaddr[19]), .B(n554), .C(waddr_reg[19]), .D(n674), 
        .Y(n764) );
  INVX1 U819 ( .A(N103), .Y(n763) );
  OAI21X1 U820 ( .A(n558), .B(n765), .C(n766), .Y(n521) );
  AOI22X1 U821 ( .A(sram_awaddr[20]), .B(n554), .C(waddr_reg[20]), .D(n674), 
        .Y(n766) );
  INVX1 U822 ( .A(N104), .Y(n765) );
  OAI21X1 U823 ( .A(n558), .B(n767), .C(n768), .Y(n520) );
  AOI22X1 U824 ( .A(sram_awaddr[21]), .B(n715), .C(waddr_reg[21]), .D(n674), 
        .Y(n768) );
  INVX1 U825 ( .A(N105), .Y(n767) );
  OAI21X1 U826 ( .A(n558), .B(n769), .C(n770), .Y(n519) );
  AOI22X1 U827 ( .A(sram_awaddr[22]), .B(n715), .C(waddr_reg[22]), .D(n674), 
        .Y(n770) );
  INVX1 U828 ( .A(N106), .Y(n769) );
  OAI21X1 U829 ( .A(n558), .B(n771), .C(n772), .Y(n518) );
  AOI22X1 U830 ( .A(sram_awaddr[23]), .B(n715), .C(waddr_reg[23]), .D(n674), 
        .Y(n772) );
  INVX1 U831 ( .A(N107), .Y(n771) );
  OAI21X1 U832 ( .A(n558), .B(n773), .C(n774), .Y(n517) );
  AOI22X1 U833 ( .A(sram_awaddr[24]), .B(n715), .C(waddr_reg[24]), .D(n674), 
        .Y(n774) );
  INVX1 U834 ( .A(N108), .Y(n773) );
  OAI21X1 U835 ( .A(n558), .B(n775), .C(n776), .Y(n516) );
  AOI22X1 U836 ( .A(sram_awaddr[25]), .B(n715), .C(waddr_reg[25]), .D(n674), 
        .Y(n776) );
  INVX1 U837 ( .A(N109), .Y(n775) );
  OAI21X1 U838 ( .A(n682), .B(n777), .C(n778), .Y(n515) );
  AOI22X1 U839 ( .A(sram_awaddr[26]), .B(n715), .C(waddr_reg[26]), .D(n674), 
        .Y(n778) );
  INVX1 U840 ( .A(N110), .Y(n777) );
  OAI21X1 U841 ( .A(n682), .B(n779), .C(n780), .Y(n514) );
  AOI22X1 U842 ( .A(sram_awaddr[27]), .B(n715), .C(waddr_reg[27]), .D(n674), 
        .Y(n780) );
  INVX1 U843 ( .A(N111), .Y(n779) );
  OAI21X1 U844 ( .A(n682), .B(n781), .C(n782), .Y(n513) );
  AOI22X1 U845 ( .A(sram_awaddr[28]), .B(n715), .C(waddr_reg[28]), .D(n674), 
        .Y(n782) );
  INVX1 U846 ( .A(N112), .Y(n781) );
  OAI21X1 U847 ( .A(n682), .B(n783), .C(n784), .Y(n512) );
  AOI22X1 U848 ( .A(sram_awaddr[29]), .B(n715), .C(waddr_reg[29]), .D(n674), 
        .Y(n784) );
  INVX1 U849 ( .A(N113), .Y(n783) );
  OAI21X1 U850 ( .A(n682), .B(n785), .C(n786), .Y(n511) );
  AOI22X1 U851 ( .A(sram_awaddr[30]), .B(n715), .C(waddr_reg[30]), .D(n674), 
        .Y(n786) );
  INVX1 U852 ( .A(N114), .Y(n785) );
  OAI21X1 U853 ( .A(n682), .B(n787), .C(n788), .Y(n510) );
  AOI22X1 U854 ( .A(sram_awaddr[31]), .B(n715), .C(waddr_reg[31]), .D(n674), 
        .Y(n788) );
  NOR2X1 U855 ( .A(n674), .B(n675), .Y(n715) );
  OAI21X1 U856 ( .A(n789), .B(n790), .C(n558), .Y(n688) );
  INVX1 U857 ( .A(N115), .Y(n787) );
  OAI21X1 U858 ( .A(n791), .B(n792), .C(n793), .Y(n509) );
  MUX2X1 U859 ( .B(n555), .A(n795), .S(n796), .Y(n793) );
  INVX1 U860 ( .A(sram_arlen[0]), .Y(n792) );
  OAI21X1 U861 ( .A(n791), .B(n797), .C(n798), .Y(n508) );
  MUX2X1 U862 ( .B(n799), .A(n800), .S(n801), .Y(n798) );
  NOR2X1 U863 ( .A(rlen_reg[0]), .B(n557), .Y(n800) );
  INVX1 U864 ( .A(sram_arlen[1]), .Y(n797) );
  OAI21X1 U865 ( .A(n791), .B(n803), .C(n804), .Y(n507) );
  AOI22X1 U866 ( .A(rlen_reg[2]), .B(n805), .C(n795), .D(n806), .Y(n804) );
  OAI21X1 U867 ( .A(n557), .B(n801), .C(n807), .Y(n805) );
  INVX1 U868 ( .A(n799), .Y(n807) );
  OAI21X1 U869 ( .A(n796), .B(n802), .C(n808), .Y(n799) );
  INVX1 U870 ( .A(sram_arlen[2]), .Y(n803) );
  OAI21X1 U871 ( .A(n791), .B(n809), .C(n810), .Y(n506) );
  MUX2X1 U872 ( .B(n811), .A(n812), .S(n813), .Y(n810) );
  NOR2X1 U873 ( .A(n814), .B(n557), .Y(n812) );
  INVX1 U874 ( .A(sram_arlen[3]), .Y(n809) );
  OAI21X1 U875 ( .A(n791), .B(n815), .C(n816), .Y(n505) );
  AOI22X1 U876 ( .A(rlen_reg[4]), .B(n817), .C(n795), .D(n818), .Y(n816) );
  OAI21X1 U877 ( .A(n557), .B(n813), .C(n819), .Y(n817) );
  INVX1 U878 ( .A(n811), .Y(n819) );
  OAI21X1 U879 ( .A(n806), .B(n802), .C(n808), .Y(n811) );
  INVX1 U880 ( .A(sram_arlen[4]), .Y(n815) );
  OAI21X1 U881 ( .A(n791), .B(n820), .C(n821), .Y(n504) );
  MUX2X1 U882 ( .B(n822), .A(n823), .S(rlen_reg[5]), .Y(n821) );
  NOR2X1 U883 ( .A(n824), .B(n557), .Y(n822) );
  INVX1 U884 ( .A(sram_arlen[5]), .Y(n820) );
  OAI21X1 U885 ( .A(n791), .B(n825), .C(n826), .Y(n503) );
  AOI21X1 U886 ( .A(rlen_reg[6]), .B(n827), .C(n828), .Y(n826) );
  INVX1 U887 ( .A(n829), .Y(n827) );
  AOI21X1 U888 ( .A(n795), .B(rlen_reg[5]), .C(n823), .Y(n829) );
  OAI21X1 U889 ( .A(n818), .B(n802), .C(n808), .Y(n823) );
  INVX1 U890 ( .A(n824), .Y(n818) );
  INVX1 U891 ( .A(sram_arlen[6]), .Y(n825) );
  OAI21X1 U892 ( .A(n791), .B(n830), .C(n831), .Y(n502) );
  MUX2X1 U893 ( .B(n832), .A(n828), .S(n833), .Y(n831) );
  INVX1 U894 ( .A(n834), .Y(n828) );
  INVX1 U895 ( .A(sram_arlen[7]), .Y(n830) );
  OAI21X1 U896 ( .A(n791), .B(n835), .C(n836), .Y(n501) );
  MUX2X1 U897 ( .B(n837), .A(n838), .S(n839), .Y(n836) );
  NOR2X1 U898 ( .A(rlen_reg[7]), .B(n834), .Y(n838) );
  NAND2X1 U899 ( .A(n795), .B(n840), .Y(n834) );
  INVX1 U900 ( .A(n841), .Y(n837) );
  INVX1 U901 ( .A(sram_arlen[8]), .Y(n835) );
  OAI21X1 U902 ( .A(n563), .B(n802), .C(n842), .Y(n500) );
  AOI22X1 U903 ( .A(rlen_reg[9]), .B(n843), .C(sram_arlen[9]), .D(n844), .Y(
        n842) );
  OAI21X1 U904 ( .A(n557), .B(n839), .C(n841), .Y(n843) );
  AOI21X1 U905 ( .A(n795), .B(rlen_reg[7]), .C(n832), .Y(n841) );
  OAI21X1 U906 ( .A(n840), .B(n802), .C(n808), .Y(n832) );
  INVX1 U907 ( .A(n794), .Y(n808) );
  INVX1 U908 ( .A(rlen_reg[8]), .Y(n839) );
  OAI21X1 U909 ( .A(n845), .B(n791), .C(n846), .Y(n499) );
  MUX2X1 U910 ( .B(n795), .A(n555), .S(raddr_reg[0]), .Y(n846) );
  INVX1 U911 ( .A(n844), .Y(n791) );
  INVX1 U912 ( .A(sram_araddr[0]), .Y(n845) );
  OAI21X1 U913 ( .A(n557), .B(n847), .C(n848), .Y(n498) );
  AOI22X1 U914 ( .A(n553), .B(sram_araddr[1]), .C(raddr_reg[1]), .D(n555), .Y(
        n848) );
  INVX1 U915 ( .A(N129), .Y(n847) );
  OAI21X1 U916 ( .A(n557), .B(n849), .C(n850), .Y(n497) );
  AOI22X1 U917 ( .A(n553), .B(sram_araddr[2]), .C(raddr_reg[2]), .D(n555), .Y(
        n850) );
  INVX1 U918 ( .A(N130), .Y(n849) );
  OAI21X1 U919 ( .A(n557), .B(n851), .C(n852), .Y(n496) );
  AOI22X1 U920 ( .A(n553), .B(sram_araddr[3]), .C(raddr_reg[3]), .D(n555), .Y(
        n852) );
  INVX1 U921 ( .A(N131), .Y(n851) );
  OAI21X1 U922 ( .A(n557), .B(n853), .C(n854), .Y(n495) );
  AOI22X1 U923 ( .A(sram_araddr[4]), .B(n553), .C(raddr_reg[4]), .D(n555), .Y(
        n854) );
  INVX1 U924 ( .A(N132), .Y(n853) );
  OAI21X1 U925 ( .A(n557), .B(n855), .C(n856), .Y(n494) );
  AOI22X1 U926 ( .A(sram_araddr[5]), .B(n553), .C(raddr_reg[5]), .D(n555), .Y(
        n856) );
  INVX1 U927 ( .A(N133), .Y(n855) );
  OAI21X1 U928 ( .A(n557), .B(n857), .C(n858), .Y(n493) );
  AOI22X1 U929 ( .A(sram_araddr[6]), .B(n553), .C(raddr_reg[6]), .D(n555), .Y(
        n858) );
  INVX1 U930 ( .A(N134), .Y(n857) );
  OAI21X1 U931 ( .A(n557), .B(n859), .C(n860), .Y(n492) );
  AOI22X1 U932 ( .A(sram_araddr[7]), .B(n553), .C(raddr_reg[7]), .D(n555), .Y(
        n860) );
  INVX1 U933 ( .A(N135), .Y(n859) );
  OAI21X1 U934 ( .A(n557), .B(n861), .C(n862), .Y(n491) );
  AOI22X1 U935 ( .A(sram_araddr[8]), .B(n553), .C(raddr_reg[8]), .D(n555), .Y(
        n862) );
  INVX1 U936 ( .A(N136), .Y(n861) );
  OAI21X1 U937 ( .A(n557), .B(n863), .C(n864), .Y(n490) );
  AOI22X1 U938 ( .A(sram_araddr[9]), .B(n553), .C(raddr_reg[9]), .D(n555), .Y(
        n864) );
  INVX1 U939 ( .A(N137), .Y(n863) );
  OAI21X1 U940 ( .A(n557), .B(n865), .C(n866), .Y(n489) );
  AOI22X1 U941 ( .A(sram_araddr[10]), .B(n553), .C(raddr_reg[10]), .D(n555), 
        .Y(n866) );
  INVX1 U942 ( .A(N138), .Y(n865) );
  OAI21X1 U943 ( .A(n557), .B(n867), .C(n868), .Y(n488) );
  AOI22X1 U944 ( .A(sram_araddr[11]), .B(n553), .C(raddr_reg[11]), .D(n555), 
        .Y(n868) );
  INVX1 U945 ( .A(N139), .Y(n867) );
  OAI21X1 U946 ( .A(n557), .B(n869), .C(n870), .Y(n487) );
  AOI22X1 U947 ( .A(sram_araddr[12]), .B(n553), .C(raddr_reg[12]), .D(n555), 
        .Y(n870) );
  INVX1 U948 ( .A(N140), .Y(n869) );
  OAI21X1 U949 ( .A(n557), .B(n871), .C(n872), .Y(n486) );
  AOI22X1 U950 ( .A(sram_araddr[13]), .B(n553), .C(raddr_reg[13]), .D(n555), 
        .Y(n872) );
  INVX1 U951 ( .A(N141), .Y(n871) );
  OAI21X1 U952 ( .A(n557), .B(n873), .C(n874), .Y(n485) );
  AOI22X1 U953 ( .A(sram_araddr[14]), .B(n553), .C(raddr_reg[14]), .D(n555), 
        .Y(n874) );
  INVX1 U954 ( .A(N142), .Y(n873) );
  OAI21X1 U955 ( .A(n557), .B(n875), .C(n876), .Y(n484) );
  AOI22X1 U956 ( .A(sram_araddr[15]), .B(n553), .C(raddr_reg[15]), .D(n555), 
        .Y(n876) );
  INVX1 U957 ( .A(N143), .Y(n875) );
  OAI21X1 U958 ( .A(n557), .B(n877), .C(n878), .Y(n483) );
  AOI22X1 U959 ( .A(sram_araddr[16]), .B(n553), .C(raddr_reg[16]), .D(n555), 
        .Y(n878) );
  INVX1 U960 ( .A(N144), .Y(n877) );
  OAI21X1 U961 ( .A(n557), .B(n879), .C(n880), .Y(n482) );
  AOI22X1 U962 ( .A(sram_araddr[17]), .B(n553), .C(raddr_reg[17]), .D(n555), 
        .Y(n880) );
  INVX1 U963 ( .A(N145), .Y(n879) );
  OAI21X1 U964 ( .A(n557), .B(n881), .C(n882), .Y(n481) );
  AOI22X1 U965 ( .A(sram_araddr[18]), .B(n553), .C(raddr_reg[18]), .D(n555), 
        .Y(n882) );
  INVX1 U966 ( .A(N146), .Y(n881) );
  OAI21X1 U967 ( .A(n557), .B(n883), .C(n884), .Y(n480) );
  AOI22X1 U968 ( .A(sram_araddr[19]), .B(n553), .C(raddr_reg[19]), .D(n555), 
        .Y(n884) );
  INVX1 U969 ( .A(N147), .Y(n883) );
  OAI21X1 U970 ( .A(n557), .B(n885), .C(n886), .Y(n479) );
  AOI22X1 U971 ( .A(sram_araddr[20]), .B(n553), .C(raddr_reg[20]), .D(n555), 
        .Y(n886) );
  INVX1 U972 ( .A(N148), .Y(n885) );
  OAI21X1 U973 ( .A(n557), .B(n887), .C(n888), .Y(n478) );
  AOI22X1 U974 ( .A(sram_araddr[21]), .B(n553), .C(raddr_reg[21]), .D(n555), 
        .Y(n888) );
  INVX1 U975 ( .A(N149), .Y(n887) );
  OAI21X1 U976 ( .A(n557), .B(n889), .C(n890), .Y(n477) );
  AOI22X1 U977 ( .A(sram_araddr[22]), .B(n844), .C(raddr_reg[22]), .D(n555), 
        .Y(n890) );
  INVX1 U978 ( .A(N150), .Y(n889) );
  OAI21X1 U979 ( .A(n557), .B(n891), .C(n892), .Y(n476) );
  AOI22X1 U980 ( .A(sram_araddr[23]), .B(n844), .C(raddr_reg[23]), .D(n794), 
        .Y(n892) );
  INVX1 U981 ( .A(N151), .Y(n891) );
  OAI21X1 U982 ( .A(n557), .B(n893), .C(n894), .Y(n475) );
  AOI22X1 U983 ( .A(sram_araddr[24]), .B(n844), .C(raddr_reg[24]), .D(n794), 
        .Y(n894) );
  INVX1 U984 ( .A(N152), .Y(n893) );
  OAI21X1 U985 ( .A(n557), .B(n895), .C(n896), .Y(n474) );
  AOI22X1 U986 ( .A(sram_araddr[25]), .B(n844), .C(raddr_reg[25]), .D(n794), 
        .Y(n896) );
  INVX1 U987 ( .A(N153), .Y(n895) );
  OAI21X1 U988 ( .A(n557), .B(n897), .C(n898), .Y(n473) );
  AOI22X1 U989 ( .A(sram_araddr[26]), .B(n844), .C(raddr_reg[26]), .D(n794), 
        .Y(n898) );
  INVX1 U990 ( .A(N154), .Y(n897) );
  OAI21X1 U991 ( .A(n557), .B(n899), .C(n900), .Y(n472) );
  AOI22X1 U992 ( .A(sram_araddr[27]), .B(n844), .C(raddr_reg[27]), .D(n794), 
        .Y(n900) );
  INVX1 U993 ( .A(N155), .Y(n899) );
  OAI21X1 U994 ( .A(n557), .B(n901), .C(n902), .Y(n471) );
  AOI22X1 U995 ( .A(sram_araddr[28]), .B(n844), .C(raddr_reg[28]), .D(n794), 
        .Y(n902) );
  INVX1 U996 ( .A(N156), .Y(n901) );
  OAI21X1 U997 ( .A(n802), .B(n903), .C(n904), .Y(n470) );
  AOI22X1 U998 ( .A(sram_araddr[29]), .B(n844), .C(raddr_reg[29]), .D(n794), 
        .Y(n904) );
  INVX1 U999 ( .A(N157), .Y(n903) );
  OAI21X1 U1000 ( .A(n802), .B(n905), .C(n906), .Y(n469) );
  AOI22X1 U1001 ( .A(sram_araddr[30]), .B(n844), .C(raddr_reg[30]), .D(n794), 
        .Y(n906) );
  INVX1 U1002 ( .A(N158), .Y(n905) );
  OAI21X1 U1003 ( .A(n802), .B(n907), .C(n908), .Y(n468) );
  AOI22X1 U1004 ( .A(sram_araddr[31]), .B(n844), .C(raddr_reg[31]), .D(n794), 
        .Y(n908) );
  NOR2X1 U1005 ( .A(n795), .B(n555), .Y(n844) );
  AOI21X1 U1006 ( .A(sram_arready), .B(sram_arvalid), .C(n795), .Y(n794) );
  INVX1 U1007 ( .A(n802), .Y(n795) );
  INVX1 U1008 ( .A(N159), .Y(n907) );
  NAND3X1 U1009 ( .A(sram_rvalid), .B(sram_rready), .C(n909), .Y(n802) );
  NOR2X1 U1010 ( .A(n910), .B(n911), .Y(n909) );
  INVX1 U1011 ( .A(n912), .Y(n385) );
  MUX2X1 U1012 ( .B(wstrb_reg[0]), .A(sram_wstrb[0]), .S(n556), .Y(n912) );
  INVX1 U1013 ( .A(n913), .Y(n383) );
  MUX2X1 U1014 ( .B(wstrb_reg[1]), .A(sram_wstrb[1]), .S(n556), .Y(n913) );
  AND2X1 U1015 ( .A(next_write[1]), .B(next_write[0]), .Y(N178) );
  OAI21X1 U1016 ( .A(write_state[1]), .B(n914), .C(n915), .Y(next_write[0]) );
  AND2X1 U1017 ( .A(n558), .B(n916), .Y(n915) );
  MUX2X1 U1018 ( .B(n917), .A(n918), .S(write_state[0]), .Y(n914) );
  INVX1 U1019 ( .A(sram_wvalid), .Y(n918) );
  NOR2X1 U1020 ( .A(n789), .B(n790), .Y(n917) );
  INVX1 U1021 ( .A(sram_awvalid), .Y(n790) );
  INVX1 U1022 ( .A(sram_awready), .Y(n789) );
  NAND3X1 U1023 ( .A(n916), .B(n724), .C(n919), .Y(next_write[1]) );
  AOI22X1 U1024 ( .A(n920), .B(sram_wvalid), .C(n561), .D(n921), .Y(n919) );
  INVX1 U1025 ( .A(write_valid), .Y(n921) );
  AND2X1 U1026 ( .A(n922), .B(write_state[0]), .Y(n920) );
  NAND3X1 U1027 ( .A(n719), .B(n923), .C(n713), .Y(n724) );
  INVX1 U1028 ( .A(n718), .Y(n713) );
  NAND3X1 U1029 ( .A(n708), .B(n924), .C(n675), .Y(n718) );
  INVX1 U1030 ( .A(n682), .Y(n675) );
  NAND2X1 U1031 ( .A(write_valid), .B(n561), .Y(n682) );
  NOR2X1 U1032 ( .A(n922), .B(write_state[0]), .Y(n561) );
  INVX1 U1033 ( .A(wlen_reg[7]), .Y(n924) );
  NOR3X1 U1034 ( .A(wlen_reg[5]), .B(wlen_reg[6]), .C(n704), .Y(n708) );
  NAND3X1 U1035 ( .A(n693), .B(n925), .C(n686), .Y(n704) );
  INVX1 U1036 ( .A(n694), .Y(n686) );
  NAND3X1 U1037 ( .A(n681), .B(n926), .C(n676), .Y(n694) );
  INVX1 U1038 ( .A(wlen_reg[0]), .Y(n676) );
  INVX1 U1039 ( .A(wlen_reg[2]), .Y(n926) );
  INVX1 U1040 ( .A(wlen_reg[1]), .Y(n681) );
  INVX1 U1041 ( .A(wlen_reg[4]), .Y(n925) );
  INVX1 U1042 ( .A(wlen_reg[3]), .Y(n693) );
  INVX1 U1043 ( .A(wlen_reg[9]), .Y(n923) );
  INVX1 U1044 ( .A(wlen_reg[8]), .Y(n719) );
  NAND2X1 U1045 ( .A(n927), .B(write_state[0]), .Y(n916) );
  NOR2X1 U1046 ( .A(sram_bready), .B(n922), .Y(n927) );
  INVX1 U1047 ( .A(write_state[1]), .Y(n922) );
  INVX1 U1048 ( .A(n564), .Y(N174) );
  NAND2X1 U1049 ( .A(next_read[0]), .B(next_read[1]), .Y(n564) );
  INVX1 U1050 ( .A(n637), .Y(next_read[1]) );
  NOR2X1 U1051 ( .A(n928), .B(ren), .Y(n637) );
  NOR2X1 U1052 ( .A(n910), .B(read_state[1]), .Y(ren) );
  MUX2X1 U1053 ( .B(n911), .A(sram_rready), .S(read_state[0]), .Y(n928) );
  MUX2X1 U1054 ( .B(n929), .A(n930), .S(n911), .Y(next_read[0]) );
  INVX1 U1055 ( .A(read_state[1]), .Y(n911) );
  NAND3X1 U1056 ( .A(sram_arready), .B(n910), .C(sram_arvalid), .Y(n930) );
  MUX2X1 U1057 ( .B(n931), .A(read_valid), .S(n910), .Y(n929) );
  INVX1 U1058 ( .A(read_state[0]), .Y(n910) );
  NAND2X1 U1059 ( .A(sram_rready), .B(n932), .Y(n931) );
  INVX1 U1060 ( .A(n563), .Y(n932) );
  NAND3X1 U1061 ( .A(n840), .B(n833), .C(n933), .Y(n563) );
  NOR2X1 U1062 ( .A(rlen_reg[9]), .B(rlen_reg[8]), .Y(n933) );
  INVX1 U1063 ( .A(rlen_reg[7]), .Y(n833) );
  NOR3X1 U1064 ( .A(rlen_reg[5]), .B(rlen_reg[6]), .C(n824), .Y(n840) );
  NAND3X1 U1065 ( .A(n813), .B(n934), .C(n806), .Y(n824) );
  INVX1 U1066 ( .A(n814), .Y(n806) );
  NAND3X1 U1067 ( .A(n801), .B(n935), .C(n796), .Y(n814) );
  INVX1 U1068 ( .A(rlen_reg[0]), .Y(n796) );
  INVX1 U1069 ( .A(rlen_reg[2]), .Y(n935) );
  INVX1 U1070 ( .A(rlen_reg[1]), .Y(n801) );
  INVX1 U1071 ( .A(rlen_reg[4]), .Y(n934) );
  INVX1 U1072 ( .A(rlen_reg[3]), .Y(n813) );
endmodule

