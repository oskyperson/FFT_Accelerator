/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4
// Date      : Wed Apr 15 00:34:56 2026
/////////////////////////////////////////////////////////////


module fft_axi_counter_WRITE_OR_READ0_DW01_inc_0_DW01_inc_1 ( A, SUM );
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


module fft_axi_counter_WRITE_OR_READ0 ( clk, n_rst, len, ready, valid, resp, 
        last, i );
  input [9:0] len;
  output [9:0] i;
  input clk, n_rst, ready, valid, resp;
  output last;
  wire   N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120;
  wire   [9:0] down_count;

  DFFSR \down_count_reg[0]  ( .D(n90), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        down_count[0]) );
  DFFSR \down_count_reg[1]  ( .D(n89), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        down_count[1]) );
  DFFSR \down_count_reg[2]  ( .D(n88), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        down_count[2]) );
  DFFSR \down_count_reg[3]  ( .D(n87), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        down_count[3]) );
  DFFSR \down_count_reg[4]  ( .D(n86), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        down_count[4]) );
  DFFSR \down_count_reg[5]  ( .D(n85), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        down_count[5]) );
  DFFSR \down_count_reg[6]  ( .D(n84), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        down_count[6]) );
  DFFSR \down_count_reg[7]  ( .D(n83), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        down_count[7]) );
  DFFSR \down_count_reg[8]  ( .D(n82), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        down_count[8]) );
  DFFSR \down_count_reg[9]  ( .D(n81), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        down_count[9]) );
  DFFSR \up_count_reg[0]  ( .D(n111), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[0])
         );
  DFFSR \up_count_reg[1]  ( .D(n112), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[1])
         );
  DFFSR \up_count_reg[2]  ( .D(n113), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[2])
         );
  DFFSR \up_count_reg[3]  ( .D(n114), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[3])
         );
  DFFSR \up_count_reg[4]  ( .D(n115), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[4])
         );
  DFFSR \up_count_reg[5]  ( .D(n116), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[5])
         );
  DFFSR \up_count_reg[6]  ( .D(n117), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[6])
         );
  DFFSR \up_count_reg[7]  ( .D(n118), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[7])
         );
  DFFSR \up_count_reg[8]  ( .D(n119), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[8])
         );
  DFFSR \up_count_reg[9]  ( .D(n120), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[9])
         );
  fft_axi_counter_WRITE_OR_READ0_DW01_inc_0_DW01_inc_1 add_47 ( .A(i), .SUM({
        N30, N29, N28, N27, N26, N25, N24, N23, N22, N21}) );
  INVX2 U23 ( .A(n41), .Y(n22) );
  INVX1 U24 ( .A(n21), .Y(n111) );
  AOI22X1 U25 ( .A(N21), .B(n22), .C(i[0]), .D(n23), .Y(n21) );
  INVX1 U26 ( .A(n24), .Y(n112) );
  AOI22X1 U27 ( .A(N22), .B(n22), .C(i[1]), .D(n23), .Y(n24) );
  INVX1 U28 ( .A(n25), .Y(n113) );
  AOI22X1 U29 ( .A(N23), .B(n22), .C(i[2]), .D(n23), .Y(n25) );
  INVX1 U30 ( .A(n26), .Y(n114) );
  AOI22X1 U31 ( .A(N24), .B(n22), .C(i[3]), .D(n23), .Y(n26) );
  INVX1 U32 ( .A(n27), .Y(n115) );
  AOI22X1 U33 ( .A(N25), .B(n22), .C(i[4]), .D(n23), .Y(n27) );
  INVX1 U34 ( .A(n28), .Y(n116) );
  AOI22X1 U35 ( .A(N26), .B(n22), .C(i[5]), .D(n23), .Y(n28) );
  INVX1 U36 ( .A(n29), .Y(n117) );
  AOI22X1 U37 ( .A(N27), .B(n22), .C(i[6]), .D(n23), .Y(n29) );
  INVX1 U38 ( .A(n30), .Y(n118) );
  AOI22X1 U39 ( .A(N28), .B(n22), .C(i[7]), .D(n23), .Y(n30) );
  INVX1 U40 ( .A(n31), .Y(n119) );
  AOI22X1 U41 ( .A(N29), .B(n22), .C(i[8]), .D(n23), .Y(n31) );
  INVX1 U42 ( .A(n32), .Y(n120) );
  AOI22X1 U43 ( .A(N30), .B(n22), .C(i[9]), .D(n23), .Y(n32) );
  OAI21X1 U44 ( .A(n33), .B(n34), .C(n35), .Y(n90) );
  MUX2X1 U45 ( .B(n22), .A(n23), .S(down_count[0]), .Y(n35) );
  INVX1 U46 ( .A(n36), .Y(n23) );
  INVX1 U47 ( .A(len[0]), .Y(n34) );
  OAI21X1 U48 ( .A(n33), .B(n37), .C(n38), .Y(n89) );
  MUX2X1 U49 ( .B(n39), .A(n40), .S(down_count[1]), .Y(n38) );
  NOR2X1 U50 ( .A(down_count[0]), .B(n41), .Y(n39) );
  INVX1 U51 ( .A(len[1]), .Y(n37) );
  OAI21X1 U52 ( .A(n33), .B(n42), .C(n43), .Y(n88) );
  AOI22X1 U53 ( .A(down_count[2]), .B(n44), .C(n22), .D(n45), .Y(n43) );
  OAI21X1 U54 ( .A(n41), .B(n46), .C(n47), .Y(n44) );
  INVX1 U55 ( .A(n40), .Y(n47) );
  OAI21X1 U56 ( .A(n41), .B(n48), .C(n36), .Y(n40) );
  INVX1 U57 ( .A(len[2]), .Y(n42) );
  OAI21X1 U58 ( .A(n33), .B(n49), .C(n50), .Y(n87) );
  MUX2X1 U59 ( .B(n51), .A(n52), .S(down_count[3]), .Y(n50) );
  NOR2X1 U60 ( .A(n53), .B(n41), .Y(n51) );
  INVX1 U61 ( .A(len[3]), .Y(n49) );
  OAI21X1 U62 ( .A(n33), .B(n54), .C(n55), .Y(n86) );
  AOI22X1 U63 ( .A(down_count[4]), .B(n56), .C(n22), .D(n57), .Y(n55) );
  OAI21X1 U64 ( .A(n41), .B(n58), .C(n59), .Y(n56) );
  INVX1 U65 ( .A(n52), .Y(n59) );
  OAI21X1 U66 ( .A(n45), .B(n41), .C(n36), .Y(n52) );
  INVX1 U67 ( .A(len[4]), .Y(n54) );
  OAI21X1 U68 ( .A(n33), .B(n60), .C(n61), .Y(n85) );
  MUX2X1 U69 ( .B(n62), .A(n63), .S(down_count[5]), .Y(n61) );
  NOR2X1 U70 ( .A(n64), .B(n41), .Y(n62) );
  INVX1 U71 ( .A(len[5]), .Y(n60) );
  OAI21X1 U72 ( .A(n33), .B(n65), .C(n66), .Y(n84) );
  AOI22X1 U73 ( .A(down_count[6]), .B(n67), .C(n22), .D(n68), .Y(n66) );
  OAI21X1 U74 ( .A(n41), .B(n69), .C(n70), .Y(n67) );
  INVX1 U75 ( .A(n63), .Y(n70) );
  OAI21X1 U76 ( .A(n57), .B(n41), .C(n36), .Y(n63) );
  INVX1 U77 ( .A(len[6]), .Y(n65) );
  OAI21X1 U78 ( .A(n33), .B(n71), .C(n72), .Y(n83) );
  AOI21X1 U79 ( .A(down_count[7]), .B(n73), .C(n74), .Y(n72) );
  INVX1 U80 ( .A(len[7]), .Y(n71) );
  OAI21X1 U81 ( .A(n33), .B(n75), .C(n76), .Y(n82) );
  MUX2X1 U82 ( .B(n74), .A(n77), .S(down_count[8]), .Y(n76) );
  INVX1 U83 ( .A(n78), .Y(n74) );
  NAND3X1 U84 ( .A(n68), .B(n79), .C(n22), .Y(n78) );
  INVX1 U85 ( .A(len[8]), .Y(n75) );
  INVX1 U86 ( .A(n80), .Y(n33) );
  OAI21X1 U87 ( .A(n91), .B(n92), .C(n93), .Y(n81) );
  NAND2X1 U88 ( .A(len[9]), .B(n80), .Y(n93) );
  OAI21X1 U89 ( .A(n94), .B(n95), .C(valid), .Y(n80) );
  AOI21X1 U90 ( .A(down_count[8]), .B(n22), .C(n77), .Y(n91) );
  OAI21X1 U91 ( .A(n41), .B(n79), .C(n96), .Y(n77) );
  INVX1 U92 ( .A(n73), .Y(n96) );
  OAI21X1 U93 ( .A(n68), .B(n41), .C(n36), .Y(n73) );
  NAND2X1 U94 ( .A(valid), .B(n94), .Y(n36) );
  INVX1 U95 ( .A(n97), .Y(n68) );
  NAND2X1 U96 ( .A(n98), .B(n95), .Y(n41) );
  NAND3X1 U97 ( .A(n99), .B(n92), .C(n100), .Y(n95) );
  NOR2X1 U98 ( .A(down_count[7]), .B(n97), .Y(n100) );
  NAND3X1 U99 ( .A(n69), .B(n101), .C(n57), .Y(n97) );
  INVX1 U100 ( .A(n64), .Y(n57) );
  NAND3X1 U101 ( .A(n58), .B(n102), .C(n45), .Y(n64) );
  INVX1 U102 ( .A(n53), .Y(n45) );
  NAND3X1 U103 ( .A(n46), .B(n103), .C(n48), .Y(n53) );
  INVX1 U104 ( .A(down_count[0]), .Y(n48) );
  INVX1 U105 ( .A(down_count[1]), .Y(n46) );
  INVX1 U106 ( .A(down_count[4]), .Y(n102) );
  INVX1 U107 ( .A(down_count[3]), .Y(n58) );
  INVX1 U108 ( .A(down_count[6]), .Y(n101) );
  INVX1 U109 ( .A(down_count[5]), .Y(n69) );
  INVX1 U110 ( .A(down_count[9]), .Y(n92) );
  INVX1 U111 ( .A(down_count[8]), .Y(n99) );
  INVX1 U112 ( .A(n94), .Y(n98) );
  NOR2X1 U113 ( .A(n104), .B(n105), .Y(last) );
  NAND3X1 U114 ( .A(n106), .B(n103), .C(n107), .Y(n105) );
  NOR2X1 U115 ( .A(down_count[1]), .B(n94), .Y(n107) );
  NAND3X1 U116 ( .A(ready), .B(n108), .C(valid), .Y(n94) );
  INVX1 U117 ( .A(resp), .Y(n108) );
  INVX1 U118 ( .A(down_count[2]), .Y(n103) );
  NOR2X1 U119 ( .A(down_count[4]), .B(down_count[3]), .Y(n106) );
  NAND3X1 U120 ( .A(n109), .B(n79), .C(n110), .Y(n104) );
  NOR2X1 U121 ( .A(down_count[6]), .B(down_count[5]), .Y(n110) );
  INVX1 U122 ( .A(down_count[7]), .Y(n79) );
  NOR2X1 U123 ( .A(down_count[9]), .B(down_count[8]), .Y(n109) );
