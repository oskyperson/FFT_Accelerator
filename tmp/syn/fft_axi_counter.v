/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4
// Date      : Fri Apr 10 12:16:47 2026
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
  wire   N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180;
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
  DFFSR \up_count_reg[0]  ( .D(n171), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[0])
         );
  DFFSR \up_count_reg[1]  ( .D(n172), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[1])
         );
  DFFSR \up_count_reg[2]  ( .D(n173), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[2])
         );
  DFFSR \up_count_reg[3]  ( .D(n174), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[3])
         );
  DFFSR \up_count_reg[4]  ( .D(n175), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[4])
         );
  DFFSR \up_count_reg[5]  ( .D(n176), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[5])
         );
  DFFSR \up_count_reg[6]  ( .D(n177), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[6])
         );
  DFFSR \up_count_reg[7]  ( .D(n178), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[7])
         );
  DFFSR \up_count_reg[8]  ( .D(n179), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[8])
         );
  DFFSR \up_count_reg[9]  ( .D(n180), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[9])
         );
  fft_axi_counter_DW01_inc_0 add_47 ( .A(i), .SUM({N30, N29, N28, N27, N26, 
        N25, N24, N23, N22, N21}) );
  INVX2 U93 ( .A(n110), .Y(n91) );
  INVX1 U94 ( .A(n90), .Y(n171) );
  AOI22X1 U95 ( .A(N21), .B(n91), .C(i[0]), .D(n92), .Y(n90) );
  INVX1 U96 ( .A(n93), .Y(n172) );
  AOI22X1 U97 ( .A(N22), .B(n91), .C(i[1]), .D(n92), .Y(n93) );
  INVX1 U98 ( .A(n94), .Y(n173) );
  AOI22X1 U99 ( .A(N23), .B(n91), .C(i[2]), .D(n92), .Y(n94) );
  INVX1 U100 ( .A(n95), .Y(n174) );
  AOI22X1 U101 ( .A(N24), .B(n91), .C(i[3]), .D(n92), .Y(n95) );
  INVX1 U102 ( .A(n96), .Y(n175) );
  AOI22X1 U103 ( .A(N25), .B(n91), .C(i[4]), .D(n92), .Y(n96) );
  INVX1 U104 ( .A(n97), .Y(n176) );
  AOI22X1 U105 ( .A(N26), .B(n91), .C(i[5]), .D(n92), .Y(n97) );
  INVX1 U106 ( .A(n98), .Y(n177) );
  AOI22X1 U107 ( .A(N27), .B(n91), .C(i[6]), .D(n92), .Y(n98) );
  INVX1 U108 ( .A(n99), .Y(n178) );
  AOI22X1 U109 ( .A(N28), .B(n91), .C(i[7]), .D(n92), .Y(n99) );
  INVX1 U110 ( .A(n100), .Y(n179) );
  AOI22X1 U111 ( .A(N29), .B(n91), .C(i[8]), .D(n92), .Y(n100) );
  INVX1 U112 ( .A(n101), .Y(n180) );
  AOI22X1 U113 ( .A(N30), .B(n91), .C(i[9]), .D(n92), .Y(n101) );
  OAI21X1 U114 ( .A(n102), .B(n103), .C(n104), .Y(n89) );
  MUX2X1 U115 ( .B(n91), .A(n92), .S(down_count[0]), .Y(n104) );
  INVX1 U116 ( .A(n105), .Y(n92) );
  INVX1 U117 ( .A(len[0]), .Y(n103) );
  OAI21X1 U118 ( .A(n102), .B(n106), .C(n107), .Y(n88) );
  MUX2X1 U119 ( .B(n108), .A(n109), .S(down_count[1]), .Y(n107) );
  NOR2X1 U120 ( .A(down_count[0]), .B(n110), .Y(n108) );
  INVX1 U121 ( .A(len[1]), .Y(n106) );
  OAI21X1 U122 ( .A(n102), .B(n111), .C(n112), .Y(n87) );
  AOI22X1 U123 ( .A(down_count[2]), .B(n113), .C(n91), .D(n114), .Y(n112) );
  OAI21X1 U124 ( .A(n110), .B(n115), .C(n116), .Y(n113) );
  INVX1 U125 ( .A(n109), .Y(n116) );
  OAI21X1 U126 ( .A(n110), .B(n117), .C(n105), .Y(n109) );
  INVX1 U127 ( .A(len[2]), .Y(n111) );
  OAI21X1 U128 ( .A(n102), .B(n118), .C(n119), .Y(n86) );
  MUX2X1 U129 ( .B(n120), .A(n121), .S(down_count[3]), .Y(n119) );
  NOR2X1 U130 ( .A(n122), .B(n110), .Y(n120) );
  INVX1 U131 ( .A(len[3]), .Y(n118) );
  OAI21X1 U132 ( .A(n102), .B(n123), .C(n124), .Y(n85) );
  AOI22X1 U133 ( .A(down_count[4]), .B(n125), .C(n91), .D(n126), .Y(n124) );
  OAI21X1 U134 ( .A(n110), .B(n127), .C(n128), .Y(n125) );
  INVX1 U135 ( .A(n121), .Y(n128) );
  OAI21X1 U136 ( .A(n114), .B(n110), .C(n105), .Y(n121) );
  INVX1 U137 ( .A(len[4]), .Y(n123) );
  OAI21X1 U138 ( .A(n102), .B(n129), .C(n130), .Y(n84) );
  MUX2X1 U139 ( .B(n131), .A(n132), .S(down_count[5]), .Y(n130) );
  NOR2X1 U140 ( .A(n133), .B(n110), .Y(n131) );
  INVX1 U141 ( .A(len[5]), .Y(n129) );
  OAI21X1 U142 ( .A(n102), .B(n134), .C(n135), .Y(n83) );
  AOI22X1 U143 ( .A(down_count[6]), .B(n136), .C(n91), .D(n137), .Y(n135) );
  OAI21X1 U144 ( .A(n110), .B(n138), .C(n139), .Y(n136) );
  INVX1 U145 ( .A(n132), .Y(n139) );
  OAI21X1 U146 ( .A(n126), .B(n110), .C(n105), .Y(n132) );
  INVX1 U147 ( .A(len[6]), .Y(n134) );
  OAI21X1 U148 ( .A(n102), .B(n140), .C(n141), .Y(n82) );
  AOI21X1 U149 ( .A(down_count[7]), .B(n142), .C(n143), .Y(n141) );
  INVX1 U150 ( .A(len[7]), .Y(n140) );
  OAI21X1 U151 ( .A(n102), .B(n144), .C(n145), .Y(n81) );
  MUX2X1 U152 ( .B(n143), .A(n146), .S(down_count[8]), .Y(n145) );
  INVX1 U153 ( .A(n147), .Y(n143) );
  NAND3X1 U154 ( .A(n137), .B(n148), .C(n91), .Y(n147) );
  INVX1 U155 ( .A(len[8]), .Y(n144) );
  INVX1 U156 ( .A(n149), .Y(n102) );
  OAI21X1 U157 ( .A(n150), .B(n151), .C(n152), .Y(n80) );
  NAND2X1 U158 ( .A(len[9]), .B(n149), .Y(n152) );
  OAI21X1 U159 ( .A(n153), .B(n154), .C(ready), .Y(n149) );
  AOI21X1 U160 ( .A(down_count[8]), .B(n91), .C(n146), .Y(n150) );
  OAI21X1 U161 ( .A(n110), .B(n148), .C(n155), .Y(n146) );
  INVX1 U162 ( .A(n142), .Y(n155) );
  OAI21X1 U163 ( .A(n137), .B(n110), .C(n105), .Y(n142) );
  NAND2X1 U164 ( .A(ready), .B(n153), .Y(n105) );
  INVX1 U165 ( .A(n156), .Y(n137) );
  NAND2X1 U166 ( .A(n157), .B(n154), .Y(n110) );
  NAND3X1 U167 ( .A(n158), .B(n151), .C(n159), .Y(n154) );
  NOR2X1 U168 ( .A(down_count[7]), .B(n156), .Y(n159) );
  NAND3X1 U169 ( .A(n138), .B(n160), .C(n126), .Y(n156) );
  INVX1 U170 ( .A(n133), .Y(n126) );
  NAND3X1 U171 ( .A(n127), .B(n161), .C(n114), .Y(n133) );
  INVX1 U172 ( .A(n122), .Y(n114) );
  NAND3X1 U173 ( .A(n115), .B(n162), .C(n117), .Y(n122) );
  INVX1 U174 ( .A(down_count[0]), .Y(n117) );
  INVX1 U175 ( .A(down_count[2]), .Y(n162) );
  INVX1 U176 ( .A(down_count[6]), .Y(n160) );
  INVX1 U177 ( .A(down_count[5]), .Y(n138) );
  INVX1 U178 ( .A(down_count[9]), .Y(n151) );
  INVX1 U179 ( .A(down_count[8]), .Y(n158) );
  NOR2X1 U180 ( .A(n163), .B(n164), .Y(last) );
  NAND3X1 U181 ( .A(n157), .B(n115), .C(n165), .Y(n164) );
  NOR2X1 U182 ( .A(down_count[2]), .B(n166), .Y(n165) );
  NAND2X1 U183 ( .A(n127), .B(n161), .Y(n166) );
  INVX1 U184 ( .A(down_count[4]), .Y(n161) );
  INVX1 U185 ( .A(down_count[3]), .Y(n127) );
  INVX1 U186 ( .A(down_count[1]), .Y(n115) );
  INVX1 U187 ( .A(n153), .Y(n157) );
  NAND2X1 U188 ( .A(n167), .B(valid), .Y(n153) );
  NOR2X1 U189 ( .A(resp), .B(n168), .Y(n167) );
  INVX1 U190 ( .A(ready), .Y(n168) );
  NAND3X1 U191 ( .A(n169), .B(n148), .C(n170), .Y(n163) );
  NOR2X1 U192 ( .A(down_count[6]), .B(down_count[5]), .Y(n170) );
  INVX1 U193 ( .A(down_count[7]), .Y(n148) );
  NOR2X1 U194 ( .A(down_count[9]), .B(down_count[8]), .Y(n169) );
endmodule

