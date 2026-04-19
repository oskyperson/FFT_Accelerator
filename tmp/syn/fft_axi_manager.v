/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4
// Date      : Sat Apr 18 17:25:08 2026
/////////////////////////////////////////////////////////////


module fft_axi_counter_WRITE_OR_READ0_DW01_inc_0_DW01_inc_2 ( A, SUM );
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
  wire   N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, n1, n2, n3, n4, n5,
         n6, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79;

  DFFSR \i_reg[0]  ( .D(n70), .CLK(clk), .R(n1), .S(1'b1), .Q(i[0]) );
  DFFSR \i_reg[9]  ( .D(n71), .CLK(clk), .R(n1), .S(1'b1), .Q(i[9]) );
  DFFSR \i_reg[1]  ( .D(n79), .CLK(clk), .R(n1), .S(1'b1), .Q(i[1]) );
  DFFSR \i_reg[2]  ( .D(n78), .CLK(clk), .R(n1), .S(1'b1), .Q(i[2]) );
  DFFSR \i_reg[3]  ( .D(n77), .CLK(clk), .R(n1), .S(1'b1), .Q(i[3]) );
  DFFSR \i_reg[4]  ( .D(n76), .CLK(clk), .R(n1), .S(1'b1), .Q(i[4]) );
  DFFSR \i_reg[5]  ( .D(n75), .CLK(clk), .R(n1), .S(1'b1), .Q(i[5]) );
  DFFSR \i_reg[6]  ( .D(n74), .CLK(clk), .R(n1), .S(1'b1), .Q(i[6]) );
  DFFSR \i_reg[7]  ( .D(n73), .CLK(clk), .R(n1), .S(1'b1), .Q(i[7]) );
  DFFSR \i_reg[8]  ( .D(n72), .CLK(clk), .R(n1), .S(1'b1), .Q(i[8]) );
  fft_axi_counter_WRITE_OR_READ0_DW01_inc_0_DW01_inc_2 r376 ( .A(i), .SUM({N19, 
        N18, N17, N16, N15, N14, N13, N12, N11, N10}) );
  INVX2 U7 ( .A(n2), .Y(n1) );
  INVX2 U8 ( .A(n_rst), .Y(n2) );
  OAI21X1 U15 ( .A(n3), .B(n4), .C(n5), .Y(n70) );
  NAND2X1 U16 ( .A(N10), .B(n6), .Y(n5) );
  OAI21X1 U17 ( .A(n17), .B(n3), .C(n18), .Y(n71) );
  NAND2X1 U18 ( .A(N19), .B(n6), .Y(n18) );
  OAI21X1 U19 ( .A(n19), .B(n3), .C(n20), .Y(n72) );
  NAND2X1 U20 ( .A(N18), .B(n6), .Y(n20) );
  OAI21X1 U21 ( .A(n21), .B(n3), .C(n22), .Y(n73) );
  NAND2X1 U22 ( .A(N17), .B(n6), .Y(n22) );
  INVX1 U23 ( .A(i[7]), .Y(n21) );
  OAI21X1 U24 ( .A(n23), .B(n3), .C(n24), .Y(n74) );
  NAND2X1 U25 ( .A(N16), .B(n6), .Y(n24) );
  OAI21X1 U26 ( .A(n25), .B(n3), .C(n26), .Y(n75) );
  NAND2X1 U27 ( .A(N15), .B(n6), .Y(n26) );
  OAI21X1 U28 ( .A(n27), .B(n3), .C(n28), .Y(n76) );
  NAND2X1 U29 ( .A(N14), .B(n6), .Y(n28) );
  OAI21X1 U30 ( .A(n29), .B(n3), .C(n30), .Y(n77) );
  NAND2X1 U31 ( .A(N13), .B(n6), .Y(n30) );
  OAI21X1 U32 ( .A(n31), .B(n3), .C(n32), .Y(n78) );
  NAND2X1 U33 ( .A(N12), .B(n6), .Y(n32) );
  OAI21X1 U34 ( .A(n33), .B(n3), .C(n34), .Y(n79) );
  NAND2X1 U35 ( .A(N11), .B(n6), .Y(n34) );
  INVX1 U36 ( .A(n35), .Y(n6) );
  NAND3X1 U37 ( .A(n36), .B(n37), .C(ready), .Y(n35) );
  NAND2X1 U38 ( .A(n38), .B(ready), .Y(n3) );
  NOR2X1 U39 ( .A(n37), .B(n39), .Y(last) );
  NAND2X1 U40 ( .A(ready), .B(n36), .Y(n39) );
  INVX1 U41 ( .A(n38), .Y(n36) );
  NOR2X1 U42 ( .A(resp), .B(valid), .Y(n38) );
  OAI21X1 U43 ( .A(n40), .B(n41), .C(n42), .Y(n37) );
  AOI22X1 U44 ( .A(n43), .B(len[8]), .C(len[9]), .D(n17), .Y(n42) );
  NOR2X1 U45 ( .A(i[8]), .B(n44), .Y(n43) );
  OAI21X1 U46 ( .A(n45), .B(n46), .C(n47), .Y(n41) );
  INVX1 U47 ( .A(n44), .Y(n47) );
  NOR2X1 U48 ( .A(n17), .B(len[9]), .Y(n44) );
  INVX1 U49 ( .A(i[9]), .Y(n17) );
  OAI22X1 U50 ( .A(n48), .B(n49), .C(n50), .D(n51), .Y(n46) );
  OAI21X1 U51 ( .A(len[5]), .B(n25), .C(n52), .Y(n51) );
  INVX1 U52 ( .A(n48), .Y(n52) );
  OAI21X1 U53 ( .A(len[4]), .B(n27), .C(n53), .Y(n50) );
  OAI21X1 U54 ( .A(n54), .B(n55), .C(n56), .Y(n53) );
  AOI22X1 U55 ( .A(n57), .B(len[2]), .C(len[3]), .D(n29), .Y(n56) );
  NOR2X1 U56 ( .A(i[2]), .B(n58), .Y(n57) );
  OAI22X1 U57 ( .A(len[2]), .B(n31), .C(n59), .D(n33), .Y(n55) );
  INVX1 U58 ( .A(i[1]), .Y(n33) );
  INVX1 U59 ( .A(n60), .Y(n59) );
  INVX1 U60 ( .A(i[2]), .Y(n31) );
  OAI21X1 U61 ( .A(len[1]), .B(n61), .C(n62), .Y(n54) );
  INVX1 U62 ( .A(n58), .Y(n62) );
  NOR2X1 U63 ( .A(n29), .B(len[3]), .Y(n58) );
  INVX1 U64 ( .A(i[3]), .Y(n29) );
  NOR2X1 U65 ( .A(i[1]), .B(n60), .Y(n61) );
  NAND2X1 U66 ( .A(len[0]), .B(n4), .Y(n60) );
  INVX1 U67 ( .A(i[0]), .Y(n4) );
  OAI21X1 U68 ( .A(n63), .B(n25), .C(n64), .Y(n49) );
  OAI21X1 U69 ( .A(i[5]), .B(n65), .C(n66), .Y(n64) );
  INVX1 U70 ( .A(len[5]), .Y(n66) );
  INVX1 U71 ( .A(i[5]), .Y(n25) );
  INVX1 U72 ( .A(n65), .Y(n63) );
  NAND2X1 U73 ( .A(len[4]), .B(n27), .Y(n65) );
  INVX1 U74 ( .A(i[4]), .Y(n27) );
  OAI21X1 U75 ( .A(len[6]), .B(n23), .C(n67), .Y(n48) );
  OAI21X1 U76 ( .A(i[7]), .B(n68), .C(n69), .Y(n45) );
  NAND3X1 U77 ( .A(n67), .B(n23), .C(len[6]), .Y(n69) );
  INVX1 U78 ( .A(i[6]), .Y(n23) );
  NAND2X1 U79 ( .A(i[7]), .B(n68), .Y(n67) );
  INVX1 U80 ( .A(len[7]), .Y(n68) );
  NOR2X1 U81 ( .A(len[8]), .B(n19), .Y(n40) );
  INVX1 U82 ( .A(i[8]), .Y(n19) );
endmodule


module fft_axi_counter_WRITE_OR_READ1_DW01_inc_0_DW01_inc_1 ( A, SUM );
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
  wire   N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, n1, n2, n3, n4, n5,
         n6, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79;

  DFFSR \i_reg[0]  ( .D(n70), .CLK(clk), .R(n1), .S(1'b1), .Q(i[0]) );
  DFFSR \i_reg[9]  ( .D(n71), .CLK(clk), .R(n1), .S(1'b1), .Q(i[9]) );
  DFFSR \i_reg[1]  ( .D(n79), .CLK(clk), .R(n1), .S(1'b1), .Q(i[1]) );
  DFFSR \i_reg[2]  ( .D(n78), .CLK(clk), .R(n1), .S(1'b1), .Q(i[2]) );
  DFFSR \i_reg[3]  ( .D(n77), .CLK(clk), .R(n1), .S(1'b1), .Q(i[3]) );
  DFFSR \i_reg[4]  ( .D(n76), .CLK(clk), .R(n1), .S(1'b1), .Q(i[4]) );
  DFFSR \i_reg[5]  ( .D(n75), .CLK(clk), .R(n1), .S(1'b1), .Q(i[5]) );
  DFFSR \i_reg[6]  ( .D(n74), .CLK(clk), .R(n1), .S(1'b1), .Q(i[6]) );
  DFFSR \i_reg[7]  ( .D(n73), .CLK(clk), .R(n1), .S(1'b1), .Q(i[7]) );
  DFFSR \i_reg[8]  ( .D(n72), .CLK(clk), .R(n1), .S(1'b1), .Q(i[8]) );
  fft_axi_counter_WRITE_OR_READ1_DW01_inc_0_DW01_inc_1 r376 ( .A(i), .SUM({N19, 
        N18, N17, N16, N15, N14, N13, N12, N11, N10}) );
  INVX2 U7 ( .A(n2), .Y(n1) );
  INVX2 U8 ( .A(n_rst), .Y(n2) );
  OAI21X1 U15 ( .A(n3), .B(n4), .C(n5), .Y(n70) );
  NAND2X1 U16 ( .A(N10), .B(n6), .Y(n5) );
  OAI21X1 U17 ( .A(n17), .B(n3), .C(n18), .Y(n71) );
  NAND2X1 U18 ( .A(N19), .B(n6), .Y(n18) );
  OAI21X1 U19 ( .A(n19), .B(n3), .C(n20), .Y(n72) );
  NAND2X1 U20 ( .A(N18), .B(n6), .Y(n20) );
  OAI21X1 U21 ( .A(n21), .B(n3), .C(n22), .Y(n73) );
  NAND2X1 U22 ( .A(N17), .B(n6), .Y(n22) );
  INVX1 U23 ( .A(i[7]), .Y(n21) );
  OAI21X1 U24 ( .A(n23), .B(n3), .C(n24), .Y(n74) );
  NAND2X1 U25 ( .A(N16), .B(n6), .Y(n24) );
  OAI21X1 U26 ( .A(n25), .B(n3), .C(n26), .Y(n75) );
  NAND2X1 U27 ( .A(N15), .B(n6), .Y(n26) );
  OAI21X1 U28 ( .A(n27), .B(n3), .C(n28), .Y(n76) );
  NAND2X1 U29 ( .A(N14), .B(n6), .Y(n28) );
  OAI21X1 U30 ( .A(n29), .B(n3), .C(n30), .Y(n77) );
  NAND2X1 U31 ( .A(N13), .B(n6), .Y(n30) );
  OAI21X1 U32 ( .A(n31), .B(n3), .C(n32), .Y(n78) );
  NAND2X1 U33 ( .A(N12), .B(n6), .Y(n32) );
  OAI21X1 U34 ( .A(n33), .B(n3), .C(n34), .Y(n79) );
  NAND2X1 U35 ( .A(N11), .B(n6), .Y(n34) );
  INVX1 U36 ( .A(n35), .Y(n6) );
  NAND3X1 U37 ( .A(n36), .B(n37), .C(valid), .Y(n35) );
  NAND2X1 U38 ( .A(n38), .B(valid), .Y(n3) );
  NOR2X1 U39 ( .A(n37), .B(n39), .Y(last) );
  NAND2X1 U40 ( .A(valid), .B(n36), .Y(n39) );
  INVX1 U41 ( .A(n38), .Y(n36) );
  NOR2X1 U42 ( .A(ready), .B(resp), .Y(n38) );
  OAI21X1 U43 ( .A(n40), .B(n41), .C(n42), .Y(n37) );
  AOI22X1 U44 ( .A(n43), .B(len[8]), .C(len[9]), .D(n17), .Y(n42) );
  NOR2X1 U45 ( .A(i[8]), .B(n44), .Y(n43) );
  OAI21X1 U46 ( .A(n45), .B(n46), .C(n47), .Y(n41) );
  INVX1 U47 ( .A(n44), .Y(n47) );
  NOR2X1 U48 ( .A(n17), .B(len[9]), .Y(n44) );
  INVX1 U49 ( .A(i[9]), .Y(n17) );
  OAI22X1 U50 ( .A(n48), .B(n49), .C(n50), .D(n51), .Y(n46) );
  OAI21X1 U51 ( .A(len[5]), .B(n25), .C(n52), .Y(n51) );
  INVX1 U52 ( .A(n48), .Y(n52) );
  OAI21X1 U53 ( .A(len[4]), .B(n27), .C(n53), .Y(n50) );
  OAI21X1 U54 ( .A(n54), .B(n55), .C(n56), .Y(n53) );
  AOI22X1 U55 ( .A(n57), .B(len[2]), .C(len[3]), .D(n29), .Y(n56) );
  NOR2X1 U56 ( .A(i[2]), .B(n58), .Y(n57) );
  OAI22X1 U57 ( .A(len[2]), .B(n31), .C(n59), .D(n33), .Y(n55) );
  INVX1 U58 ( .A(i[1]), .Y(n33) );
  INVX1 U59 ( .A(n60), .Y(n59) );
  INVX1 U60 ( .A(i[2]), .Y(n31) );
  OAI21X1 U61 ( .A(len[1]), .B(n61), .C(n62), .Y(n54) );
  INVX1 U62 ( .A(n58), .Y(n62) );
  NOR2X1 U63 ( .A(n29), .B(len[3]), .Y(n58) );
  INVX1 U64 ( .A(i[3]), .Y(n29) );
  NOR2X1 U65 ( .A(i[1]), .B(n60), .Y(n61) );
  NAND2X1 U66 ( .A(len[0]), .B(n4), .Y(n60) );
  INVX1 U67 ( .A(i[0]), .Y(n4) );
  OAI21X1 U68 ( .A(n63), .B(n25), .C(n64), .Y(n49) );
  OAI21X1 U69 ( .A(i[5]), .B(n65), .C(n66), .Y(n64) );
  INVX1 U70 ( .A(len[5]), .Y(n66) );
  INVX1 U71 ( .A(i[5]), .Y(n25) );
  INVX1 U72 ( .A(n65), .Y(n63) );
  NAND2X1 U73 ( .A(len[4]), .B(n27), .Y(n65) );
  INVX1 U74 ( .A(i[4]), .Y(n27) );
  OAI21X1 U75 ( .A(len[6]), .B(n23), .C(n67), .Y(n48) );
  OAI21X1 U76 ( .A(i[7]), .B(n68), .C(n69), .Y(n45) );
  NAND3X1 U77 ( .A(n67), .B(n23), .C(len[6]), .Y(n69) );
  INVX1 U78 ( .A(i[6]), .Y(n23) );
  NAND2X1 U79 ( .A(i[7]), .B(n68), .Y(n67) );
  INVX1 U80 ( .A(len[7]), .Y(n68) );
  NOR2X1 U81 ( .A(len[8]), .B(n19), .Y(n40) );
  INVX1 U82 ( .A(i[8]), .Y(n19) );
endmodule


module fft_axi_manager_DW01_dec_0 ( A, SUM );
  input [31:0] A;
  output [31:0] SUM;
  wire   n11, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75;

  INVX2 U1 ( .A(n61), .Y(SUM[1]) );
  INVX2 U2 ( .A(n74), .Y(SUM[11]) );
  INVX2 U3 ( .A(n71), .Y(SUM[13]) );
  INVX2 U4 ( .A(n68), .Y(SUM[15]) );
  INVX2 U5 ( .A(n65), .Y(SUM[17]) );
  INVX2 U6 ( .A(n62), .Y(SUM[19]) );
  INVX2 U7 ( .A(n57), .Y(SUM[22]) );
  INVX2 U8 ( .A(n54), .Y(SUM[24]) );
  INVX2 U9 ( .A(n51), .Y(SUM[26]) );
  INVX2 U10 ( .A(n48), .Y(SUM[28]) );
  INVX2 U11 ( .A(n59), .Y(n11) );
  INVX2 U12 ( .A(n32), .Y(SUM[9]) );
  INVX2 U13 ( .A(n36), .Y(SUM[7]) );
  INVX2 U14 ( .A(n39), .Y(SUM[5]) );
  INVX2 U15 ( .A(n42), .Y(SUM[3]) );
  INVX2 U16 ( .A(A[0]), .Y(SUM[0]) );
  INVX2 U17 ( .A(A[2]), .Y(n17) );
  INVX2 U18 ( .A(A[4]), .Y(n18) );
  INVX2 U19 ( .A(A[6]), .Y(n19) );
  INVX2 U20 ( .A(A[8]), .Y(n20) );
  INVX2 U21 ( .A(A[10]), .Y(n21) );
  INVX2 U22 ( .A(A[12]), .Y(n22) );
  INVX2 U23 ( .A(A[14]), .Y(n23) );
  INVX2 U24 ( .A(A[16]), .Y(n24) );
  INVX2 U25 ( .A(A[18]), .Y(n25) );
  INVX2 U26 ( .A(A[20]), .Y(n26) );
  INVX2 U27 ( .A(A[21]), .Y(n27) );
  INVX2 U28 ( .A(A[23]), .Y(n28) );
  INVX2 U29 ( .A(A[25]), .Y(n29) );
  INVX2 U30 ( .A(A[27]), .Y(n30) );
  INVX2 U31 ( .A(A[29]), .Y(n31) );
  AOI21X1 U32 ( .A(n33), .B(A[9]), .C(n34), .Y(n32) );
  OAI21X1 U33 ( .A(n35), .B(n20), .C(n33), .Y(SUM[8]) );
  AOI21X1 U34 ( .A(n37), .B(A[7]), .C(n35), .Y(n36) );
  OAI21X1 U35 ( .A(n38), .B(n19), .C(n37), .Y(SUM[6]) );
  AOI21X1 U36 ( .A(n40), .B(A[5]), .C(n38), .Y(n39) );
  OAI21X1 U37 ( .A(n41), .B(n18), .C(n40), .Y(SUM[4]) );
  AOI21X1 U38 ( .A(n43), .B(A[3]), .C(n41), .Y(n42) );
  XOR2X1 U39 ( .A(A[31]), .B(n44), .Y(SUM[31]) );
  NOR2X1 U40 ( .A(A[30]), .B(n45), .Y(n44) );
  XNOR2X1 U41 ( .A(A[30]), .B(n45), .Y(SUM[30]) );
  OAI21X1 U42 ( .A(n46), .B(n17), .C(n43), .Y(SUM[2]) );
  OAI21X1 U43 ( .A(n47), .B(n31), .C(n45), .Y(SUM[29]) );
  NAND2X1 U44 ( .A(n47), .B(n31), .Y(n45) );
  AOI21X1 U45 ( .A(n49), .B(A[28]), .C(n47), .Y(n48) );
  NOR2X1 U46 ( .A(n49), .B(A[28]), .Y(n47) );
  OAI21X1 U47 ( .A(n50), .B(n30), .C(n49), .Y(SUM[27]) );
  NAND2X1 U48 ( .A(n50), .B(n30), .Y(n49) );
  AOI21X1 U49 ( .A(n52), .B(A[26]), .C(n50), .Y(n51) );
  NOR2X1 U50 ( .A(n52), .B(A[26]), .Y(n50) );
  OAI21X1 U51 ( .A(n53), .B(n29), .C(n52), .Y(SUM[25]) );
  NAND2X1 U52 ( .A(n53), .B(n29), .Y(n52) );
  AOI21X1 U53 ( .A(n55), .B(A[24]), .C(n53), .Y(n54) );
  NOR2X1 U54 ( .A(n55), .B(A[24]), .Y(n53) );
  OAI21X1 U55 ( .A(n56), .B(n28), .C(n55), .Y(SUM[23]) );
  NAND2X1 U56 ( .A(n56), .B(n28), .Y(n55) );
  AOI21X1 U57 ( .A(n58), .B(A[22]), .C(n56), .Y(n57) );
  NOR2X1 U58 ( .A(n58), .B(A[22]), .Y(n56) );
  OAI21X1 U59 ( .A(n11), .B(n27), .C(n58), .Y(SUM[21]) );
  NAND2X1 U60 ( .A(n11), .B(n27), .Y(n58) );
  OAI21X1 U61 ( .A(n60), .B(n26), .C(n59), .Y(SUM[20]) );
  NAND2X1 U62 ( .A(n60), .B(n26), .Y(n59) );
  AOI21X1 U63 ( .A(A[0]), .B(A[1]), .C(n46), .Y(n61) );
  AOI21X1 U64 ( .A(n63), .B(A[19]), .C(n60), .Y(n62) );
  NOR2X1 U65 ( .A(n63), .B(A[19]), .Y(n60) );
  OAI21X1 U66 ( .A(n64), .B(n25), .C(n63), .Y(SUM[18]) );
  NAND2X1 U67 ( .A(n64), .B(n25), .Y(n63) );
  AOI21X1 U68 ( .A(n66), .B(A[17]), .C(n64), .Y(n65) );
  NOR2X1 U69 ( .A(n66), .B(A[17]), .Y(n64) );
  OAI21X1 U70 ( .A(n67), .B(n24), .C(n66), .Y(SUM[16]) );
  NAND2X1 U71 ( .A(n67), .B(n24), .Y(n66) );
  AOI21X1 U72 ( .A(n69), .B(A[15]), .C(n67), .Y(n68) );
  NOR2X1 U73 ( .A(n69), .B(A[15]), .Y(n67) );
  OAI21X1 U74 ( .A(n70), .B(n23), .C(n69), .Y(SUM[14]) );
  NAND2X1 U75 ( .A(n70), .B(n23), .Y(n69) );
  AOI21X1 U76 ( .A(n72), .B(A[13]), .C(n70), .Y(n71) );
  NOR2X1 U77 ( .A(n72), .B(A[13]), .Y(n70) );
  OAI21X1 U78 ( .A(n73), .B(n22), .C(n72), .Y(SUM[12]) );
  NAND2X1 U79 ( .A(n73), .B(n22), .Y(n72) );
  AOI21X1 U80 ( .A(n75), .B(A[11]), .C(n73), .Y(n74) );
  NOR2X1 U81 ( .A(n75), .B(A[11]), .Y(n73) );
  OAI21X1 U82 ( .A(n34), .B(n21), .C(n75), .Y(SUM[10]) );
  NAND2X1 U83 ( .A(n34), .B(n21), .Y(n75) );
  NOR2X1 U84 ( .A(n33), .B(A[9]), .Y(n34) );
  NAND2X1 U85 ( .A(n35), .B(n20), .Y(n33) );
  NOR2X1 U86 ( .A(n37), .B(A[7]), .Y(n35) );
  NAND2X1 U87 ( .A(n38), .B(n19), .Y(n37) );
  NOR2X1 U88 ( .A(n40), .B(A[5]), .Y(n38) );
  NAND2X1 U89 ( .A(n41), .B(n18), .Y(n40) );
  NOR2X1 U90 ( .A(n43), .B(A[3]), .Y(n41) );
  NAND2X1 U91 ( .A(n46), .B(n17), .Y(n43) );
  NOR2X1 U92 ( .A(A[1]), .B(A[0]), .Y(n46) );
endmodule


module fft_axi_manager_DW01_dec_1 ( A, SUM );
  input [31:0] A;
  output [31:0] SUM;
  wire   n11, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75;

  INVX2 U1 ( .A(n61), .Y(SUM[1]) );
  INVX2 U2 ( .A(n74), .Y(SUM[11]) );
  INVX2 U3 ( .A(n71), .Y(SUM[13]) );
  INVX2 U4 ( .A(n68), .Y(SUM[15]) );
  INVX2 U5 ( .A(n65), .Y(SUM[17]) );
  INVX2 U6 ( .A(n62), .Y(SUM[19]) );
  INVX2 U7 ( .A(n57), .Y(SUM[22]) );
  INVX2 U8 ( .A(n54), .Y(SUM[24]) );
  INVX2 U9 ( .A(n51), .Y(SUM[26]) );
  INVX2 U10 ( .A(n48), .Y(SUM[28]) );
  INVX2 U11 ( .A(n59), .Y(n11) );
  INVX2 U12 ( .A(n32), .Y(SUM[9]) );
  INVX2 U13 ( .A(n36), .Y(SUM[7]) );
  INVX2 U14 ( .A(n39), .Y(SUM[5]) );
  INVX2 U15 ( .A(n42), .Y(SUM[3]) );
  INVX2 U16 ( .A(A[0]), .Y(SUM[0]) );
  INVX2 U17 ( .A(A[2]), .Y(n17) );
  INVX2 U18 ( .A(A[4]), .Y(n18) );
  INVX2 U19 ( .A(A[6]), .Y(n19) );
  INVX2 U20 ( .A(A[8]), .Y(n20) );
  INVX2 U21 ( .A(A[10]), .Y(n21) );
  INVX2 U22 ( .A(A[12]), .Y(n22) );
  INVX2 U23 ( .A(A[14]), .Y(n23) );
  INVX2 U24 ( .A(A[16]), .Y(n24) );
  INVX2 U25 ( .A(A[18]), .Y(n25) );
  INVX2 U26 ( .A(A[20]), .Y(n26) );
  INVX2 U27 ( .A(A[21]), .Y(n27) );
  INVX2 U28 ( .A(A[23]), .Y(n28) );
  INVX2 U29 ( .A(A[25]), .Y(n29) );
  INVX2 U30 ( .A(A[27]), .Y(n30) );
  INVX2 U31 ( .A(A[29]), .Y(n31) );
  AOI21X1 U32 ( .A(n33), .B(A[9]), .C(n34), .Y(n32) );
  OAI21X1 U33 ( .A(n35), .B(n20), .C(n33), .Y(SUM[8]) );
  AOI21X1 U34 ( .A(n37), .B(A[7]), .C(n35), .Y(n36) );
  OAI21X1 U35 ( .A(n38), .B(n19), .C(n37), .Y(SUM[6]) );
  AOI21X1 U36 ( .A(n40), .B(A[5]), .C(n38), .Y(n39) );
  OAI21X1 U37 ( .A(n41), .B(n18), .C(n40), .Y(SUM[4]) );
  AOI21X1 U38 ( .A(n43), .B(A[3]), .C(n41), .Y(n42) );
  XOR2X1 U39 ( .A(A[31]), .B(n44), .Y(SUM[31]) );
  NOR2X1 U40 ( .A(A[30]), .B(n45), .Y(n44) );
  XNOR2X1 U41 ( .A(A[30]), .B(n45), .Y(SUM[30]) );
  OAI21X1 U42 ( .A(n46), .B(n17), .C(n43), .Y(SUM[2]) );
  OAI21X1 U43 ( .A(n47), .B(n31), .C(n45), .Y(SUM[29]) );
  NAND2X1 U44 ( .A(n47), .B(n31), .Y(n45) );
  AOI21X1 U45 ( .A(n49), .B(A[28]), .C(n47), .Y(n48) );
  NOR2X1 U46 ( .A(n49), .B(A[28]), .Y(n47) );
  OAI21X1 U47 ( .A(n50), .B(n30), .C(n49), .Y(SUM[27]) );
  NAND2X1 U48 ( .A(n50), .B(n30), .Y(n49) );
  AOI21X1 U49 ( .A(n52), .B(A[26]), .C(n50), .Y(n51) );
  NOR2X1 U50 ( .A(n52), .B(A[26]), .Y(n50) );
  OAI21X1 U51 ( .A(n53), .B(n29), .C(n52), .Y(SUM[25]) );
  NAND2X1 U52 ( .A(n53), .B(n29), .Y(n52) );
  AOI21X1 U53 ( .A(n55), .B(A[24]), .C(n53), .Y(n54) );
  NOR2X1 U54 ( .A(n55), .B(A[24]), .Y(n53) );
  OAI21X1 U55 ( .A(n56), .B(n28), .C(n55), .Y(SUM[23]) );
  NAND2X1 U56 ( .A(n56), .B(n28), .Y(n55) );
  AOI21X1 U57 ( .A(n58), .B(A[22]), .C(n56), .Y(n57) );
  NOR2X1 U58 ( .A(n58), .B(A[22]), .Y(n56) );
  OAI21X1 U59 ( .A(n11), .B(n27), .C(n58), .Y(SUM[21]) );
  NAND2X1 U60 ( .A(n11), .B(n27), .Y(n58) );
  OAI21X1 U61 ( .A(n60), .B(n26), .C(n59), .Y(SUM[20]) );
  NAND2X1 U62 ( .A(n60), .B(n26), .Y(n59) );
  AOI21X1 U63 ( .A(A[0]), .B(A[1]), .C(n46), .Y(n61) );
  AOI21X1 U64 ( .A(n63), .B(A[19]), .C(n60), .Y(n62) );
  NOR2X1 U65 ( .A(n63), .B(A[19]), .Y(n60) );
  OAI21X1 U66 ( .A(n64), .B(n25), .C(n63), .Y(SUM[18]) );
  NAND2X1 U67 ( .A(n64), .B(n25), .Y(n63) );
  AOI21X1 U68 ( .A(n66), .B(A[17]), .C(n64), .Y(n65) );
  NOR2X1 U69 ( .A(n66), .B(A[17]), .Y(n64) );
  OAI21X1 U70 ( .A(n67), .B(n24), .C(n66), .Y(SUM[16]) );
  NAND2X1 U71 ( .A(n67), .B(n24), .Y(n66) );
  AOI21X1 U72 ( .A(n69), .B(A[15]), .C(n67), .Y(n68) );
  NOR2X1 U73 ( .A(n69), .B(A[15]), .Y(n67) );
  OAI21X1 U74 ( .A(n70), .B(n23), .C(n69), .Y(SUM[14]) );
  NAND2X1 U75 ( .A(n70), .B(n23), .Y(n69) );
  AOI21X1 U76 ( .A(n72), .B(A[13]), .C(n70), .Y(n71) );
  NOR2X1 U77 ( .A(n72), .B(A[13]), .Y(n70) );
  OAI21X1 U78 ( .A(n73), .B(n22), .C(n72), .Y(SUM[12]) );
  NAND2X1 U79 ( .A(n73), .B(n22), .Y(n72) );
  AOI21X1 U80 ( .A(n75), .B(A[11]), .C(n73), .Y(n74) );
  NOR2X1 U81 ( .A(n75), .B(A[11]), .Y(n73) );
  OAI21X1 U82 ( .A(n34), .B(n21), .C(n75), .Y(SUM[10]) );
  NAND2X1 U83 ( .A(n34), .B(n21), .Y(n75) );
  NOR2X1 U84 ( .A(n33), .B(A[9]), .Y(n34) );
  NAND2X1 U85 ( .A(n35), .B(n20), .Y(n33) );
  NOR2X1 U86 ( .A(n37), .B(A[7]), .Y(n35) );
  NAND2X1 U87 ( .A(n38), .B(n19), .Y(n37) );
  NOR2X1 U88 ( .A(n40), .B(A[5]), .Y(n38) );
  NAND2X1 U89 ( .A(n41), .B(n18), .Y(n40) );
  NOR2X1 U90 ( .A(n43), .B(A[3]), .Y(n41) );
  NAND2X1 U91 ( .A(n46), .B(n17), .Y(n43) );
  NOR2X1 U92 ( .A(A[1]), .B(A[0]), .Y(n46) );
endmodule


module fft_axi_manager_DW01_inc_0 ( A, SUM );
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
  wire   \configs[3][10] , \configs[3][9] , \configs[3][8] , \configs[3][7] ,
         \configs[3][6] , \configs[3][5] , \configs[3][4] , \configs[3][3] ,
         \configs[3][2] , \configs[3][1] , \configs[3][0] , \configs[1][10] ,
         \configs[1][9] , \configs[1][8] , \configs[1][7] , \configs[1][6] ,
         \configs[1][5] , \configs[1][4] , \configs[1][3] , \configs[1][2] ,
         \configs[1][1] , \configs[1][0] , \configs[0][31] , \configs[0][30] ,
         \configs[0][29] , \configs[0][28] , \configs[0][27] ,
         \configs[0][26] , \configs[0][25] , \configs[0][24] ,
         \configs[0][23] , \configs[0][22] , \configs[0][21] ,
         \configs[0][20] , \configs[0][19] , \configs[0][18] ,
         \configs[0][17] , \configs[0][16] , \configs[0][15] ,
         \configs[0][14] , \configs[0][13] , \configs[0][12] ,
         \configs[0][11] , \configs[0][10] , \configs[0][9] , \configs[0][8] ,
         \configs[0][7] , \configs[0][6] , \configs[0][5] , \configs[0][4] ,
         \configs[0][3] , \configs[0][2] , \configs[0][1] , \configs[0][0] ,
         new_config, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32,
         N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46,
         N47, N48, N49, N50, N51, N52, N53, N61, N62, N63, N64, N65, N66, N67,
         N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81,
         N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, rcounter_last,
         N124, n463, n465, n467, n469, n471, n473, n475, n477, n479, n481,
         n483, n485, n487, n489, n491, n493, n495, n497, n499, n501, n503,
         n505, n507, n509, n511, n513, n515, n517, n519, n521, n523, n525,
         n527, n529, n531, n533, n535, n537, n539, n541, n543, n545, n567,
         n569, n571, n573, n575, n577, n579, n581, n583, n585, n587, n613,
         n617, n618, n619, n620, n621, n622, n623, n624, n625, n626, n627,
         n628, n629, n630, n631, n632, n633, n634, n635, n636, n637, n638,
         n639, n640, n641, n642, n643, n644, n645, n646, n647, n648, n649,
         n650, n651, n652, n653, n654, n655, n656, n657, n658, n659, n660,
         n661, n662, n663, n664, n665, n666, n667, n668, n669, n670, n671,
         n672, n673, n674, n675, n676, n677, n678, n679, n680, n681, n684,
         n685, n686, n687, n688, n689, n690, n691, n692, n693, n694, n695,
         n696, n697, n698, n699, n700, n701, n702, n703, n704, n705, n706,
         n707, n708, n709, n710, n711, n712, n713, n714, n715, n716, n717,
         n718, n719, n720, n721, n722, n723, n724, n725, n726, n727, n728,
         n729, n730, n731, n732, n733, n734, n735, n736, n737, n738, n739,
         n740, n741, n742, n743, n744, n745, n746, n747, n748, n749, n750,
         n751, n752, n753, n754, n755, n756, n757, n758, n759, n760, n761,
         n762, n763, n764, n765, n766, n767, n768, n769, n770, n771, n772,
         n773, n774, n775, n776, n777, n778, n779, n780, n781, n782, n783,
         n784, n785, n786, n787, n788, n789, n790, n791, n792, n793, n794,
         n795, n796, n797, n798, n799, n800, n801, n802, n803, n804, n805,
         n806, n807, n808, n809, n810, n811, n812, n813, n814, n815, n816,
         n817, n818, n819, n820, n821, n822, n823, n824, n825, n826, n827,
         n828, n829, n830, n831, n832, n833, n834, n835, n836, n837, n838,
         n839, n840, n841, n842, n843, n844, n845, n846, n847, n848, n849,
         n850, n851, n852, n853, n854, n855, n856, n857, n858, n859, n860,
         n861, n862, n863, n864, n865, n866, n867, n868, n869, n870, n871,
         n872, n873, n874, n875, n876, n877, n878, n879, n880, n881, n882,
         n883, n884, n885, n886, n887, n888, n889, n890, n891, n892, n893,
         n894, n895, n896, n897, n898, n899, n900, n901, n902, n903, n904,
         n905, n906, n907, n908, n909, n910, n911, n912, n913, n914, n915,
         n916, n917, n918, n919, n920, n921, n922, n923, n924, n925, n926,
         n927, n928, n929, n930, n931, n932, n933, n934, n935, n936, n937,
         n938, n939, n940, n941, n942, n943, n944, n945, n946, n947, n948,
         n949, n950, n951, n952, n953, n954, n955, n956, n957, n958, n959,
         n960, n961, n962, n963, n964, n965, n966, n967, n968, n969, n970,
         n971, n972, n973, n974, n975, n976, n977, n978, n979, n980, n981,
         n982, n983, n984, n985, n986, n987, n988, n989, n990, n991, n992,
         n993, n994, n995, n996, n997, n998, n999, n1000, n1001, n1002, n1003,
         n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013,
         n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023,
         n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033,
         n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043,
         n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053,
         n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063,
         n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073,
         n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083,
         n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093,
         n1094, n1095, n1096;
  wire   [1:0] wstate;
  wire   [1:0] rstate;
  wire   [31:0] j;
  wire   [31:0] k;
  wire   [31:0] num_read_frames;
  wire   [1:0] next_rstate;
  wire   [1:0] next_wstate;
  wire   SYNOPSYS_UNCONNECTED__0;
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
  assign bready = N124;

  DFFSR \wstate_reg[0]  ( .D(next_wstate[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(wstate[0]) );
  DFFSR \wstate_reg[1]  ( .D(next_wstate[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(wstate[1]) );
  DFFSR \configs_reg[0][0]  ( .D(n613), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][0] ) );
  DFFSR \configs_reg[5][1]  ( .D(n1075), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wstrb[1]) );
  DFFSR \configs_reg[5][0]  ( .D(n1076), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wstrb[0]) );
  DFFSR \configs_reg[4][9]  ( .D(n1077), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[9]) );
  DFFSR \configs_reg[4][8]  ( .D(n1078), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[8]) );
  DFFSR \configs_reg[4][7]  ( .D(n1079), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[7]) );
  DFFSR \configs_reg[4][6]  ( .D(n1080), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[6]) );
  DFFSR \configs_reg[4][5]  ( .D(n1081), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[5]) );
  DFFSR \configs_reg[4][4]  ( .D(n1082), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[4]) );
  DFFSR \configs_reg[4][3]  ( .D(n1083), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[3]) );
  DFFSR \configs_reg[4][2]  ( .D(n1084), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[2]) );
  DFFSR \configs_reg[4][1]  ( .D(n1085), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[1]) );
  DFFSR \configs_reg[4][0]  ( .D(n1086), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[0]) );
  DFFSR \configs_reg[3][10]  ( .D(n587), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][10] ) );
  DFFSR \configs_reg[3][9]  ( .D(n585), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][9] ) );
  DFFSR \configs_reg[3][8]  ( .D(n583), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][8] ) );
  DFFSR \configs_reg[3][7]  ( .D(n581), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][7] ) );
  DFFSR \configs_reg[3][6]  ( .D(n579), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][6] ) );
  DFFSR \configs_reg[3][5]  ( .D(n577), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][5] ) );
  DFFSR \configs_reg[3][4]  ( .D(n575), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][4] ) );
  DFFSR \configs_reg[3][3]  ( .D(n573), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][3] ) );
  DFFSR \configs_reg[3][2]  ( .D(n571), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][2] ) );
  DFFSR \configs_reg[3][1]  ( .D(n569), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][1] ) );
  DFFSR \configs_reg[3][0]  ( .D(n567), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][0] ) );
  DFFSR \configs_reg[2][9]  ( .D(n1087), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[9]) );
  DFFSR \configs_reg[2][8]  ( .D(n1088), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[8]) );
  DFFSR \configs_reg[2][7]  ( .D(n1089), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[7]) );
  DFFSR \configs_reg[2][6]  ( .D(n1090), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[6]) );
  DFFSR \configs_reg[2][5]  ( .D(n1091), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[5]) );
  DFFSR \configs_reg[2][4]  ( .D(n1092), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[4]) );
  DFFSR \configs_reg[2][3]  ( .D(n1093), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[3]) );
  DFFSR \configs_reg[2][2]  ( .D(n1094), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[2]) );
  DFFSR \configs_reg[2][1]  ( .D(n1095), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[1]) );
  DFFSR \configs_reg[2][0]  ( .D(n1096), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[0]) );
  DFFSR \configs_reg[1][10]  ( .D(n545), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][10] ) );
  DFFSR \configs_reg[1][9]  ( .D(n543), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][9] ) );
  DFFSR \configs_reg[1][8]  ( .D(n541), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][8] ) );
  DFFSR \configs_reg[1][7]  ( .D(n539), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][7] ) );
  DFFSR \configs_reg[1][6]  ( .D(n537), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][6] ) );
  DFFSR \configs_reg[1][5]  ( .D(n535), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][5] ) );
  DFFSR \configs_reg[1][4]  ( .D(n533), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][4] ) );
  DFFSR \configs_reg[1][3]  ( .D(n531), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][3] ) );
  DFFSR \configs_reg[1][2]  ( .D(n529), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][2] ) );
  DFFSR \configs_reg[1][1]  ( .D(n527), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][1] ) );
  DFFSR \configs_reg[1][0]  ( .D(n525), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][0] ) );
  DFFSR \configs_reg[0][31]  ( .D(n523), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][31] ) );
  DFFSR \configs_reg[0][30]  ( .D(n521), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][30] ) );
  DFFSR \configs_reg[0][29]  ( .D(n519), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][29] ) );
  DFFSR \configs_reg[0][28]  ( .D(n517), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][28] ) );
  DFFSR \configs_reg[0][27]  ( .D(n515), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][27] ) );
  DFFSR \configs_reg[0][26]  ( .D(n513), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][26] ) );
  DFFSR \configs_reg[0][25]  ( .D(n511), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][25] ) );
  DFFSR \configs_reg[0][24]  ( .D(n509), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][24] ) );
  DFFSR \configs_reg[0][23]  ( .D(n507), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][23] ) );
  DFFSR \configs_reg[0][22]  ( .D(n505), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][22] ) );
  DFFSR \configs_reg[0][21]  ( .D(n503), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][21] ) );
  DFFSR \configs_reg[0][20]  ( .D(n501), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][20] ) );
  DFFSR \configs_reg[0][19]  ( .D(n499), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][19] ) );
  DFFSR \configs_reg[0][18]  ( .D(n497), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][18] ) );
  DFFSR \configs_reg[0][17]  ( .D(n495), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][17] ) );
  DFFSR \configs_reg[0][16]  ( .D(n493), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][16] ) );
  DFFSR \configs_reg[0][15]  ( .D(n491), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][15] ) );
  DFFSR \configs_reg[0][14]  ( .D(n489), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][14] ) );
  DFFSR \configs_reg[0][13]  ( .D(n487), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][13] ) );
  DFFSR \configs_reg[0][12]  ( .D(n485), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][12] ) );
  DFFSR \configs_reg[0][11]  ( .D(n483), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][11] ) );
  DFFSR \configs_reg[0][10]  ( .D(n481), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][10] ) );
  DFFSR \configs_reg[0][9]  ( .D(n479), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][9] ) );
  DFFSR \configs_reg[0][8]  ( .D(n477), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][8] ) );
  DFFSR \configs_reg[0][7]  ( .D(n475), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][7] ) );
  DFFSR \configs_reg[0][6]  ( .D(n473), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][6] ) );
  DFFSR \configs_reg[0][5]  ( .D(n471), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][5] ) );
  DFFSR \configs_reg[0][4]  ( .D(n469), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][4] ) );
  DFFSR \configs_reg[0][3]  ( .D(n467), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][3] ) );
  DFFSR \configs_reg[0][2]  ( .D(n465), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][2] ) );
  DFFSR \configs_reg[0][1]  ( .D(n463), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][1] ) );
  DFFSR new_config_reg ( .D(n681), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        new_config) );
  DFFSR \k_reg[30]  ( .D(n649), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[30]) );
  DFFSR \k_reg[31]  ( .D(n680), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[31]) );
  DFFSR \k_reg[0]  ( .D(n679), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[0]) );
  DFFSR \k_reg[1]  ( .D(n678), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[1]) );
  DFFSR \k_reg[2]  ( .D(n677), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[2]) );
  DFFSR \k_reg[3]  ( .D(n676), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[3]) );
  DFFSR \k_reg[4]  ( .D(n675), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[4]) );
  DFFSR \k_reg[5]  ( .D(n674), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[5]) );
  DFFSR \k_reg[6]  ( .D(n673), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[6]) );
  DFFSR \k_reg[7]  ( .D(n672), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[7]) );
  DFFSR \k_reg[8]  ( .D(n671), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[8]) );
  DFFSR \k_reg[9]  ( .D(n670), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[9]) );
  DFFSR \k_reg[10]  ( .D(n669), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[10]) );
  DFFSR \k_reg[11]  ( .D(n668), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[11]) );
  DFFSR \k_reg[12]  ( .D(n667), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[12]) );
  DFFSR \k_reg[13]  ( .D(n666), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[13]) );
  DFFSR \k_reg[14]  ( .D(n665), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[14]) );
  DFFSR \k_reg[15]  ( .D(n664), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[15]) );
  DFFSR \k_reg[16]  ( .D(n663), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[16]) );
  DFFSR \k_reg[17]  ( .D(n662), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[17]) );
  DFFSR \k_reg[18]  ( .D(n661), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[18]) );
  DFFSR \k_reg[19]  ( .D(n660), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[19]) );
  DFFSR \k_reg[20]  ( .D(n659), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[20]) );
  DFFSR \k_reg[21]  ( .D(n658), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[21]) );
  DFFSR \k_reg[22]  ( .D(n657), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[22]) );
  DFFSR \k_reg[23]  ( .D(n656), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[23]) );
  DFFSR \k_reg[24]  ( .D(n655), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[24]) );
  DFFSR \k_reg[25]  ( .D(n654), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[25]) );
  DFFSR \k_reg[26]  ( .D(n653), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[26]) );
  DFFSR \k_reg[27]  ( .D(n652), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[27]) );
  DFFSR \k_reg[28]  ( .D(n651), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[28]) );
  DFFSR \k_reg[29]  ( .D(n650), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[29]) );
  DFFSR \rstate_reg[0]  ( .D(next_rstate[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(rstate[0]) );
  DFFSR \rstate_reg[1]  ( .D(next_rstate[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(rstate[1]) );
  DFFSR \j_reg[30]  ( .D(n648), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[30]) );
  DFFSR \j_reg[0]  ( .D(n647), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[0]) );
  DFFSR \j_reg[1]  ( .D(n646), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[1]) );
  DFFSR \j_reg[2]  ( .D(n645), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[2]) );
  DFFSR \j_reg[3]  ( .D(n644), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[3]) );
  DFFSR \j_reg[4]  ( .D(n643), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[4]) );
  DFFSR \j_reg[5]  ( .D(n642), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[5]) );
  DFFSR \j_reg[6]  ( .D(n641), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[6]) );
  DFFSR \j_reg[7]  ( .D(n640), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[7]) );
  DFFSR \j_reg[8]  ( .D(n639), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[8]) );
  DFFSR \j_reg[9]  ( .D(n638), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[9]) );
  DFFSR \j_reg[10]  ( .D(n637), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[10]) );
  DFFSR \j_reg[11]  ( .D(n636), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[11]) );
  DFFSR \j_reg[12]  ( .D(n635), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[12]) );
  DFFSR \j_reg[13]  ( .D(n634), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[13]) );
  DFFSR \j_reg[14]  ( .D(n633), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[14]) );
  DFFSR \j_reg[15]  ( .D(n632), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[15]) );
  DFFSR \j_reg[16]  ( .D(n631), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[16]) );
  DFFSR \j_reg[17]  ( .D(n630), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[17]) );
  DFFSR \j_reg[18]  ( .D(n629), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[18]) );
  DFFSR \j_reg[19]  ( .D(n628), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[19]) );
  DFFSR \j_reg[20]  ( .D(n627), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[20]) );
  DFFSR \j_reg[21]  ( .D(n626), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[21]) );
  DFFSR \j_reg[22]  ( .D(n625), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[22]) );
  DFFSR \j_reg[23]  ( .D(n624), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[23]) );
  DFFSR \j_reg[24]  ( .D(n623), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[24]) );
  DFFSR \j_reg[25]  ( .D(n622), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[25]) );
  DFFSR \j_reg[26]  ( .D(n621), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[26]) );
  DFFSR \j_reg[27]  ( .D(n620), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[27]) );
  DFFSR \j_reg[28]  ( .D(n619), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[28]) );
  DFFSR \j_reg[29]  ( .D(n618), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[29]) );
  DFFSR \j_reg[31]  ( .D(n617), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[31]) );
  fft_axi_counter_WRITE_OR_READ0 read_counter ( .clk(clk), .n_rst(n_rst), 
        .len(arlen), .ready(rready), .valid(rvalid), .resp(rresp), .last(
        rcounter_last) );
  fft_axi_counter_WRITE_OR_READ1 write_counter ( .clk(clk), .n_rst(n_rst), 
        .len(awlen), .ready(wready), .valid(wvalid), .resp(bresp), .last(wlast) );
  fft_axi_manager_DW01_dec_0 sub_106 ( .A(k), .SUM({N92, N91, N90, N89, N88, 
        N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, 
        N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61}) );
  fft_axi_manager_DW01_dec_1 sub_91 ( .A(j), .SUM({N53, N52, N51, N50, N49, 
        N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, 
        N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22}) );
  fft_axi_manager_DW01_inc_0 add_75 ( .A({\configs[0][31] , \configs[0][30] , 
        \configs[0][29] , \configs[0][28] , \configs[0][27] , \configs[0][26] , 
        \configs[0][25] , \configs[0][24] , \configs[0][23] , \configs[0][22] , 
        \configs[0][21] , \configs[0][20] , \configs[0][19] , \configs[0][18] , 
        \configs[0][17] , \configs[0][16] , \configs[0][15] , \configs[0][14] , 
        \configs[0][13] , \configs[0][12] , \configs[0][11] , \configs[0][10] , 
        \configs[0][9] , \configs[0][8] , \configs[0][7] , \configs[0][6] , 
        \configs[0][5] , \configs[0][4] , \configs[0][3] , \configs[0][2] , 
        \configs[0][1] , \configs[0][0] }), .SUM({num_read_frames[31:1], 
        SYNOPSYS_UNCONNECTED__0}) );
  INVX8 U709 ( .A(new_config), .Y(n733) );
  INVX1 U710 ( .A(n710), .Y(n684) );
  INVX8 U711 ( .A(n684), .Y(n685) );
  BUFX2 U712 ( .A(n736), .Y(n686) );
  BUFX2 U713 ( .A(n801), .Y(n687) );
  INVX4 U714 ( .A(n865), .Y(n802) );
  BUFX2 U715 ( .A(n737), .Y(n688) );
  AND2X1 U716 ( .A(n689), .B(out_valid), .Y(wvalid) );
  OAI21X1 U717 ( .A(bvalid), .B(n690), .C(n691), .Y(next_wstate[1]) );
  AOI21X1 U718 ( .A(awready), .B(awvalid), .C(n689), .Y(n691) );
  NAND3X1 U719 ( .A(n692), .B(n693), .C(n694), .Y(next_wstate[0]) );
  AOI22X1 U720 ( .A(N124), .B(n695), .C(awvalid), .D(n696), .Y(n694) );
  INVX1 U721 ( .A(awready), .Y(n696) );
  INVX1 U722 ( .A(bvalid), .Y(n695) );
  NAND3X1 U723 ( .A(wlast), .B(n689), .C(wready), .Y(n693) );
  NOR2X1 U724 ( .A(n690), .B(wstate[0]), .Y(n689) );
  NAND3X1 U725 ( .A(out_valid), .B(n697), .C(n698), .Y(n692) );
  OAI21X1 U726 ( .A(n699), .B(n700), .C(n701), .Y(next_rstate[1]) );
  OAI21X1 U727 ( .A(n702), .B(n703), .C(rready), .Y(n701) );
  INVX1 U728 ( .A(n704), .Y(rready) );
  NAND2X1 U729 ( .A(rcounter_last), .B(n705), .Y(n703) );
  INVX1 U730 ( .A(arvalid), .Y(n699) );
  OAI21X1 U731 ( .A(n704), .B(n705), .C(n706), .Y(next_rstate[0]) );
  AOI22X1 U732 ( .A(n707), .B(n708), .C(arvalid), .D(n700), .Y(n706) );
  INVX1 U733 ( .A(arready), .Y(n700) );
  INVX1 U734 ( .A(rresp), .Y(n705) );
  INVX1 U735 ( .A(n709), .Y(n1075) );
  MUX2X1 U736 ( .B(\config_reg[5][1] ), .A(wstrb[1]), .S(n685), .Y(n709) );
  INVX1 U737 ( .A(n711), .Y(n1076) );
  MUX2X1 U738 ( .B(\config_reg[5][0] ), .A(wstrb[0]), .S(n685), .Y(n711) );
  INVX1 U739 ( .A(n712), .Y(n1077) );
  MUX2X1 U740 ( .B(\config_reg[4][9] ), .A(awlen[9]), .S(n685), .Y(n712) );
  INVX1 U741 ( .A(n713), .Y(n1078) );
  MUX2X1 U742 ( .B(\config_reg[4][8] ), .A(awlen[8]), .S(n685), .Y(n713) );
  INVX1 U743 ( .A(n714), .Y(n1079) );
  MUX2X1 U744 ( .B(\config_reg[4][7] ), .A(awlen[7]), .S(n685), .Y(n714) );
  INVX1 U745 ( .A(n715), .Y(n1080) );
  MUX2X1 U746 ( .B(\config_reg[4][6] ), .A(awlen[6]), .S(n685), .Y(n715) );
  INVX1 U747 ( .A(n716), .Y(n1081) );
  MUX2X1 U748 ( .B(\config_reg[4][5] ), .A(awlen[5]), .S(n685), .Y(n716) );
  INVX1 U749 ( .A(n717), .Y(n1082) );
  MUX2X1 U750 ( .B(\config_reg[4][4] ), .A(awlen[4]), .S(n685), .Y(n717) );
  INVX1 U751 ( .A(n718), .Y(n1083) );
  MUX2X1 U752 ( .B(\config_reg[4][3] ), .A(awlen[3]), .S(n685), .Y(n718) );
  INVX1 U753 ( .A(n719), .Y(n1084) );
  MUX2X1 U754 ( .B(\config_reg[4][2] ), .A(awlen[2]), .S(n685), .Y(n719) );
  INVX1 U755 ( .A(n720), .Y(n1085) );
  MUX2X1 U756 ( .B(\config_reg[4][1] ), .A(awlen[1]), .S(n685), .Y(n720) );
  INVX1 U757 ( .A(n721), .Y(n1086) );
  MUX2X1 U758 ( .B(\config_reg[4][0] ), .A(awlen[0]), .S(n685), .Y(n721) );
  INVX1 U759 ( .A(n722), .Y(n1087) );
  MUX2X1 U760 ( .B(\config_reg[2][9] ), .A(arlen[9]), .S(n685), .Y(n722) );
  INVX1 U761 ( .A(n723), .Y(n1088) );
  MUX2X1 U762 ( .B(\config_reg[2][8] ), .A(arlen[8]), .S(n685), .Y(n723) );
  INVX1 U763 ( .A(n724), .Y(n1089) );
  MUX2X1 U764 ( .B(\config_reg[2][7] ), .A(arlen[7]), .S(n685), .Y(n724) );
  INVX1 U765 ( .A(n725), .Y(n1090) );
  MUX2X1 U766 ( .B(\config_reg[2][6] ), .A(arlen[6]), .S(n685), .Y(n725) );
  INVX1 U767 ( .A(n726), .Y(n1091) );
  MUX2X1 U768 ( .B(\config_reg[2][5] ), .A(arlen[5]), .S(n685), .Y(n726) );
  INVX1 U769 ( .A(n727), .Y(n1092) );
  MUX2X1 U770 ( .B(\config_reg[2][4] ), .A(arlen[4]), .S(n685), .Y(n727) );
  INVX1 U771 ( .A(n728), .Y(n1093) );
  MUX2X1 U772 ( .B(\config_reg[2][3] ), .A(arlen[3]), .S(n685), .Y(n728) );
  INVX1 U773 ( .A(n729), .Y(n1094) );
  MUX2X1 U774 ( .B(\config_reg[2][2] ), .A(arlen[2]), .S(n685), .Y(n729) );
  INVX1 U775 ( .A(n730), .Y(n1095) );
  MUX2X1 U776 ( .B(\config_reg[2][1] ), .A(arlen[1]), .S(n685), .Y(n730) );
  INVX1 U777 ( .A(n731), .Y(n1096) );
  MUX2X1 U778 ( .B(\config_reg[2][0] ), .A(arlen[0]), .S(n685), .Y(n731) );
  NOR2X1 U779 ( .A(n732), .B(rstate[1]), .Y(arvalid) );
  XOR2X1 U780 ( .A(n733), .B(n685), .Y(n681) );
  OAI21X1 U781 ( .A(n733), .B(n734), .C(n735), .Y(n680) );
  AOI22X1 U782 ( .A(N92), .B(n686), .C(k[31]), .D(n688), .Y(n735) );
  INVX1 U783 ( .A(num_read_frames[31]), .Y(n734) );
  OAI21X1 U784 ( .A(\configs[0][0] ), .B(n733), .C(n738), .Y(n679) );
  AOI22X1 U785 ( .A(N61), .B(n686), .C(k[0]), .D(n688), .Y(n738) );
  OAI21X1 U786 ( .A(n733), .B(n739), .C(n740), .Y(n678) );
  AOI22X1 U787 ( .A(N62), .B(n686), .C(k[1]), .D(n688), .Y(n740) );
  INVX1 U788 ( .A(num_read_frames[1]), .Y(n739) );
  OAI21X1 U789 ( .A(n733), .B(n741), .C(n742), .Y(n677) );
  AOI22X1 U790 ( .A(N63), .B(n686), .C(k[2]), .D(n688), .Y(n742) );
  INVX1 U791 ( .A(num_read_frames[2]), .Y(n741) );
  OAI21X1 U792 ( .A(n733), .B(n743), .C(n744), .Y(n676) );
  AOI22X1 U793 ( .A(N64), .B(n686), .C(k[3]), .D(n688), .Y(n744) );
  INVX1 U794 ( .A(num_read_frames[3]), .Y(n743) );
  OAI21X1 U795 ( .A(n733), .B(n745), .C(n746), .Y(n675) );
  AOI22X1 U796 ( .A(N65), .B(n686), .C(k[4]), .D(n688), .Y(n746) );
  INVX1 U797 ( .A(num_read_frames[4]), .Y(n745) );
  OAI21X1 U798 ( .A(n733), .B(n747), .C(n748), .Y(n674) );
  AOI22X1 U799 ( .A(N66), .B(n686), .C(k[5]), .D(n688), .Y(n748) );
  INVX1 U800 ( .A(num_read_frames[5]), .Y(n747) );
  OAI21X1 U801 ( .A(n733), .B(n749), .C(n750), .Y(n673) );
  AOI22X1 U802 ( .A(N67), .B(n686), .C(k[6]), .D(n688), .Y(n750) );
  INVX1 U803 ( .A(num_read_frames[6]), .Y(n749) );
  OAI21X1 U804 ( .A(n733), .B(n751), .C(n752), .Y(n672) );
  AOI22X1 U805 ( .A(N68), .B(n686), .C(k[7]), .D(n688), .Y(n752) );
  INVX1 U806 ( .A(num_read_frames[7]), .Y(n751) );
  OAI21X1 U807 ( .A(n733), .B(n753), .C(n754), .Y(n671) );
  AOI22X1 U808 ( .A(N69), .B(n686), .C(k[8]), .D(n688), .Y(n754) );
  INVX1 U809 ( .A(num_read_frames[8]), .Y(n753) );
  OAI21X1 U810 ( .A(n733), .B(n755), .C(n756), .Y(n670) );
  AOI22X1 U811 ( .A(N70), .B(n686), .C(k[9]), .D(n688), .Y(n756) );
  INVX1 U812 ( .A(num_read_frames[9]), .Y(n755) );
  OAI21X1 U813 ( .A(n733), .B(n757), .C(n758), .Y(n669) );
  AOI22X1 U814 ( .A(N71), .B(n686), .C(k[10]), .D(n688), .Y(n758) );
  INVX1 U815 ( .A(num_read_frames[10]), .Y(n757) );
  OAI21X1 U816 ( .A(n733), .B(n759), .C(n760), .Y(n668) );
  AOI22X1 U817 ( .A(N72), .B(n686), .C(k[11]), .D(n688), .Y(n760) );
  INVX1 U818 ( .A(num_read_frames[11]), .Y(n759) );
  OAI21X1 U819 ( .A(n733), .B(n761), .C(n762), .Y(n667) );
  AOI22X1 U820 ( .A(N73), .B(n686), .C(k[12]), .D(n688), .Y(n762) );
  INVX1 U821 ( .A(num_read_frames[12]), .Y(n761) );
  OAI21X1 U822 ( .A(n733), .B(n763), .C(n764), .Y(n666) );
  AOI22X1 U823 ( .A(N74), .B(n686), .C(k[13]), .D(n688), .Y(n764) );
  INVX1 U824 ( .A(num_read_frames[13]), .Y(n763) );
  OAI21X1 U825 ( .A(n733), .B(n765), .C(n766), .Y(n665) );
  AOI22X1 U826 ( .A(N75), .B(n686), .C(k[14]), .D(n688), .Y(n766) );
  INVX1 U827 ( .A(num_read_frames[14]), .Y(n765) );
  OAI21X1 U828 ( .A(n733), .B(n767), .C(n768), .Y(n664) );
  AOI22X1 U829 ( .A(N76), .B(n686), .C(k[15]), .D(n688), .Y(n768) );
  INVX1 U830 ( .A(num_read_frames[15]), .Y(n767) );
  OAI21X1 U831 ( .A(n733), .B(n769), .C(n770), .Y(n663) );
  AOI22X1 U832 ( .A(N77), .B(n686), .C(k[16]), .D(n688), .Y(n770) );
  INVX1 U833 ( .A(num_read_frames[16]), .Y(n769) );
  OAI21X1 U834 ( .A(n733), .B(n771), .C(n772), .Y(n662) );
  AOI22X1 U835 ( .A(N78), .B(n686), .C(k[17]), .D(n688), .Y(n772) );
  INVX1 U836 ( .A(num_read_frames[17]), .Y(n771) );
  OAI21X1 U837 ( .A(n733), .B(n773), .C(n774), .Y(n661) );
  AOI22X1 U838 ( .A(N79), .B(n686), .C(k[18]), .D(n688), .Y(n774) );
  INVX1 U839 ( .A(num_read_frames[18]), .Y(n773) );
  OAI21X1 U840 ( .A(n733), .B(n775), .C(n776), .Y(n660) );
  AOI22X1 U841 ( .A(N80), .B(n686), .C(k[19]), .D(n688), .Y(n776) );
  INVX1 U842 ( .A(num_read_frames[19]), .Y(n775) );
  OAI21X1 U843 ( .A(n733), .B(n777), .C(n778), .Y(n659) );
  AOI22X1 U844 ( .A(N81), .B(n736), .C(k[20]), .D(n688), .Y(n778) );
  INVX1 U845 ( .A(num_read_frames[20]), .Y(n777) );
  OAI21X1 U846 ( .A(n733), .B(n779), .C(n780), .Y(n658) );
  AOI22X1 U847 ( .A(N82), .B(n736), .C(k[21]), .D(n688), .Y(n780) );
  INVX1 U848 ( .A(num_read_frames[21]), .Y(n779) );
  OAI21X1 U849 ( .A(n733), .B(n781), .C(n782), .Y(n657) );
  AOI22X1 U850 ( .A(N83), .B(n736), .C(k[22]), .D(n688), .Y(n782) );
  INVX1 U851 ( .A(num_read_frames[22]), .Y(n781) );
  OAI21X1 U852 ( .A(n733), .B(n783), .C(n784), .Y(n656) );
  AOI22X1 U853 ( .A(N84), .B(n736), .C(k[23]), .D(n737), .Y(n784) );
  INVX1 U854 ( .A(num_read_frames[23]), .Y(n783) );
  OAI21X1 U855 ( .A(n733), .B(n785), .C(n786), .Y(n655) );
  AOI22X1 U856 ( .A(N85), .B(n736), .C(k[24]), .D(n737), .Y(n786) );
  INVX1 U857 ( .A(num_read_frames[24]), .Y(n785) );
  OAI21X1 U858 ( .A(n733), .B(n787), .C(n788), .Y(n654) );
  AOI22X1 U859 ( .A(N86), .B(n736), .C(k[25]), .D(n737), .Y(n788) );
  INVX1 U860 ( .A(num_read_frames[25]), .Y(n787) );
  OAI21X1 U861 ( .A(n733), .B(n789), .C(n790), .Y(n653) );
  AOI22X1 U862 ( .A(N87), .B(n736), .C(k[26]), .D(n737), .Y(n790) );
  INVX1 U863 ( .A(num_read_frames[26]), .Y(n789) );
  OAI21X1 U864 ( .A(n733), .B(n791), .C(n792), .Y(n652) );
  AOI22X1 U865 ( .A(N88), .B(n736), .C(k[27]), .D(n737), .Y(n792) );
  INVX1 U866 ( .A(num_read_frames[27]), .Y(n791) );
  OAI21X1 U867 ( .A(n733), .B(n793), .C(n794), .Y(n651) );
  AOI22X1 U868 ( .A(N89), .B(n736), .C(k[28]), .D(n737), .Y(n794) );
  INVX1 U869 ( .A(num_read_frames[28]), .Y(n793) );
  OAI21X1 U870 ( .A(n733), .B(n795), .C(n796), .Y(n650) );
  AOI22X1 U871 ( .A(N90), .B(n736), .C(k[29]), .D(n737), .Y(n796) );
  INVX1 U872 ( .A(num_read_frames[29]), .Y(n795) );
  OAI21X1 U873 ( .A(n733), .B(n797), .C(n798), .Y(n649) );
  AOI22X1 U874 ( .A(N91), .B(n736), .C(k[30]), .D(n737), .Y(n798) );
  NOR2X1 U875 ( .A(n688), .B(new_config), .Y(n736) );
  AOI21X1 U876 ( .A(n708), .B(fft_done), .C(new_config), .Y(n737) );
  INVX1 U877 ( .A(num_read_frames[30]), .Y(n797) );
  OAI21X1 U878 ( .A(n733), .B(n799), .C(n800), .Y(n648) );
  AOI22X1 U879 ( .A(N52), .B(n687), .C(n802), .D(j[30]), .Y(n800) );
  OAI21X1 U880 ( .A(n733), .B(n803), .C(n804), .Y(n647) );
  AOI22X1 U881 ( .A(N22), .B(n687), .C(n802), .D(j[0]), .Y(n804) );
  OAI21X1 U882 ( .A(n733), .B(n805), .C(n806), .Y(n646) );
  AOI22X1 U883 ( .A(N23), .B(n687), .C(n802), .D(j[1]), .Y(n806) );
  OAI21X1 U884 ( .A(n733), .B(n807), .C(n808), .Y(n645) );
  AOI22X1 U885 ( .A(N24), .B(n687), .C(n802), .D(j[2]), .Y(n808) );
  OAI21X1 U886 ( .A(n733), .B(n809), .C(n810), .Y(n644) );
  AOI22X1 U887 ( .A(N25), .B(n687), .C(n802), .D(j[3]), .Y(n810) );
  OAI21X1 U888 ( .A(n733), .B(n811), .C(n812), .Y(n643) );
  AOI22X1 U889 ( .A(N26), .B(n687), .C(n802), .D(j[4]), .Y(n812) );
  OAI21X1 U890 ( .A(n733), .B(n813), .C(n814), .Y(n642) );
  AOI22X1 U891 ( .A(N27), .B(n687), .C(n802), .D(j[5]), .Y(n814) );
  OAI21X1 U892 ( .A(n733), .B(n815), .C(n816), .Y(n641) );
  AOI22X1 U893 ( .A(N28), .B(n687), .C(n802), .D(j[6]), .Y(n816) );
  OAI21X1 U894 ( .A(n733), .B(n817), .C(n818), .Y(n640) );
  AOI22X1 U895 ( .A(N29), .B(n687), .C(n802), .D(j[7]), .Y(n818) );
  OAI21X1 U896 ( .A(n733), .B(n819), .C(n820), .Y(n639) );
  AOI22X1 U897 ( .A(N30), .B(n687), .C(n802), .D(j[8]), .Y(n820) );
  OAI21X1 U898 ( .A(n733), .B(n821), .C(n822), .Y(n638) );
  AOI22X1 U899 ( .A(N31), .B(n687), .C(n802), .D(j[9]), .Y(n822) );
  OAI21X1 U900 ( .A(n733), .B(n823), .C(n824), .Y(n637) );
  AOI22X1 U901 ( .A(N32), .B(n687), .C(n802), .D(j[10]), .Y(n824) );
  OAI21X1 U902 ( .A(n733), .B(n825), .C(n826), .Y(n636) );
  AOI22X1 U903 ( .A(N33), .B(n687), .C(n802), .D(j[11]), .Y(n826) );
  OAI21X1 U904 ( .A(n733), .B(n827), .C(n828), .Y(n635) );
  AOI22X1 U905 ( .A(N34), .B(n687), .C(n802), .D(j[12]), .Y(n828) );
  OAI21X1 U906 ( .A(n733), .B(n829), .C(n830), .Y(n634) );
  AOI22X1 U907 ( .A(N35), .B(n687), .C(n802), .D(j[13]), .Y(n830) );
  OAI21X1 U908 ( .A(n733), .B(n831), .C(n832), .Y(n633) );
  AOI22X1 U909 ( .A(N36), .B(n687), .C(n802), .D(j[14]), .Y(n832) );
  OAI21X1 U910 ( .A(n733), .B(n833), .C(n834), .Y(n632) );
  AOI22X1 U911 ( .A(N37), .B(n687), .C(n802), .D(j[15]), .Y(n834) );
  OAI21X1 U912 ( .A(n733), .B(n835), .C(n836), .Y(n631) );
  AOI22X1 U913 ( .A(N38), .B(n687), .C(n802), .D(j[16]), .Y(n836) );
  OAI21X1 U914 ( .A(n733), .B(n837), .C(n838), .Y(n630) );
  AOI22X1 U915 ( .A(N39), .B(n687), .C(n802), .D(j[17]), .Y(n838) );
  OAI21X1 U916 ( .A(n733), .B(n839), .C(n840), .Y(n629) );
  AOI22X1 U917 ( .A(N40), .B(n687), .C(n802), .D(j[18]), .Y(n840) );
  OAI21X1 U918 ( .A(n733), .B(n841), .C(n842), .Y(n628) );
  AOI22X1 U919 ( .A(N41), .B(n687), .C(n802), .D(j[19]), .Y(n842) );
  OAI21X1 U920 ( .A(n733), .B(n843), .C(n844), .Y(n627) );
  AOI22X1 U921 ( .A(N42), .B(n801), .C(n802), .D(j[20]), .Y(n844) );
  OAI21X1 U922 ( .A(n733), .B(n845), .C(n846), .Y(n626) );
  AOI22X1 U923 ( .A(N43), .B(n801), .C(n802), .D(j[21]), .Y(n846) );
  OAI21X1 U924 ( .A(n733), .B(n847), .C(n848), .Y(n625) );
  AOI22X1 U925 ( .A(N44), .B(n801), .C(n802), .D(j[22]), .Y(n848) );
  OAI21X1 U926 ( .A(n733), .B(n849), .C(n850), .Y(n624) );
  AOI22X1 U927 ( .A(N45), .B(n801), .C(n802), .D(j[23]), .Y(n850) );
  OAI21X1 U928 ( .A(n733), .B(n851), .C(n852), .Y(n623) );
  AOI22X1 U929 ( .A(N46), .B(n801), .C(n802), .D(j[24]), .Y(n852) );
  OAI21X1 U930 ( .A(n733), .B(n853), .C(n854), .Y(n622) );
  AOI22X1 U931 ( .A(N47), .B(n801), .C(n802), .D(j[25]), .Y(n854) );
  OAI21X1 U932 ( .A(n733), .B(n855), .C(n856), .Y(n621) );
  AOI22X1 U933 ( .A(N48), .B(n801), .C(n802), .D(j[26]), .Y(n856) );
  OAI21X1 U934 ( .A(n733), .B(n857), .C(n858), .Y(n620) );
  AOI22X1 U935 ( .A(N49), .B(n801), .C(n802), .D(j[27]), .Y(n858) );
  OAI21X1 U936 ( .A(n733), .B(n859), .C(n860), .Y(n619) );
  AOI22X1 U937 ( .A(N50), .B(n801), .C(n802), .D(j[28]), .Y(n860) );
  OAI21X1 U938 ( .A(n733), .B(n861), .C(n862), .Y(n618) );
  AOI22X1 U939 ( .A(N51), .B(n801), .C(n802), .D(j[29]), .Y(n862) );
  OAI21X1 U940 ( .A(n733), .B(n863), .C(n864), .Y(n617) );
  AOI22X1 U941 ( .A(N53), .B(n801), .C(n802), .D(j[31]), .Y(n864) );
  NOR2X1 U942 ( .A(n802), .B(new_config), .Y(n801) );
  OAI21X1 U943 ( .A(n866), .B(n867), .C(n733), .Y(n865) );
  NAND2X1 U944 ( .A(n868), .B(n869), .Y(n867) );
  NOR2X1 U945 ( .A(n870), .B(n871), .Y(n869) );
  NAND3X1 U946 ( .A(n872), .B(n873), .C(n874), .Y(n871) );
  NOR2X1 U947 ( .A(n875), .B(n876), .Y(n874) );
  XOR2X1 U948 ( .A(k[23]), .B(j[23]), .Y(n876) );
  XOR2X1 U949 ( .A(k[22]), .B(j[22]), .Y(n875) );
  XNOR2X1 U950 ( .A(j[30]), .B(k[30]), .Y(n873) );
  XOR2X1 U951 ( .A(n877), .B(k[31]), .Y(n872) );
  NAND3X1 U952 ( .A(n878), .B(n879), .C(n880), .Y(n870) );
  NOR2X1 U953 ( .A(n881), .B(n882), .Y(n880) );
  XOR2X1 U954 ( .A(k[15]), .B(j[15]), .Y(n882) );
  XOR2X1 U955 ( .A(k[14]), .B(j[14]), .Y(n881) );
  XOR2X1 U956 ( .A(n883), .B(k[6]), .Y(n879) );
  XOR2X1 U957 ( .A(n884), .B(k[7]), .Y(n878) );
  NOR2X1 U958 ( .A(n885), .B(n886), .Y(n868) );
  NAND3X1 U959 ( .A(n887), .B(n888), .C(n889), .Y(n886) );
  NOR2X1 U960 ( .A(n890), .B(n891), .Y(n889) );
  XOR2X1 U961 ( .A(k[13]), .B(j[13]), .Y(n891) );
  XOR2X1 U962 ( .A(k[12]), .B(j[12]), .Y(n890) );
  XNOR2X1 U963 ( .A(j[4]), .B(k[4]), .Y(n888) );
  XNOR2X1 U964 ( .A(j[5]), .B(k[5]), .Y(n887) );
  NAND3X1 U965 ( .A(n892), .B(n893), .C(n894), .Y(n885) );
  NOR2X1 U966 ( .A(n895), .B(n896), .Y(n894) );
  XOR2X1 U967 ( .A(k[19]), .B(j[19]), .Y(n896) );
  XOR2X1 U968 ( .A(k[18]), .B(j[18]), .Y(n895) );
  XNOR2X1 U969 ( .A(j[26]), .B(k[26]), .Y(n893) );
  XNOR2X1 U970 ( .A(j[27]), .B(k[27]), .Y(n892) );
  NAND3X1 U971 ( .A(n897), .B(n898), .C(n899), .Y(n866) );
  NOR2X1 U972 ( .A(n900), .B(n901), .Y(n899) );
  NAND3X1 U973 ( .A(n902), .B(n903), .C(n904), .Y(n901) );
  NOR2X1 U974 ( .A(n905), .B(n906), .Y(n904) );
  XOR2X1 U975 ( .A(k[11]), .B(j[11]), .Y(n906) );
  XOR2X1 U976 ( .A(k[10]), .B(j[10]), .Y(n905) );
  XNOR2X1 U977 ( .A(j[2]), .B(k[2]), .Y(n903) );
  XOR2X1 U978 ( .A(n907), .B(k[3]), .Y(n902) );
  NAND3X1 U979 ( .A(n908), .B(n909), .C(n910), .Y(n900) );
  NOR2X1 U980 ( .A(n911), .B(n912), .Y(n910) );
  XOR2X1 U981 ( .A(k[1]), .B(j[1]), .Y(n912) );
  XOR2X1 U982 ( .A(k[0]), .B(j[0]), .Y(n911) );
  XNOR2X1 U983 ( .A(j[8]), .B(k[8]), .Y(n909) );
  XNOR2X1 U984 ( .A(j[9]), .B(k[9]), .Y(n908) );
  NOR2X1 U985 ( .A(n913), .B(n914), .Y(n898) );
  NAND2X1 U986 ( .A(n915), .B(n916), .Y(n914) );
  XOR2X1 U987 ( .A(n917), .B(k[17]), .Y(n916) );
  XOR2X1 U988 ( .A(n918), .B(k[21]), .Y(n915) );
  NAND3X1 U989 ( .A(n919), .B(fft_done), .C(n920), .Y(n913) );
  XNOR2X1 U990 ( .A(j[16]), .B(k[16]), .Y(n920) );
  XOR2X1 U991 ( .A(n921), .B(k[20]), .Y(n919) );
  NOR2X1 U992 ( .A(n922), .B(n923), .Y(n897) );
  NAND2X1 U993 ( .A(n924), .B(n925), .Y(n923) );
  XOR2X1 U994 ( .A(n926), .B(k[24]), .Y(n925) );
  XOR2X1 U995 ( .A(n927), .B(k[28]), .Y(n924) );
  NAND2X1 U996 ( .A(n928), .B(n929), .Y(n922) );
  XOR2X1 U997 ( .A(n930), .B(k[25]), .Y(n929) );
  XOR2X1 U998 ( .A(n931), .B(k[29]), .Y(n928) );
  MUX2X1 U999 ( .B(n932), .A(n803), .S(n685), .Y(n613) );
  INVX1 U1000 ( .A(\configs[0][0] ), .Y(n803) );
  INVX1 U1001 ( .A(\config_reg[0][0] ), .Y(n932) );
  MUX2X1 U1002 ( .B(n933), .A(n934), .S(n685), .Y(n587) );
  INVX1 U1003 ( .A(\config_reg[3][10] ), .Y(n933) );
  MUX2X1 U1004 ( .B(n935), .A(n936), .S(n685), .Y(n585) );
  INVX1 U1005 ( .A(\config_reg[3][9] ), .Y(n935) );
  MUX2X1 U1006 ( .B(n937), .A(n938), .S(n685), .Y(n583) );
  INVX1 U1007 ( .A(\config_reg[3][8] ), .Y(n937) );
  MUX2X1 U1008 ( .B(n939), .A(n940), .S(n685), .Y(n581) );
  INVX1 U1009 ( .A(\config_reg[3][7] ), .Y(n939) );
  MUX2X1 U1010 ( .B(n941), .A(n942), .S(n685), .Y(n579) );
  INVX1 U1011 ( .A(\config_reg[3][6] ), .Y(n941) );
  MUX2X1 U1012 ( .B(n943), .A(n944), .S(n685), .Y(n577) );
  INVX1 U1013 ( .A(\config_reg[3][5] ), .Y(n943) );
  MUX2X1 U1014 ( .B(n945), .A(n946), .S(n685), .Y(n575) );
  INVX1 U1015 ( .A(\config_reg[3][4] ), .Y(n945) );
  MUX2X1 U1016 ( .B(n947), .A(n948), .S(n685), .Y(n573) );
  INVX1 U1017 ( .A(\config_reg[3][3] ), .Y(n947) );
  MUX2X1 U1018 ( .B(n949), .A(n950), .S(n685), .Y(n571) );
  INVX1 U1019 ( .A(\config_reg[3][2] ), .Y(n949) );
  MUX2X1 U1020 ( .B(n951), .A(n952), .S(n685), .Y(n569) );
  INVX1 U1021 ( .A(\config_reg[3][1] ), .Y(n951) );
  MUX2X1 U1022 ( .B(n953), .A(n954), .S(n685), .Y(n567) );
  INVX1 U1023 ( .A(\config_reg[3][0] ), .Y(n953) );
  MUX2X1 U1024 ( .B(n955), .A(n956), .S(n685), .Y(n545) );
  INVX1 U1025 ( .A(\config_reg[1][10] ), .Y(n955) );
  MUX2X1 U1026 ( .B(n957), .A(n958), .S(n685), .Y(n543) );
  INVX1 U1027 ( .A(\config_reg[1][9] ), .Y(n957) );
  MUX2X1 U1028 ( .B(n959), .A(n960), .S(n685), .Y(n541) );
  INVX1 U1029 ( .A(\config_reg[1][8] ), .Y(n959) );
  MUX2X1 U1030 ( .B(n961), .A(n962), .S(n685), .Y(n539) );
  INVX1 U1031 ( .A(\config_reg[1][7] ), .Y(n961) );
  MUX2X1 U1032 ( .B(n963), .A(n964), .S(n685), .Y(n537) );
  INVX1 U1033 ( .A(\config_reg[1][6] ), .Y(n963) );
  MUX2X1 U1034 ( .B(n965), .A(n966), .S(n685), .Y(n535) );
  INVX1 U1035 ( .A(\config_reg[1][5] ), .Y(n965) );
  MUX2X1 U1036 ( .B(n967), .A(n968), .S(n685), .Y(n533) );
  INVX1 U1037 ( .A(\config_reg[1][4] ), .Y(n967) );
  MUX2X1 U1038 ( .B(n969), .A(n970), .S(n685), .Y(n531) );
  INVX1 U1039 ( .A(\config_reg[1][3] ), .Y(n969) );
  MUX2X1 U1040 ( .B(n971), .A(n972), .S(n685), .Y(n529) );
  INVX1 U1041 ( .A(\config_reg[1][2] ), .Y(n971) );
  MUX2X1 U1042 ( .B(n973), .A(n974), .S(n685), .Y(n527) );
  INVX1 U1043 ( .A(\config_reg[1][1] ), .Y(n973) );
  MUX2X1 U1044 ( .B(n975), .A(n976), .S(n685), .Y(n525) );
  INVX1 U1045 ( .A(\config_reg[1][0] ), .Y(n975) );
  MUX2X1 U1046 ( .B(n977), .A(n863), .S(n685), .Y(n523) );
  INVX1 U1047 ( .A(\configs[0][31] ), .Y(n863) );
  INVX1 U1048 ( .A(\config_reg[0][31] ), .Y(n977) );
  MUX2X1 U1049 ( .B(n978), .A(n799), .S(n685), .Y(n521) );
  INVX1 U1050 ( .A(\configs[0][30] ), .Y(n799) );
  INVX1 U1051 ( .A(\config_reg[0][30] ), .Y(n978) );
  MUX2X1 U1052 ( .B(n979), .A(n861), .S(n685), .Y(n519) );
  INVX1 U1053 ( .A(\configs[0][29] ), .Y(n861) );
  INVX1 U1054 ( .A(\config_reg[0][29] ), .Y(n979) );
  MUX2X1 U1055 ( .B(n980), .A(n859), .S(n685), .Y(n517) );
  INVX1 U1056 ( .A(\configs[0][28] ), .Y(n859) );
  INVX1 U1057 ( .A(\config_reg[0][28] ), .Y(n980) );
  MUX2X1 U1058 ( .B(n981), .A(n857), .S(n685), .Y(n515) );
  INVX1 U1059 ( .A(\configs[0][27] ), .Y(n857) );
  INVX1 U1060 ( .A(\config_reg[0][27] ), .Y(n981) );
  MUX2X1 U1061 ( .B(n982), .A(n855), .S(n685), .Y(n513) );
  INVX1 U1062 ( .A(\configs[0][26] ), .Y(n855) );
  INVX1 U1063 ( .A(\config_reg[0][26] ), .Y(n982) );
  MUX2X1 U1064 ( .B(n983), .A(n853), .S(n685), .Y(n511) );
  INVX1 U1065 ( .A(\configs[0][25] ), .Y(n853) );
  INVX1 U1066 ( .A(\config_reg[0][25] ), .Y(n983) );
  MUX2X1 U1067 ( .B(n984), .A(n851), .S(n685), .Y(n509) );
  INVX1 U1068 ( .A(\configs[0][24] ), .Y(n851) );
  INVX1 U1069 ( .A(\config_reg[0][24] ), .Y(n984) );
  MUX2X1 U1070 ( .B(n985), .A(n849), .S(n685), .Y(n507) );
  INVX1 U1071 ( .A(\configs[0][23] ), .Y(n849) );
  INVX1 U1072 ( .A(\config_reg[0][23] ), .Y(n985) );
  MUX2X1 U1073 ( .B(n986), .A(n847), .S(n685), .Y(n505) );
  INVX1 U1074 ( .A(\configs[0][22] ), .Y(n847) );
  INVX1 U1075 ( .A(\config_reg[0][22] ), .Y(n986) );
  MUX2X1 U1076 ( .B(n987), .A(n845), .S(n685), .Y(n503) );
  INVX1 U1077 ( .A(\configs[0][21] ), .Y(n845) );
  INVX1 U1078 ( .A(\config_reg[0][21] ), .Y(n987) );
  MUX2X1 U1079 ( .B(n988), .A(n843), .S(n685), .Y(n501) );
  INVX1 U1080 ( .A(\configs[0][20] ), .Y(n843) );
  INVX1 U1081 ( .A(\config_reg[0][20] ), .Y(n988) );
  MUX2X1 U1082 ( .B(n989), .A(n841), .S(n685), .Y(n499) );
  INVX1 U1083 ( .A(\configs[0][19] ), .Y(n841) );
  INVX1 U1084 ( .A(\config_reg[0][19] ), .Y(n989) );
  MUX2X1 U1085 ( .B(n990), .A(n839), .S(n685), .Y(n497) );
  INVX1 U1086 ( .A(\configs[0][18] ), .Y(n839) );
  INVX1 U1087 ( .A(\config_reg[0][18] ), .Y(n990) );
  MUX2X1 U1088 ( .B(n991), .A(n837), .S(n685), .Y(n495) );
  INVX1 U1089 ( .A(\configs[0][17] ), .Y(n837) );
  INVX1 U1090 ( .A(\config_reg[0][17] ), .Y(n991) );
  MUX2X1 U1091 ( .B(n992), .A(n835), .S(n685), .Y(n493) );
  INVX1 U1092 ( .A(\configs[0][16] ), .Y(n835) );
  INVX1 U1093 ( .A(\config_reg[0][16] ), .Y(n992) );
  MUX2X1 U1094 ( .B(n993), .A(n833), .S(n685), .Y(n491) );
  INVX1 U1095 ( .A(\configs[0][15] ), .Y(n833) );
  INVX1 U1096 ( .A(\config_reg[0][15] ), .Y(n993) );
  MUX2X1 U1097 ( .B(n994), .A(n831), .S(n685), .Y(n489) );
  INVX1 U1098 ( .A(\configs[0][14] ), .Y(n831) );
  INVX1 U1099 ( .A(\config_reg[0][14] ), .Y(n994) );
  MUX2X1 U1100 ( .B(n995), .A(n829), .S(n685), .Y(n487) );
  INVX1 U1101 ( .A(\configs[0][13] ), .Y(n829) );
  INVX1 U1102 ( .A(\config_reg[0][13] ), .Y(n995) );
  MUX2X1 U1103 ( .B(n996), .A(n827), .S(n685), .Y(n485) );
  INVX1 U1104 ( .A(\configs[0][12] ), .Y(n827) );
  INVX1 U1105 ( .A(\config_reg[0][12] ), .Y(n996) );
  MUX2X1 U1106 ( .B(n997), .A(n825), .S(n685), .Y(n483) );
  INVX1 U1107 ( .A(\configs[0][11] ), .Y(n825) );
  INVX1 U1108 ( .A(\config_reg[0][11] ), .Y(n997) );
  MUX2X1 U1109 ( .B(n998), .A(n823), .S(n685), .Y(n481) );
  INVX1 U1110 ( .A(\configs[0][10] ), .Y(n823) );
  INVX1 U1111 ( .A(\config_reg[0][10] ), .Y(n998) );
  MUX2X1 U1112 ( .B(n999), .A(n821), .S(n685), .Y(n479) );
  INVX1 U1113 ( .A(\configs[0][9] ), .Y(n821) );
  INVX1 U1114 ( .A(\config_reg[0][9] ), .Y(n999) );
  MUX2X1 U1115 ( .B(n1000), .A(n819), .S(n685), .Y(n477) );
  INVX1 U1116 ( .A(\configs[0][8] ), .Y(n819) );
  INVX1 U1117 ( .A(\config_reg[0][8] ), .Y(n1000) );
  MUX2X1 U1118 ( .B(n1001), .A(n817), .S(n685), .Y(n475) );
  INVX1 U1119 ( .A(\configs[0][7] ), .Y(n817) );
  INVX1 U1120 ( .A(\config_reg[0][7] ), .Y(n1001) );
  MUX2X1 U1121 ( .B(n1002), .A(n815), .S(n685), .Y(n473) );
  INVX1 U1122 ( .A(\configs[0][6] ), .Y(n815) );
  INVX1 U1123 ( .A(\config_reg[0][6] ), .Y(n1002) );
  MUX2X1 U1124 ( .B(n1003), .A(n813), .S(n685), .Y(n471) );
  INVX1 U1125 ( .A(\configs[0][5] ), .Y(n813) );
  INVX1 U1126 ( .A(\config_reg[0][5] ), .Y(n1003) );
  MUX2X1 U1127 ( .B(n1004), .A(n811), .S(n685), .Y(n469) );
  INVX1 U1128 ( .A(\configs[0][4] ), .Y(n811) );
  INVX1 U1129 ( .A(\config_reg[0][4] ), .Y(n1004) );
  MUX2X1 U1130 ( .B(n1005), .A(n809), .S(n685), .Y(n467) );
  INVX1 U1131 ( .A(\configs[0][3] ), .Y(n809) );
  INVX1 U1132 ( .A(\config_reg[0][3] ), .Y(n1005) );
  MUX2X1 U1133 ( .B(n1006), .A(n807), .S(n685), .Y(n465) );
  INVX1 U1134 ( .A(\configs[0][2] ), .Y(n807) );
  INVX1 U1135 ( .A(\config_reg[0][2] ), .Y(n1006) );
  MUX2X1 U1136 ( .B(n1007), .A(n805), .S(n685), .Y(n463) );
  NAND3X1 U1137 ( .A(n1008), .B(n1009), .C(n1010), .Y(n710) );
  AND2X1 U1138 ( .A(n698), .B(n707), .Y(n1010) );
  INVX1 U1139 ( .A(n708), .Y(n1009) );
  NAND3X1 U1140 ( .A(n1011), .B(n1012), .C(n1013), .Y(n708) );
  AND2X1 U1141 ( .A(n1014), .B(n1015), .Y(n1013) );
  NOR2X1 U1142 ( .A(n1016), .B(n1017), .Y(n1015) );
  NAND3X1 U1143 ( .A(n1018), .B(n1019), .C(n1020), .Y(n1017) );
  NOR2X1 U1144 ( .A(k[5]), .B(k[4]), .Y(n1020) );
  INVX1 U1145 ( .A(k[3]), .Y(n1019) );
  INVX1 U1146 ( .A(k[31]), .Y(n1018) );
  NAND3X1 U1147 ( .A(n1021), .B(n1022), .C(n1023), .Y(n1016) );
  NOR2X1 U1148 ( .A(k[9]), .B(k[8]), .Y(n1023) );
  INVX1 U1149 ( .A(k[7]), .Y(n1022) );
  INVX1 U1150 ( .A(k[6]), .Y(n1021) );
  NOR2X1 U1151 ( .A(n1024), .B(n1025), .Y(n1014) );
  NAND3X1 U1152 ( .A(n1026), .B(n1027), .C(n1028), .Y(n1025) );
  NOR2X1 U1153 ( .A(k[27]), .B(k[26]), .Y(n1028) );
  INVX1 U1154 ( .A(k[25]), .Y(n1027) );
  INVX1 U1155 ( .A(k[24]), .Y(n1026) );
  NAND3X1 U1156 ( .A(n1029), .B(n1030), .C(n1031), .Y(n1024) );
  NOR2X1 U1157 ( .A(k[30]), .B(k[2]), .Y(n1031) );
  INVX1 U1158 ( .A(k[29]), .Y(n1030) );
  INVX1 U1159 ( .A(k[28]), .Y(n1029) );
  NOR2X1 U1160 ( .A(n1032), .B(n1033), .Y(n1012) );
  NAND3X1 U1161 ( .A(n1034), .B(n1035), .C(n1036), .Y(n1033) );
  NOR2X1 U1162 ( .A(k[1]), .B(k[19]), .Y(n1036) );
  INVX1 U1163 ( .A(k[18]), .Y(n1035) );
  INVX1 U1164 ( .A(k[17]), .Y(n1034) );
  NAND3X1 U1165 ( .A(n1037), .B(n1038), .C(n1039), .Y(n1032) );
  NOR2X1 U1166 ( .A(k[23]), .B(k[22]), .Y(n1039) );
  INVX1 U1167 ( .A(k[21]), .Y(n1038) );
  INVX1 U1168 ( .A(k[20]), .Y(n1037) );
  NOR2X1 U1169 ( .A(n1040), .B(n1041), .Y(n1011) );
  NAND3X1 U1170 ( .A(n1042), .B(n1043), .C(n1044), .Y(n1041) );
  NOR2X1 U1171 ( .A(k[12]), .B(k[11]), .Y(n1044) );
  INVX1 U1172 ( .A(k[10]), .Y(n1043) );
  INVX1 U1173 ( .A(k[0]), .Y(n1042) );
  NAND3X1 U1174 ( .A(n1045), .B(n1046), .C(n1047), .Y(n1040) );
  NOR2X1 U1175 ( .A(k[16]), .B(k[15]), .Y(n1047) );
  INVX1 U1176 ( .A(k[14]), .Y(n1046) );
  INVX1 U1177 ( .A(k[13]), .Y(n1045) );
  INVX1 U1178 ( .A(n697), .Y(n1008) );
  NAND3X1 U1179 ( .A(n1048), .B(n1049), .C(n1050), .Y(n697) );
  AND2X1 U1180 ( .A(n1051), .B(n1052), .Y(n1050) );
  NOR2X1 U1181 ( .A(n1053), .B(n1054), .Y(n1052) );
  NAND3X1 U1182 ( .A(n877), .B(n907), .C(n1055), .Y(n1054) );
  NOR2X1 U1183 ( .A(j[5]), .B(j[4]), .Y(n1055) );
  INVX1 U1184 ( .A(j[3]), .Y(n907) );
  INVX1 U1185 ( .A(j[31]), .Y(n877) );
  NAND3X1 U1186 ( .A(n883), .B(n884), .C(n1056), .Y(n1053) );
  NOR2X1 U1187 ( .A(j[9]), .B(j[8]), .Y(n1056) );
  INVX1 U1188 ( .A(j[7]), .Y(n884) );
  INVX1 U1189 ( .A(j[6]), .Y(n883) );
  NOR2X1 U1190 ( .A(n1057), .B(n1058), .Y(n1051) );
  NAND3X1 U1191 ( .A(n926), .B(n930), .C(n1059), .Y(n1058) );
  NOR2X1 U1192 ( .A(j[27]), .B(j[26]), .Y(n1059) );
  INVX1 U1193 ( .A(j[25]), .Y(n930) );
  INVX1 U1194 ( .A(j[24]), .Y(n926) );
  NAND3X1 U1195 ( .A(n927), .B(n931), .C(n1060), .Y(n1057) );
  NOR2X1 U1196 ( .A(j[30]), .B(j[2]), .Y(n1060) );
  INVX1 U1197 ( .A(j[29]), .Y(n931) );
  INVX1 U1198 ( .A(j[28]), .Y(n927) );
  NOR2X1 U1199 ( .A(n1061), .B(n1062), .Y(n1049) );
  NAND3X1 U1200 ( .A(n917), .B(n1063), .C(n1064), .Y(n1062) );
  NOR2X1 U1201 ( .A(j[1]), .B(j[19]), .Y(n1064) );
  INVX1 U1202 ( .A(j[18]), .Y(n1063) );
  INVX1 U1203 ( .A(j[17]), .Y(n917) );
  NAND3X1 U1204 ( .A(n921), .B(n918), .C(n1065), .Y(n1061) );
  NOR2X1 U1205 ( .A(j[23]), .B(j[22]), .Y(n1065) );
  INVX1 U1206 ( .A(j[21]), .Y(n918) );
  INVX1 U1207 ( .A(j[20]), .Y(n921) );
  NOR2X1 U1208 ( .A(n1066), .B(n1067), .Y(n1048) );
  NAND3X1 U1209 ( .A(n1068), .B(n1069), .C(n1070), .Y(n1067) );
  NOR2X1 U1210 ( .A(j[12]), .B(j[11]), .Y(n1070) );
  INVX1 U1211 ( .A(j[10]), .Y(n1069) );
  INVX1 U1212 ( .A(j[0]), .Y(n1068) );
  NAND3X1 U1213 ( .A(n1071), .B(n1072), .C(n1073), .Y(n1066) );
  NOR2X1 U1214 ( .A(j[16]), .B(j[15]), .Y(n1073) );
  INVX1 U1215 ( .A(j[14]), .Y(n1072) );
  INVX1 U1216 ( .A(j[13]), .Y(n1071) );
  INVX1 U1217 ( .A(\configs[0][1] ), .Y(n805) );
  INVX1 U1218 ( .A(\config_reg[0][1] ), .Y(n1007) );
  NOR2X1 U1219 ( .A(n702), .B(n704), .Y(in_valid) );
  NAND2X1 U1220 ( .A(rstate[1]), .B(n732), .Y(n704) );
  INVX1 U1221 ( .A(rstate[0]), .Y(n732) );
  INVX1 U1222 ( .A(rvalid), .Y(n702) );
  NOR2X1 U1223 ( .A(n1074), .B(wstate[1]), .Y(awvalid) );
  NOR2X1 U1224 ( .A(n698), .B(n936), .Y(awaddr[9]) );
  INVX1 U1225 ( .A(\configs[3][9] ), .Y(n936) );
  NOR2X1 U1226 ( .A(n698), .B(n938), .Y(awaddr[8]) );
  INVX1 U1227 ( .A(\configs[3][8] ), .Y(n938) );
  NOR2X1 U1228 ( .A(n698), .B(n940), .Y(awaddr[7]) );
  INVX1 U1229 ( .A(\configs[3][7] ), .Y(n940) );
  NOR2X1 U1230 ( .A(n698), .B(n942), .Y(awaddr[6]) );
  INVX1 U1231 ( .A(\configs[3][6] ), .Y(n942) );
  NOR2X1 U1232 ( .A(n698), .B(n944), .Y(awaddr[5]) );
  INVX1 U1233 ( .A(\configs[3][5] ), .Y(n944) );
  NOR2X1 U1234 ( .A(n698), .B(n946), .Y(awaddr[4]) );
  INVX1 U1235 ( .A(\configs[3][4] ), .Y(n946) );
  NOR2X1 U1236 ( .A(n698), .B(n948), .Y(awaddr[3]) );
  INVX1 U1237 ( .A(\configs[3][3] ), .Y(n948) );
  NOR2X1 U1238 ( .A(n698), .B(n950), .Y(awaddr[2]) );
  INVX1 U1239 ( .A(\configs[3][2] ), .Y(n950) );
  NOR2X1 U1240 ( .A(n698), .B(n952), .Y(awaddr[1]) );
  INVX1 U1241 ( .A(\configs[3][1] ), .Y(n952) );
  NOR2X1 U1242 ( .A(n698), .B(n934), .Y(awaddr[10]) );
  INVX1 U1243 ( .A(\configs[3][10] ), .Y(n934) );
  NOR2X1 U1244 ( .A(n698), .B(n954), .Y(awaddr[0]) );
  INVX1 U1245 ( .A(\configs[3][0] ), .Y(n954) );
  NOR2X1 U1246 ( .A(wstate[0]), .B(wstate[1]), .Y(n698) );
  NOR2X1 U1247 ( .A(n707), .B(n958), .Y(araddr[9]) );
  INVX1 U1248 ( .A(\configs[1][9] ), .Y(n958) );
  NOR2X1 U1249 ( .A(n707), .B(n960), .Y(araddr[8]) );
  INVX1 U1250 ( .A(\configs[1][8] ), .Y(n960) );
  NOR2X1 U1251 ( .A(n707), .B(n962), .Y(araddr[7]) );
  INVX1 U1252 ( .A(\configs[1][7] ), .Y(n962) );
  NOR2X1 U1253 ( .A(n707), .B(n964), .Y(araddr[6]) );
  INVX1 U1254 ( .A(\configs[1][6] ), .Y(n964) );
  NOR2X1 U1255 ( .A(n707), .B(n966), .Y(araddr[5]) );
  INVX1 U1256 ( .A(\configs[1][5] ), .Y(n966) );
  NOR2X1 U1257 ( .A(n707), .B(n968), .Y(araddr[4]) );
  INVX1 U1258 ( .A(\configs[1][4] ), .Y(n968) );
  NOR2X1 U1259 ( .A(n707), .B(n970), .Y(araddr[3]) );
  INVX1 U1260 ( .A(\configs[1][3] ), .Y(n970) );
  NOR2X1 U1261 ( .A(n707), .B(n972), .Y(araddr[2]) );
  INVX1 U1262 ( .A(\configs[1][2] ), .Y(n972) );
  NOR2X1 U1263 ( .A(n707), .B(n974), .Y(araddr[1]) );
  INVX1 U1264 ( .A(\configs[1][1] ), .Y(n974) );
  NOR2X1 U1265 ( .A(n707), .B(n956), .Y(araddr[10]) );
  INVX1 U1266 ( .A(\configs[1][10] ), .Y(n956) );
  NOR2X1 U1267 ( .A(n707), .B(n976), .Y(araddr[0]) );
  INVX1 U1268 ( .A(\configs[1][0] ), .Y(n976) );
  NOR2X1 U1269 ( .A(rstate[0]), .B(rstate[1]), .Y(n707) );
  NOR2X1 U1270 ( .A(n1074), .B(n690), .Y(N124) );
  INVX1 U1271 ( .A(wstate[1]), .Y(n690) );
  INVX1 U1272 ( .A(wstate[0]), .Y(n1074) );
endmodule