endmodule


module fft_axi_counter_WRITE_OR_READ1_DW01_inc_0 ( A, SUM );
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


module fft_axi_counter_WRITE_OR_READ1 ( clk, n_rst, len, ready, valid, resp, 
        last, i );
  input [9:0] len;
  output [9:0] i;
  input clk, n_rst, ready, valid, resp;
  output last;
  wire   N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121;
  wire   [9:0] down_count;

  DFFSR \down_count_reg[0]  ( .D(n89), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        down_count[0]) );
  DFFSR \down_count_reg[1]  ( .D(n88), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        down_count[1]) );
  DFFSR \down_count_reg[2]  ( .D(n87), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        down_count[2]) );
  DFFSR \down_count_reg[3]  ( .D(n86), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        down_count[3]) );
  DFFSR \down_count_reg[4]  ( .D(n85), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        down_count[4]) );
  DFFSR \down_count_reg[5]  ( .D(n84), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        down_count[5]) );
  DFFSR \down_count_reg[6]  ( .D(n83), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        down_count[6]) );
  DFFSR \down_count_reg[7]  ( .D(n82), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        down_count[7]) );
  DFFSR \down_count_reg[8]  ( .D(n81), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        down_count[8]) );
  DFFSR \down_count_reg[9]  ( .D(n80), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        down_count[9]) );
  DFFSR \up_count_reg[0]  ( .D(n112), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[0])
         );
  DFFSR \up_count_reg[1]  ( .D(n113), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[1])
         );
  DFFSR \up_count_reg[2]  ( .D(n114), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[2])
         );
  DFFSR \up_count_reg[3]  ( .D(n115), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[3])
         );
  DFFSR \up_count_reg[4]  ( .D(n116), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[4])
         );
  DFFSR \up_count_reg[5]  ( .D(n117), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[5])
         );
  DFFSR \up_count_reg[6]  ( .D(n118), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[6])
         );
  DFFSR \up_count_reg[7]  ( .D(n119), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[7])
         );
  DFFSR \up_count_reg[8]  ( .D(n120), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[8])
         );
  DFFSR \up_count_reg[9]  ( .D(n121), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[9])
         );
  fft_axi_counter_WRITE_OR_READ1_DW01_inc_0 add_47 ( .A(i), .SUM({N30, N29, 
        N28, N27, N26, N25, N24, N23, N22, N21}) );
  INVX2 U23 ( .A(n41), .Y(n22) );
  INVX1 U24 ( .A(n21), .Y(n112) );
  AOI22X1 U25 ( .A(N21), .B(n22), .C(i[0]), .D(n23), .Y(n21) );
  INVX1 U26 ( .A(n24), .Y(n113) );
  AOI22X1 U27 ( .A(N22), .B(n22), .C(i[1]), .D(n23), .Y(n24) );
  INVX1 U28 ( .A(n25), .Y(n114) );
  AOI22X1 U29 ( .A(N23), .B(n22), .C(i[2]), .D(n23), .Y(n25) );
  INVX1 U30 ( .A(n26), .Y(n115) );
  AOI22X1 U31 ( .A(N24), .B(n22), .C(i[3]), .D(n23), .Y(n26) );
  INVX1 U32 ( .A(n27), .Y(n116) );
  AOI22X1 U33 ( .A(N25), .B(n22), .C(i[4]), .D(n23), .Y(n27) );
  INVX1 U34 ( .A(n28), .Y(n117) );
  AOI22X1 U35 ( .A(N26), .B(n22), .C(i[5]), .D(n23), .Y(n28) );
  INVX1 U36 ( .A(n29), .Y(n118) );
  AOI22X1 U37 ( .A(N27), .B(n22), .C(i[6]), .D(n23), .Y(n29) );
  INVX1 U38 ( .A(n30), .Y(n119) );
  AOI22X1 U39 ( .A(N28), .B(n22), .C(i[7]), .D(n23), .Y(n30) );
  INVX1 U40 ( .A(n31), .Y(n120) );
  AOI22X1 U41 ( .A(N29), .B(n22), .C(i[8]), .D(n23), .Y(n31) );
  INVX1 U42 ( .A(n32), .Y(n121) );
  AOI22X1 U43 ( .A(N30), .B(n22), .C(i[9]), .D(n23), .Y(n32) );
  OAI21X1 U44 ( .A(n33), .B(n34), .C(n35), .Y(n89) );
  MUX2X1 U45 ( .B(n22), .A(n23), .S(down_count[0]), .Y(n35) );
  INVX1 U46 ( .A(n36), .Y(n23) );
  INVX1 U47 ( .A(len[0]), .Y(n34) );
  OAI21X1 U48 ( .A(n33), .B(n37), .C(n38), .Y(n88) );
  MUX2X1 U49 ( .B(n39), .A(n40), .S(down_count[1]), .Y(n38) );
  NOR2X1 U50 ( .A(down_count[0]), .B(n41), .Y(n39) );
  INVX1 U51 ( .A(len[1]), .Y(n37) );
  OAI21X1 U52 ( .A(n33), .B(n42), .C(n43), .Y(n87) );
  AOI22X1 U53 ( .A(down_count[2]), .B(n44), .C(n22), .D(n45), .Y(n43) );
  OAI21X1 U54 ( .A(n41), .B(n46), .C(n47), .Y(n44) );
  INVX1 U55 ( .A(n40), .Y(n47) );
  OAI21X1 U56 ( .A(n41), .B(n48), .C(n36), .Y(n40) );
  INVX1 U57 ( .A(len[2]), .Y(n42) );
  OAI21X1 U58 ( .A(n33), .B(n49), .C(n50), .Y(n86) );
  MUX2X1 U59 ( .B(n51), .A(n52), .S(down_count[3]), .Y(n50) );
  NOR2X1 U60 ( .A(n53), .B(n41), .Y(n51) );
  INVX1 U61 ( .A(len[3]), .Y(n49) );
  OAI21X1 U62 ( .A(n33), .B(n54), .C(n55), .Y(n85) );
  AOI22X1 U63 ( .A(down_count[4]), .B(n56), .C(n22), .D(n57), .Y(n55) );
  OAI21X1 U64 ( .A(n41), .B(n58), .C(n59), .Y(n56) );
  INVX1 U65 ( .A(n52), .Y(n59) );
  OAI21X1 U66 ( .A(n45), .B(n41), .C(n36), .Y(n52) );
  INVX1 U67 ( .A(len[4]), .Y(n54) );
  OAI21X1 U68 ( .A(n33), .B(n60), .C(n61), .Y(n84) );
  MUX2X1 U69 ( .B(n62), .A(n63), .S(down_count[5]), .Y(n61) );
  NOR2X1 U70 ( .A(n64), .B(n41), .Y(n62) );
  INVX1 U71 ( .A(len[5]), .Y(n60) );
  OAI21X1 U72 ( .A(n33), .B(n65), .C(n66), .Y(n83) );
  AOI22X1 U73 ( .A(down_count[6]), .B(n67), .C(n22), .D(n68), .Y(n66) );
  OAI21X1 U74 ( .A(n41), .B(n69), .C(n70), .Y(n67) );
  INVX1 U75 ( .A(n63), .Y(n70) );
  OAI21X1 U76 ( .A(n57), .B(n41), .C(n36), .Y(n63) );
  INVX1 U77 ( .A(len[6]), .Y(n65) );
  OAI21X1 U78 ( .A(n33), .B(n71), .C(n72), .Y(n82) );
  AOI21X1 U79 ( .A(down_count[7]), .B(n73), .C(n74), .Y(n72) );
  INVX1 U80 ( .A(len[7]), .Y(n71) );
  OAI21X1 U81 ( .A(n33), .B(n75), .C(n76), .Y(n81) );
  MUX2X1 U82 ( .B(n74), .A(n77), .S(down_count[8]), .Y(n76) );
  INVX1 U83 ( .A(n78), .Y(n74) );
  NAND3X1 U84 ( .A(n68), .B(n79), .C(n22), .Y(n78) );
  INVX1 U85 ( .A(len[8]), .Y(n75) );
  INVX1 U86 ( .A(n90), .Y(n33) );
  OAI21X1 U87 ( .A(n91), .B(n92), .C(n93), .Y(n80) );
  NAND2X1 U88 ( .A(len[9]), .B(n90), .Y(n93) );
  OAI21X1 U89 ( .A(n94), .B(n95), .C(ready), .Y(n90) );
  AOI21X1 U90 ( .A(down_count[8]), .B(n22), .C(n77), .Y(n91) );
  OAI21X1 U91 ( .A(n41), .B(n79), .C(n96), .Y(n77) );
  INVX1 U92 ( .A(n73), .Y(n96) );
  OAI21X1 U93 ( .A(n68), .B(n41), .C(n36), .Y(n73) );
  NAND2X1 U94 ( .A(ready), .B(n94), .Y(n36) );
  INVX1 U95 ( .A(n97), .Y(n68) );
  NAND2X1 U96 ( .A(n98), .B(n95), .Y(n41) );
  NAND3X1 U97 ( .A(n99), .B(n92), .C(n100), .Y(n95) );
  NOR2X1 U98 ( .A(down_count[7]), .B(n97), .Y(n100) );
  NAND3X1 U99 ( .A(n69), .B(n101), .C(n57), .Y(n97) );
  INVX1 U100 ( .A(n64), .Y(n57) );
  NAND3X1 U101 ( .A(n58), .B(n102), .C(n45), .Y(n64) );
  INVX1 U102 ( .A(n53), .Y(n45) );
  NAND3X1 U103 ( .A(n46), .B(n103), .C(n48), .Y(n53) );
  INVX1 U104 ( .A(down_count[0]), .Y(n48) );
  INVX1 U105 ( .A(down_count[2]), .Y(n103) );
  INVX1 U106 ( .A(down_count[6]), .Y(n101) );
  INVX1 U107 ( .A(down_count[5]), .Y(n69) );
  INVX1 U108 ( .A(down_count[9]), .Y(n92) );
  INVX1 U109 ( .A(down_count[8]), .Y(n99) );
  NOR2X1 U110 ( .A(n104), .B(n105), .Y(last) );
  NAND3X1 U111 ( .A(n98), .B(n46), .C(n106), .Y(n105) );
  NOR2X1 U112 ( .A(down_count[2]), .B(n107), .Y(n106) );
  NAND2X1 U113 ( .A(n58), .B(n102), .Y(n107) );
  INVX1 U114 ( .A(down_count[4]), .Y(n102) );
  INVX1 U115 ( .A(down_count[3]), .Y(n58) );
  INVX1 U116 ( .A(down_count[1]), .Y(n46) );
  INVX1 U117 ( .A(n94), .Y(n98) );
  NAND2X1 U118 ( .A(n108), .B(valid), .Y(n94) );
  NOR2X1 U119 ( .A(resp), .B(n109), .Y(n108) );
  INVX1 U120 ( .A(ready), .Y(n109) );
  NAND3X1 U121 ( .A(n110), .B(n79), .C(n111), .Y(n104) );
  NOR2X1 U122 ( .A(down_count[6]), .B(down_count[5]), .Y(n111) );
  INVX1 U123 ( .A(down_count[7]), .Y(n79) );
  NOR2X1 U124 ( .A(down_count[9]), .B(down_count[8]), .Y(n110) );
