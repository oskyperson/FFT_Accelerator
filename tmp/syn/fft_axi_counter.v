/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4
// Date      : Thu Apr 16 01:19:34 2026
/////////////////////////////////////////////////////////////


module fft_axi_counter_DW01_inc_0 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  HAX1 U1_1_8 ( .A(A[8]), .B(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  HAX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  HAX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  HAX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  HAX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  HAX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  HAX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  HAX1 U1_1_1 ( .A(A[1]), .B(A[0]), .YC(carry[2]), .YS(SUM[1]) );
  INVX2 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
endmodule


module fft_axi_counter ( clk, n_rst, len, ready, valid, resp, last, i );
  input [9:0] len;
  output [9:0] i;
  input clk, n_rst, ready, valid, resp;
  output last;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102;

  DFFSR \i_reg[0]  ( .D(n99), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[0]) );
  DFFSR \i_reg[9]  ( .D(n98), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[9]) );
  DFFSR \i_reg[3]  ( .D(n102), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[3]) );
  DFFSR \i_reg[2]  ( .D(n101), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[2]) );
  DFFSR \i_reg[1]  ( .D(n100), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[1]) );
  DFFSR \i_reg[8]  ( .D(n97), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[8]) );
  DFFSR \i_reg[7]  ( .D(n96), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[7]) );
  DFFSR \i_reg[6]  ( .D(n95), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[6]) );
  DFFSR \i_reg[5]  ( .D(n94), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[5]) );
  DFFSR \i_reg[4]  ( .D(n93), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[4]) );
  fft_axi_counter_DW01_inc_0 add_31 ( .A(i), .SUM({N17, N16, N15, N14, N13, 
        N12, N11, N10, N9, N8}) );
  OAI21X1 U42 ( .A(n41), .B(n42), .C(n43), .Y(n93) );
  NAND2X1 U43 ( .A(N12), .B(n44), .Y(n43) );
  OAI21X1 U44 ( .A(n41), .B(n45), .C(n46), .Y(n94) );
  NAND2X1 U45 ( .A(N13), .B(n44), .Y(n46) );
  OAI21X1 U46 ( .A(n41), .B(n47), .C(n48), .Y(n95) );
  NAND2X1 U47 ( .A(N14), .B(n44), .Y(n48) );
  OAI21X1 U48 ( .A(n41), .B(n49), .C(n50), .Y(n96) );
  NAND2X1 U49 ( .A(N15), .B(n44), .Y(n50) );
  OAI21X1 U50 ( .A(n41), .B(n51), .C(n52), .Y(n97) );
  NAND2X1 U51 ( .A(N16), .B(n44), .Y(n52) );
  OAI21X1 U52 ( .A(n41), .B(n53), .C(n54), .Y(n98) );
  NAND2X1 U53 ( .A(N17), .B(n44), .Y(n54) );
  OAI21X1 U54 ( .A(n41), .B(n55), .C(n56), .Y(n99) );
  NAND2X1 U55 ( .A(N8), .B(n44), .Y(n56) );
  OAI21X1 U56 ( .A(n41), .B(n57), .C(n58), .Y(n100) );
  NAND2X1 U57 ( .A(N9), .B(n44), .Y(n58) );
  OAI21X1 U58 ( .A(n41), .B(n59), .C(n60), .Y(n101) );
  NAND2X1 U59 ( .A(N10), .B(n44), .Y(n60) );
  OAI21X1 U60 ( .A(n41), .B(n61), .C(n62), .Y(n102) );
  NAND2X1 U61 ( .A(N11), .B(n44), .Y(n62) );
  NOR2X1 U62 ( .A(n63), .B(n64), .Y(n44) );
  OAI21X1 U63 ( .A(resp), .B(n65), .C(ready), .Y(n41) );
  INVX1 U64 ( .A(valid), .Y(n65) );
  NOR2X1 U65 ( .A(n66), .B(n63), .Y(last) );
  NAND3X1 U66 ( .A(valid), .B(n67), .C(ready), .Y(n63) );
  INVX1 U67 ( .A(resp), .Y(n67) );
  INVX1 U68 ( .A(n64), .Y(n66) );
  OAI21X1 U69 ( .A(len[9]), .B(n53), .C(n68), .Y(n64) );
  OAI21X1 U70 ( .A(i[9]), .B(n69), .C(n70), .Y(n68) );
  OAI21X1 U71 ( .A(len[8]), .B(n51), .C(n71), .Y(n70) );
  OAI21X1 U72 ( .A(i[8]), .B(n72), .C(n73), .Y(n71) );
  AOI22X1 U73 ( .A(len[7]), .B(n74), .C(n75), .D(n49), .Y(n73) );
  INVX1 U74 ( .A(i[7]), .Y(n49) );
  INVX1 U75 ( .A(n76), .Y(n75) );
  NAND2X1 U76 ( .A(i[7]), .B(n76), .Y(n74) );
  OAI21X1 U77 ( .A(len[6]), .B(n47), .C(n77), .Y(n76) );
  OAI21X1 U78 ( .A(i[6]), .B(n78), .C(n79), .Y(n77) );
  AOI22X1 U79 ( .A(len[5]), .B(n80), .C(n81), .D(n45), .Y(n79) );
  INVX1 U80 ( .A(i[5]), .Y(n45) );
  INVX1 U81 ( .A(n82), .Y(n81) );
  NAND2X1 U82 ( .A(i[5]), .B(n82), .Y(n80) );
  OAI22X1 U83 ( .A(n83), .B(n84), .C(len[4]), .D(n42), .Y(n82) );
  OAI21X1 U84 ( .A(i[3]), .B(n85), .C(n86), .Y(n84) );
  OAI21X1 U85 ( .A(n87), .B(n61), .C(len[3]), .Y(n86) );
  INVX1 U86 ( .A(i[3]), .Y(n61) );
  INVX1 U87 ( .A(n85), .Y(n87) );
  OAI21X1 U88 ( .A(len[2]), .B(n59), .C(n88), .Y(n85) );
  OAI21X1 U89 ( .A(i[2]), .B(n89), .C(n90), .Y(n88) );
  AOI22X1 U90 ( .A(n91), .B(len[0]), .C(len[1]), .D(n57), .Y(n90) );
  INVX1 U91 ( .A(n92), .Y(n91) );
  OAI21X1 U92 ( .A(n57), .B(len[1]), .C(n55), .Y(n92) );
  INVX1 U93 ( .A(i[0]), .Y(n55) );
  INVX1 U94 ( .A(i[1]), .Y(n57) );
  INVX1 U95 ( .A(len[2]), .Y(n89) );
  INVX1 U96 ( .A(i[2]), .Y(n59) );
  AND2X1 U97 ( .A(n42), .B(len[4]), .Y(n83) );
  INVX1 U98 ( .A(i[4]), .Y(n42) );
  INVX1 U99 ( .A(len[6]), .Y(n78) );
  INVX1 U100 ( .A(i[6]), .Y(n47) );
  INVX1 U101 ( .A(len[8]), .Y(n72) );
  INVX1 U102 ( .A(i[8]), .Y(n51) );
  INVX1 U103 ( .A(len[9]), .Y(n69) );
  INVX1 U104 ( .A(i[9]), .Y(n53) );
endmodule

