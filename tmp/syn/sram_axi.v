/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4
// Date      : Thu Apr 23 19:48:35 2026
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
  wire   next_arready, next_rlast, N84, N85, N86, N87, N88, N89, N90, N91, N92,
         N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105,
         N106, N107, N108, N109, N110, N111, N112, N113, N114, N128, N129,
         N130, N131, N132, N133, N134, N135, N136, N137, N138, N139, N140,
         N141, N142, N143, N144, N145, N146, N147, N148, N149, N150, N151,
         N152, N153, N154, N155, N156, N157, N158, N178, n384, n386, n469,
         n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, n480,
         n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n491,
         n492, n493, n494, n495, n496, n497, n498, n499, n500, n501, n502,
         n503, n504, n505, n506, n507, n508, n509, n510, n511, n512, n513,
         n514, n515, n516, n517, n518, n519, n520, n521, n522, n523, n524,
         n525, n526, n527, n528, n529, n530, n531, n532, n533, n534, n535,
         n536, n537, n538, n539, n540, n541, n542, n543, n544, n545, n546,
         n547, n548, n549, n550, n551, n552, n553, n554, n555, n556, n557,
         n558, n559, n560, n561, n562, n563, n564, n565, n566, n567, n568,
         n569, n570, n571, n572, n573, n574, n575, n576, n577, n578, n579,
         n580, n581, n582, n583, n584, n585, n586, n587, n588, n589, n590,
         n591, n592, n593, n594, n595, n596, n597, n598, n599, n600, n601,
         n602, n603, n604, n605, n606, n607, n608, n609, n610, n611, n612,
         n613, n614, n615, n616, n617, n618, n619, n620, n621, n622, n623,
         n624, n625, n626, n627, n628, n629, n630, n631, n632, n633, n634,
         n635, n636, n637, n638, n639, n640, n641, n642, n643, n644, n645,
         n646, n647, n648, n649, n650, n651, n652, n653, n654, n655, n656,
         n657, n658, n659, n660, n661, n662, n663, n664, n665, n666, n667,
         n668, n669, n670, n671, n672, n673, n674, n675, n676, n677, n678,
         n679, n680, n681, n682, n683, n684, n685, n686, n687, n688, n689,
         n690, n691, n692, n693, n694, n695, n696, n697, n698, n699, n700,
         n701, n702, n703, n704, n705, n706, n707, n708, n709, n710, n711,
         n712, n713, n714, n715, n716, n717, n718, n719, n720, n721, n722,
         n723, n724, n725, n726, n727, n728, n729, n730, n731, n732, n733,
         n734, n735, n736, n737, n738, n739, n740, n741, n742, n743, n744,
         n745, n746, n747, n748, n749, n750, n751, n752, n753, n754, n755,
         n756, n757, n758, n759, n760, n761, n762, n763, n764, n765, n766,
         n767, n768, n769, n770, n771, n772, n773, n774, n775, n776, n777,
         n778, n779, n780, n781, n782, n783, n784, n785, n786, n787, n788,
         n789, n790, n791, n792, n793, n794, n795, n796, n797, n798, n799,
         n800, n801, n802, n803, n804, n805, n806, n807, n808, n809, n810,
         n811, n812, n813, n814, n815, n816, n817, n818, n819, n820, n821,
         n822, n823, n824, n825, n826, n827, n828, n829, n830, n831, n832,
         n833, n834, n835, n836, n837, n838, n839, n840, n841, n842, n843,
         n844, n845, n846, n847, n848, n849, n850, n851, n852, n853, n854,
         n855, n856, n857, n858, n859, n860, n861, n862, n863, n864, n865,
         n866, n867, n868, n869, n870, n871, n872, n873, n874, n875, n876,
         n877, n878, n879, n880, n881, n882, n883, n884, n885, n886, n887,
         n888, n889, n890, n891, n892, n893, n894, n895, n896, n897, n898,
         n899, n900, n901, n902, n903, n904, n905, n906, n907, n908, n909,
         n910, n911, n912, n913, n914, n915, n916, n917, n918, n919, n920,
         n921, n922, n923, n924, n925, n926, n927, n928, n929, n930, n931,
         n932, n933, n934, n935, n936, n937, n938, n939, n940, n941, n942,
         n943, n944, n945, n946, n947, n948, n949, n950, n951, n952, n953,
         n954, n955, n956, n957, n958, n959, n960, n961, n962, n963, n964,
         n965, n966, n967, n968, n969, n970, n971, n972, n973, n974;
  wire   [1:0] read_state;
  wire   [1:0] write_state;
  wire   [1:0] next_read;
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
  DFFSR sram_awready_reg ( .D(n941), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_awready) );
  DFFSR \wlen_reg_reg[0]  ( .D(n552), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[0]) );
  DFFSR \write_state_reg[1]  ( .D(next_write[1]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(write_state[1]) );
  DFFSR \write_state_reg[0]  ( .D(next_write[0]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(write_state[0]) );
  DFFSR \wlen_reg_reg[9]  ( .D(n543), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[9]) );
  DFFSR \wlen_reg_reg[1]  ( .D(n551), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[1]) );
  DFFSR \wlen_reg_reg[2]  ( .D(n550), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[2]) );
  DFFSR \wlen_reg_reg[3]  ( .D(n549), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[3]) );
  DFFSR \wlen_reg_reg[4]  ( .D(n548), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[4]) );
  DFFSR \wlen_reg_reg[5]  ( .D(n547), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[5]) );
  DFFSR \wlen_reg_reg[6]  ( .D(n546), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[6]) );
  DFFSR \wlen_reg_reg[7]  ( .D(n545), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[7]) );
  DFFSR \wlen_reg_reg[8]  ( .D(n544), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[8]) );
  DFFSR \waddr_reg_reg[31]  ( .D(n511), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[31]) );
  DFFSR \waddr_reg_reg[0]  ( .D(n542), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[0]) );
  DFFSR \waddr_reg_reg[1]  ( .D(n541), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[1]) );
  DFFSR \waddr_reg_reg[2]  ( .D(n540), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[2]) );
  DFFSR \waddr_reg_reg[3]  ( .D(n539), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[3]) );
  DFFSR \waddr_reg_reg[4]  ( .D(n538), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[4]) );
  DFFSR \waddr_reg_reg[5]  ( .D(n537), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[5]) );
  DFFSR \waddr_reg_reg[6]  ( .D(n536), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[6]) );
  DFFSR \waddr_reg_reg[7]  ( .D(n535), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[7]) );
  DFFSR \waddr_reg_reg[8]  ( .D(n534), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[8]) );
  DFFSR \waddr_reg_reg[9]  ( .D(n533), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[9]) );
  DFFSR \waddr_reg_reg[10]  ( .D(n532), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[10]) );
  DFFSR \waddr_reg_reg[11]  ( .D(n531), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[11]) );
  DFFSR \waddr_reg_reg[12]  ( .D(n530), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[12]) );
  DFFSR \waddr_reg_reg[13]  ( .D(n529), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[13]) );
  DFFSR \waddr_reg_reg[14]  ( .D(n528), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[14]) );
  DFFSR \waddr_reg_reg[15]  ( .D(n527), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[15]) );
  DFFSR \waddr_reg_reg[16]  ( .D(n526), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[16]) );
  DFFSR \waddr_reg_reg[17]  ( .D(n525), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[17]) );
  DFFSR \waddr_reg_reg[18]  ( .D(n524), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[18]) );
  DFFSR \waddr_reg_reg[19]  ( .D(n523), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[19]) );
  DFFSR \waddr_reg_reg[20]  ( .D(n522), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[20]) );
  DFFSR \waddr_reg_reg[21]  ( .D(n521), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[21]) );
  DFFSR \waddr_reg_reg[22]  ( .D(n520), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[22]) );
  DFFSR \waddr_reg_reg[23]  ( .D(n519), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[23]) );
  DFFSR \waddr_reg_reg[24]  ( .D(n518), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[24]) );
  DFFSR \waddr_reg_reg[25]  ( .D(n517), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[25]) );
  DFFSR \waddr_reg_reg[26]  ( .D(n516), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[26]) );
  DFFSR \waddr_reg_reg[27]  ( .D(n515), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[27]) );
  DFFSR \waddr_reg_reg[28]  ( .D(n514), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[28]) );
  DFFSR \waddr_reg_reg[29]  ( .D(n513), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[29]) );
  DFFSR \waddr_reg_reg[30]  ( .D(n512), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[30]) );
  DFFSR sram_wready_reg ( .D(n553), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_wready) );
  DFFSR \wdata_reg_reg[31]  ( .D(n942), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[31]) );
  DFFSR \wstrb_reg_reg[0]  ( .D(n386), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wstrb_reg[0]) );
  DFFSR \wstrb_reg_reg[1]  ( .D(n384), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wstrb_reg[1]) );
  DFFSR \wdata_reg_reg[0]  ( .D(n973), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[0]) );
  DFFSR \wdata_reg_reg[1]  ( .D(n972), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[1]) );
  DFFSR \wdata_reg_reg[2]  ( .D(n971), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[2]) );
  DFFSR \wdata_reg_reg[3]  ( .D(n970), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[3]) );
  DFFSR \wdata_reg_reg[4]  ( .D(n969), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[4]) );
  DFFSR \wdata_reg_reg[5]  ( .D(n968), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[5]) );
  DFFSR \wdata_reg_reg[6]  ( .D(n967), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[6]) );
  DFFSR \wdata_reg_reg[7]  ( .D(n966), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[7]) );
  DFFSR \wdata_reg_reg[8]  ( .D(n965), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[8]) );
  DFFSR \wdata_reg_reg[9]  ( .D(n964), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[9]) );
  DFFSR \wdata_reg_reg[10]  ( .D(n963), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[10]) );
  DFFSR \wdata_reg_reg[11]  ( .D(n962), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[11]) );
  DFFSR \wdata_reg_reg[12]  ( .D(n961), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[12]) );
  DFFSR \wdata_reg_reg[13]  ( .D(n960), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[13]) );
  DFFSR \wdata_reg_reg[14]  ( .D(n959), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[14]) );
  DFFSR \wdata_reg_reg[15]  ( .D(n958), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[15]) );
  DFFSR \wdata_reg_reg[16]  ( .D(n957), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[16]) );
  DFFSR \wdata_reg_reg[17]  ( .D(n956), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[17]) );
  DFFSR \wdata_reg_reg[18]  ( .D(n955), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[18]) );
  DFFSR \wdata_reg_reg[19]  ( .D(n954), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[19]) );
  DFFSR \wdata_reg_reg[20]  ( .D(n953), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[20]) );
  DFFSR \wdata_reg_reg[21]  ( .D(n952), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[21]) );
  DFFSR \wdata_reg_reg[22]  ( .D(n951), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[22]) );
  DFFSR \wdata_reg_reg[23]  ( .D(n950), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[23]) );
  DFFSR \wdata_reg_reg[24]  ( .D(n949), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[24]) );
  DFFSR \wdata_reg_reg[25]  ( .D(n948), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[25]) );
  DFFSR \wdata_reg_reg[26]  ( .D(n947), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[26]) );
  DFFSR \wdata_reg_reg[27]  ( .D(n946), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[27]) );
  DFFSR \wdata_reg_reg[28]  ( .D(n945), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[28]) );
  DFFSR \wdata_reg_reg[29]  ( .D(n944), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[29]) );
  DFFSR \wdata_reg_reg[30]  ( .D(n943), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[30]) );
  DFFSR sram_bvalid_reg ( .D(N178), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_bvalid) );
  DFFSR sram_arready_reg ( .D(next_arready), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(sram_arready) );
  DFFSR \rlen_reg_reg[9]  ( .D(n501), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[9]) );
  DFFSR \read_state_reg[0]  ( .D(next_read[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(read_state[0]) );
  DFFSR \read_state_reg[1]  ( .D(next_read[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(read_state[1]) );
  DFFSR sram_rlast_reg ( .D(next_rlast), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_rlast) );
  DFFSR sram_rvalid_reg ( .D(n974), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_rvalid) );
  DFFSR \rlen_reg_reg[8]  ( .D(n502), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[8]) );
  DFFSR \rlen_reg_reg[0]  ( .D(n510), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[0]) );
  DFFSR \rlen_reg_reg[1]  ( .D(n509), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[1]) );
  DFFSR \rlen_reg_reg[2]  ( .D(n508), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[2]) );
  DFFSR \rlen_reg_reg[3]  ( .D(n507), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[3]) );
  DFFSR \rlen_reg_reg[4]  ( .D(n506), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[4]) );
  DFFSR \rlen_reg_reg[5]  ( .D(n505), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[5]) );
  DFFSR \rlen_reg_reg[6]  ( .D(n504), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[6]) );
  DFFSR \rlen_reg_reg[7]  ( .D(n503), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[7]) );
  DFFSR \raddr_reg_reg[31]  ( .D(n469), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[31]) );
  DFFSR \raddr_reg_reg[0]  ( .D(n500), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[0]) );
  DFFSR \raddr_reg_reg[1]  ( .D(n499), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[1]) );
  DFFSR \raddr_reg_reg[2]  ( .D(n498), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[2]) );
  DFFSR \raddr_reg_reg[3]  ( .D(n497), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[3]) );
  DFFSR \raddr_reg_reg[4]  ( .D(n496), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[4]) );
  DFFSR \raddr_reg_reg[5]  ( .D(n495), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[5]) );
  DFFSR \raddr_reg_reg[6]  ( .D(n494), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[6]) );
  DFFSR \raddr_reg_reg[7]  ( .D(n493), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[7]) );
  DFFSR \raddr_reg_reg[8]  ( .D(n492), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[8]) );
  DFFSR \raddr_reg_reg[9]  ( .D(n491), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[9]) );
  DFFSR \raddr_reg_reg[10]  ( .D(n490), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[10]) );
  DFFSR \raddr_reg_reg[11]  ( .D(n489), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[11]) );
  DFFSR \raddr_reg_reg[12]  ( .D(n488), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[12]) );
  DFFSR \raddr_reg_reg[13]  ( .D(n487), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[13]) );
  DFFSR \raddr_reg_reg[14]  ( .D(n486), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[14]) );
  DFFSR \raddr_reg_reg[15]  ( .D(n485), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[15]) );
  DFFSR \raddr_reg_reg[16]  ( .D(n484), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[16]) );
  DFFSR \raddr_reg_reg[17]  ( .D(n483), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[17]) );
  DFFSR \raddr_reg_reg[18]  ( .D(n482), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[18]) );
  DFFSR \raddr_reg_reg[19]  ( .D(n481), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[19]) );
  DFFSR \raddr_reg_reg[20]  ( .D(n480), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[20]) );
  DFFSR \raddr_reg_reg[21]  ( .D(n479), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[21]) );
  DFFSR \raddr_reg_reg[22]  ( .D(n478), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[22]) );
  DFFSR \raddr_reg_reg[23]  ( .D(n477), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[23]) );
  DFFSR \raddr_reg_reg[24]  ( .D(n476), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[24]) );
  DFFSR \raddr_reg_reg[25]  ( .D(n475), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[25]) );
  DFFSR \raddr_reg_reg[26]  ( .D(n474), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[26]) );
  DFFSR \raddr_reg_reg[27]  ( .D(n473), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[27]) );
  DFFSR \raddr_reg_reg[28]  ( .D(n472), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[28]) );
  DFFSR \raddr_reg_reg[29]  ( .D(n471), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[29]) );
  DFFSR \raddr_reg_reg[30]  ( .D(n470), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[30]) );
  sram_axi_DW01_inc_0 add_197 ( .A(waddr_reg), .SUM({N114, N113, N112, N111, 
        N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, 
        N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, 
        N84, SYNOPSYS_UNCONNECTED__0}) );
  sram_axi_DW01_sub_0 sub_81 ( .A(waddr_reg), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 
        1'b1, 1'b1, 1'b1}), .CI(1'b0), .DIFF(write_addr) );
  sram_axi_DW01_inc_1 add_201 ( .A(raddr_reg), .SUM({N158, N157, N156, N155, 
        N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, 
        N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, 
        N130, N129, N128, SYNOPSYS_UNCONNECTED__1}) );
  sram_axi_DW01_sub_1 sub_112 ( .A(raddr_reg), .B({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b1, 1'b1, 1'b1, 1'b1}), .CI(1'b0), .DIFF(read_addr) );
  INVX2 U592 ( .A(n801), .Y(n554) );
  INVX2 U593 ( .A(n681), .Y(n555) );
  INVX2 U594 ( .A(n818), .Y(n556) );
  INVX4 U595 ( .A(n698), .Y(n684) );
  NAND2X1 U596 ( .A(sram_wready), .B(sram_wvalid), .Y(n639) );
  INVX4 U597 ( .A(n639), .Y(n557) );
  INVX2 U598 ( .A(n805), .Y(n558) );
  INVX4 U599 ( .A(n685), .Y(n559) );
  INVX1 U600 ( .A(n560), .Y(wen[3]) );
  MUX2X1 U601 ( .B(n561), .A(n560), .S(wstrb_reg[1]), .Y(wen[1]) );
  NAND2X1 U602 ( .A(wstrb_reg[0]), .B(n562), .Y(n560) );
  NAND2X1 U603 ( .A(n562), .B(n563), .Y(n561) );
  INVX1 U604 ( .A(wstrb_reg[0]), .Y(n563) );
  AND2X1 U605 ( .A(read_valid), .B(read_data[9]), .Y(next_sram_rdata[9]) );
  AND2X1 U606 ( .A(read_data[8]), .B(read_valid), .Y(next_sram_rdata[8]) );
  AND2X1 U607 ( .A(read_data[7]), .B(read_valid), .Y(next_sram_rdata[7]) );
  AND2X1 U608 ( .A(read_data[6]), .B(read_valid), .Y(next_sram_rdata[6]) );
  AND2X1 U609 ( .A(read_data[5]), .B(read_valid), .Y(next_sram_rdata[5]) );
  AND2X1 U610 ( .A(read_data[4]), .B(read_valid), .Y(next_sram_rdata[4]) );
  AND2X1 U611 ( .A(read_data[3]), .B(read_valid), .Y(next_sram_rdata[3]) );
  AND2X1 U612 ( .A(read_data[31]), .B(read_valid), .Y(next_sram_rdata[31]) );
  AND2X1 U613 ( .A(read_data[30]), .B(read_valid), .Y(next_sram_rdata[30]) );
  AND2X1 U614 ( .A(read_data[2]), .B(read_valid), .Y(next_sram_rdata[2]) );
  AND2X1 U615 ( .A(read_data[29]), .B(read_valid), .Y(next_sram_rdata[29]) );
  AND2X1 U616 ( .A(read_data[28]), .B(read_valid), .Y(next_sram_rdata[28]) );
  AND2X1 U617 ( .A(read_data[27]), .B(read_valid), .Y(next_sram_rdata[27]) );
  AND2X1 U618 ( .A(read_data[26]), .B(read_valid), .Y(next_sram_rdata[26]) );
  AND2X1 U619 ( .A(read_data[25]), .B(read_valid), .Y(next_sram_rdata[25]) );
  AND2X1 U620 ( .A(read_data[24]), .B(read_valid), .Y(next_sram_rdata[24]) );
  AND2X1 U621 ( .A(read_data[23]), .B(read_valid), .Y(next_sram_rdata[23]) );
  AND2X1 U622 ( .A(read_data[22]), .B(read_valid), .Y(next_sram_rdata[22]) );
  AND2X1 U623 ( .A(read_data[21]), .B(read_valid), .Y(next_sram_rdata[21]) );
  AND2X1 U624 ( .A(read_data[20]), .B(read_valid), .Y(next_sram_rdata[20]) );
  AND2X1 U625 ( .A(read_data[1]), .B(read_valid), .Y(next_sram_rdata[1]) );
  AND2X1 U626 ( .A(read_data[19]), .B(read_valid), .Y(next_sram_rdata[19]) );
  AND2X1 U627 ( .A(read_data[18]), .B(read_valid), .Y(next_sram_rdata[18]) );
  AND2X1 U628 ( .A(read_data[17]), .B(read_valid), .Y(next_sram_rdata[17]) );
  AND2X1 U629 ( .A(read_data[16]), .B(read_valid), .Y(next_sram_rdata[16]) );
  AND2X1 U630 ( .A(read_data[15]), .B(read_valid), .Y(next_sram_rdata[15]) );
  AND2X1 U631 ( .A(read_data[14]), .B(read_valid), .Y(next_sram_rdata[14]) );
  AND2X1 U632 ( .A(read_data[13]), .B(read_valid), .Y(next_sram_rdata[13]) );
  AND2X1 U633 ( .A(read_data[12]), .B(read_valid), .Y(next_sram_rdata[12]) );
  AND2X1 U634 ( .A(read_data[11]), .B(read_valid), .Y(next_sram_rdata[11]) );
  AND2X1 U635 ( .A(read_data[10]), .B(read_valid), .Y(next_sram_rdata[10]) );
  AND2X1 U636 ( .A(read_data[0]), .B(read_valid), .Y(next_sram_rdata[0]) );
  AND2X1 U637 ( .A(n564), .B(n974), .Y(next_rlast) );
  INVX1 U638 ( .A(n565), .Y(next_read[1]) );
  NOR2X1 U639 ( .A(next_read[0]), .B(n566), .Y(next_arready) );
  OAI21X1 U640 ( .A(n567), .B(n568), .C(n565), .Y(n566) );
  NAND2X1 U641 ( .A(n569), .B(n570), .Y(n568) );
  NOR2X1 U642 ( .A(n571), .B(n572), .Y(n570) );
  INVX1 U643 ( .A(n573), .Y(n572) );
  NOR3X1 U644 ( .A(sram_araddr[17]), .B(sram_araddr[18]), .C(sram_araddr[16]), 
        .Y(n573) );
  NAND3X1 U645 ( .A(n574), .B(n575), .C(n576), .Y(n571) );
  NOR2X1 U646 ( .A(sram_araddr[22]), .B(sram_araddr[21]), .Y(n576) );
  INVX1 U647 ( .A(sram_araddr[20]), .Y(n575) );
  INVX1 U648 ( .A(sram_araddr[19]), .Y(n574) );
  NOR2X1 U649 ( .A(n577), .B(n578), .Y(n569) );
  OAI21X1 U650 ( .A(n579), .B(n580), .C(n581), .Y(n578) );
  NOR2X1 U651 ( .A(sram_araddr[11]), .B(sram_araddr[10]), .Y(n581) );
  NAND2X1 U652 ( .A(sram_araddr[3]), .B(sram_araddr[2]), .Y(n580) );
  NAND2X1 U653 ( .A(sram_araddr[1]), .B(sram_araddr[0]), .Y(n579) );
  NAND3X1 U654 ( .A(n582), .B(n583), .C(n584), .Y(n577) );
  NOR2X1 U655 ( .A(sram_araddr[15]), .B(sram_araddr[14]), .Y(n584) );
  INVX1 U656 ( .A(sram_araddr[13]), .Y(n583) );
  INVX1 U657 ( .A(sram_araddr[12]), .Y(n582) );
  NAND2X1 U658 ( .A(n585), .B(n586), .Y(n567) );
  NOR2X1 U659 ( .A(n587), .B(n588), .Y(n586) );
  NAND3X1 U660 ( .A(n589), .B(n590), .C(n591), .Y(n588) );
  NOR2X1 U661 ( .A(sram_araddr[5]), .B(sram_araddr[4]), .Y(n591) );
  INVX1 U662 ( .A(sram_araddr[31]), .Y(n590) );
  INVX1 U663 ( .A(sram_araddr[30]), .Y(n589) );
  NAND3X1 U664 ( .A(n592), .B(n593), .C(n594), .Y(n587) );
  NOR2X1 U665 ( .A(sram_araddr[9]), .B(sram_araddr[8]), .Y(n594) );
  INVX1 U666 ( .A(sram_araddr[7]), .Y(n593) );
  INVX1 U667 ( .A(sram_araddr[6]), .Y(n592) );
  NOR2X1 U668 ( .A(n595), .B(n596), .Y(n585) );
  INVX1 U669 ( .A(n597), .Y(n596) );
  NOR3X1 U670 ( .A(sram_araddr[24]), .B(sram_araddr[25]), .C(sram_araddr[23]), 
        .Y(n597) );
  NAND3X1 U671 ( .A(n598), .B(n599), .C(n600), .Y(n595) );
  NOR2X1 U672 ( .A(sram_araddr[29]), .B(sram_araddr[28]), .Y(n600) );
  INVX1 U673 ( .A(sram_araddr[27]), .Y(n599) );
  INVX1 U674 ( .A(sram_araddr[26]), .Y(n598) );
  INVX1 U675 ( .A(n601), .Y(next_read[0]) );
  INVX1 U676 ( .A(n602), .Y(n941) );
  OAI21X1 U677 ( .A(n603), .B(n604), .C(n605), .Y(n602) );
  NOR2X1 U678 ( .A(next_write[1]), .B(next_write[0]), .Y(n605) );
  NAND2X1 U679 ( .A(n606), .B(n607), .Y(n604) );
  NOR2X1 U680 ( .A(n608), .B(n609), .Y(n607) );
  INVX1 U681 ( .A(n610), .Y(n609) );
  NOR3X1 U682 ( .A(sram_awaddr[17]), .B(sram_awaddr[18]), .C(sram_awaddr[16]), 
        .Y(n610) );
  NAND3X1 U683 ( .A(n611), .B(n612), .C(n613), .Y(n608) );
  NOR2X1 U684 ( .A(sram_awaddr[22]), .B(sram_awaddr[21]), .Y(n613) );
  INVX1 U685 ( .A(sram_awaddr[20]), .Y(n612) );
  INVX1 U686 ( .A(sram_awaddr[19]), .Y(n611) );
  NOR2X1 U687 ( .A(n614), .B(n615), .Y(n606) );
  OAI21X1 U688 ( .A(n616), .B(n617), .C(n618), .Y(n615) );
  NOR2X1 U689 ( .A(sram_awaddr[11]), .B(sram_awaddr[10]), .Y(n618) );
  NAND2X1 U690 ( .A(sram_awaddr[3]), .B(sram_awaddr[2]), .Y(n617) );
  NAND2X1 U691 ( .A(sram_awaddr[1]), .B(sram_awaddr[0]), .Y(n616) );
  NAND3X1 U692 ( .A(n619), .B(n620), .C(n621), .Y(n614) );
  NOR2X1 U693 ( .A(sram_awaddr[15]), .B(sram_awaddr[14]), .Y(n621) );
  INVX1 U694 ( .A(sram_awaddr[13]), .Y(n620) );
  INVX1 U695 ( .A(sram_awaddr[12]), .Y(n619) );
  NAND2X1 U696 ( .A(n622), .B(n623), .Y(n603) );
  NOR2X1 U697 ( .A(n624), .B(n625), .Y(n623) );
  NAND3X1 U698 ( .A(n626), .B(n627), .C(n628), .Y(n625) );
  NOR2X1 U699 ( .A(sram_awaddr[5]), .B(sram_awaddr[4]), .Y(n628) );
  INVX1 U700 ( .A(sram_awaddr[31]), .Y(n627) );
  INVX1 U701 ( .A(sram_awaddr[30]), .Y(n626) );
  NAND3X1 U702 ( .A(n629), .B(n630), .C(n631), .Y(n624) );
  NOR2X1 U703 ( .A(sram_awaddr[9]), .B(sram_awaddr[8]), .Y(n631) );
  INVX1 U704 ( .A(sram_awaddr[7]), .Y(n630) );
  INVX1 U705 ( .A(sram_awaddr[6]), .Y(n629) );
  NOR2X1 U706 ( .A(n632), .B(n633), .Y(n622) );
  INVX1 U707 ( .A(n634), .Y(n633) );
  NOR3X1 U708 ( .A(sram_awaddr[24]), .B(sram_awaddr[25]), .C(sram_awaddr[23]), 
        .Y(n634) );
  NAND3X1 U709 ( .A(n635), .B(n636), .C(n637), .Y(n632) );
  NOR2X1 U710 ( .A(sram_awaddr[29]), .B(sram_awaddr[28]), .Y(n637) );
  INVX1 U711 ( .A(sram_awaddr[27]), .Y(n636) );
  INVX1 U712 ( .A(sram_awaddr[26]), .Y(n635) );
  INVX1 U713 ( .A(n638), .Y(n942) );
  MUX2X1 U714 ( .B(write_data[31]), .A(sram_wdata[31]), .S(n557), .Y(n638) );
  INVX1 U715 ( .A(n640), .Y(n943) );
  MUX2X1 U716 ( .B(write_data[30]), .A(sram_wdata[30]), .S(n557), .Y(n640) );
  INVX1 U717 ( .A(n641), .Y(n944) );
  MUX2X1 U718 ( .B(write_data[29]), .A(sram_wdata[29]), .S(n557), .Y(n641) );
  INVX1 U719 ( .A(n642), .Y(n945) );
  MUX2X1 U720 ( .B(write_data[28]), .A(sram_wdata[28]), .S(n557), .Y(n642) );
  INVX1 U721 ( .A(n643), .Y(n946) );
  MUX2X1 U722 ( .B(write_data[27]), .A(sram_wdata[27]), .S(n557), .Y(n643) );
  INVX1 U723 ( .A(n644), .Y(n947) );
  MUX2X1 U724 ( .B(write_data[26]), .A(sram_wdata[26]), .S(n557), .Y(n644) );
  INVX1 U725 ( .A(n645), .Y(n948) );
  MUX2X1 U726 ( .B(write_data[25]), .A(sram_wdata[25]), .S(n557), .Y(n645) );
  INVX1 U727 ( .A(n646), .Y(n949) );
  MUX2X1 U728 ( .B(write_data[24]), .A(sram_wdata[24]), .S(n557), .Y(n646) );
  INVX1 U729 ( .A(n647), .Y(n950) );
  MUX2X1 U730 ( .B(write_data[23]), .A(sram_wdata[23]), .S(n557), .Y(n647) );
  INVX1 U731 ( .A(n648), .Y(n951) );
  MUX2X1 U732 ( .B(write_data[22]), .A(sram_wdata[22]), .S(n557), .Y(n648) );
  INVX1 U733 ( .A(n649), .Y(n952) );
  MUX2X1 U734 ( .B(write_data[21]), .A(sram_wdata[21]), .S(n557), .Y(n649) );
  INVX1 U735 ( .A(n650), .Y(n953) );
  MUX2X1 U736 ( .B(write_data[20]), .A(sram_wdata[20]), .S(n557), .Y(n650) );
  INVX1 U737 ( .A(n651), .Y(n954) );
  MUX2X1 U738 ( .B(write_data[19]), .A(sram_wdata[19]), .S(n557), .Y(n651) );
  INVX1 U739 ( .A(n652), .Y(n955) );
  MUX2X1 U740 ( .B(write_data[18]), .A(sram_wdata[18]), .S(n557), .Y(n652) );
  INVX1 U741 ( .A(n653), .Y(n956) );
  MUX2X1 U742 ( .B(write_data[17]), .A(sram_wdata[17]), .S(n557), .Y(n653) );
  INVX1 U743 ( .A(n654), .Y(n957) );
  MUX2X1 U744 ( .B(write_data[16]), .A(sram_wdata[16]), .S(n557), .Y(n654) );
  INVX1 U745 ( .A(n655), .Y(n958) );
  MUX2X1 U746 ( .B(write_data[15]), .A(sram_wdata[15]), .S(n557), .Y(n655) );
  INVX1 U747 ( .A(n656), .Y(n959) );
  MUX2X1 U748 ( .B(write_data[14]), .A(sram_wdata[14]), .S(n557), .Y(n656) );
  INVX1 U749 ( .A(n657), .Y(n960) );
  MUX2X1 U750 ( .B(write_data[13]), .A(sram_wdata[13]), .S(n557), .Y(n657) );
  INVX1 U751 ( .A(n658), .Y(n961) );
  MUX2X1 U752 ( .B(write_data[12]), .A(sram_wdata[12]), .S(n557), .Y(n658) );
  INVX1 U753 ( .A(n659), .Y(n962) );
  MUX2X1 U754 ( .B(write_data[11]), .A(sram_wdata[11]), .S(n557), .Y(n659) );
  INVX1 U755 ( .A(n660), .Y(n963) );
  MUX2X1 U756 ( .B(write_data[10]), .A(sram_wdata[10]), .S(n557), .Y(n660) );
  INVX1 U757 ( .A(n661), .Y(n964) );
  MUX2X1 U758 ( .B(write_data[9]), .A(sram_wdata[9]), .S(n557), .Y(n661) );
  INVX1 U759 ( .A(n662), .Y(n965) );
  MUX2X1 U760 ( .B(write_data[8]), .A(sram_wdata[8]), .S(n557), .Y(n662) );
  INVX1 U761 ( .A(n663), .Y(n966) );
  MUX2X1 U762 ( .B(write_data[7]), .A(sram_wdata[7]), .S(n557), .Y(n663) );
  INVX1 U763 ( .A(n664), .Y(n967) );
  MUX2X1 U764 ( .B(write_data[6]), .A(sram_wdata[6]), .S(n557), .Y(n664) );
  INVX1 U765 ( .A(n665), .Y(n968) );
  MUX2X1 U766 ( .B(write_data[5]), .A(sram_wdata[5]), .S(n557), .Y(n665) );
  INVX1 U767 ( .A(n666), .Y(n969) );
  MUX2X1 U768 ( .B(write_data[4]), .A(sram_wdata[4]), .S(n557), .Y(n666) );
  INVX1 U769 ( .A(n667), .Y(n970) );
  MUX2X1 U770 ( .B(write_data[3]), .A(sram_wdata[3]), .S(n557), .Y(n667) );
  INVX1 U771 ( .A(n668), .Y(n971) );
  MUX2X1 U772 ( .B(write_data[2]), .A(sram_wdata[2]), .S(n557), .Y(n668) );
  INVX1 U773 ( .A(n669), .Y(n972) );
  MUX2X1 U774 ( .B(write_data[1]), .A(sram_wdata[1]), .S(n557), .Y(n669) );
  INVX1 U775 ( .A(n670), .Y(n973) );
  MUX2X1 U776 ( .B(write_data[0]), .A(sram_wdata[0]), .S(n557), .Y(n670) );
  NOR2X1 U777 ( .A(n601), .B(n565), .Y(n974) );
  NOR2X1 U778 ( .A(n671), .B(ren), .Y(n565) );
  NOR2X1 U779 ( .A(n672), .B(read_state[1]), .Y(ren) );
  MUX2X1 U780 ( .B(n673), .A(sram_rready), .S(read_state[0]), .Y(n671) );
  MUX2X1 U781 ( .B(n674), .A(n675), .S(n673), .Y(n601) );
  NOR2X1 U782 ( .A(n676), .B(n677), .Y(n675) );
  NAND2X1 U783 ( .A(sram_arready), .B(n672), .Y(n677) );
  INVX1 U784 ( .A(sram_arvalid), .Y(n676) );
  MUX2X1 U785 ( .B(n678), .A(n679), .S(n672), .Y(n674) );
  INVX1 U786 ( .A(read_valid), .Y(n679) );
  AND2X1 U787 ( .A(n564), .B(sram_rready), .Y(n678) );
  NOR2X1 U788 ( .A(next_write[1]), .B(n680), .Y(n553) );
  INVX1 U789 ( .A(next_write[0]), .Y(n680) );
  OAI21X1 U790 ( .A(n681), .B(n682), .C(n683), .Y(n552) );
  MUX2X1 U791 ( .B(n684), .A(n685), .S(n686), .Y(n683) );
  INVX1 U792 ( .A(sram_awlen[0]), .Y(n682) );
  OAI21X1 U793 ( .A(n681), .B(n687), .C(n688), .Y(n551) );
  MUX2X1 U794 ( .B(n689), .A(n690), .S(n691), .Y(n688) );
  NOR2X1 U795 ( .A(wlen_reg[0]), .B(n559), .Y(n690) );
  INVX1 U796 ( .A(sram_awlen[1]), .Y(n687) );
  OAI21X1 U797 ( .A(n681), .B(n693), .C(n694), .Y(n550) );
  AOI22X1 U798 ( .A(wlen_reg[2]), .B(n695), .C(n685), .D(n696), .Y(n694) );
  OAI21X1 U799 ( .A(n559), .B(n691), .C(n697), .Y(n695) );
  INVX1 U800 ( .A(n689), .Y(n697) );
  OAI21X1 U801 ( .A(n559), .B(n686), .C(n698), .Y(n689) );
  INVX1 U802 ( .A(sram_awlen[2]), .Y(n693) );
  OAI21X1 U803 ( .A(n681), .B(n699), .C(n700), .Y(n549) );
  MUX2X1 U804 ( .B(n701), .A(n702), .S(n703), .Y(n700) );
  NOR2X1 U805 ( .A(n704), .B(n559), .Y(n702) );
  INVX1 U806 ( .A(sram_awlen[3]), .Y(n699) );
  OAI21X1 U807 ( .A(n681), .B(n705), .C(n706), .Y(n548) );
  AOI22X1 U808 ( .A(wlen_reg[4]), .B(n707), .C(n685), .D(n708), .Y(n706) );
  OAI21X1 U809 ( .A(n559), .B(n703), .C(n709), .Y(n707) );
  INVX1 U810 ( .A(n701), .Y(n709) );
  OAI21X1 U811 ( .A(n696), .B(n692), .C(n698), .Y(n701) );
  INVX1 U812 ( .A(sram_awlen[4]), .Y(n705) );
  OAI21X1 U813 ( .A(n681), .B(n710), .C(n711), .Y(n547) );
  MUX2X1 U814 ( .B(n712), .A(n713), .S(wlen_reg[5]), .Y(n711) );
  NOR2X1 U815 ( .A(n714), .B(n559), .Y(n712) );
  INVX1 U816 ( .A(sram_awlen[5]), .Y(n710) );
  OAI21X1 U817 ( .A(n681), .B(n715), .C(n716), .Y(n546) );
  AOI22X1 U818 ( .A(wlen_reg[6]), .B(n717), .C(n718), .D(n685), .Y(n716) );
  INVX1 U819 ( .A(n719), .Y(n717) );
  AOI21X1 U820 ( .A(n685), .B(wlen_reg[5]), .C(n713), .Y(n719) );
  OAI21X1 U821 ( .A(n708), .B(n692), .C(n698), .Y(n713) );
  INVX1 U822 ( .A(n714), .Y(n708) );
  INVX1 U823 ( .A(sram_awlen[6]), .Y(n715) );
  OAI21X1 U824 ( .A(n681), .B(n720), .C(n721), .Y(n545) );
  AOI21X1 U825 ( .A(wlen_reg[7]), .B(n722), .C(n723), .Y(n721) );
  INVX1 U826 ( .A(sram_awlen[7]), .Y(n720) );
  INVX1 U827 ( .A(n724), .Y(n544) );
  AOI21X1 U828 ( .A(n555), .B(sram_awlen[8]), .C(n726), .Y(n724) );
  MUX2X1 U829 ( .B(n727), .A(n728), .S(n729), .Y(n726) );
  OAI21X1 U830 ( .A(n681), .B(n730), .C(n731), .Y(n543) );
  AOI21X1 U831 ( .A(wlen_reg[9]), .B(n732), .C(n733), .Y(n731) );
  INVX1 U832 ( .A(n734), .Y(n733) );
  OAI21X1 U833 ( .A(n559), .B(n729), .C(n727), .Y(n732) );
  AOI21X1 U834 ( .A(n685), .B(wlen_reg[7]), .C(n722), .Y(n727) );
  OAI21X1 U835 ( .A(n718), .B(n692), .C(n698), .Y(n722) );
  INVX1 U836 ( .A(sram_awlen[9]), .Y(n730) );
  OAI21X1 U837 ( .A(n735), .B(n681), .C(n736), .Y(n542) );
  MUX2X1 U838 ( .B(n685), .A(n684), .S(waddr_reg[0]), .Y(n736) );
  INVX1 U839 ( .A(n725), .Y(n681) );
  INVX1 U840 ( .A(sram_awaddr[0]), .Y(n735) );
  OAI21X1 U841 ( .A(n559), .B(n737), .C(n738), .Y(n541) );
  AOI22X1 U842 ( .A(n555), .B(sram_awaddr[1]), .C(waddr_reg[1]), .D(n684), .Y(
        n738) );
  INVX1 U843 ( .A(N84), .Y(n737) );
  OAI21X1 U844 ( .A(n559), .B(n739), .C(n740), .Y(n540) );
  AOI22X1 U845 ( .A(n555), .B(sram_awaddr[2]), .C(waddr_reg[2]), .D(n684), .Y(
        n740) );
  INVX1 U846 ( .A(N85), .Y(n739) );
  OAI21X1 U847 ( .A(n559), .B(n741), .C(n742), .Y(n539) );
  AOI22X1 U848 ( .A(n555), .B(sram_awaddr[3]), .C(waddr_reg[3]), .D(n684), .Y(
        n742) );
  INVX1 U849 ( .A(N86), .Y(n741) );
  OAI21X1 U850 ( .A(n559), .B(n743), .C(n744), .Y(n538) );
  AOI22X1 U851 ( .A(sram_awaddr[4]), .B(n555), .C(waddr_reg[4]), .D(n684), .Y(
        n744) );
  INVX1 U852 ( .A(N87), .Y(n743) );
  OAI21X1 U853 ( .A(n559), .B(n745), .C(n746), .Y(n537) );
  AOI22X1 U854 ( .A(sram_awaddr[5]), .B(n555), .C(waddr_reg[5]), .D(n684), .Y(
        n746) );
  INVX1 U855 ( .A(N88), .Y(n745) );
  OAI21X1 U856 ( .A(n559), .B(n747), .C(n748), .Y(n536) );
  AOI22X1 U857 ( .A(sram_awaddr[6]), .B(n555), .C(waddr_reg[6]), .D(n684), .Y(
        n748) );
  INVX1 U858 ( .A(N89), .Y(n747) );
  OAI21X1 U859 ( .A(n559), .B(n749), .C(n750), .Y(n535) );
  AOI22X1 U860 ( .A(sram_awaddr[7]), .B(n555), .C(waddr_reg[7]), .D(n684), .Y(
        n750) );
  INVX1 U861 ( .A(N90), .Y(n749) );
  OAI21X1 U862 ( .A(n559), .B(n751), .C(n752), .Y(n534) );
  AOI22X1 U863 ( .A(sram_awaddr[8]), .B(n555), .C(waddr_reg[8]), .D(n684), .Y(
        n752) );
  INVX1 U864 ( .A(N91), .Y(n751) );
  OAI21X1 U865 ( .A(n559), .B(n753), .C(n754), .Y(n533) );
  AOI22X1 U866 ( .A(sram_awaddr[9]), .B(n555), .C(waddr_reg[9]), .D(n684), .Y(
        n754) );
  INVX1 U867 ( .A(N92), .Y(n753) );
  OAI21X1 U868 ( .A(n559), .B(n755), .C(n756), .Y(n532) );
  AOI22X1 U869 ( .A(sram_awaddr[10]), .B(n555), .C(waddr_reg[10]), .D(n684), 
        .Y(n756) );
  INVX1 U870 ( .A(N93), .Y(n755) );
  OAI21X1 U871 ( .A(n559), .B(n757), .C(n758), .Y(n531) );
  AOI22X1 U872 ( .A(sram_awaddr[11]), .B(n555), .C(waddr_reg[11]), .D(n684), 
        .Y(n758) );
  INVX1 U873 ( .A(N94), .Y(n757) );
  OAI21X1 U874 ( .A(n559), .B(n759), .C(n760), .Y(n530) );
  AOI22X1 U875 ( .A(sram_awaddr[12]), .B(n555), .C(waddr_reg[12]), .D(n684), 
        .Y(n760) );
  INVX1 U876 ( .A(N95), .Y(n759) );
  OAI21X1 U877 ( .A(n559), .B(n761), .C(n762), .Y(n529) );
  AOI22X1 U878 ( .A(sram_awaddr[13]), .B(n555), .C(waddr_reg[13]), .D(n684), 
        .Y(n762) );
  INVX1 U879 ( .A(N96), .Y(n761) );
  OAI21X1 U880 ( .A(n559), .B(n763), .C(n764), .Y(n528) );
  AOI22X1 U881 ( .A(sram_awaddr[14]), .B(n555), .C(waddr_reg[14]), .D(n684), 
        .Y(n764) );
  INVX1 U882 ( .A(N97), .Y(n763) );
  OAI21X1 U883 ( .A(n559), .B(n765), .C(n766), .Y(n527) );
  AOI22X1 U884 ( .A(sram_awaddr[15]), .B(n555), .C(waddr_reg[15]), .D(n684), 
        .Y(n766) );
  INVX1 U885 ( .A(N98), .Y(n765) );
  OAI21X1 U886 ( .A(n559), .B(n767), .C(n768), .Y(n526) );
  AOI22X1 U887 ( .A(sram_awaddr[16]), .B(n555), .C(waddr_reg[16]), .D(n684), 
        .Y(n768) );
  INVX1 U888 ( .A(N99), .Y(n767) );
  OAI21X1 U889 ( .A(n559), .B(n769), .C(n770), .Y(n525) );
  AOI22X1 U890 ( .A(sram_awaddr[17]), .B(n555), .C(waddr_reg[17]), .D(n684), 
        .Y(n770) );
  INVX1 U891 ( .A(N100), .Y(n769) );
  OAI21X1 U892 ( .A(n559), .B(n771), .C(n772), .Y(n524) );
  AOI22X1 U893 ( .A(sram_awaddr[18]), .B(n555), .C(waddr_reg[18]), .D(n684), 
        .Y(n772) );
  INVX1 U894 ( .A(N101), .Y(n771) );
  OAI21X1 U895 ( .A(n559), .B(n773), .C(n774), .Y(n523) );
  AOI22X1 U896 ( .A(sram_awaddr[19]), .B(n555), .C(waddr_reg[19]), .D(n684), 
        .Y(n774) );
  INVX1 U897 ( .A(N102), .Y(n773) );
  OAI21X1 U898 ( .A(n559), .B(n775), .C(n776), .Y(n522) );
  AOI22X1 U899 ( .A(sram_awaddr[20]), .B(n555), .C(waddr_reg[20]), .D(n684), 
        .Y(n776) );
  INVX1 U900 ( .A(N103), .Y(n775) );
  OAI21X1 U901 ( .A(n559), .B(n777), .C(n778), .Y(n521) );
  AOI22X1 U902 ( .A(sram_awaddr[21]), .B(n725), .C(waddr_reg[21]), .D(n684), 
        .Y(n778) );
  INVX1 U903 ( .A(N104), .Y(n777) );
  OAI21X1 U904 ( .A(n559), .B(n779), .C(n780), .Y(n520) );
  AOI22X1 U905 ( .A(sram_awaddr[22]), .B(n725), .C(waddr_reg[22]), .D(n684), 
        .Y(n780) );
  INVX1 U906 ( .A(N105), .Y(n779) );
  OAI21X1 U907 ( .A(n559), .B(n781), .C(n782), .Y(n519) );
  AOI22X1 U908 ( .A(sram_awaddr[23]), .B(n725), .C(waddr_reg[23]), .D(n684), 
        .Y(n782) );
  INVX1 U909 ( .A(N106), .Y(n781) );
  OAI21X1 U910 ( .A(n559), .B(n783), .C(n784), .Y(n518) );
  AOI22X1 U911 ( .A(sram_awaddr[24]), .B(n725), .C(waddr_reg[24]), .D(n684), 
        .Y(n784) );
  INVX1 U912 ( .A(N107), .Y(n783) );
  OAI21X1 U913 ( .A(n559), .B(n785), .C(n786), .Y(n517) );
  AOI22X1 U914 ( .A(sram_awaddr[25]), .B(n725), .C(waddr_reg[25]), .D(n684), 
        .Y(n786) );
  INVX1 U915 ( .A(N108), .Y(n785) );
  OAI21X1 U916 ( .A(n692), .B(n787), .C(n788), .Y(n516) );
  AOI22X1 U917 ( .A(sram_awaddr[26]), .B(n725), .C(waddr_reg[26]), .D(n684), 
        .Y(n788) );
  INVX1 U918 ( .A(N109), .Y(n787) );
  OAI21X1 U919 ( .A(n692), .B(n789), .C(n790), .Y(n515) );
  AOI22X1 U920 ( .A(sram_awaddr[27]), .B(n725), .C(waddr_reg[27]), .D(n684), 
        .Y(n790) );
  INVX1 U921 ( .A(N110), .Y(n789) );
  OAI21X1 U922 ( .A(n692), .B(n791), .C(n792), .Y(n514) );
  AOI22X1 U923 ( .A(sram_awaddr[28]), .B(n725), .C(waddr_reg[28]), .D(n684), 
        .Y(n792) );
  INVX1 U924 ( .A(N111), .Y(n791) );
  OAI21X1 U925 ( .A(n692), .B(n793), .C(n794), .Y(n513) );
  AOI22X1 U926 ( .A(sram_awaddr[29]), .B(n725), .C(waddr_reg[29]), .D(n684), 
        .Y(n794) );
  INVX1 U927 ( .A(N112), .Y(n793) );
  OAI21X1 U928 ( .A(n692), .B(n795), .C(n796), .Y(n512) );
  AOI22X1 U929 ( .A(sram_awaddr[30]), .B(n725), .C(waddr_reg[30]), .D(n684), 
        .Y(n796) );
  INVX1 U930 ( .A(N113), .Y(n795) );
  OAI21X1 U931 ( .A(n692), .B(n797), .C(n798), .Y(n511) );
  AOI22X1 U932 ( .A(sram_awaddr[31]), .B(n725), .C(waddr_reg[31]), .D(n684), 
        .Y(n798) );
  NOR2X1 U933 ( .A(n685), .B(n684), .Y(n725) );
  OAI21X1 U934 ( .A(n799), .B(n800), .C(n559), .Y(n698) );
  INVX1 U935 ( .A(N114), .Y(n797) );
  OAI21X1 U936 ( .A(n801), .B(n802), .C(n803), .Y(n510) );
  MUX2X1 U937 ( .B(n556), .A(n805), .S(n806), .Y(n803) );
  INVX1 U938 ( .A(sram_arlen[0]), .Y(n802) );
  OAI21X1 U939 ( .A(n801), .B(n807), .C(n808), .Y(n509) );
  MUX2X1 U940 ( .B(n809), .A(n810), .S(n811), .Y(n808) );
  NOR2X1 U941 ( .A(rlen_reg[0]), .B(n558), .Y(n810) );
  INVX1 U942 ( .A(sram_arlen[1]), .Y(n807) );
  OAI21X1 U943 ( .A(n801), .B(n813), .C(n814), .Y(n508) );
  AOI22X1 U944 ( .A(rlen_reg[2]), .B(n815), .C(n805), .D(n816), .Y(n814) );
  OAI21X1 U945 ( .A(n558), .B(n811), .C(n817), .Y(n815) );
  INVX1 U946 ( .A(n809), .Y(n817) );
  OAI21X1 U947 ( .A(n806), .B(n812), .C(n818), .Y(n809) );
  INVX1 U948 ( .A(sram_arlen[2]), .Y(n813) );
  OAI21X1 U949 ( .A(n801), .B(n819), .C(n820), .Y(n507) );
  MUX2X1 U950 ( .B(n821), .A(n822), .S(n823), .Y(n820) );
  NOR2X1 U951 ( .A(n824), .B(n558), .Y(n822) );
  INVX1 U952 ( .A(sram_arlen[3]), .Y(n819) );
  OAI21X1 U953 ( .A(n801), .B(n825), .C(n826), .Y(n506) );
  AOI22X1 U954 ( .A(rlen_reg[4]), .B(n827), .C(n805), .D(n828), .Y(n826) );
  OAI21X1 U955 ( .A(n558), .B(n823), .C(n829), .Y(n827) );
  INVX1 U956 ( .A(n821), .Y(n829) );
  OAI21X1 U957 ( .A(n816), .B(n812), .C(n818), .Y(n821) );
  INVX1 U958 ( .A(sram_arlen[4]), .Y(n825) );
  OAI21X1 U959 ( .A(n801), .B(n830), .C(n831), .Y(n505) );
  MUX2X1 U960 ( .B(n832), .A(n833), .S(rlen_reg[5]), .Y(n831) );
  NOR2X1 U961 ( .A(n834), .B(n558), .Y(n832) );
  INVX1 U962 ( .A(sram_arlen[5]), .Y(n830) );
  OAI21X1 U963 ( .A(n801), .B(n835), .C(n836), .Y(n504) );
  AOI21X1 U964 ( .A(rlen_reg[6]), .B(n837), .C(n838), .Y(n836) );
  INVX1 U965 ( .A(n839), .Y(n837) );
  AOI21X1 U966 ( .A(n805), .B(rlen_reg[5]), .C(n833), .Y(n839) );
  OAI21X1 U967 ( .A(n828), .B(n812), .C(n818), .Y(n833) );
  INVX1 U968 ( .A(n834), .Y(n828) );
  INVX1 U969 ( .A(sram_arlen[6]), .Y(n835) );
  OAI21X1 U970 ( .A(n801), .B(n840), .C(n841), .Y(n503) );
  MUX2X1 U971 ( .B(n842), .A(n838), .S(n843), .Y(n841) );
  INVX1 U972 ( .A(n844), .Y(n838) );
  INVX1 U973 ( .A(sram_arlen[7]), .Y(n840) );
  OAI21X1 U974 ( .A(n801), .B(n845), .C(n846), .Y(n502) );
  MUX2X1 U975 ( .B(n847), .A(n848), .S(n849), .Y(n846) );
  NOR2X1 U976 ( .A(rlen_reg[7]), .B(n844), .Y(n848) );
  NAND2X1 U977 ( .A(n805), .B(n850), .Y(n844) );
  INVX1 U978 ( .A(n851), .Y(n847) );
  INVX1 U979 ( .A(sram_arlen[8]), .Y(n845) );
  OAI21X1 U980 ( .A(n801), .B(n852), .C(n853), .Y(n501) );
  AOI22X1 U981 ( .A(rlen_reg[9]), .B(n854), .C(n805), .D(n564), .Y(n853) );
  INVX1 U982 ( .A(n855), .Y(n564) );
  NAND3X1 U983 ( .A(n850), .B(n843), .C(n856), .Y(n855) );
  NOR2X1 U984 ( .A(rlen_reg[9]), .B(rlen_reg[8]), .Y(n856) );
  INVX1 U985 ( .A(rlen_reg[7]), .Y(n843) );
  OAI21X1 U986 ( .A(n558), .B(n849), .C(n851), .Y(n854) );
  AOI21X1 U987 ( .A(n805), .B(rlen_reg[7]), .C(n842), .Y(n851) );
  OAI21X1 U988 ( .A(n850), .B(n812), .C(n818), .Y(n842) );
  INVX1 U989 ( .A(n804), .Y(n818) );
  NOR3X1 U990 ( .A(rlen_reg[5]), .B(rlen_reg[6]), .C(n834), .Y(n850) );
  NAND3X1 U991 ( .A(n823), .B(n857), .C(n816), .Y(n834) );
  INVX1 U992 ( .A(n824), .Y(n816) );
  NAND3X1 U993 ( .A(n811), .B(n858), .C(n806), .Y(n824) );
  INVX1 U994 ( .A(rlen_reg[0]), .Y(n806) );
  INVX1 U995 ( .A(rlen_reg[2]), .Y(n858) );
  INVX1 U996 ( .A(rlen_reg[1]), .Y(n811) );
  INVX1 U997 ( .A(rlen_reg[4]), .Y(n857) );
  INVX1 U998 ( .A(rlen_reg[3]), .Y(n823) );
  INVX1 U999 ( .A(rlen_reg[8]), .Y(n849) );
  INVX1 U1000 ( .A(sram_arlen[9]), .Y(n852) );
  OAI21X1 U1001 ( .A(n859), .B(n801), .C(n860), .Y(n500) );
  MUX2X1 U1002 ( .B(n805), .A(n556), .S(raddr_reg[0]), .Y(n860) );
  INVX1 U1003 ( .A(n861), .Y(n801) );
  INVX1 U1004 ( .A(sram_araddr[0]), .Y(n859) );
  OAI21X1 U1005 ( .A(n558), .B(n862), .C(n863), .Y(n499) );
  AOI22X1 U1006 ( .A(n554), .B(sram_araddr[1]), .C(raddr_reg[1]), .D(n556), 
        .Y(n863) );
  INVX1 U1007 ( .A(N128), .Y(n862) );
  OAI21X1 U1008 ( .A(n558), .B(n864), .C(n865), .Y(n498) );
  AOI22X1 U1009 ( .A(n554), .B(sram_araddr[2]), .C(raddr_reg[2]), .D(n556), 
        .Y(n865) );
  INVX1 U1010 ( .A(N129), .Y(n864) );
  OAI21X1 U1011 ( .A(n558), .B(n866), .C(n867), .Y(n497) );
  AOI22X1 U1012 ( .A(n554), .B(sram_araddr[3]), .C(raddr_reg[3]), .D(n556), 
        .Y(n867) );
  INVX1 U1013 ( .A(N130), .Y(n866) );
  OAI21X1 U1014 ( .A(n558), .B(n868), .C(n869), .Y(n496) );
  AOI22X1 U1015 ( .A(sram_araddr[4]), .B(n554), .C(raddr_reg[4]), .D(n556), 
        .Y(n869) );
  INVX1 U1016 ( .A(N131), .Y(n868) );
  OAI21X1 U1017 ( .A(n558), .B(n870), .C(n871), .Y(n495) );
  AOI22X1 U1018 ( .A(sram_araddr[5]), .B(n554), .C(raddr_reg[5]), .D(n556), 
        .Y(n871) );
  INVX1 U1019 ( .A(N132), .Y(n870) );
  OAI21X1 U1020 ( .A(n558), .B(n872), .C(n873), .Y(n494) );
  AOI22X1 U1021 ( .A(sram_araddr[6]), .B(n554), .C(raddr_reg[6]), .D(n556), 
        .Y(n873) );
  INVX1 U1022 ( .A(N133), .Y(n872) );
  OAI21X1 U1023 ( .A(n558), .B(n874), .C(n875), .Y(n493) );
  AOI22X1 U1024 ( .A(sram_araddr[7]), .B(n554), .C(raddr_reg[7]), .D(n556), 
        .Y(n875) );
  INVX1 U1025 ( .A(N134), .Y(n874) );
  OAI21X1 U1026 ( .A(n558), .B(n876), .C(n877), .Y(n492) );
  AOI22X1 U1027 ( .A(sram_araddr[8]), .B(n554), .C(raddr_reg[8]), .D(n556), 
        .Y(n877) );
  INVX1 U1028 ( .A(N135), .Y(n876) );
  OAI21X1 U1029 ( .A(n558), .B(n878), .C(n879), .Y(n491) );
  AOI22X1 U1030 ( .A(sram_araddr[9]), .B(n554), .C(raddr_reg[9]), .D(n556), 
        .Y(n879) );
  INVX1 U1031 ( .A(N136), .Y(n878) );
  OAI21X1 U1032 ( .A(n558), .B(n880), .C(n881), .Y(n490) );
  AOI22X1 U1033 ( .A(sram_araddr[10]), .B(n554), .C(raddr_reg[10]), .D(n556), 
        .Y(n881) );
  INVX1 U1034 ( .A(N137), .Y(n880) );
  OAI21X1 U1035 ( .A(n558), .B(n882), .C(n883), .Y(n489) );
  AOI22X1 U1036 ( .A(sram_araddr[11]), .B(n554), .C(raddr_reg[11]), .D(n556), 
        .Y(n883) );
  INVX1 U1037 ( .A(N138), .Y(n882) );
  OAI21X1 U1038 ( .A(n558), .B(n884), .C(n885), .Y(n488) );
  AOI22X1 U1039 ( .A(sram_araddr[12]), .B(n554), .C(raddr_reg[12]), .D(n556), 
        .Y(n885) );
  INVX1 U1040 ( .A(N139), .Y(n884) );
  OAI21X1 U1041 ( .A(n558), .B(n886), .C(n887), .Y(n487) );
  AOI22X1 U1042 ( .A(sram_araddr[13]), .B(n554), .C(raddr_reg[13]), .D(n556), 
        .Y(n887) );
  INVX1 U1043 ( .A(N140), .Y(n886) );
  OAI21X1 U1044 ( .A(n558), .B(n888), .C(n889), .Y(n486) );
  AOI22X1 U1045 ( .A(sram_araddr[14]), .B(n554), .C(raddr_reg[14]), .D(n556), 
        .Y(n889) );
  INVX1 U1046 ( .A(N141), .Y(n888) );
  OAI21X1 U1047 ( .A(n558), .B(n890), .C(n891), .Y(n485) );
  AOI22X1 U1048 ( .A(sram_araddr[15]), .B(n554), .C(raddr_reg[15]), .D(n556), 
        .Y(n891) );
  INVX1 U1049 ( .A(N142), .Y(n890) );
  OAI21X1 U1050 ( .A(n558), .B(n892), .C(n893), .Y(n484) );
  AOI22X1 U1051 ( .A(sram_araddr[16]), .B(n554), .C(raddr_reg[16]), .D(n556), 
        .Y(n893) );
  INVX1 U1052 ( .A(N143), .Y(n892) );
  OAI21X1 U1053 ( .A(n558), .B(n894), .C(n895), .Y(n483) );
  AOI22X1 U1054 ( .A(sram_araddr[17]), .B(n554), .C(raddr_reg[17]), .D(n556), 
        .Y(n895) );
  INVX1 U1055 ( .A(N144), .Y(n894) );
  OAI21X1 U1056 ( .A(n558), .B(n896), .C(n897), .Y(n482) );
  AOI22X1 U1057 ( .A(sram_araddr[18]), .B(n554), .C(raddr_reg[18]), .D(n556), 
        .Y(n897) );
  INVX1 U1058 ( .A(N145), .Y(n896) );
  OAI21X1 U1059 ( .A(n558), .B(n898), .C(n899), .Y(n481) );
  AOI22X1 U1060 ( .A(sram_araddr[19]), .B(n554), .C(raddr_reg[19]), .D(n556), 
        .Y(n899) );
  INVX1 U1061 ( .A(N146), .Y(n898) );
  OAI21X1 U1062 ( .A(n558), .B(n900), .C(n901), .Y(n480) );
  AOI22X1 U1063 ( .A(sram_araddr[20]), .B(n554), .C(raddr_reg[20]), .D(n556), 
        .Y(n901) );
  INVX1 U1064 ( .A(N147), .Y(n900) );
  OAI21X1 U1065 ( .A(n558), .B(n902), .C(n903), .Y(n479) );
  AOI22X1 U1066 ( .A(sram_araddr[21]), .B(n554), .C(raddr_reg[21]), .D(n556), 
        .Y(n903) );
  INVX1 U1067 ( .A(N148), .Y(n902) );
  OAI21X1 U1068 ( .A(n558), .B(n904), .C(n905), .Y(n478) );
  AOI22X1 U1069 ( .A(sram_araddr[22]), .B(n861), .C(raddr_reg[22]), .D(n556), 
        .Y(n905) );
  INVX1 U1070 ( .A(N149), .Y(n904) );
  OAI21X1 U1071 ( .A(n558), .B(n906), .C(n907), .Y(n477) );
  AOI22X1 U1072 ( .A(sram_araddr[23]), .B(n861), .C(raddr_reg[23]), .D(n804), 
        .Y(n907) );
  INVX1 U1073 ( .A(N150), .Y(n906) );
  OAI21X1 U1074 ( .A(n812), .B(n908), .C(n909), .Y(n476) );
  AOI22X1 U1075 ( .A(sram_araddr[24]), .B(n861), .C(raddr_reg[24]), .D(n804), 
        .Y(n909) );
  INVX1 U1076 ( .A(N151), .Y(n908) );
  OAI21X1 U1077 ( .A(n812), .B(n910), .C(n911), .Y(n475) );
  AOI22X1 U1078 ( .A(sram_araddr[25]), .B(n861), .C(raddr_reg[25]), .D(n804), 
        .Y(n911) );
  INVX1 U1079 ( .A(N152), .Y(n910) );
  OAI21X1 U1080 ( .A(n812), .B(n912), .C(n913), .Y(n474) );
  AOI22X1 U1081 ( .A(sram_araddr[26]), .B(n861), .C(raddr_reg[26]), .D(n804), 
        .Y(n913) );
  INVX1 U1082 ( .A(N153), .Y(n912) );
  OAI21X1 U1083 ( .A(n812), .B(n914), .C(n915), .Y(n473) );
  AOI22X1 U1084 ( .A(sram_araddr[27]), .B(n861), .C(raddr_reg[27]), .D(n804), 
        .Y(n915) );
  INVX1 U1085 ( .A(N154), .Y(n914) );
  OAI21X1 U1086 ( .A(n812), .B(n916), .C(n917), .Y(n472) );
  AOI22X1 U1087 ( .A(sram_araddr[28]), .B(n861), .C(raddr_reg[28]), .D(n804), 
        .Y(n917) );
  INVX1 U1088 ( .A(N155), .Y(n916) );
  OAI21X1 U1089 ( .A(n812), .B(n918), .C(n919), .Y(n471) );
  AOI22X1 U1090 ( .A(sram_araddr[29]), .B(n861), .C(raddr_reg[29]), .D(n804), 
        .Y(n919) );
  INVX1 U1091 ( .A(N156), .Y(n918) );
  OAI21X1 U1092 ( .A(n812), .B(n920), .C(n921), .Y(n470) );
  AOI22X1 U1093 ( .A(sram_araddr[30]), .B(n861), .C(raddr_reg[30]), .D(n804), 
        .Y(n921) );
  INVX1 U1094 ( .A(N157), .Y(n920) );
  OAI21X1 U1095 ( .A(n812), .B(n922), .C(n923), .Y(n469) );
  AOI22X1 U1096 ( .A(sram_araddr[31]), .B(n861), .C(raddr_reg[31]), .D(n804), 
        .Y(n923) );
  NOR2X1 U1097 ( .A(n805), .B(n556), .Y(n861) );
  AOI21X1 U1098 ( .A(sram_arready), .B(sram_arvalid), .C(n805), .Y(n804) );
  INVX1 U1099 ( .A(n812), .Y(n805) );
  INVX1 U1100 ( .A(N158), .Y(n922) );
  NAND3X1 U1101 ( .A(sram_rvalid), .B(sram_rready), .C(n924), .Y(n812) );
  NOR2X1 U1102 ( .A(n672), .B(n673), .Y(n924) );
  INVX1 U1103 ( .A(read_state[1]), .Y(n673) );
  INVX1 U1104 ( .A(read_state[0]), .Y(n672) );
  INVX1 U1105 ( .A(n925), .Y(n386) );
  MUX2X1 U1106 ( .B(wstrb_reg[0]), .A(sram_wstrb[0]), .S(n557), .Y(n925) );
  INVX1 U1107 ( .A(n926), .Y(n384) );
  MUX2X1 U1108 ( .B(wstrb_reg[1]), .A(sram_wstrb[1]), .S(n557), .Y(n926) );
  AND2X1 U1109 ( .A(next_write[1]), .B(next_write[0]), .Y(N178) );
  OAI21X1 U1110 ( .A(write_state[1]), .B(n927), .C(n928), .Y(next_write[0]) );
  AND2X1 U1111 ( .A(n929), .B(n559), .Y(n928) );
  MUX2X1 U1112 ( .B(n930), .A(n931), .S(write_state[0]), .Y(n927) );
  INVX1 U1113 ( .A(sram_wvalid), .Y(n931) );
  NOR2X1 U1114 ( .A(n799), .B(n800), .Y(n930) );
  INVX1 U1115 ( .A(sram_awvalid), .Y(n800) );
  INVX1 U1116 ( .A(sram_awready), .Y(n799) );
  NAND3X1 U1117 ( .A(n929), .B(n734), .C(n932), .Y(next_write[1]) );
  AOI22X1 U1118 ( .A(n933), .B(sram_wvalid), .C(n562), .D(n934), .Y(n932) );
  INVX1 U1119 ( .A(write_valid), .Y(n934) );
  AND2X1 U1120 ( .A(n935), .B(write_state[0]), .Y(n933) );
  NAND3X1 U1121 ( .A(n729), .B(n936), .C(n723), .Y(n734) );
  INVX1 U1122 ( .A(n728), .Y(n723) );
  NAND3X1 U1123 ( .A(n685), .B(n937), .C(n718), .Y(n728) );
  NOR3X1 U1124 ( .A(wlen_reg[5]), .B(wlen_reg[6]), .C(n714), .Y(n718) );
  NAND3X1 U1125 ( .A(n703), .B(n938), .C(n696), .Y(n714) );
  INVX1 U1126 ( .A(n704), .Y(n696) );
  NAND3X1 U1127 ( .A(n691), .B(n939), .C(n686), .Y(n704) );
  INVX1 U1128 ( .A(wlen_reg[0]), .Y(n686) );
  INVX1 U1129 ( .A(wlen_reg[2]), .Y(n939) );
  INVX1 U1130 ( .A(wlen_reg[1]), .Y(n691) );
  INVX1 U1131 ( .A(wlen_reg[4]), .Y(n938) );
  INVX1 U1132 ( .A(wlen_reg[3]), .Y(n703) );
  INVX1 U1133 ( .A(wlen_reg[7]), .Y(n937) );
  INVX1 U1134 ( .A(n692), .Y(n685) );
  NAND2X1 U1135 ( .A(write_valid), .B(n562), .Y(n692) );
  NOR2X1 U1136 ( .A(n935), .B(write_state[0]), .Y(n562) );
  INVX1 U1137 ( .A(wlen_reg[9]), .Y(n936) );
  INVX1 U1138 ( .A(wlen_reg[8]), .Y(n729) );
  NAND2X1 U1139 ( .A(n940), .B(write_state[0]), .Y(n929) );
  NOR2X1 U1140 ( .A(sram_bready), .B(n935), .Y(n940) );
  INVX1 U1141 ( .A(write_state[1]), .Y(n935) );
endmodule