endmodule


module fft_axi_manager ( clk, n_rst, awready, awaddr, awlen, awvalid, wready, 
        wdata, wstrb, wlast, wvalid, bresp, bvalid, bready, arready, araddr, 
        arlen, arvalid, rlast, rvalid, rdata, rready, rresp, .config_reg({
        \config_reg[7][31] , \config_reg[7][30] , \config_reg[7][29] , 
        \config_reg[7][28] , \config_reg[7][27] , \config_reg[7][26] , 
        \config_reg[7][25] , \config_reg[7][24] , \config_reg[7][23] , 
        \config_reg[7][22] , \config_reg[7][21] , \config_reg[7][20] , 
        \config_reg[7][19] , \config_reg[7][18] , \config_reg[7][17] , 
        \config_reg[7][16] , \config_reg[7][15] , \config_reg[7][14] , 
        \config_reg[7][13] , \config_reg[7][12] , \config_reg[7][11] , 
        \config_reg[7][10] , \config_reg[7][9] , \config_reg[7][8] , 
        \config_reg[7][7] , \config_reg[7][6] , \config_reg[7][5] , 
        \config_reg[7][4] , \config_reg[7][3] , \config_reg[7][2] , 
        \config_reg[7][1] , \config_reg[7][0] , \config_reg[6][31] , 
        \config_reg[6][30] , \config_reg[6][29] , \config_reg[6][28] , 
        \config_reg[6][27] , \config_reg[6][26] , \config_reg[6][25] , 
        \config_reg[6][24] , \config_reg[6][23] , \config_reg[6][22] , 
        \config_reg[6][21] , \config_reg[6][20] , \config_reg[6][19] , 
        \config_reg[6][18] , \config_reg[6][17] , \config_reg[6][16] , 
        \config_reg[6][15] , \config_reg[6][14] , \config_reg[6][13] , 
        \config_reg[6][12] , \config_reg[6][11] , \config_reg[6][10] , 
        \config_reg[6][9] , \config_reg[6][8] , \config_reg[6][7] , 
        \config_reg[6][6] , \config_reg[6][5] , \config_reg[6][4] , 
        \config_reg[6][3] , \config_reg[6][2] , \config_reg[6][1] , 
        \config_reg[6][0] , \config_reg[5][31] , \config_reg[5][30] , 
        \config_reg[5][29] , \config_reg[5][28] , \config_reg[5][27] , 
        \config_reg[5][26] , \config_reg[5][25] , \config_reg[5][24] , 
        \config_reg[5][23] , \config_reg[5][22] , \config_reg[5][21] , 
        \config_reg[5][20] , \config_reg[5][19] , \config_reg[5][18] , 
        \config_reg[5][17] , \config_reg[5][16] , \config_reg[5][15] , 
        \config_reg[5][14] , \config_reg[5][13] , \config_reg[5][12] , 
        \config_reg[5][11] , \config_reg[5][10] , \config_reg[5][9] , 
        \config_reg[5][8] , \config_reg[5][7] , \config_reg[5][6] , 
        \config_reg[5][5] , \config_reg[5][4] , \config_reg[5][3] , 
        \config_reg[5][2] , \config_reg[5][1] , \config_reg[5][0] , 
        \config_reg[4][31] , \config_reg[4][30] , \config_reg[4][29] , 
        \config_reg[4][28] , \config_reg[4][27] , \config_reg[4][26] , 
        \config_reg[4][25] , \config_reg[4][24] , \config_reg[4][23] , 
        \config_reg[4][22] , \config_reg[4][21] , \config_reg[4][20] , 
        \config_reg[4][19] , \config_reg[4][18] , \config_reg[4][17] , 
        \config_reg[4][16] , \config_reg[4][15] , \config_reg[4][14] , 
        \config_reg[4][13] , \config_reg[4][12] , \config_reg[4][11] , 
        \config_reg[4][10] , \config_reg[4][9] , \config_reg[4][8] , 
        \config_reg[4][7] , \config_reg[4][6] , \config_reg[4][5] , 
        \config_reg[4][4] , \config_reg[4][3] , \config_reg[4][2] , 
        \config_reg[4][1] , \config_reg[4][0] , \config_reg[3][31] , 
        \config_reg[3][30] , \config_reg[3][29] , \config_reg[3][28] , 
        \config_reg[3][27] , \config_reg[3][26] , \config_reg[3][25] , 
        \config_reg[3][24] , \config_reg[3][23] , \config_reg[3][22] , 
        \config_reg[3][21] , \config_reg[3][20] , \config_reg[3][19] , 
        \config_reg[3][18] , \config_reg[3][17] , \config_reg[3][16] , 
        \config_reg[3][15] , \config_reg[3][14] , \config_reg[3][13] , 
        \config_reg[3][12] , \config_reg[3][11] , \config_reg[3][10] , 
        \config_reg[3][9] , \config_reg[3][8] , \config_reg[3][7] , 
        \config_reg[3][6] , \config_reg[3][5] , \config_reg[3][4] , 
        \config_reg[3][3] , \config_reg[3][2] , \config_reg[3][1] , 
        \config_reg[3][0] , \config_reg[2][31] , \config_reg[2][30] , 
        \config_reg[2][29] , \config_reg[2][28] , \config_reg[2][27] , 
        \config_reg[2][26] , \config_reg[2][25] , \config_reg[2][24] , 
        \config_reg[2][23] , \config_reg[2][22] , \config_reg[2][21] , 
        \config_reg[2][20] , \config_reg[2][19] , \config_reg[2][18] , 
        \config_reg[2][17] , \config_reg[2][16] , \config_reg[2][15] , 
        \config_reg[2][14] , \config_reg[2][13] , \config_reg[2][12] , 
        \config_reg[2][11] , \config_reg[2][10] , \config_reg[2][9] , 
        \config_reg[2][8] , \config_reg[2][7] , \config_reg[2][6] , 
        \config_reg[2][5] , \config_reg[2][4] , \config_reg[2][3] , 
        \config_reg[2][2] , \config_reg[2][1] , \config_reg[2][0] , 
        \config_reg[1][31] , \config_reg[1][30] , \config_reg[1][29] , 
        \config_reg[1][28] , \config_reg[1][27] , \config_reg[1][26] , 
        \config_reg[1][25] , \config_reg[1][24] , \config_reg[1][23] , 
        \config_reg[1][22] , \config_reg[1][21] , \config_reg[1][20] , 
        \config_reg[1][19] , \config_reg[1][18] , \config_reg[1][17] , 
        \config_reg[1][16] , \config_reg[1][15] , \config_reg[1][14] , 
        \config_reg[1][13] , \config_reg[1][12] , \config_reg[1][11] , 
        \config_reg[1][10] , \config_reg[1][9] , \config_reg[1][8] , 
        \config_reg[1][7] , \config_reg[1][6] , \config_reg[1][5] , 
        \config_reg[1][4] , \config_reg[1][3] , \config_reg[1][2] , 
        \config_reg[1][1] , \config_reg[1][0] , \config_reg[0][31] , 
        \config_reg[0][30] , \config_reg[0][29] , \config_reg[0][28] , 
        \config_reg[0][27] , \config_reg[0][26] , \config_reg[0][25] , 
        \config_reg[0][24] , \config_reg[0][23] , \config_reg[0][22] , 
        \config_reg[0][21] , \config_reg[0][20] , \config_reg[0][19] , 
        \config_reg[0][18] , \config_reg[0][17] , \config_reg[0][16] , 
        \config_reg[0][15] , \config_reg[0][14] , \config_reg[0][13] , 
        \config_reg[0][12] , \config_reg[0][11] , \config_reg[0][10] , 
        \config_reg[0][9] , \config_reg[0][8] , \config_reg[0][7] , 
        \config_reg[0][6] , \config_reg[0][5] , \config_reg[0][4] , 
        \config_reg[0][3] , \config_reg[0][2] , \config_reg[0][1] , 
        \config_reg[0][0] }), data_out, out_valid, data_in, in_valid, fft_done
 );
  output [10:0] awaddr;
  output [9:0] awlen;
  output [31:0] wdata;
  output [1:0] wstrb;
  output [10:0] araddr;
  output [9:0] arlen;
  input [31:0] rdata;
  input [31:0] data_out;
  output [31:0] data_in;
  input clk, n_rst, awready, wready, bresp, bvalid, arready, rlast, rvalid,
         rresp, \config_reg[7][31] , \config_reg[7][30] , \config_reg[7][29] ,
         \config_reg[7][28] , \config_reg[7][27] , \config_reg[7][26] ,
         \config_reg[7][25] , \config_reg[7][24] , \config_reg[7][23] ,
         \config_reg[7][22] , \config_reg[7][21] , \config_reg[7][20] ,
         \config_reg[7][19] , \config_reg[7][18] , \config_reg[7][17] ,
         \config_reg[7][16] , \config_reg[7][15] , \config_reg[7][14] ,
         \config_reg[7][13] , \config_reg[7][12] , \config_reg[7][11] ,
         \config_reg[7][10] , \config_reg[7][9] , \config_reg[7][8] ,
         \config_reg[7][7] , \config_reg[7][6] , \config_reg[7][5] ,
         \config_reg[7][4] , \config_reg[7][3] , \config_reg[7][2] ,
         \config_reg[7][1] , \config_reg[7][0] , \config_reg[6][31] ,
         \config_reg[6][30] , \config_reg[6][29] , \config_reg[6][28] ,
         \config_reg[6][27] , \config_reg[6][26] , \config_reg[6][25] ,
         \config_reg[6][24] , \config_reg[6][23] , \config_reg[6][22] ,
         \config_reg[6][21] , \config_reg[6][20] , \config_reg[6][19] ,
         \config_reg[6][18] , \config_reg[6][17] , \config_reg[6][16] ,
         \config_reg[6][15] , \config_reg[6][14] , \config_reg[6][13] ,
         \config_reg[6][12] , \config_reg[6][11] , \config_reg[6][10] ,
         \config_reg[6][9] , \config_reg[6][8] , \config_reg[6][7] ,
         \config_reg[6][6] , \config_reg[6][5] , \config_reg[6][4] ,
         \config_reg[6][3] , \config_reg[6][2] , \config_reg[6][1] ,
         \config_reg[6][0] , \config_reg[5][31] , \config_reg[5][30] ,
         \config_reg[5][29] , \config_reg[5][28] , \config_reg[5][27] ,
         \config_reg[5][26] , \config_reg[5][25] , \config_reg[5][24] ,
         \config_reg[5][23] , \config_reg[5][22] , \config_reg[5][21] ,
         \config_reg[5][20] , \config_reg[5][19] , \config_reg[5][18] ,
         \config_reg[5][17] , \config_reg[5][16] , \config_reg[5][15] ,
         \config_reg[5][14] , \config_reg[5][13] , \config_reg[5][12] ,
         \config_reg[5][11] , \config_reg[5][10] , \config_reg[5][9] ,
         \config_reg[5][8] , \config_reg[5][7] , \config_reg[5][6] ,
         \config_reg[5][5] , \config_reg[5][4] , \config_reg[5][3] ,
         \config_reg[5][2] , \config_reg[5][1] , \config_reg[5][0] ,
         \config_reg[4][31] , \config_reg[4][30] , \config_reg[4][29] ,
         \config_reg[4][28] , \config_reg[4][27] , \config_reg[4][26] ,
         \config_reg[4][25] , \config_reg[4][24] , \config_reg[4][23] ,
         \config_reg[4][22] , \config_reg[4][21] , \config_reg[4][20] ,
         \config_reg[4][19] , \config_reg[4][18] , \config_reg[4][17] ,
         \config_reg[4][16] , \config_reg[4][15] , \config_reg[4][14] ,
         \config_reg[4][13] , \config_reg[4][12] , \config_reg[4][11] ,
         \config_reg[4][10] , \config_reg[4][9] , \config_reg[4][8] ,
         \config_reg[4][7] , \config_reg[4][6] , \config_reg[4][5] ,
         \config_reg[4][4] , \config_reg[4][3] , \config_reg[4][2] ,
         \config_reg[4][1] , \config_reg[4][0] , \config_reg[3][31] ,
         \config_reg[3][30] , \config_reg[3][29] , \config_reg[3][28] ,
         \config_reg[3][27] , \config_reg[3][26] , \config_reg[3][25] ,
         \config_reg[3][24] , \config_reg[3][23] , \config_reg[3][22] ,
         \config_reg[3][21] , \config_reg[3][20] , \config_reg[3][19] ,
         \config_reg[3][18] , \config_reg[3][17] , \config_reg[3][16] ,
         \config_reg[3][15] , \config_reg[3][14] , \config_reg[3][13] ,
         \config_reg[3][12] , \config_reg[3][11] , \config_reg[3][10] ,
         \config_reg[3][9] , \config_reg[3][8] , \config_reg[3][7] ,
         \config_reg[3][6] , \config_reg[3][5] , \config_reg[3][4] ,
         \config_reg[3][3] , \config_reg[3][2] , \config_reg[3][1] ,
         \config_reg[3][0] , \config_reg[2][31] , \config_reg[2][30] ,
         \config_reg[2][29] , \config_reg[2][28] , \config_reg[2][27] ,
         \config_reg[2][26] , \config_reg[2][25] , \config_reg[2][24] ,
         \config_reg[2][23] , \config_reg[2][22] , \config_reg[2][21] ,
         \config_reg[2][20] , \config_reg[2][19] , \config_reg[2][18] ,
         \config_reg[2][17] , \config_reg[2][16] , \config_reg[2][15] ,
         \config_reg[2][14] , \config_reg[2][13] , \config_reg[2][12] ,
         \config_reg[2][11] , \config_reg[2][10] , \config_reg[2][9] ,
         \config_reg[2][8] , \config_reg[2][7] , \config_reg[2][6] ,
         \config_reg[2][5] , \config_reg[2][4] , \config_reg[2][3] ,
         \config_reg[2][2] , \config_reg[2][1] , \config_reg[2][0] ,
         \config_reg[1][31] , \config_reg[1][30] , \config_reg[1][29] ,
         \config_reg[1][28] , \config_reg[1][27] , \config_reg[1][26] ,
         \config_reg[1][25] , \config_reg[1][24] , \config_reg[1][23] ,
         \config_reg[1][22] , \config_reg[1][21] , \config_reg[1][20] ,
         \config_reg[1][19] , \config_reg[1][18] , \config_reg[1][17] ,
         \config_reg[1][16] , \config_reg[1][15] , \config_reg[1][14] ,
         \config_reg[1][13] , \config_reg[1][12] , \config_reg[1][11] ,
         \config_reg[1][10] , \config_reg[1][9] , \config_reg[1][8] ,
         \config_reg[1][7] , \config_reg[1][6] , \config_reg[1][5] ,
         \config_reg[1][4] , \config_reg[1][3] , \config_reg[1][2] ,
         \config_reg[1][1] , \config_reg[1][0] , \config_reg[0][31] ,
         \config_reg[0][30] , \config_reg[0][29] , \config_reg[0][28] ,
         \config_reg[0][27] , \config_reg[0][26] , \config_reg[0][25] ,
         \config_reg[0][24] , \config_reg[0][23] , \config_reg[0][22] ,
         \config_reg[0][21] , \config_reg[0][20] , \config_reg[0][19] ,
         \config_reg[0][18] , \config_reg[0][17] , \config_reg[0][16] ,
         \config_reg[0][15] , \config_reg[0][14] , \config_reg[0][13] ,
         \config_reg[0][12] , \config_reg[0][11] , \config_reg[0][10] ,
         \config_reg[0][9] , \config_reg[0][8] , \config_reg[0][7] ,
         \config_reg[0][6] , \config_reg[0][5] , \config_reg[0][4] ,
         \config_reg[0][3] , \config_reg[0][2] , \config_reg[0][1] ,
         \config_reg[0][0] , out_valid, fft_done;
  output awvalid, wlast, wvalid, bready, arvalid, rready, in_valid;
  wire   rcounter_last, N40, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47;
  wire   [1:0] rstate;
  wire   [1:0] next_rstate;
  wire   [1:0] wstate;
  wire   [1:0] next_wstate;
  assign awaddr[10] = \config_reg[3][10] ;
  assign awaddr[9] = \config_reg[3][9] ;
  assign awaddr[8] = \config_reg[3][8] ;
  assign awaddr[7] = \config_reg[3][7] ;
  assign awaddr[6] = \config_reg[3][6] ;
  assign awaddr[5] = \config_reg[3][5] ;
  assign awaddr[4] = \config_reg[3][4] ;
  assign awaddr[3] = \config_reg[3][3] ;
  assign awaddr[2] = \config_reg[3][2] ;
  assign awaddr[1] = \config_reg[3][1] ;
  assign awaddr[0] = \config_reg[3][0] ;
  assign awlen[9] = \config_reg[4][9] ;
  assign awlen[8] = \config_reg[4][8] ;
  assign awlen[7] = \config_reg[4][7] ;
  assign awlen[6] = \config_reg[4][6] ;
  assign awlen[5] = \config_reg[4][5] ;
  assign awlen[4] = \config_reg[4][4] ;
  assign awlen[3] = \config_reg[4][3] ;
  assign awlen[2] = \config_reg[4][2] ;
  assign awlen[1] = \config_reg[4][1] ;
  assign awlen[0] = \config_reg[4][0] ;
  assign wdata[31] = data_out[31];
  assign wdata[30] = data_out[30];
  assign wdata[29] = data_out[29];
  assign wdata[28] = data_out[28];
  assign wdata[27] = data_out[27];
  assign wdata[26] = data_out[26];
  assign wdata[25] = data_out[25];
  assign wdata[24] = data_out[24];
  assign wdata[23] = data_out[23];
  assign wdata[22] = data_out[22];
  assign wdata[21] = data_out[21];
  assign wdata[20] = data_out[20];
  assign wdata[19] = data_out[19];
  assign wdata[18] = data_out[18];
  assign wdata[17] = data_out[17];
  assign wdata[16] = data_out[16];
  assign wdata[15] = data_out[15];
  assign wdata[14] = data_out[14];
  assign wdata[13] = data_out[13];
  assign wdata[12] = data_out[12];
  assign wdata[11] = data_out[11];
  assign wdata[10] = data_out[10];
  assign wdata[9] = data_out[9];
  assign wdata[8] = data_out[8];
  assign wdata[7] = data_out[7];
  assign wdata[6] = data_out[6];
  assign wdata[5] = data_out[5];
  assign wdata[4] = data_out[4];
  assign wdata[3] = data_out[3];
  assign wdata[2] = data_out[2];
  assign wdata[1] = data_out[1];
  assign wdata[0] = data_out[0];
  assign wstrb[1] = \config_reg[5][1] ;
  assign wstrb[0] = \config_reg[5][0] ;
  assign araddr[10] = \config_reg[1][10] ;
  assign araddr[9] = \config_reg[1][9] ;
  assign araddr[8] = \config_reg[1][8] ;
  assign araddr[7] = \config_reg[1][7] ;
  assign araddr[6] = \config_reg[1][6] ;
  assign araddr[5] = \config_reg[1][5] ;
  assign araddr[4] = \config_reg[1][4] ;
  assign araddr[3] = \config_reg[1][3] ;
  assign araddr[2] = \config_reg[1][2] ;
  assign araddr[1] = \config_reg[1][1] ;
  assign araddr[0] = \config_reg[1][0] ;
  assign arlen[9] = \config_reg[2][9] ;
  assign arlen[8] = \config_reg[2][8] ;
  assign arlen[7] = \config_reg[2][7] ;
  assign arlen[6] = \config_reg[2][6] ;
  assign arlen[5] = \config_reg[2][5] ;
  assign arlen[4] = \config_reg[2][4] ;
  assign arlen[3] = \config_reg[2][3] ;
  assign arlen[2] = \config_reg[2][2] ;
  assign arlen[1] = \config_reg[2][1] ;
  assign arlen[0] = \config_reg[2][0] ;
  assign data_in[31] = rdata[31];
  assign data_in[30] = rdata[30];
  assign data_in[29] = rdata[29];
  assign data_in[28] = rdata[28];
  assign data_in[27] = rdata[27];
  assign data_in[26] = rdata[26];
  assign data_in[25] = rdata[25];
  assign data_in[24] = rdata[24];
  assign data_in[23] = rdata[23];
  assign data_in[22] = rdata[22];
  assign data_in[21] = rdata[21];
  assign data_in[20] = rdata[20];
  assign data_in[19] = rdata[19];
  assign data_in[18] = rdata[18];
  assign data_in[17] = rdata[17];
  assign data_in[16] = rdata[16];
  assign data_in[15] = rdata[15];
  assign data_in[14] = rdata[14];
  assign data_in[13] = rdata[13];
  assign data_in[12] = rdata[12];
  assign data_in[11] = rdata[11];
  assign data_in[10] = rdata[10];
  assign data_in[9] = rdata[9];
  assign data_in[8] = rdata[8];
  assign data_in[7] = rdata[7];
  assign data_in[6] = rdata[6];
  assign data_in[5] = rdata[5];
  assign data_in[4] = rdata[4];
  assign data_in[3] = rdata[3];
  assign data_in[2] = rdata[2];
  assign data_in[1] = rdata[1];
  assign data_in[0] = rdata[0];
  assign bready = N40;

  DFFSR \rstate_reg[0]  ( .D(next_rstate[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(rstate[0]) );
  DFFSR \rstate_reg[1]  ( .D(next_rstate[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(rstate[1]) );
  DFFSR \wstate_reg[0]  ( .D(next_wstate[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(wstate[0]) );
  DFFSR \wstate_reg[1]  ( .D(next_wstate[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(wstate[1]) );
  fft_axi_counter_WRITE_OR_READ0 read_counter ( .clk(clk), .n_rst(n_rst), 
        .len(arlen), .ready(rready), .valid(rvalid), .resp(rresp), .last(
        rcounter_last) );
  fft_axi_counter_WRITE_OR_READ1 write_counter ( .clk(clk), .n_rst(n_rst), 
        .len(awlen), .ready(wready), .valid(wvalid), .resp(bresp), .last(wlast) );
  AND2X1 U37 ( .A(n28), .B(out_valid), .Y(wvalid) );
  OAI21X1 U38 ( .A(bvalid), .B(n29), .C(n30), .Y(next_wstate[1]) );
  AOI21X1 U39 ( .A(awready), .B(awvalid), .C(n28), .Y(n30) );
  NAND3X1 U40 ( .A(n31), .B(n32), .C(n33), .Y(next_wstate[0]) );
  AOI22X1 U41 ( .A(N40), .B(n34), .C(awvalid), .D(n35), .Y(n33) );
  INVX1 U42 ( .A(awready), .Y(n35) );
  INVX1 U43 ( .A(bvalid), .Y(n34) );
  NAND3X1 U44 ( .A(\config_reg[6][0] ), .B(out_valid), .C(n36), .Y(n32) );
  NOR2X1 U45 ( .A(wstate[1]), .B(wstate[0]), .Y(n36) );
  NAND3X1 U46 ( .A(wlast), .B(n28), .C(wready), .Y(n31) );
  NOR2X1 U47 ( .A(n29), .B(wstate[0]), .Y(n28) );
  OAI21X1 U48 ( .A(n37), .B(n38), .C(n39), .Y(next_rstate[1]) );
  OAI21X1 U49 ( .A(n40), .B(n41), .C(rready), .Y(n39) );
  OAI21X1 U50 ( .A(rlast), .B(rcounter_last), .C(n42), .Y(n41) );
  INVX1 U51 ( .A(arvalid), .Y(n37) );
  OAI21X1 U52 ( .A(n43), .B(n42), .C(n44), .Y(next_rstate[0]) );
  AOI22X1 U53 ( .A(n45), .B(n46), .C(arvalid), .D(n38), .Y(n44) );
  INVX1 U54 ( .A(arready), .Y(n38) );
  NOR2X1 U55 ( .A(rstate[1]), .B(rstate[0]), .Y(n46) );
  AND2X1 U56 ( .A(fft_done), .B(\config_reg[0][0] ), .Y(n45) );
  INVX1 U57 ( .A(rresp), .Y(n42) );
  INVX1 U58 ( .A(n43), .Y(rready) );
  NOR2X1 U59 ( .A(n40), .B(n43), .Y(in_valid) );
  NAND2X1 U60 ( .A(rstate[1]), .B(n47), .Y(n43) );
  INVX1 U61 ( .A(rvalid), .Y(n40) );
  AND2X1 U62 ( .A(wstate[0]), .B(n29), .Y(awvalid) );
  INVX1 U63 ( .A(wstate[1]), .Y(n29) );
  NOR2X1 U64 ( .A(n47), .B(rstate[1]), .Y(arvalid) );
  INVX1 U65 ( .A(rstate[0]), .Y(n47) );
  AND2X1 U66 ( .A(wstate[0]), .B(wstate[1]), .Y(N40) );
endmodule

