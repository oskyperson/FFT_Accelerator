/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4
// Date      : Mon Apr 20 02:39:25 2026
/////////////////////////////////////////////////////////////


module fft_axi_counter_WRITE_OR_READ0_DW01_inc_0_DW01_inc_4 ( A, SUM );
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
  wire   N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, n1, n2, n3, n4, n5, n6,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76;

  DFFSR \i_reg[0]  ( .D(n67), .CLK(clk), .R(n1), .S(1'b1), .Q(i[0]) );
  DFFSR \i_reg[1]  ( .D(n76), .CLK(clk), .R(n1), .S(1'b1), .Q(i[1]) );
  DFFSR \i_reg[2]  ( .D(n75), .CLK(clk), .R(n1), .S(1'b1), .Q(i[2]) );
  DFFSR \i_reg[3]  ( .D(n74), .CLK(clk), .R(n1), .S(1'b1), .Q(i[3]) );
  DFFSR \i_reg[4]  ( .D(n73), .CLK(clk), .R(n1), .S(1'b1), .Q(i[4]) );
  DFFSR \i_reg[5]  ( .D(n72), .CLK(clk), .R(n1), .S(1'b1), .Q(i[5]) );
  DFFSR \i_reg[6]  ( .D(n71), .CLK(clk), .R(n1), .S(1'b1), .Q(i[6]) );
  DFFSR \i_reg[7]  ( .D(n70), .CLK(clk), .R(n1), .S(1'b1), .Q(i[7]) );
  DFFSR \i_reg[8]  ( .D(n69), .CLK(clk), .R(n1), .S(1'b1), .Q(i[8]) );
  DFFSR \i_reg[9]  ( .D(n68), .CLK(clk), .R(n1), .S(1'b1), .Q(i[9]) );
  fft_axi_counter_WRITE_OR_READ0_DW01_inc_0_DW01_inc_4 r376 ( .A(i), .SUM({N16, 
        N15, N14, N13, N12, N11, N10, N9, N8, N7}) );
  INVX2 U7 ( .A(n2), .Y(n1) );
  INVX2 U8 ( .A(n_rst), .Y(n2) );
  OAI21X1 U15 ( .A(n3), .B(n4), .C(n5), .Y(n67) );
  NAND2X1 U16 ( .A(N7), .B(n6), .Y(n5) );
  OAI21X1 U17 ( .A(n3), .B(n17), .C(n18), .Y(n68) );
  NAND2X1 U18 ( .A(N16), .B(n6), .Y(n18) );
  OAI21X1 U19 ( .A(n3), .B(n19), .C(n20), .Y(n69) );
  NAND2X1 U20 ( .A(N15), .B(n6), .Y(n20) );
  OAI21X1 U21 ( .A(n3), .B(n21), .C(n22), .Y(n70) );
  NAND2X1 U22 ( .A(N14), .B(n6), .Y(n22) );
  INVX1 U23 ( .A(i[7]), .Y(n21) );
  OAI21X1 U24 ( .A(n3), .B(n23), .C(n24), .Y(n71) );
  NAND2X1 U25 ( .A(N13), .B(n6), .Y(n24) );
  OAI21X1 U26 ( .A(n3), .B(n25), .C(n26), .Y(n72) );
  NAND2X1 U27 ( .A(N12), .B(n6), .Y(n26) );
  OAI21X1 U28 ( .A(n3), .B(n27), .C(n28), .Y(n73) );
  NAND2X1 U29 ( .A(N11), .B(n6), .Y(n28) );
  OAI21X1 U30 ( .A(n3), .B(n29), .C(n30), .Y(n74) );
  NAND2X1 U31 ( .A(N10), .B(n6), .Y(n30) );
  OAI21X1 U32 ( .A(n3), .B(n31), .C(n32), .Y(n75) );
  NAND2X1 U33 ( .A(N9), .B(n6), .Y(n32) );
  OAI21X1 U34 ( .A(n3), .B(n33), .C(n34), .Y(n76) );
  NAND2X1 U35 ( .A(N8), .B(n6), .Y(n34) );
  AND2X1 U36 ( .A(n3), .B(n35), .Y(n6) );
  INVX1 U37 ( .A(n36), .Y(n3) );
  NOR2X1 U38 ( .A(n36), .B(n35), .Y(last) );
  OAI21X1 U39 ( .A(n37), .B(n38), .C(n39), .Y(n35) );
  AOI22X1 U40 ( .A(n40), .B(len[8]), .C(len[9]), .D(n17), .Y(n39) );
  NOR2X1 U41 ( .A(i[8]), .B(n41), .Y(n40) );
  OAI21X1 U42 ( .A(n42), .B(n43), .C(n44), .Y(n38) );
  INVX1 U43 ( .A(n41), .Y(n44) );
  NOR2X1 U44 ( .A(n17), .B(len[9]), .Y(n41) );
  INVX1 U45 ( .A(i[9]), .Y(n17) );
  OAI22X1 U46 ( .A(n45), .B(n46), .C(n47), .D(n48), .Y(n43) );
  OAI21X1 U47 ( .A(len[5]), .B(n25), .C(n49), .Y(n48) );
  INVX1 U48 ( .A(n45), .Y(n49) );
  OAI21X1 U49 ( .A(len[4]), .B(n27), .C(n50), .Y(n47) );
  OAI21X1 U50 ( .A(n51), .B(n52), .C(n53), .Y(n50) );
  AOI22X1 U51 ( .A(n54), .B(len[2]), .C(len[3]), .D(n29), .Y(n53) );
  NOR2X1 U52 ( .A(i[2]), .B(n55), .Y(n54) );
  OAI22X1 U53 ( .A(len[2]), .B(n31), .C(n56), .D(n33), .Y(n52) );
  INVX1 U54 ( .A(i[1]), .Y(n33) );
  INVX1 U55 ( .A(n57), .Y(n56) );
  INVX1 U56 ( .A(i[2]), .Y(n31) );
  OAI21X1 U57 ( .A(len[1]), .B(n58), .C(n59), .Y(n51) );
  INVX1 U58 ( .A(n55), .Y(n59) );
  NOR2X1 U59 ( .A(n29), .B(len[3]), .Y(n55) );
  INVX1 U60 ( .A(i[3]), .Y(n29) );
  NOR2X1 U61 ( .A(i[1]), .B(n57), .Y(n58) );
  NAND2X1 U62 ( .A(len[0]), .B(n4), .Y(n57) );
  INVX1 U63 ( .A(i[0]), .Y(n4) );
  OAI21X1 U64 ( .A(n60), .B(n25), .C(n61), .Y(n46) );
  OAI21X1 U65 ( .A(i[5]), .B(n62), .C(n63), .Y(n61) );
  INVX1 U66 ( .A(len[5]), .Y(n63) );
  INVX1 U67 ( .A(i[5]), .Y(n25) );
  INVX1 U68 ( .A(n62), .Y(n60) );
  NAND2X1 U69 ( .A(len[4]), .B(n27), .Y(n62) );
  INVX1 U70 ( .A(i[4]), .Y(n27) );
  OAI21X1 U71 ( .A(len[6]), .B(n23), .C(n64), .Y(n45) );
  OAI21X1 U72 ( .A(i[7]), .B(n65), .C(n66), .Y(n42) );
  NAND3X1 U73 ( .A(n64), .B(n23), .C(len[6]), .Y(n66) );
  INVX1 U74 ( .A(i[6]), .Y(n23) );
  NAND2X1 U75 ( .A(i[7]), .B(n65), .Y(n64) );
  INVX1 U76 ( .A(len[7]), .Y(n65) );
  NOR2X1 U77 ( .A(len[8]), .B(n19), .Y(n37) );
  INVX1 U78 ( .A(i[8]), .Y(n19) );
  AOI21X1 U79 ( .A(valid), .B(ready), .C(resp), .Y(n36) );
endmodule


module fft_axi_counter_WRITE_OR_READ1_DW01_inc_0_DW01_inc_3 ( A, SUM );
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
  wire   N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, n1, n2, n3, n4, n5, n6,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76;

  DFFSR \i_reg[0]  ( .D(n67), .CLK(clk), .R(n1), .S(1'b1), .Q(i[0]) );
  DFFSR \i_reg[1]  ( .D(n76), .CLK(clk), .R(n1), .S(1'b1), .Q(i[1]) );
  DFFSR \i_reg[2]  ( .D(n75), .CLK(clk), .R(n1), .S(1'b1), .Q(i[2]) );
  DFFSR \i_reg[3]  ( .D(n74), .CLK(clk), .R(n1), .S(1'b1), .Q(i[3]) );
  DFFSR \i_reg[4]  ( .D(n73), .CLK(clk), .R(n1), .S(1'b1), .Q(i[4]) );
  DFFSR \i_reg[5]  ( .D(n72), .CLK(clk), .R(n1), .S(1'b1), .Q(i[5]) );
  DFFSR \i_reg[6]  ( .D(n71), .CLK(clk), .R(n1), .S(1'b1), .Q(i[6]) );
  DFFSR \i_reg[7]  ( .D(n70), .CLK(clk), .R(n1), .S(1'b1), .Q(i[7]) );
  DFFSR \i_reg[8]  ( .D(n69), .CLK(clk), .R(n1), .S(1'b1), .Q(i[8]) );
  DFFSR \i_reg[9]  ( .D(n68), .CLK(clk), .R(n1), .S(1'b1), .Q(i[9]) );
  fft_axi_counter_WRITE_OR_READ1_DW01_inc_0_DW01_inc_3 r376 ( .A(i), .SUM({N16, 
        N15, N14, N13, N12, N11, N10, N9, N8, N7}) );
  INVX2 U7 ( .A(n2), .Y(n1) );
  INVX2 U8 ( .A(n_rst), .Y(n2) );
  OAI21X1 U15 ( .A(n3), .B(n4), .C(n5), .Y(n67) );
  NAND2X1 U16 ( .A(N7), .B(n6), .Y(n5) );
  OAI21X1 U17 ( .A(n3), .B(n17), .C(n18), .Y(n68) );
  NAND2X1 U18 ( .A(N16), .B(n6), .Y(n18) );
  OAI21X1 U19 ( .A(n3), .B(n19), .C(n20), .Y(n69) );
  NAND2X1 U20 ( .A(N15), .B(n6), .Y(n20) );
  OAI21X1 U21 ( .A(n3), .B(n21), .C(n22), .Y(n70) );
  NAND2X1 U22 ( .A(N14), .B(n6), .Y(n22) );
  INVX1 U23 ( .A(i[7]), .Y(n21) );
  OAI21X1 U24 ( .A(n3), .B(n23), .C(n24), .Y(n71) );
  NAND2X1 U25 ( .A(N13), .B(n6), .Y(n24) );
  OAI21X1 U26 ( .A(n3), .B(n25), .C(n26), .Y(n72) );
  NAND2X1 U27 ( .A(N12), .B(n6), .Y(n26) );
  OAI21X1 U28 ( .A(n3), .B(n27), .C(n28), .Y(n73) );
  NAND2X1 U29 ( .A(N11), .B(n6), .Y(n28) );
  OAI21X1 U30 ( .A(n3), .B(n29), .C(n30), .Y(n74) );
  NAND2X1 U31 ( .A(N10), .B(n6), .Y(n30) );
  OAI21X1 U32 ( .A(n3), .B(n31), .C(n32), .Y(n75) );
  NAND2X1 U33 ( .A(N9), .B(n6), .Y(n32) );
  OAI21X1 U34 ( .A(n3), .B(n33), .C(n34), .Y(n76) );
  NAND2X1 U35 ( .A(N8), .B(n6), .Y(n34) );
  AND2X1 U36 ( .A(n3), .B(n35), .Y(n6) );
  INVX1 U37 ( .A(n36), .Y(n3) );
  NOR2X1 U38 ( .A(n36), .B(n35), .Y(last) );
  OAI21X1 U39 ( .A(n37), .B(n38), .C(n39), .Y(n35) );
  AOI22X1 U40 ( .A(n40), .B(len[8]), .C(len[9]), .D(n17), .Y(n39) );
  NOR2X1 U41 ( .A(i[8]), .B(n41), .Y(n40) );
  OAI21X1 U42 ( .A(n42), .B(n43), .C(n44), .Y(n38) );
  INVX1 U43 ( .A(n41), .Y(n44) );
  NOR2X1 U44 ( .A(n17), .B(len[9]), .Y(n41) );
  INVX1 U45 ( .A(i[9]), .Y(n17) );
  OAI22X1 U46 ( .A(n45), .B(n46), .C(n47), .D(n48), .Y(n43) );
  OAI21X1 U47 ( .A(len[5]), .B(n25), .C(n49), .Y(n48) );
  INVX1 U48 ( .A(n45), .Y(n49) );
  OAI21X1 U49 ( .A(len[4]), .B(n27), .C(n50), .Y(n47) );
  OAI21X1 U50 ( .A(n51), .B(n52), .C(n53), .Y(n50) );
  AOI22X1 U51 ( .A(n54), .B(len[2]), .C(len[3]), .D(n29), .Y(n53) );
  NOR2X1 U52 ( .A(i[2]), .B(n55), .Y(n54) );
  OAI22X1 U53 ( .A(len[2]), .B(n31), .C(n56), .D(n33), .Y(n52) );
  INVX1 U54 ( .A(i[1]), .Y(n33) );
  INVX1 U55 ( .A(n57), .Y(n56) );
  INVX1 U56 ( .A(i[2]), .Y(n31) );
  OAI21X1 U57 ( .A(len[1]), .B(n58), .C(n59), .Y(n51) );
  INVX1 U58 ( .A(n55), .Y(n59) );
  NOR2X1 U59 ( .A(n29), .B(len[3]), .Y(n55) );
  INVX1 U60 ( .A(i[3]), .Y(n29) );
  NOR2X1 U61 ( .A(i[1]), .B(n57), .Y(n58) );
  NAND2X1 U62 ( .A(len[0]), .B(n4), .Y(n57) );
  INVX1 U63 ( .A(i[0]), .Y(n4) );
  OAI21X1 U64 ( .A(n60), .B(n25), .C(n61), .Y(n46) );
  OAI21X1 U65 ( .A(i[5]), .B(n62), .C(n63), .Y(n61) );
  INVX1 U66 ( .A(len[5]), .Y(n63) );
  INVX1 U67 ( .A(i[5]), .Y(n25) );
  INVX1 U68 ( .A(n62), .Y(n60) );
  NAND2X1 U69 ( .A(len[4]), .B(n27), .Y(n62) );
  INVX1 U70 ( .A(i[4]), .Y(n27) );
  OAI21X1 U71 ( .A(len[6]), .B(n23), .C(n64), .Y(n45) );
  OAI21X1 U72 ( .A(i[7]), .B(n65), .C(n66), .Y(n42) );
  NAND3X1 U73 ( .A(n64), .B(n23), .C(len[6]), .Y(n66) );
  INVX1 U74 ( .A(i[6]), .Y(n23) );
  NAND2X1 U75 ( .A(i[7]), .B(n65), .Y(n64) );
  INVX1 U76 ( .A(len[7]), .Y(n65) );
  NOR2X1 U77 ( .A(len[8]), .B(n19), .Y(n37) );
  INVX1 U78 ( .A(i[8]), .Y(n19) );
  AOI21X1 U79 ( .A(valid), .B(ready), .C(resp), .Y(n36) );
endmodule


module fft_axi_manager_DW01_add_0 ( A, B, CI, SUM, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [31:1] carry;

  FAX1 U1_31 ( .A(A[31]), .B(B[31]), .C(carry[31]), .YS(SUM[31]) );
  FAX1 U1_30 ( .A(A[30]), .B(B[30]), .C(carry[30]), .YC(carry[31]), .YS(
        SUM[30]) );
  FAX1 U1_29 ( .A(A[29]), .B(B[29]), .C(carry[29]), .YC(carry[30]), .YS(
        SUM[29]) );
  FAX1 U1_28 ( .A(A[28]), .B(B[28]), .C(carry[28]), .YC(carry[29]), .YS(
        SUM[28]) );
  FAX1 U1_27 ( .A(A[27]), .B(B[27]), .C(carry[27]), .YC(carry[28]), .YS(
        SUM[27]) );
  FAX1 U1_26 ( .A(A[26]), .B(B[26]), .C(carry[26]), .YC(carry[27]), .YS(
        SUM[26]) );
  FAX1 U1_25 ( .A(A[25]), .B(B[25]), .C(carry[25]), .YC(carry[26]), .YS(
        SUM[25]) );
  FAX1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .YC(carry[25]), .YS(
        SUM[24]) );
  FAX1 U1_23 ( .A(A[23]), .B(B[23]), .C(carry[23]), .YC(carry[24]), .YS(
        SUM[23]) );
  FAX1 U1_22 ( .A(A[22]), .B(B[22]), .C(carry[22]), .YC(carry[23]), .YS(
        SUM[22]) );
  FAX1 U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .YC(carry[22]), .YS(
        SUM[21]) );
  FAX1 U1_20 ( .A(A[20]), .B(B[20]), .C(carry[20]), .YC(carry[21]), .YS(
        SUM[20]) );
  FAX1 U1_19 ( .A(A[19]), .B(B[19]), .C(carry[19]), .YC(carry[20]), .YS(
        SUM[19]) );
  FAX1 U1_18 ( .A(A[18]), .B(B[18]), .C(carry[18]), .YC(carry[19]), .YS(
        SUM[18]) );
  FAX1 U1_17 ( .A(A[17]), .B(B[17]), .C(carry[17]), .YC(carry[18]), .YS(
        SUM[17]) );
  FAX1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .YC(carry[17]), .YS(
        SUM[16]) );
  FAX1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .YC(carry[16]), .YS(
        SUM[15]) );
  FAX1 U1_14 ( .A(A[14]), .B(B[14]), .C(carry[14]), .YC(carry[15]), .YS(
        SUM[14]) );
  FAX1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .YC(carry[14]), .YS(
        SUM[13]) );
  FAX1 U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .YC(carry[13]), .YS(
        SUM[12]) );
  FAX1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .YC(carry[12]), .YS(
        SUM[11]) );
  FAX1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .YC(carry[11]), .YS(
        SUM[10]) );
  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module fft_axi_manager_DW01_inc_0 ( A, SUM );
  input [10:0] A;
  output [10:0] SUM;

  wire   [10:2] carry;

  HAX1 U1_1_9 ( .A(A[9]), .B(carry[9]), .YC(SUM[10]), .YS(SUM[9]) );
  HAX1 U1_1_8 ( .A(A[8]), .B(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  HAX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  HAX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  HAX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  HAX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  HAX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  HAX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  HAX1 U1_1_1 ( .A(A[1]), .B(A[0]), .YC(carry[2]), .YS(SUM[1]) );
  INVX2 U1 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module fft_axi_manager_DW01_inc_1 ( A, SUM );
  input [10:0] A;
  output [10:0] SUM;

  wire   [10:2] carry;

  HAX1 U1_1_9 ( .A(A[9]), .B(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  HAX1 U1_1_8 ( .A(A[8]), .B(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  HAX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  HAX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  HAX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  HAX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  HAX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  HAX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  HAX1 U1_1_1 ( .A(A[1]), .B(A[0]), .YC(carry[2]), .YS(SUM[1]) );
  INVX2 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[10]), .B(A[10]), .Y(SUM[10]) );
endmodule


module fft_axi_manager_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  FAX1 U2_10 ( .A(A[10]), .B(n2), .C(carry[10]), .YC(carry[11]), .YS(DIFF[10])
         );
  FAX1 U2_9 ( .A(A[9]), .B(n3), .C(carry[9]), .YC(carry[10]), .YS(DIFF[9]) );
  FAX1 U2_8 ( .A(A[8]), .B(n4), .C(carry[8]), .YC(carry[9]), .YS(DIFF[8]) );
  FAX1 U2_7 ( .A(A[7]), .B(n5), .C(carry[7]), .YC(carry[8]), .YS(DIFF[7]) );
  FAX1 U2_6 ( .A(A[6]), .B(n6), .C(carry[6]), .YC(carry[7]), .YS(DIFF[6]) );
  FAX1 U2_5 ( .A(A[5]), .B(n7), .C(carry[5]), .YC(carry[6]), .YS(DIFF[5]) );
  FAX1 U2_4 ( .A(A[4]), .B(n8), .C(carry[4]), .YC(carry[5]), .YS(DIFF[4]) );
  FAX1 U2_3 ( .A(A[3]), .B(n9), .C(carry[3]), .YC(carry[4]), .YS(DIFF[3]) );
  FAX1 U2_2 ( .A(A[2]), .B(n10), .C(carry[2]), .YC(carry[3]), .YS(DIFF[2]) );
  FAX1 U2_1 ( .A(A[1]), .B(n11), .C(carry[1]), .YC(carry[2]), .YS(DIFF[1]) );
  OR2X1 U1 ( .A(A[0]), .B(n12), .Y(carry[1]) );
  XNOR2X1 U2 ( .A(n12), .B(A[0]), .Y(DIFF[0]) );
  INVX2 U3 ( .A(carry[11]), .Y(DIFF[11]) );
  INVX2 U4 ( .A(B[10]), .Y(n2) );
  INVX2 U5 ( .A(B[9]), .Y(n3) );
  INVX2 U6 ( .A(B[8]), .Y(n4) );
  INVX2 U7 ( .A(B[7]), .Y(n5) );
  INVX2 U8 ( .A(B[6]), .Y(n6) );
  INVX2 U9 ( .A(B[5]), .Y(n7) );
  INVX2 U10 ( .A(B[4]), .Y(n8) );
  INVX2 U11 ( .A(B[3]), .Y(n9) );
  INVX2 U12 ( .A(B[2]), .Y(n10) );
  INVX2 U13 ( .A(B[1]), .Y(n11) );
  INVX2 U14 ( .A(B[0]), .Y(n12) );
endmodule


module fft_axi_manager_DW01_add_1 ( A, B, CI, SUM, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [31:1] carry;

  FAX1 U1_31 ( .A(A[31]), .B(B[31]), .C(carry[31]), .YS(SUM[31]) );
  FAX1 U1_30 ( .A(A[30]), .B(B[30]), .C(carry[30]), .YC(carry[31]), .YS(
        SUM[30]) );
  FAX1 U1_29 ( .A(A[29]), .B(B[29]), .C(carry[29]), .YC(carry[30]), .YS(
        SUM[29]) );
  FAX1 U1_28 ( .A(A[28]), .B(B[28]), .C(carry[28]), .YC(carry[29]), .YS(
        SUM[28]) );
  FAX1 U1_27 ( .A(A[27]), .B(B[27]), .C(carry[27]), .YC(carry[28]), .YS(
        SUM[27]) );
  FAX1 U1_26 ( .A(A[26]), .B(B[26]), .C(carry[26]), .YC(carry[27]), .YS(
        SUM[26]) );
  FAX1 U1_25 ( .A(A[25]), .B(B[25]), .C(carry[25]), .YC(carry[26]), .YS(
        SUM[25]) );
  FAX1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .YC(carry[25]), .YS(
        SUM[24]) );
  FAX1 U1_23 ( .A(A[23]), .B(B[23]), .C(carry[23]), .YC(carry[24]), .YS(
        SUM[23]) );
  FAX1 U1_22 ( .A(A[22]), .B(B[22]), .C(carry[22]), .YC(carry[23]), .YS(
        SUM[22]) );
  FAX1 U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .YC(carry[22]), .YS(
        SUM[21]) );
  FAX1 U1_20 ( .A(A[20]), .B(B[20]), .C(carry[20]), .YC(carry[21]), .YS(
        SUM[20]) );
  FAX1 U1_19 ( .A(A[19]), .B(B[19]), .C(carry[19]), .YC(carry[20]), .YS(
        SUM[19]) );
  FAX1 U1_18 ( .A(A[18]), .B(B[18]), .C(carry[18]), .YC(carry[19]), .YS(
        SUM[18]) );
  FAX1 U1_17 ( .A(A[17]), .B(B[17]), .C(carry[17]), .YC(carry[18]), .YS(
        SUM[17]) );
  FAX1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .YC(carry[17]), .YS(
        SUM[16]) );
  FAX1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .YC(carry[16]), .YS(
        SUM[15]) );
  FAX1 U1_14 ( .A(A[14]), .B(B[14]), .C(carry[14]), .YC(carry[15]), .YS(
        SUM[14]) );
  FAX1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .YC(carry[14]), .YS(
        SUM[13]) );
  FAX1 U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .YC(carry[13]), .YS(
        SUM[12]) );
  FAX1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .YC(carry[12]), .YS(
        SUM[11]) );
  FAX1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .YC(carry[11]), .YS(
        SUM[10]) );
  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module fft_axi_manager_DW01_inc_2 ( A, SUM );
  input [10:0] A;
  output [10:0] SUM;

  wire   [10:2] carry;

  HAX1 U1_1_9 ( .A(A[9]), .B(carry[9]), .YC(SUM[10]), .YS(SUM[9]) );
  HAX1 U1_1_8 ( .A(A[8]), .B(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  HAX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  HAX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  HAX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  HAX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  HAX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  HAX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  HAX1 U1_1_1 ( .A(A[1]), .B(A[0]), .YC(carry[2]), .YS(SUM[1]) );
  INVX2 U1 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module fft_axi_manager_DW01_dec_2 ( A, SUM );
  input [12:0] A;
  output [12:0] SUM;
  wire   n1, n2, n4, n6, n8, n10, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27;

  INVX2 U1 ( .A(A[12]), .Y(n1) );
  INVX2 U2 ( .A(A[10]), .Y(n2) );
  INVX2 U3 ( .A(n13), .Y(SUM[9]) );
  INVX2 U4 ( .A(A[8]), .Y(n4) );
  INVX2 U5 ( .A(n17), .Y(SUM[7]) );
  INVX2 U6 ( .A(A[6]), .Y(n6) );
  INVX2 U7 ( .A(n20), .Y(SUM[5]) );
  INVX2 U8 ( .A(A[4]), .Y(n8) );
  INVX2 U9 ( .A(n23), .Y(SUM[3]) );
  INVX2 U10 ( .A(A[2]), .Y(n10) );
  INVX2 U11 ( .A(n26), .Y(SUM[1]) );
  INVX2 U12 ( .A(A[0]), .Y(SUM[0]) );
  AOI21X1 U13 ( .A(n14), .B(A[9]), .C(n15), .Y(n13) );
  OAI21X1 U14 ( .A(n16), .B(n4), .C(n14), .Y(SUM[8]) );
  AOI21X1 U15 ( .A(n18), .B(A[7]), .C(n16), .Y(n17) );
  OAI21X1 U16 ( .A(n19), .B(n6), .C(n18), .Y(SUM[6]) );
  AOI21X1 U17 ( .A(n21), .B(A[5]), .C(n19), .Y(n20) );
  OAI21X1 U18 ( .A(n22), .B(n8), .C(n21), .Y(SUM[4]) );
  AOI21X1 U19 ( .A(n24), .B(A[3]), .C(n22), .Y(n23) );
  OAI21X1 U20 ( .A(n25), .B(n10), .C(n24), .Y(SUM[2]) );
  AOI21X1 U21 ( .A(A[0]), .B(A[1]), .C(n25), .Y(n26) );
  NAND2X1 U22 ( .A(n1), .B(n27), .Y(SUM[12]) );
  XNOR2X1 U23 ( .A(A[12]), .B(n27), .Y(SUM[11]) );
  OAI21X1 U24 ( .A(n15), .B(n2), .C(n27), .Y(SUM[10]) );
  NAND2X1 U25 ( .A(n15), .B(n2), .Y(n27) );
  NOR2X1 U26 ( .A(n14), .B(A[9]), .Y(n15) );
  NAND2X1 U27 ( .A(n16), .B(n4), .Y(n14) );
  NOR2X1 U28 ( .A(n18), .B(A[7]), .Y(n16) );
  NAND2X1 U29 ( .A(n19), .B(n6), .Y(n18) );
  NOR2X1 U30 ( .A(n21), .B(A[5]), .Y(n19) );
  NAND2X1 U31 ( .A(n22), .B(n8), .Y(n21) );
  NOR2X1 U32 ( .A(n24), .B(A[3]), .Y(n22) );
  NAND2X1 U33 ( .A(n25), .B(n10), .Y(n24) );
  NOR2X1 U34 ( .A(A[1]), .B(A[0]), .Y(n25) );
endmodule


module fft_axi_manager_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  FAX1 U2_10 ( .A(A[10]), .B(n2), .C(carry[10]), .YC(carry[11]), .YS(DIFF[10])
         );
  FAX1 U2_9 ( .A(A[9]), .B(n12), .C(carry[9]), .YC(carry[10]), .YS(DIFF[9]) );
  FAX1 U2_8 ( .A(A[8]), .B(n11), .C(carry[8]), .YC(carry[9]), .YS(DIFF[8]) );
  FAX1 U2_7 ( .A(A[7]), .B(n10), .C(carry[7]), .YC(carry[8]), .YS(DIFF[7]) );
  FAX1 U2_6 ( .A(A[6]), .B(n9), .C(carry[6]), .YC(carry[7]), .YS(DIFF[6]) );
  FAX1 U2_5 ( .A(A[5]), .B(n8), .C(carry[5]), .YC(carry[6]), .YS(DIFF[5]) );
  FAX1 U2_4 ( .A(A[4]), .B(n7), .C(carry[4]), .YC(carry[5]), .YS(DIFF[4]) );
  FAX1 U2_3 ( .A(A[3]), .B(n6), .C(carry[3]), .YC(carry[4]), .YS(DIFF[3]) );
  FAX1 U2_2 ( .A(A[2]), .B(n5), .C(carry[2]), .YC(carry[3]), .YS(DIFF[2]) );
  FAX1 U2_1 ( .A(A[1]), .B(n4), .C(carry[1]), .YC(carry[2]), .YS(DIFF[1]) );
  OR2X1 U1 ( .A(A[0]), .B(n3), .Y(carry[1]) );
  XNOR2X1 U2 ( .A(n3), .B(A[0]), .Y(DIFF[0]) );
  INVX2 U3 ( .A(carry[11]), .Y(DIFF[11]) );
  INVX2 U4 ( .A(B[10]), .Y(n2) );
  INVX2 U5 ( .A(B[0]), .Y(n3) );
  INVX2 U6 ( .A(B[1]), .Y(n4) );
  INVX2 U7 ( .A(B[2]), .Y(n5) );
  INVX2 U8 ( .A(B[3]), .Y(n6) );
  INVX2 U9 ( .A(B[4]), .Y(n7) );
  INVX2 U10 ( .A(B[5]), .Y(n8) );
  INVX2 U11 ( .A(B[6]), .Y(n9) );
  INVX2 U12 ( .A(B[7]), .Y(n10) );
  INVX2 U13 ( .A(B[8]), .Y(n11) );
  INVX2 U14 ( .A(B[9]), .Y(n12) );
endmodule


module fft_axi_manager_DW_mult_uns_2 ( a, b, product );
  input [31:0] a;
  input [10:0] b;
  output [42:0] product;
  wire   \product[27] , \product[25] , n8, n9, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n152, n153, n155, n156, n158,
         n159, n161, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n335, n337, n339, n341,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383;
  assign product[29] = \product[27] ;
  assign product[27] = \product[27] ;
  assign product[30] = \product[25] ;
  assign product[25] = \product[25] ;
  assign product[24] = n8;
  assign product[31] = n9;

  INVX2 U8 ( .A(n11), .Y(n8) );
  INVX2 U11 ( .A(n12), .Y(n9) );
  FAX1 U16 ( .A(n35), .B(n169), .C(n13), .YC(n12), .YS(product[23]) );
  FAX1 U17 ( .A(n36), .B(n37), .C(n14), .YC(n13), .YS(product[22]) );
  FAX1 U18 ( .A(n38), .B(n39), .C(n15), .YC(n14), .YS(product[21]) );
  FAX1 U19 ( .A(n40), .B(n43), .C(n16), .YC(n15), .YS(product[20]) );
  FAX1 U20 ( .A(n44), .B(n47), .C(n17), .YC(n16), .YS(product[19]) );
  FAX1 U21 ( .A(n48), .B(n53), .C(n18), .YC(n17), .YS(product[18]) );
  FAX1 U22 ( .A(n59), .B(n54), .C(n19), .YC(n18), .YS(product[17]) );
  FAX1 U23 ( .A(n67), .B(n60), .C(n20), .YC(n19), .YS(product[16]) );
  FAX1 U24 ( .A(n75), .B(n68), .C(n21), .YC(n20), .YS(product[15]) );
  FAX1 U25 ( .A(n83), .B(n76), .C(n22), .YC(n21), .YS(product[14]) );
  FAX1 U26 ( .A(n91), .B(n84), .C(n23), .YC(n22), .YS(product[13]) );
  FAX1 U27 ( .A(n99), .B(n92), .C(n24), .YC(n23), .YS(product[12]) );
  FAX1 U28 ( .A(n107), .B(n100), .C(n25), .YC(n24), .YS(product[11]) );
  FAX1 U29 ( .A(n115), .B(n108), .C(n26), .YC(n25), .YS(product[10]) );
  FAX1 U30 ( .A(n123), .B(n116), .C(n27), .YC(n26), .YS(product[9]) );
  FAX1 U31 ( .A(n129), .B(n124), .C(n28), .YC(n27), .YS(product[8]) );
  FAX1 U32 ( .A(n135), .B(n130), .C(n29), .YC(n28), .YS(product[7]) );
  FAX1 U33 ( .A(n139), .B(n136), .C(n30), .YC(n29), .YS(product[6]) );
  FAX1 U34 ( .A(n143), .B(n140), .C(n31), .YC(n30), .YS(product[5]) );
  FAX1 U35 ( .A(n145), .B(n144), .C(n32), .YC(n31), .YS(product[4]) );
  FAX1 U36 ( .A(n167), .B(n146), .C(n33), .YC(n32), .YS(product[3]) );
  FAX1 U37 ( .A(n246), .B(n234), .C(n34), .YC(n33), .YS(product[2]) );
  HAX1 U38 ( .A(n168), .B(n247), .YC(n34), .YS(product[1]) );
  INVX2 U39 ( .A(n35), .Y(n36) );
  FAX1 U40 ( .A(n41), .B(n170), .C(n179), .YC(n37), .YS(n38) );
  FAX1 U41 ( .A(n180), .B(n42), .C(n45), .YC(n39), .YS(n40) );
  INVX2 U42 ( .A(n41), .Y(n42) );
  FAX1 U43 ( .A(n171), .B(n49), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U44 ( .A(n51), .B(n181), .C(n193), .YC(n45), .YS(n46) );
  FAX1 U45 ( .A(n57), .B(n50), .C(n55), .YC(n47), .YS(n48) );
  FAX1 U46 ( .A(n194), .B(n182), .C(n52), .YC(n49), .YS(n50) );
  INVX2 U47 ( .A(n51), .Y(n52) );
  FAX1 U48 ( .A(n58), .B(n56), .C(n61), .YC(n53), .YS(n54) );
  FAX1 U49 ( .A(n172), .B(n195), .C(n63), .YC(n55), .YS(n56) );
  FAX1 U50 ( .A(n65), .B(n183), .C(n207), .YC(n57), .YS(n58) );
  FAX1 U51 ( .A(n64), .B(n69), .C(n62), .YC(n59), .YS(n60) );
  FAX1 U52 ( .A(n66), .B(n73), .C(n71), .YC(n61), .YS(n62) );
  FAX1 U53 ( .A(n184), .B(n196), .C(n208), .YC(n63), .YS(n64) );
  INVX2 U54 ( .A(n65), .Y(n66) );
  FAX1 U55 ( .A(n74), .B(n77), .C(n70), .YC(n67), .YS(n68) );
  FAX1 U56 ( .A(n81), .B(n79), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U57 ( .A(n209), .B(n185), .C(n235), .YC(n71), .YS(n72) );
  FAX1 U58 ( .A(n173), .B(n197), .C(n221), .YC(n73), .YS(n74) );
  FAX1 U59 ( .A(n82), .B(n85), .C(n78), .YC(n75), .YS(n76) );
  FAX1 U60 ( .A(n89), .B(n87), .C(n80), .YC(n77), .YS(n78) );
  FAX1 U61 ( .A(n210), .B(n186), .C(n198), .YC(n79), .YS(n80) );
  FAX1 U62 ( .A(n161), .B(n174), .C(n222), .YC(n81), .YS(n82) );
  FAX1 U63 ( .A(n90), .B(n93), .C(n86), .YC(n83), .YS(n84) );
  FAX1 U64 ( .A(n97), .B(n95), .C(n88), .YC(n85), .YS(n86) );
  FAX1 U65 ( .A(n211), .B(n187), .C(n199), .YC(n87), .YS(n88) );
  FAX1 U66 ( .A(n161), .B(n175), .C(n223), .YC(n89), .YS(n90) );
  FAX1 U67 ( .A(n98), .B(n101), .C(n94), .YC(n91), .YS(n92) );
  FAX1 U68 ( .A(n105), .B(n103), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U69 ( .A(n236), .B(n212), .C(n224), .YC(n95), .YS(n96) );
  FAX1 U70 ( .A(n176), .B(n188), .C(n200), .YC(n97), .YS(n98) );
  FAX1 U71 ( .A(n106), .B(n109), .C(n102), .YC(n99), .YS(n100) );
  FAX1 U72 ( .A(n113), .B(n111), .C(n104), .YC(n101), .YS(n102) );
  FAX1 U73 ( .A(n237), .B(n213), .C(n225), .YC(n103), .YS(n104) );
  FAX1 U74 ( .A(n177), .B(n189), .C(n201), .YC(n105), .YS(n106) );
  FAX1 U75 ( .A(n112), .B(n117), .C(n110), .YC(n107), .YS(n108) );
  FAX1 U76 ( .A(n121), .B(n119), .C(n114), .YC(n109), .YS(n110) );
  FAX1 U77 ( .A(n226), .B(n202), .C(n214), .YC(n111), .YS(n112) );
  FAX1 U78 ( .A(n238), .B(n190), .C(n178), .YC(n113), .YS(n114) );
  FAX1 U79 ( .A(n120), .B(n125), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U80 ( .A(n227), .B(n122), .C(n127), .YC(n117), .YS(n118) );
  FAX1 U81 ( .A(n203), .B(n191), .C(n215), .YC(n119), .YS(n120) );
  HAX1 U82 ( .A(n239), .B(n164), .YC(n121), .YS(n122) );
  FAX1 U83 ( .A(n131), .B(n128), .C(n126), .YC(n123), .YS(n124) );
  FAX1 U84 ( .A(n228), .B(n216), .C(n133), .YC(n125), .YS(n126) );
  FAX1 U85 ( .A(n240), .B(n204), .C(n192), .YC(n127), .YS(n128) );
  FAX1 U86 ( .A(n134), .B(n137), .C(n132), .YC(n129), .YS(n130) );
  FAX1 U87 ( .A(n229), .B(n205), .C(n217), .YC(n131), .YS(n132) );
  HAX1 U88 ( .A(n241), .B(n165), .YC(n133), .YS(n134) );
  FAX1 U89 ( .A(n230), .B(n141), .C(n138), .YC(n135), .YS(n136) );
  FAX1 U90 ( .A(n242), .B(n218), .C(n206), .YC(n137), .YS(n138) );
  FAX1 U91 ( .A(n231), .B(n219), .C(n142), .YC(n139), .YS(n140) );
  HAX1 U92 ( .A(n243), .B(n166), .YC(n141), .YS(n142) );
  FAX1 U93 ( .A(n244), .B(n232), .C(n220), .YC(n143), .YS(n144) );
  HAX1 U94 ( .A(n245), .B(n233), .YC(n145), .YS(n146) );
  INVX2 U95 ( .A(n147), .Y(n169) );
  AOI21X1 U96 ( .A(n356), .B(n350), .C(n248), .Y(n147) );
  OAI22X1 U97 ( .A(n248), .B(n356), .C(n249), .D(n350), .Y(n35) );
  OAI22X1 U98 ( .A(n249), .B(n356), .C(n250), .D(n350), .Y(n170) );
  OAI22X1 U99 ( .A(n250), .B(n356), .C(n251), .D(n350), .Y(n41) );
  OAI22X1 U100 ( .A(n251), .B(n356), .C(n252), .D(n350), .Y(n171) );
  OAI22X1 U101 ( .A(n252), .B(n356), .C(n253), .D(n350), .Y(n51) );
  OAI22X1 U102 ( .A(n253), .B(n356), .C(n254), .D(n350), .Y(n172) );
  OAI22X1 U103 ( .A(n254), .B(n356), .C(n255), .D(n350), .Y(n65) );
  OAI22X1 U104 ( .A(n255), .B(n356), .C(n256), .D(n350), .Y(n173) );
  OAI22X1 U105 ( .A(n256), .B(n356), .C(n257), .D(n350), .Y(n174) );
  OAI22X1 U106 ( .A(n257), .B(n356), .C(n258), .D(n350), .Y(n175) );
  OAI22X1 U107 ( .A(n258), .B(n356), .C(n259), .D(n350), .Y(n176) );
  OAI22X1 U108 ( .A(n259), .B(n356), .C(n260), .D(n350), .Y(n177) );
  AND2X2 U109 ( .A(a[0]), .B(n148), .Y(n178) );
  INVX2 U110 ( .A(n356), .Y(n148) );
  INVX2 U111 ( .A(n331), .Y(n248) );
  INVX2 U112 ( .A(n332), .Y(n249) );
  INVX2 U113 ( .A(n333), .Y(n250) );
  INVX2 U114 ( .A(a[9]), .Y(n251) );
  INVX2 U115 ( .A(n335), .Y(n252) );
  INVX2 U116 ( .A(a[7]), .Y(n253) );
  INVX2 U117 ( .A(n337), .Y(n254) );
  INVX2 U118 ( .A(a[5]), .Y(n255) );
  INVX2 U119 ( .A(n339), .Y(n256) );
  INVX2 U120 ( .A(a[3]), .Y(n257) );
  INVX2 U121 ( .A(n341), .Y(n258) );
  INVX2 U122 ( .A(a[1]), .Y(n259) );
  INVX2 U123 ( .A(a[0]), .Y(n260) );
  OAI22X1 U124 ( .A(n357), .B(n274), .C(n362), .D(n351), .Y(n164) );
  INVX2 U125 ( .A(n149), .Y(n179) );
  AOI21X1 U126 ( .A(n357), .B(n351), .C(n261), .Y(n149) );
  OAI22X1 U127 ( .A(n261), .B(n357), .C(n262), .D(n351), .Y(n180) );
  OAI22X1 U128 ( .A(n262), .B(n357), .C(n263), .D(n351), .Y(n181) );
  OAI22X1 U129 ( .A(n263), .B(n357), .C(n264), .D(n351), .Y(n182) );
  OAI22X1 U130 ( .A(n264), .B(n357), .C(n265), .D(n351), .Y(n183) );
  OAI22X1 U131 ( .A(n265), .B(n357), .C(n266), .D(n351), .Y(n184) );
  OAI22X1 U132 ( .A(n266), .B(n357), .C(n267), .D(n351), .Y(n185) );
  OAI22X1 U133 ( .A(n267), .B(n357), .C(n268), .D(n351), .Y(n186) );
  OAI22X1 U134 ( .A(n268), .B(n357), .C(n269), .D(n351), .Y(n187) );
  OAI22X1 U135 ( .A(n269), .B(n357), .C(n270), .D(n351), .Y(n188) );
  OAI22X1 U136 ( .A(n270), .B(n357), .C(n271), .D(n351), .Y(n189) );
  OAI22X1 U137 ( .A(n271), .B(n357), .C(n272), .D(n351), .Y(n190) );
  OAI22X1 U138 ( .A(n272), .B(n357), .C(n273), .D(n351), .Y(n191) );
  AND2X2 U139 ( .A(a[0]), .B(n150), .Y(n192) );
  INVX2 U140 ( .A(n357), .Y(n150) );
  XNOR2X1 U141 ( .A(n367), .B(n331), .Y(n261) );
  XNOR2X1 U142 ( .A(n367), .B(n332), .Y(n262) );
  XNOR2X1 U143 ( .A(n367), .B(n333), .Y(n263) );
  XNOR2X1 U144 ( .A(n367), .B(a[9]), .Y(n264) );
  XNOR2X1 U145 ( .A(n367), .B(n335), .Y(n265) );
  XNOR2X1 U146 ( .A(n367), .B(a[7]), .Y(n266) );
  XNOR2X1 U147 ( .A(n367), .B(n337), .Y(n267) );
  XNOR2X1 U148 ( .A(n367), .B(a[5]), .Y(n268) );
  XNOR2X1 U149 ( .A(n367), .B(n339), .Y(n269) );
  XNOR2X1 U150 ( .A(n367), .B(a[3]), .Y(n270) );
  XNOR2X1 U151 ( .A(n367), .B(n341), .Y(n271) );
  XNOR2X1 U152 ( .A(n367), .B(a[1]), .Y(n272) );
  XNOR2X1 U153 ( .A(n367), .B(a[0]), .Y(n273) );
  OR2X2 U154 ( .A(a[0]), .B(n362), .Y(n274) );
  OAI22X1 U156 ( .A(n358), .B(n288), .C(n363), .D(n352), .Y(n165) );
  INVX2 U157 ( .A(n152), .Y(n193) );
  AOI21X1 U158 ( .A(n358), .B(n352), .C(n275), .Y(n152) );
  OAI22X1 U159 ( .A(n275), .B(n358), .C(n276), .D(n352), .Y(n194) );
  OAI22X1 U160 ( .A(n276), .B(n358), .C(n277), .D(n352), .Y(n195) );
  OAI22X1 U161 ( .A(n277), .B(n358), .C(n278), .D(n352), .Y(n196) );
  OAI22X1 U162 ( .A(n278), .B(n358), .C(n279), .D(n352), .Y(n197) );
  OAI22X1 U163 ( .A(n279), .B(n358), .C(n280), .D(n352), .Y(n198) );
  OAI22X1 U164 ( .A(n280), .B(n358), .C(n281), .D(n352), .Y(n199) );
  OAI22X1 U165 ( .A(n281), .B(n358), .C(n282), .D(n352), .Y(n200) );
  OAI22X1 U166 ( .A(n282), .B(n358), .C(n283), .D(n352), .Y(n201) );
  OAI22X1 U167 ( .A(n283), .B(n358), .C(n284), .D(n352), .Y(n202) );
  OAI22X1 U168 ( .A(n284), .B(n358), .C(n285), .D(n352), .Y(n203) );
  OAI22X1 U169 ( .A(n285), .B(n358), .C(n286), .D(n352), .Y(n204) );
  OAI22X1 U170 ( .A(n286), .B(n358), .C(n287), .D(n352), .Y(n205) );
  AND2X2 U171 ( .A(a[0]), .B(n153), .Y(n206) );
  INVX2 U172 ( .A(n358), .Y(n153) );
  XNOR2X1 U173 ( .A(n368), .B(n331), .Y(n275) );
  XNOR2X1 U174 ( .A(n368), .B(n332), .Y(n276) );
  XNOR2X1 U175 ( .A(n368), .B(n333), .Y(n277) );
  XNOR2X1 U176 ( .A(n368), .B(a[9]), .Y(n278) );
  XNOR2X1 U177 ( .A(n368), .B(n335), .Y(n279) );
  XNOR2X1 U178 ( .A(n368), .B(a[7]), .Y(n280) );
  XNOR2X1 U179 ( .A(n368), .B(n337), .Y(n281) );
  XNOR2X1 U180 ( .A(n368), .B(a[5]), .Y(n282) );
  XNOR2X1 U181 ( .A(n368), .B(n339), .Y(n283) );
  XNOR2X1 U182 ( .A(n368), .B(a[3]), .Y(n284) );
  XNOR2X1 U183 ( .A(n368), .B(n341), .Y(n285) );
  XNOR2X1 U184 ( .A(n368), .B(a[1]), .Y(n286) );
  XNOR2X1 U185 ( .A(n368), .B(a[0]), .Y(n287) );
  OR2X2 U186 ( .A(a[0]), .B(n363), .Y(n288) );
  OAI22X1 U188 ( .A(n359), .B(n302), .C(n364), .D(n353), .Y(n166) );
  INVX2 U189 ( .A(n155), .Y(n207) );
  AOI21X1 U190 ( .A(n359), .B(n353), .C(n289), .Y(n155) );
  OAI22X1 U191 ( .A(n289), .B(n359), .C(n290), .D(n353), .Y(n208) );
  OAI22X1 U192 ( .A(n290), .B(n359), .C(n291), .D(n353), .Y(n209) );
  OAI22X1 U193 ( .A(n291), .B(n359), .C(n292), .D(n353), .Y(n210) );
  OAI22X1 U194 ( .A(n292), .B(n359), .C(n293), .D(n353), .Y(n211) );
  OAI22X1 U195 ( .A(n293), .B(n359), .C(n294), .D(n353), .Y(n212) );
  OAI22X1 U196 ( .A(n294), .B(n359), .C(n295), .D(n353), .Y(n213) );
  OAI22X1 U197 ( .A(n295), .B(n359), .C(n296), .D(n353), .Y(n214) );
  OAI22X1 U198 ( .A(n296), .B(n359), .C(n297), .D(n353), .Y(n215) );
  OAI22X1 U199 ( .A(n297), .B(n359), .C(n298), .D(n353), .Y(n216) );
  OAI22X1 U200 ( .A(n298), .B(n359), .C(n299), .D(n353), .Y(n217) );
  OAI22X1 U201 ( .A(n299), .B(n359), .C(n300), .D(n353), .Y(n218) );
  OAI22X1 U202 ( .A(n300), .B(n359), .C(n301), .D(n353), .Y(n219) );
  AND2X2 U203 ( .A(a[0]), .B(n156), .Y(n220) );
  INVX2 U204 ( .A(n359), .Y(n156) );
  XNOR2X1 U205 ( .A(n369), .B(n331), .Y(n289) );
  XNOR2X1 U206 ( .A(n369), .B(n332), .Y(n290) );
  XNOR2X1 U207 ( .A(n369), .B(n333), .Y(n291) );
  XNOR2X1 U208 ( .A(n369), .B(a[9]), .Y(n292) );
  XNOR2X1 U209 ( .A(n369), .B(n335), .Y(n293) );
  XNOR2X1 U210 ( .A(n369), .B(a[7]), .Y(n294) );
  XNOR2X1 U211 ( .A(n369), .B(n337), .Y(n295) );
  XNOR2X1 U212 ( .A(n369), .B(a[5]), .Y(n296) );
  XNOR2X1 U213 ( .A(n369), .B(n339), .Y(n297) );
  XNOR2X1 U214 ( .A(n369), .B(a[3]), .Y(n298) );
  XNOR2X1 U215 ( .A(n369), .B(n341), .Y(n299) );
  XNOR2X1 U216 ( .A(n369), .B(a[1]), .Y(n300) );
  XNOR2X1 U217 ( .A(n369), .B(a[0]), .Y(n301) );
  OR2X2 U218 ( .A(a[0]), .B(n364), .Y(n302) );
  OAI22X1 U220 ( .A(n360), .B(n316), .C(n365), .D(n354), .Y(n167) );
  INVX2 U221 ( .A(n158), .Y(n221) );
  AOI21X1 U222 ( .A(n360), .B(n354), .C(n303), .Y(n158) );
  OAI22X1 U223 ( .A(n303), .B(n360), .C(n304), .D(n354), .Y(n222) );
  OAI22X1 U224 ( .A(n304), .B(n360), .C(n305), .D(n354), .Y(n223) );
  OAI22X1 U225 ( .A(n305), .B(n360), .C(n306), .D(n354), .Y(n224) );
  OAI22X1 U226 ( .A(n306), .B(n360), .C(n307), .D(n354), .Y(n225) );
  OAI22X1 U227 ( .A(n307), .B(n360), .C(n308), .D(n354), .Y(n226) );
  OAI22X1 U228 ( .A(n308), .B(n360), .C(n309), .D(n354), .Y(n227) );
  OAI22X1 U229 ( .A(n309), .B(n360), .C(n310), .D(n354), .Y(n228) );
  OAI22X1 U230 ( .A(n310), .B(n360), .C(n311), .D(n354), .Y(n229) );
  OAI22X1 U231 ( .A(n311), .B(n360), .C(n312), .D(n354), .Y(n230) );
  OAI22X1 U232 ( .A(n312), .B(n360), .C(n313), .D(n354), .Y(n231) );
  OAI22X1 U233 ( .A(n313), .B(n360), .C(n314), .D(n354), .Y(n232) );
  OAI22X1 U234 ( .A(n314), .B(n360), .C(n315), .D(n354), .Y(n233) );
  AND2X2 U235 ( .A(a[0]), .B(n159), .Y(n234) );
  INVX2 U236 ( .A(n360), .Y(n159) );
  XNOR2X1 U237 ( .A(n370), .B(n331), .Y(n303) );
  XNOR2X1 U238 ( .A(n370), .B(n332), .Y(n304) );
  XNOR2X1 U239 ( .A(n370), .B(n333), .Y(n305) );
  XNOR2X1 U240 ( .A(n370), .B(a[9]), .Y(n306) );
  XNOR2X1 U241 ( .A(n370), .B(n335), .Y(n307) );
  XNOR2X1 U242 ( .A(n370), .B(a[7]), .Y(n308) );
  XNOR2X1 U243 ( .A(n370), .B(n337), .Y(n309) );
  XNOR2X1 U244 ( .A(n370), .B(a[5]), .Y(n310) );
  XNOR2X1 U245 ( .A(n370), .B(n339), .Y(n311) );
  XNOR2X1 U246 ( .A(n370), .B(a[3]), .Y(n312) );
  XNOR2X1 U247 ( .A(n370), .B(n341), .Y(n313) );
  XNOR2X1 U248 ( .A(n370), .B(a[1]), .Y(n314) );
  XNOR2X1 U249 ( .A(n370), .B(a[0]), .Y(n315) );
  OR2X2 U250 ( .A(a[0]), .B(n365), .Y(n316) );
  OAI22X1 U252 ( .A(n361), .B(n330), .C(n366), .D(n355), .Y(n168) );
  INVX2 U253 ( .A(n161), .Y(n235) );
  AOI21X1 U254 ( .A(n361), .B(n355), .C(n317), .Y(n161) );
  OAI22X1 U255 ( .A(n361), .B(n317), .C(n318), .D(n355), .Y(n236) );
  OAI22X1 U256 ( .A(n361), .B(n318), .C(n319), .D(n355), .Y(n237) );
  OAI22X1 U257 ( .A(n361), .B(n319), .C(n320), .D(n355), .Y(n238) );
  OAI22X1 U258 ( .A(n361), .B(n320), .C(n321), .D(n355), .Y(n239) );
  OAI22X1 U259 ( .A(n361), .B(n321), .C(n322), .D(n355), .Y(n240) );
  OAI22X1 U260 ( .A(n361), .B(n322), .C(n323), .D(n355), .Y(n241) );
  OAI22X1 U261 ( .A(n361), .B(n323), .C(n324), .D(n355), .Y(n242) );
  OAI22X1 U262 ( .A(n361), .B(n324), .C(n325), .D(n355), .Y(n243) );
  OAI22X1 U263 ( .A(n361), .B(n325), .C(n326), .D(n355), .Y(n244) );
  OAI22X1 U264 ( .A(n361), .B(n326), .C(n327), .D(n355), .Y(n245) );
  OAI22X1 U265 ( .A(n361), .B(n327), .C(n328), .D(n355), .Y(n246) );
  OAI22X1 U266 ( .A(n361), .B(n328), .C(n329), .D(n355), .Y(n247) );
  AND2X2 U267 ( .A(a[0]), .B(b[0]), .Y(product[0]) );
  XNOR2X1 U269 ( .A(n371), .B(n331), .Y(n317) );
  XNOR2X1 U270 ( .A(n371), .B(n332), .Y(n318) );
  XNOR2X1 U271 ( .A(n371), .B(n333), .Y(n319) );
  XNOR2X1 U272 ( .A(n371), .B(a[9]), .Y(n320) );
  XNOR2X1 U273 ( .A(n371), .B(n335), .Y(n321) );
  XNOR2X1 U274 ( .A(n371), .B(a[7]), .Y(n322) );
  XNOR2X1 U275 ( .A(n371), .B(n337), .Y(n323) );
  XNOR2X1 U276 ( .A(n371), .B(a[5]), .Y(n324) );
  XNOR2X1 U277 ( .A(n371), .B(n339), .Y(n325) );
  XNOR2X1 U278 ( .A(n371), .B(a[3]), .Y(n326) );
  XNOR2X1 U279 ( .A(n371), .B(n341), .Y(n327) );
  XNOR2X1 U280 ( .A(n371), .B(a[1]), .Y(n328) );
  XNOR2X1 U281 ( .A(n371), .B(a[0]), .Y(n329) );
  OR2X2 U282 ( .A(a[0]), .B(n366), .Y(n330) );
  INVX2 U300 ( .A(n367), .Y(n362) );
  INVX2 U304 ( .A(n368), .Y(n363) );
  INVX2 U308 ( .A(n369), .Y(n364) );
  INVX2 U312 ( .A(n370), .Y(n365) );
  INVX2 U316 ( .A(n371), .Y(n366) );
  NAND2X1 U318 ( .A(b[10]), .B(n378), .Y(n372) );
  XNOR2X1 U319 ( .A(b[10]), .B(b[9]), .Y(n378) );
  NAND2X1 U320 ( .A(n379), .B(n345), .Y(n373) );
  XOR2X1 U321 ( .A(b[8]), .B(b[9]), .Y(n345) );
  XNOR2X1 U322 ( .A(b[8]), .B(b[7]), .Y(n379) );
  NAND2X1 U323 ( .A(n380), .B(n346), .Y(n374) );
  XOR2X1 U324 ( .A(b[6]), .B(b[7]), .Y(n346) );
  XNOR2X1 U325 ( .A(b[6]), .B(b[5]), .Y(n380) );
  NAND2X1 U326 ( .A(n381), .B(n347), .Y(n375) );
  XOR2X1 U327 ( .A(b[4]), .B(b[5]), .Y(n347) );
  XNOR2X1 U328 ( .A(b[4]), .B(b[3]), .Y(n381) );
  NAND2X1 U329 ( .A(n382), .B(n348), .Y(n376) );
  XOR2X1 U330 ( .A(b[2]), .B(b[3]), .Y(n348) );
  XNOR2X1 U331 ( .A(b[2]), .B(b[1]), .Y(n382) );
  NAND2X1 U332 ( .A(n383), .B(n349), .Y(n377) );
  XOR2X1 U333 ( .A(b[0]), .B(b[1]), .Y(n349) );
  INVX2 U334 ( .A(b[0]), .Y(n383) );
  BUFX2 U337 ( .A(n12), .Y(n11) );
  BUFX2 U338 ( .A(n382), .Y(n360) );
  BUFX2 U339 ( .A(n381), .Y(n359) );
  BUFX2 U340 ( .A(n380), .Y(n358) );
  BUFX2 U341 ( .A(n379), .Y(n357) );
  BUFX2 U342 ( .A(n383), .Y(n361) );
  BUFX2 U343 ( .A(n378), .Y(n356) );
  BUFX2 U344 ( .A(a[2]), .Y(n341) );
  BUFX2 U345 ( .A(a[4]), .Y(n339) );
  BUFX2 U346 ( .A(a[6]), .Y(n337) );
  BUFX2 U347 ( .A(a[8]), .Y(n335) );
  BUFX2 U348 ( .A(a[10]), .Y(n333) );
  BUFX2 U349 ( .A(a[12]), .Y(n331) );
  BUFX2 U350 ( .A(a[11]), .Y(n332) );
  BUFX2 U351 ( .A(b[1]), .Y(n371) );
  BUFX2 U352 ( .A(b[3]), .Y(n370) );
  BUFX2 U353 ( .A(b[5]), .Y(n369) );
  BUFX2 U354 ( .A(b[7]), .Y(n368) );
  BUFX2 U355 ( .A(b[9]), .Y(n367) );
  BUFX2 U356 ( .A(n376), .Y(n354) );
  BUFX2 U357 ( .A(n375), .Y(n353) );
  BUFX2 U358 ( .A(n374), .Y(n352) );
  BUFX2 U359 ( .A(n373), .Y(n351) );
  BUFX2 U360 ( .A(n377), .Y(n355) );
  BUFX2 U361 ( .A(n372), .Y(n350) );
  INVX2 U362 ( .A(n12), .Y(\product[25] ) );
  BUFX2 U363 ( .A(n9), .Y(product[26]) );
  INVX2 U364 ( .A(n12), .Y(\product[27] ) );
  BUFX2 U365 ( .A(n8), .Y(product[28]) );
endmodule


module fft_axi_manager_DW_mult_uns_3 ( a, b, product );
  input [31:0] a;
  input [10:0] b;
  output [42:0] product;
  wire   n1, \product[25] , n8, n9, n10, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n144, n145, n147,
         n148, n150, n151, n153, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         \product[24] ;
  assign product[29] = \product[25] ;
  assign product[25] = \product[25] ;
  assign product[30] = n8;
  assign product[23] = n9;
  assign product[31] = n10;
  assign product[27] = \product[24] ;
  assign product[24] = \product[24] ;

  INVX2 U8 ( .A(n12), .Y(n8) );
  INVX2 U11 ( .A(n13), .Y(n9) );
  INVX2 U15 ( .A(n13), .Y(n10) );
  FAX1 U18 ( .A(n35), .B(n161), .C(n14), .YC(n13), .YS(product[22]) );
  FAX1 U19 ( .A(n36), .B(n37), .C(n15), .YC(n14), .YS(product[21]) );
  FAX1 U20 ( .A(n38), .B(n39), .C(n16), .YC(n15), .YS(product[20]) );
  FAX1 U21 ( .A(n40), .B(n43), .C(n17), .YC(n16), .YS(product[19]) );
  FAX1 U22 ( .A(n44), .B(n47), .C(n18), .YC(n17), .YS(product[18]) );
  FAX1 U23 ( .A(n48), .B(n53), .C(n19), .YC(n18), .YS(product[17]) );
  FAX1 U24 ( .A(n59), .B(n54), .C(n20), .YC(n19), .YS(product[16]) );
  FAX1 U25 ( .A(n67), .B(n60), .C(n21), .YC(n20), .YS(product[15]) );
  FAX1 U26 ( .A(n75), .B(n68), .C(n22), .YC(n21), .YS(product[14]) );
  FAX1 U27 ( .A(n83), .B(n76), .C(n23), .YC(n22), .YS(product[13]) );
  FAX1 U28 ( .A(n91), .B(n84), .C(n24), .YC(n23), .YS(product[12]) );
  FAX1 U29 ( .A(n99), .B(n92), .C(n25), .YC(n24), .YS(product[11]) );
  FAX1 U30 ( .A(n107), .B(n100), .C(n26), .YC(n25), .YS(product[10]) );
  FAX1 U31 ( .A(n115), .B(n108), .C(n27), .YC(n26), .YS(product[9]) );
  FAX1 U32 ( .A(n121), .B(n116), .C(n28), .YC(n27), .YS(product[8]) );
  FAX1 U33 ( .A(n127), .B(n122), .C(n29), .YC(n28), .YS(product[7]) );
  FAX1 U34 ( .A(n131), .B(n128), .C(n30), .YC(n29), .YS(product[6]) );
  FAX1 U35 ( .A(n135), .B(n132), .C(n31), .YC(n30), .YS(product[5]) );
  FAX1 U36 ( .A(n137), .B(n136), .C(n32), .YC(n31), .YS(product[4]) );
  FAX1 U37 ( .A(n159), .B(n138), .C(n33), .YC(n32), .YS(product[3]) );
  FAX1 U38 ( .A(n232), .B(n221), .C(n34), .YC(n33), .YS(product[2]) );
  HAX1 U39 ( .A(n160), .B(n233), .YC(n34), .YS(product[1]) );
  INVX2 U40 ( .A(n35), .Y(n36) );
  FAX1 U41 ( .A(n41), .B(n162), .C(n170), .YC(n37), .YS(n38) );
  FAX1 U42 ( .A(n171), .B(n42), .C(n45), .YC(n39), .YS(n40) );
  INVX2 U43 ( .A(n41), .Y(n42) );
  FAX1 U44 ( .A(n163), .B(n49), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U45 ( .A(n51), .B(n172), .C(n183), .YC(n45), .YS(n46) );
  FAX1 U46 ( .A(n57), .B(n50), .C(n55), .YC(n47), .YS(n48) );
  FAX1 U47 ( .A(n184), .B(n173), .C(n52), .YC(n49), .YS(n50) );
  INVX2 U48 ( .A(n51), .Y(n52) );
  FAX1 U49 ( .A(n58), .B(n56), .C(n61), .YC(n53), .YS(n54) );
  FAX1 U50 ( .A(n164), .B(n185), .C(n63), .YC(n55), .YS(n56) );
  FAX1 U51 ( .A(n65), .B(n174), .C(n196), .YC(n57), .YS(n58) );
  FAX1 U52 ( .A(n64), .B(n69), .C(n62), .YC(n59), .YS(n60) );
  FAX1 U53 ( .A(n66), .B(n73), .C(n71), .YC(n61), .YS(n62) );
  FAX1 U54 ( .A(n175), .B(n186), .C(n197), .YC(n63), .YS(n64) );
  INVX2 U55 ( .A(n65), .Y(n66) );
  FAX1 U56 ( .A(n74), .B(n77), .C(n70), .YC(n67), .YS(n68) );
  FAX1 U57 ( .A(n81), .B(n79), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U58 ( .A(n198), .B(n176), .C(n222), .YC(n71), .YS(n72) );
  FAX1 U59 ( .A(n165), .B(n187), .C(n209), .YC(n73), .YS(n74) );
  FAX1 U60 ( .A(n82), .B(n85), .C(n78), .YC(n75), .YS(n76) );
  FAX1 U61 ( .A(n89), .B(n87), .C(n80), .YC(n77), .YS(n78) );
  FAX1 U62 ( .A(n199), .B(n177), .C(n188), .YC(n79), .YS(n80) );
  FAX1 U63 ( .A(n153), .B(n166), .C(n210), .YC(n81), .YS(n82) );
  FAX1 U64 ( .A(n90), .B(n93), .C(n86), .YC(n83), .YS(n84) );
  FAX1 U65 ( .A(n97), .B(n95), .C(n88), .YC(n85), .YS(n86) );
  FAX1 U66 ( .A(n200), .B(n178), .C(n189), .YC(n87), .YS(n88) );
  FAX1 U67 ( .A(n153), .B(n167), .C(n211), .YC(n89), .YS(n90) );
  FAX1 U68 ( .A(n98), .B(n101), .C(n94), .YC(n91), .YS(n92) );
  FAX1 U69 ( .A(n105), .B(n103), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U70 ( .A(n223), .B(n201), .C(n212), .YC(n95), .YS(n96) );
  FAX1 U71 ( .A(n168), .B(n179), .C(n190), .YC(n97), .YS(n98) );
  FAX1 U72 ( .A(n104), .B(n109), .C(n102), .YC(n99), .YS(n100) );
  FAX1 U73 ( .A(n113), .B(n111), .C(n106), .YC(n101), .YS(n102) );
  FAX1 U74 ( .A(n213), .B(n191), .C(n202), .YC(n103), .YS(n104) );
  FAX1 U75 ( .A(n224), .B(n180), .C(n169), .YC(n105), .YS(n106) );
  FAX1 U76 ( .A(n112), .B(n117), .C(n110), .YC(n107), .YS(n108) );
  FAX1 U77 ( .A(n214), .B(n114), .C(n119), .YC(n109), .YS(n110) );
  FAX1 U78 ( .A(n192), .B(n181), .C(n203), .YC(n111), .YS(n112) );
  HAX1 U79 ( .A(n225), .B(n156), .YC(n113), .YS(n114) );
  FAX1 U80 ( .A(n123), .B(n120), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U81 ( .A(n215), .B(n204), .C(n125), .YC(n117), .YS(n118) );
  FAX1 U82 ( .A(n226), .B(n193), .C(n182), .YC(n119), .YS(n120) );
  FAX1 U83 ( .A(n126), .B(n129), .C(n124), .YC(n121), .YS(n122) );
  FAX1 U84 ( .A(n216), .B(n194), .C(n205), .YC(n123), .YS(n124) );
  HAX1 U85 ( .A(n227), .B(n157), .YC(n125), .YS(n126) );
  FAX1 U86 ( .A(n217), .B(n133), .C(n130), .YC(n127), .YS(n128) );
  FAX1 U87 ( .A(n228), .B(n206), .C(n195), .YC(n129), .YS(n130) );
  FAX1 U88 ( .A(n218), .B(n207), .C(n134), .YC(n131), .YS(n132) );
  HAX1 U89 ( .A(n229), .B(n158), .YC(n133), .YS(n134) );
  FAX1 U90 ( .A(n230), .B(n219), .C(n208), .YC(n135), .YS(n136) );
  HAX1 U91 ( .A(n231), .B(n220), .YC(n137), .YS(n138) );
  INVX2 U92 ( .A(n139), .Y(n161) );
  AOI21X1 U93 ( .A(n335), .B(n329), .C(n234), .Y(n139) );
  OAI22X1 U94 ( .A(n234), .B(n335), .C(n235), .D(n329), .Y(n35) );
  OAI22X1 U95 ( .A(n235), .B(n335), .C(n236), .D(n329), .Y(n162) );
  OAI22X1 U96 ( .A(n236), .B(n335), .C(n237), .D(n329), .Y(n41) );
  OAI22X1 U97 ( .A(n237), .B(n335), .C(n238), .D(n329), .Y(n163) );
  OAI22X1 U98 ( .A(n238), .B(n335), .C(n239), .D(n329), .Y(n51) );
  OAI22X1 U99 ( .A(n239), .B(n335), .C(n240), .D(n329), .Y(n164) );
  OAI22X1 U100 ( .A(n240), .B(n335), .C(n241), .D(n329), .Y(n65) );
  OAI22X1 U101 ( .A(n241), .B(n335), .C(n242), .D(n329), .Y(n165) );
  OAI22X1 U102 ( .A(n242), .B(n335), .C(n243), .D(n329), .Y(n166) );
  OAI22X1 U103 ( .A(n243), .B(n335), .C(n244), .D(n329), .Y(n167) );
  OAI22X1 U104 ( .A(n244), .B(n335), .C(n245), .D(n329), .Y(n168) );
  AND2X2 U105 ( .A(n1), .B(n140), .Y(n169) );
  INVX2 U106 ( .A(n335), .Y(n140) );
  INVX2 U107 ( .A(a[11]), .Y(n234) );
  INVX2 U108 ( .A(n312), .Y(n235) );
  INVX2 U109 ( .A(n313), .Y(n236) );
  INVX2 U110 ( .A(n314), .Y(n237) );
  INVX2 U111 ( .A(n315), .Y(n238) );
  INVX2 U112 ( .A(n316), .Y(n239) );
  INVX2 U113 ( .A(n317), .Y(n240) );
  INVX2 U114 ( .A(n318), .Y(n241) );
  INVX2 U115 ( .A(n319), .Y(n242) );
  INVX2 U116 ( .A(n320), .Y(n243) );
  INVX2 U117 ( .A(n321), .Y(n244) );
  INVX2 U118 ( .A(n1), .Y(n245) );
  OAI22X1 U119 ( .A(n336), .B(n258), .C(n341), .D(n330), .Y(n156) );
  INVX2 U120 ( .A(n141), .Y(n170) );
  AOI21X1 U121 ( .A(n336), .B(n330), .C(n246), .Y(n141) );
  OAI22X1 U122 ( .A(n246), .B(n336), .C(n247), .D(n330), .Y(n171) );
  OAI22X1 U123 ( .A(n247), .B(n336), .C(n248), .D(n330), .Y(n172) );
  OAI22X1 U124 ( .A(n248), .B(n336), .C(n249), .D(n330), .Y(n173) );
  OAI22X1 U125 ( .A(n249), .B(n336), .C(n250), .D(n330), .Y(n174) );
  OAI22X1 U126 ( .A(n250), .B(n336), .C(n251), .D(n330), .Y(n175) );
  OAI22X1 U127 ( .A(n251), .B(n336), .C(n252), .D(n330), .Y(n176) );
  OAI22X1 U128 ( .A(n252), .B(n336), .C(n253), .D(n330), .Y(n177) );
  OAI22X1 U129 ( .A(n253), .B(n336), .C(n254), .D(n330), .Y(n178) );
  OAI22X1 U130 ( .A(n254), .B(n336), .C(n255), .D(n330), .Y(n179) );
  OAI22X1 U131 ( .A(n255), .B(n336), .C(n256), .D(n330), .Y(n180) );
  OAI22X1 U132 ( .A(n256), .B(n336), .C(n257), .D(n330), .Y(n181) );
  AND2X2 U133 ( .A(n1), .B(n142), .Y(n182) );
  INVX2 U134 ( .A(n336), .Y(n142) );
  XNOR2X1 U135 ( .A(n346), .B(a[11]), .Y(n246) );
  XNOR2X1 U136 ( .A(n346), .B(n312), .Y(n247) );
  XNOR2X1 U137 ( .A(n346), .B(n313), .Y(n248) );
  XNOR2X1 U138 ( .A(n346), .B(n314), .Y(n249) );
  XNOR2X1 U139 ( .A(n346), .B(n315), .Y(n250) );
  XNOR2X1 U140 ( .A(n346), .B(n316), .Y(n251) );
  XNOR2X1 U141 ( .A(n346), .B(n317), .Y(n252) );
  XNOR2X1 U142 ( .A(n346), .B(n318), .Y(n253) );
  XNOR2X1 U143 ( .A(n346), .B(n319), .Y(n254) );
  XNOR2X1 U144 ( .A(n346), .B(n320), .Y(n255) );
  XNOR2X1 U145 ( .A(n346), .B(n321), .Y(n256) );
  XNOR2X1 U146 ( .A(n346), .B(n1), .Y(n257) );
  OR2X2 U147 ( .A(n1), .B(n341), .Y(n258) );
  OAI22X1 U149 ( .A(n337), .B(n271), .C(n342), .D(n331), .Y(n157) );
  INVX2 U150 ( .A(n144), .Y(n183) );
  AOI21X1 U151 ( .A(n337), .B(n331), .C(n259), .Y(n144) );
  OAI22X1 U152 ( .A(n259), .B(n337), .C(n260), .D(n331), .Y(n184) );
  OAI22X1 U153 ( .A(n260), .B(n337), .C(n261), .D(n331), .Y(n185) );
  OAI22X1 U154 ( .A(n261), .B(n337), .C(n262), .D(n331), .Y(n186) );
  OAI22X1 U155 ( .A(n262), .B(n337), .C(n263), .D(n331), .Y(n187) );
  OAI22X1 U156 ( .A(n263), .B(n337), .C(n264), .D(n331), .Y(n188) );
  OAI22X1 U157 ( .A(n264), .B(n337), .C(n265), .D(n331), .Y(n189) );
  OAI22X1 U158 ( .A(n265), .B(n337), .C(n266), .D(n331), .Y(n190) );
  OAI22X1 U159 ( .A(n266), .B(n337), .C(n267), .D(n331), .Y(n191) );
  OAI22X1 U160 ( .A(n267), .B(n337), .C(n268), .D(n331), .Y(n192) );
  OAI22X1 U161 ( .A(n268), .B(n337), .C(n269), .D(n331), .Y(n193) );
  OAI22X1 U162 ( .A(n269), .B(n337), .C(n270), .D(n331), .Y(n194) );
  AND2X2 U163 ( .A(n1), .B(n145), .Y(n195) );
  INVX2 U164 ( .A(n337), .Y(n145) );
  XNOR2X1 U165 ( .A(n347), .B(a[11]), .Y(n259) );
  XNOR2X1 U166 ( .A(n347), .B(n312), .Y(n260) );
  XNOR2X1 U167 ( .A(n347), .B(n313), .Y(n261) );
  XNOR2X1 U168 ( .A(n347), .B(n314), .Y(n262) );
  XNOR2X1 U169 ( .A(n347), .B(n315), .Y(n263) );
  XNOR2X1 U170 ( .A(n347), .B(n316), .Y(n264) );
  XNOR2X1 U171 ( .A(n347), .B(n317), .Y(n265) );
  XNOR2X1 U172 ( .A(n347), .B(n318), .Y(n266) );
  XNOR2X1 U173 ( .A(n347), .B(n319), .Y(n267) );
  XNOR2X1 U174 ( .A(n347), .B(n320), .Y(n268) );
  XNOR2X1 U175 ( .A(n347), .B(n321), .Y(n269) );
  XNOR2X1 U176 ( .A(n347), .B(n1), .Y(n270) );
  OR2X2 U177 ( .A(n1), .B(n342), .Y(n271) );
  OAI22X1 U179 ( .A(n338), .B(n284), .C(n343), .D(n332), .Y(n158) );
  INVX2 U180 ( .A(n147), .Y(n196) );
  AOI21X1 U181 ( .A(n338), .B(n332), .C(n272), .Y(n147) );
  OAI22X1 U182 ( .A(n272), .B(n338), .C(n273), .D(n332), .Y(n197) );
  OAI22X1 U183 ( .A(n273), .B(n338), .C(n274), .D(n332), .Y(n198) );
  OAI22X1 U184 ( .A(n274), .B(n338), .C(n275), .D(n332), .Y(n199) );
  OAI22X1 U185 ( .A(n275), .B(n338), .C(n276), .D(n332), .Y(n200) );
  OAI22X1 U186 ( .A(n276), .B(n338), .C(n277), .D(n332), .Y(n201) );
  OAI22X1 U187 ( .A(n277), .B(n338), .C(n278), .D(n332), .Y(n202) );
  OAI22X1 U188 ( .A(n278), .B(n338), .C(n279), .D(n332), .Y(n203) );
  OAI22X1 U189 ( .A(n279), .B(n338), .C(n280), .D(n332), .Y(n204) );
  OAI22X1 U190 ( .A(n280), .B(n338), .C(n281), .D(n332), .Y(n205) );
  OAI22X1 U191 ( .A(n281), .B(n338), .C(n282), .D(n332), .Y(n206) );
  OAI22X1 U192 ( .A(n282), .B(n338), .C(n283), .D(n332), .Y(n207) );
  AND2X2 U193 ( .A(n1), .B(n148), .Y(n208) );
  INVX2 U194 ( .A(n338), .Y(n148) );
  XNOR2X1 U195 ( .A(n348), .B(a[11]), .Y(n272) );
  XNOR2X1 U196 ( .A(n348), .B(n312), .Y(n273) );
  XNOR2X1 U197 ( .A(n348), .B(n313), .Y(n274) );
  XNOR2X1 U198 ( .A(n348), .B(n314), .Y(n275) );
  XNOR2X1 U199 ( .A(n348), .B(n315), .Y(n276) );
  XNOR2X1 U200 ( .A(n348), .B(n316), .Y(n277) );
  XNOR2X1 U201 ( .A(n348), .B(n317), .Y(n278) );
  XNOR2X1 U202 ( .A(n348), .B(n318), .Y(n279) );
  XNOR2X1 U203 ( .A(n348), .B(n319), .Y(n280) );
  XNOR2X1 U204 ( .A(n348), .B(n320), .Y(n281) );
  XNOR2X1 U205 ( .A(n348), .B(n321), .Y(n282) );
  XNOR2X1 U206 ( .A(n348), .B(n1), .Y(n283) );
  OR2X2 U207 ( .A(n1), .B(n343), .Y(n284) );
  OAI22X1 U209 ( .A(n339), .B(n297), .C(n344), .D(n333), .Y(n159) );
  INVX2 U210 ( .A(n150), .Y(n209) );
  AOI21X1 U211 ( .A(n339), .B(n333), .C(n285), .Y(n150) );
  OAI22X1 U212 ( .A(n285), .B(n339), .C(n286), .D(n333), .Y(n210) );
  OAI22X1 U213 ( .A(n286), .B(n339), .C(n287), .D(n333), .Y(n211) );
  OAI22X1 U214 ( .A(n287), .B(n339), .C(n288), .D(n333), .Y(n212) );
  OAI22X1 U215 ( .A(n288), .B(n339), .C(n289), .D(n333), .Y(n213) );
  OAI22X1 U216 ( .A(n289), .B(n339), .C(n290), .D(n333), .Y(n214) );
  OAI22X1 U217 ( .A(n290), .B(n339), .C(n291), .D(n333), .Y(n215) );
  OAI22X1 U218 ( .A(n291), .B(n339), .C(n292), .D(n333), .Y(n216) );
  OAI22X1 U219 ( .A(n292), .B(n339), .C(n293), .D(n333), .Y(n217) );
  OAI22X1 U220 ( .A(n293), .B(n339), .C(n294), .D(n333), .Y(n218) );
  OAI22X1 U221 ( .A(n294), .B(n339), .C(n295), .D(n333), .Y(n219) );
  OAI22X1 U222 ( .A(n295), .B(n339), .C(n296), .D(n333), .Y(n220) );
  AND2X2 U223 ( .A(n1), .B(n151), .Y(n221) );
  INVX2 U224 ( .A(n339), .Y(n151) );
  XNOR2X1 U225 ( .A(n349), .B(a[11]), .Y(n285) );
  XNOR2X1 U226 ( .A(n349), .B(n312), .Y(n286) );
  XNOR2X1 U227 ( .A(n349), .B(n313), .Y(n287) );
  XNOR2X1 U228 ( .A(n349), .B(n314), .Y(n288) );
  XNOR2X1 U229 ( .A(n349), .B(n315), .Y(n289) );
  XNOR2X1 U230 ( .A(n349), .B(n316), .Y(n290) );
  XNOR2X1 U231 ( .A(n349), .B(n317), .Y(n291) );
  XNOR2X1 U232 ( .A(n349), .B(n318), .Y(n292) );
  XNOR2X1 U233 ( .A(n349), .B(n319), .Y(n293) );
  XNOR2X1 U234 ( .A(n349), .B(n320), .Y(n294) );
  XNOR2X1 U235 ( .A(n349), .B(n321), .Y(n295) );
  XNOR2X1 U236 ( .A(n349), .B(n1), .Y(n296) );
  OR2X2 U237 ( .A(n1), .B(n344), .Y(n297) );
  OAI22X1 U239 ( .A(n340), .B(n310), .C(n345), .D(n334), .Y(n160) );
  INVX2 U240 ( .A(n153), .Y(n222) );
  AOI21X1 U241 ( .A(n340), .B(n334), .C(n298), .Y(n153) );
  OAI22X1 U242 ( .A(n340), .B(n298), .C(n299), .D(n334), .Y(n223) );
  OAI22X1 U243 ( .A(n340), .B(n299), .C(n300), .D(n334), .Y(n224) );
  OAI22X1 U244 ( .A(n340), .B(n300), .C(n301), .D(n334), .Y(n225) );
  OAI22X1 U245 ( .A(n340), .B(n301), .C(n302), .D(n334), .Y(n226) );
  OAI22X1 U246 ( .A(n340), .B(n302), .C(n303), .D(n334), .Y(n227) );
  OAI22X1 U247 ( .A(n340), .B(n303), .C(n304), .D(n334), .Y(n228) );
  OAI22X1 U248 ( .A(n340), .B(n304), .C(n305), .D(n334), .Y(n229) );
  OAI22X1 U249 ( .A(n340), .B(n305), .C(n306), .D(n334), .Y(n230) );
  OAI22X1 U250 ( .A(n340), .B(n306), .C(n307), .D(n334), .Y(n231) );
  OAI22X1 U251 ( .A(n340), .B(n307), .C(n308), .D(n334), .Y(n232) );
  OAI22X1 U252 ( .A(n340), .B(n308), .C(n309), .D(n334), .Y(n233) );
  AND2X2 U253 ( .A(n1), .B(b[0]), .Y(product[0]) );
  XNOR2X1 U255 ( .A(n350), .B(a[11]), .Y(n298) );
  XNOR2X1 U256 ( .A(n350), .B(n312), .Y(n299) );
  XNOR2X1 U257 ( .A(n350), .B(n313), .Y(n300) );
  XNOR2X1 U258 ( .A(n350), .B(n314), .Y(n301) );
  XNOR2X1 U259 ( .A(n350), .B(n315), .Y(n302) );
  XNOR2X1 U260 ( .A(n350), .B(n316), .Y(n303) );
  XNOR2X1 U261 ( .A(n350), .B(n317), .Y(n304) );
  XNOR2X1 U262 ( .A(n350), .B(n318), .Y(n305) );
  XNOR2X1 U263 ( .A(n350), .B(n319), .Y(n306) );
  XNOR2X1 U264 ( .A(n350), .B(n320), .Y(n307) );
  XNOR2X1 U265 ( .A(n350), .B(n321), .Y(n308) );
  XNOR2X1 U266 ( .A(n350), .B(n1), .Y(n309) );
  OR2X2 U267 ( .A(n1), .B(n345), .Y(n310) );
  INVX2 U284 ( .A(n346), .Y(n341) );
  INVX2 U288 ( .A(n347), .Y(n342) );
  INVX2 U292 ( .A(n348), .Y(n343) );
  INVX2 U296 ( .A(n349), .Y(n344) );
  INVX2 U300 ( .A(n350), .Y(n345) );
  NAND2X1 U302 ( .A(b[10]), .B(n357), .Y(n351) );
  XNOR2X1 U303 ( .A(b[10]), .B(b[9]), .Y(n357) );
  NAND2X1 U304 ( .A(n358), .B(n324), .Y(n352) );
  XOR2X1 U305 ( .A(b[8]), .B(b[9]), .Y(n324) );
  XNOR2X1 U306 ( .A(b[8]), .B(b[7]), .Y(n358) );
  NAND2X1 U307 ( .A(n359), .B(n325), .Y(n353) );
  XOR2X1 U308 ( .A(b[6]), .B(b[7]), .Y(n325) );
  XNOR2X1 U309 ( .A(b[6]), .B(b[5]), .Y(n359) );
  NAND2X1 U310 ( .A(n360), .B(n326), .Y(n354) );
  XOR2X1 U311 ( .A(b[4]), .B(b[5]), .Y(n326) );
  XNOR2X1 U312 ( .A(b[4]), .B(b[3]), .Y(n360) );
  NAND2X1 U313 ( .A(n361), .B(n327), .Y(n355) );
  XOR2X1 U314 ( .A(b[2]), .B(b[3]), .Y(n327) );
  XNOR2X1 U315 ( .A(b[2]), .B(b[1]), .Y(n361) );
  NAND2X1 U316 ( .A(n362), .B(n328), .Y(n356) );
  XOR2X1 U317 ( .A(b[0]), .B(b[1]), .Y(n328) );
  INVX2 U318 ( .A(b[0]), .Y(n362) );
  BUFX2 U321 ( .A(n13), .Y(n12) );
  BUFX2 U322 ( .A(n361), .Y(n339) );
  BUFX2 U323 ( .A(n360), .Y(n338) );
  BUFX2 U324 ( .A(n359), .Y(n337) );
  BUFX2 U325 ( .A(n358), .Y(n336) );
  BUFX2 U326 ( .A(n362), .Y(n340) );
  BUFX2 U327 ( .A(n357), .Y(n335) );
  BUFX2 U328 ( .A(b[1]), .Y(n350) );
  BUFX2 U329 ( .A(b[3]), .Y(n349) );
  BUFX2 U330 ( .A(b[5]), .Y(n348) );
  BUFX2 U331 ( .A(b[7]), .Y(n347) );
  BUFX2 U332 ( .A(b[9]), .Y(n346) );
  BUFX2 U333 ( .A(n355), .Y(n333) );
  BUFX2 U334 ( .A(n354), .Y(n332) );
  BUFX2 U335 ( .A(n353), .Y(n331) );
  BUFX2 U336 ( .A(n352), .Y(n330) );
  BUFX2 U337 ( .A(n356), .Y(n334) );
  BUFX2 U338 ( .A(n351), .Y(n329) );
  BUFX2 U339 ( .A(a[1]), .Y(n321) );
  BUFX2 U340 ( .A(a[2]), .Y(n320) );
  BUFX2 U341 ( .A(a[3]), .Y(n319) );
  BUFX2 U342 ( .A(a[4]), .Y(n318) );
  BUFX2 U343 ( .A(a[5]), .Y(n317) );
  BUFX2 U344 ( .A(a[6]), .Y(n316) );
  BUFX2 U345 ( .A(a[7]), .Y(n315) );
  BUFX2 U346 ( .A(a[8]), .Y(n314) );
  BUFX2 U347 ( .A(a[9]), .Y(n313) );
  BUFX2 U348 ( .A(a[10]), .Y(n312) );
  BUFX2 U349 ( .A(a[0]), .Y(n1) );
  BUFX2 U350 ( .A(n10), .Y(\product[24] ) );
  INVX2 U351 ( .A(n13), .Y(\product[25] ) );
  BUFX2 U352 ( .A(n9), .Y(product[26]) );
  BUFX2 U353 ( .A(n8), .Y(product[28]) );
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
  output [31:0] awaddr;
  output [9:0] awlen;
  output [31:0] wdata;
  output [1:0] wstrb;
  output [31:0] araddr;
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
  wire   \configs[3][31] , \configs[3][30] , \configs[3][29] ,
         \configs[3][28] , \configs[3][27] , \configs[3][26] ,
         \configs[3][25] , \configs[3][24] , \configs[3][23] ,
         \configs[3][22] , \configs[3][21] , \configs[3][20] ,
         \configs[3][19] , \configs[3][18] , \configs[3][17] ,
         \configs[3][16] , \configs[3][15] , \configs[3][14] ,
         \configs[3][13] , \configs[3][12] , \configs[3][11] ,
         \configs[3][10] , \configs[3][9] , \configs[3][8] , \configs[3][7] ,
         \configs[3][6] , \configs[3][5] , \configs[3][4] , \configs[3][3] ,
         \configs[3][2] , \configs[3][1] , \configs[3][0] , \configs[1][31] ,
         \configs[1][30] , \configs[1][29] , \configs[1][28] ,
         \configs[1][27] , \configs[1][26] , \configs[1][25] ,
         \configs[1][24] , \configs[1][23] , \configs[1][22] ,
         \configs[1][21] , \configs[1][20] , \configs[1][19] ,
         \configs[1][18] , \configs[1][17] , \configs[1][16] ,
         \configs[1][15] , \configs[1][14] , \configs[1][13] ,
         \configs[1][12] , \configs[1][11] , \configs[1][10] , \configs[1][9] ,
         \configs[1][8] , \configs[1][7] , \configs[1][6] , \configs[1][5] ,
         \configs[1][4] , \configs[1][3] , \configs[1][2] , \configs[1][1] ,
         \configs[1][0] , \configs[0][10] , \configs[0][9] , \configs[0][8] ,
         \configs[0][7] , \configs[0][6] , \configs[0][5] , \configs[0][4] ,
         \configs[0][3] , \configs[0][2] , \configs[0][1] , \configs[0][0] ,
         processing, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41,
         rcounter_last, N110, N111, N112, N113, N114, N115, N116, N117, N118,
         N119, N120, N121, N122, N123, N124, N125, N126, N127, N128, N129,
         N130, N131, N132, N133, N134, N135, N136, N137, N138, N139, N140,
         N141, N142, N143, N144, N145, N146, N147, N148, N149, N150, N151,
         N152, N153, N154, N155, N156, N157, N158, N159, N160, N161, N162,
         N163, N164, N165, N166, N167, N168, N169, N170, N171, N172, N173,
         N174, N175, N176, N177, N178, N179, N180, N181, N182, N183, N184,
         N185, N186, N187, N188, N189, N190, N191, N192, N193, N194, N195,
         N196, N209, N210, N211, N212, N213, N214, N215, N216, N217, N218,
         N219, N220, N221, N222, N223, N224, N225, N226, N227, N228, N229,
         N230, N231, N232, N233, N234, N235, N236, N237, N238, N239, N240,
         N241, N242, N243, N244, N245, N246, N247, N248, N249, N250, N251,
         N252, N253, N254, N255, N256, N257, N258, N259, N260, N261, N262,
         N263, N264, N265, N266, N267, N268, N269, N270, N271, N272, N273,
         N274, N275, N276, N277, N278, N279, N280, N281, N282, N283, N284,
         N285, N286, N287, N288, N289, N290, N291, N292, N293, N294, N295,
         N296, N297, N298, N299, N300, N301, N302, N303, N304, N305, N306,
         N307, N308, N312, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n473, n474, n475, n476, n477, n478, n479,
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
         n821, n822, n823, n824, n825, n826, n827, n828, n829;
  wire   [10:0] j;
  wire   [10:0] k;
  wire   [1:0] rstate;
  wire   [1:0] wstate;
  wire   [1:0] next_rstate;
  wire   [1:0] next_wstate;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21;
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
  assign bready = N312;

  DFFSR \wstate_reg[0]  ( .D(next_wstate[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(wstate[0]) );
  DFFSR \wstate_reg[1]  ( .D(next_wstate[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(wstate[1]) );
  DFFSR \k_reg[10]  ( .D(n470), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[10]) );
  DFFSR processing_reg ( .D(n458), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        processing) );
  DFFSR \configs_reg[0][10]  ( .D(n447), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][10] ) );
  DFFSR \configs_reg[0][9]  ( .D(n448), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][9] ) );
  DFFSR \configs_reg[0][8]  ( .D(n449), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][8] ) );
  DFFSR \configs_reg[0][7]  ( .D(n450), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][7] ) );
  DFFSR \configs_reg[0][6]  ( .D(n451), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][6] ) );
  DFFSR \configs_reg[0][5]  ( .D(n452), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][5] ) );
  DFFSR \configs_reg[0][4]  ( .D(n453), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][4] ) );
  DFFSR \configs_reg[0][3]  ( .D(n454), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][3] ) );
  DFFSR \configs_reg[0][2]  ( .D(n455), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][2] ) );
  DFFSR \configs_reg[0][1]  ( .D(n456), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][1] ) );
  DFFSR \configs_reg[0][0]  ( .D(n457), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][0] ) );
  DFFSR \configs_reg[1][0]  ( .D(n744), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][0] ) );
  DFFSR \configs_reg[1][1]  ( .D(n745), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][1] ) );
  DFFSR \configs_reg[1][2]  ( .D(n746), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][2] ) );
  DFFSR \configs_reg[1][3]  ( .D(n747), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][3] ) );
  DFFSR \configs_reg[1][4]  ( .D(n748), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][4] ) );
  DFFSR \configs_reg[1][5]  ( .D(n749), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][5] ) );
  DFFSR \configs_reg[1][6]  ( .D(n750), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][6] ) );
  DFFSR \configs_reg[1][7]  ( .D(n751), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][7] ) );
  DFFSR \configs_reg[1][8]  ( .D(n752), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][8] ) );
  DFFSR \configs_reg[1][9]  ( .D(n753), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][9] ) );
  DFFSR \configs_reg[1][10]  ( .D(n754), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][10] ) );
  DFFSR \configs_reg[1][11]  ( .D(n755), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][11] ) );
  DFFSR \configs_reg[1][12]  ( .D(n756), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][12] ) );
  DFFSR \configs_reg[1][13]  ( .D(n757), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][13] ) );
  DFFSR \configs_reg[1][14]  ( .D(n758), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][14] ) );
  DFFSR \configs_reg[1][15]  ( .D(n759), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][15] ) );
  DFFSR \configs_reg[1][16]  ( .D(n760), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][16] ) );
  DFFSR \configs_reg[1][17]  ( .D(n761), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][17] ) );
  DFFSR \configs_reg[1][18]  ( .D(n762), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][18] ) );
  DFFSR \configs_reg[1][19]  ( .D(n763), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][19] ) );
  DFFSR \configs_reg[1][20]  ( .D(n764), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][20] ) );
  DFFSR \configs_reg[1][21]  ( .D(n765), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][21] ) );
  DFFSR \configs_reg[1][22]  ( .D(n766), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][22] ) );
  DFFSR \configs_reg[1][23]  ( .D(n767), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][23] ) );
  DFFSR \configs_reg[1][24]  ( .D(n768), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][24] ) );
  DFFSR \configs_reg[1][25]  ( .D(n769), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][25] ) );
  DFFSR \configs_reg[1][26]  ( .D(n770), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][26] ) );
  DFFSR \configs_reg[1][27]  ( .D(n771), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][27] ) );
  DFFSR \configs_reg[1][28]  ( .D(n772), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][28] ) );
  DFFSR \configs_reg[1][29]  ( .D(n773), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][29] ) );
  DFFSR \configs_reg[1][30]  ( .D(n774), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][30] ) );
  DFFSR \configs_reg[1][31]  ( .D(n775), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][31] ) );
  DFFSR \configs_reg[2][0]  ( .D(n776), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[0]) );
  DFFSR \configs_reg[2][1]  ( .D(n777), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[1]) );
  DFFSR \configs_reg[2][2]  ( .D(n778), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[2]) );
  DFFSR \configs_reg[2][3]  ( .D(n779), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[3]) );
  DFFSR \configs_reg[2][4]  ( .D(n780), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[4]) );
  DFFSR \configs_reg[2][5]  ( .D(n781), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[5]) );
  DFFSR \configs_reg[2][6]  ( .D(n782), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[6]) );
  DFFSR \configs_reg[2][7]  ( .D(n783), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[7]) );
  DFFSR \configs_reg[2][8]  ( .D(n784), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[8]) );
  DFFSR \configs_reg[2][9]  ( .D(n785), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[9]) );
  DFFSR \rstate_reg[1]  ( .D(next_rstate[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(rstate[1]) );
  DFFSR \rstate_reg[0]  ( .D(next_rstate[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(rstate[0]) );
  DFFSR \configs_reg[3][0]  ( .D(n786), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][0] ) );
  DFFSR \configs_reg[3][1]  ( .D(n787), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][1] ) );
  DFFSR \configs_reg[3][2]  ( .D(n788), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][2] ) );
  DFFSR \configs_reg[3][3]  ( .D(n789), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][3] ) );
  DFFSR \configs_reg[3][4]  ( .D(n790), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][4] ) );
  DFFSR \configs_reg[3][5]  ( .D(n791), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][5] ) );
  DFFSR \configs_reg[3][6]  ( .D(n792), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][6] ) );
  DFFSR \configs_reg[3][7]  ( .D(n793), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][7] ) );
  DFFSR \configs_reg[3][8]  ( .D(n794), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][8] ) );
  DFFSR \configs_reg[3][9]  ( .D(n795), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][9] ) );
  DFFSR \configs_reg[3][10]  ( .D(n796), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][10] ) );
  DFFSR \configs_reg[3][11]  ( .D(n797), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][11] ) );
  DFFSR \configs_reg[3][12]  ( .D(n798), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][12] ) );
  DFFSR \configs_reg[3][13]  ( .D(n799), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][13] ) );
  DFFSR \configs_reg[3][14]  ( .D(n800), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][14] ) );
  DFFSR \configs_reg[3][15]  ( .D(n801), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][15] ) );
  DFFSR \configs_reg[3][16]  ( .D(n802), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][16] ) );
  DFFSR \configs_reg[3][17]  ( .D(n803), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][17] ) );
  DFFSR \configs_reg[3][18]  ( .D(n804), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][18] ) );
  DFFSR \configs_reg[3][19]  ( .D(n805), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][19] ) );
  DFFSR \configs_reg[3][20]  ( .D(n806), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][20] ) );
  DFFSR \configs_reg[3][21]  ( .D(n807), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][21] ) );
  DFFSR \configs_reg[3][22]  ( .D(n808), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][22] ) );
  DFFSR \configs_reg[3][23]  ( .D(n809), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][23] ) );
  DFFSR \configs_reg[3][24]  ( .D(n810), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][24] ) );
  DFFSR \configs_reg[3][25]  ( .D(n811), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][25] ) );
  DFFSR \configs_reg[3][26]  ( .D(n812), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][26] ) );
  DFFSR \configs_reg[3][27]  ( .D(n813), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][27] ) );
  DFFSR \configs_reg[3][28]  ( .D(n814), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][28] ) );
  DFFSR \configs_reg[3][29]  ( .D(n815), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][29] ) );
  DFFSR \configs_reg[3][30]  ( .D(n816), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][30] ) );
  DFFSR \configs_reg[3][31]  ( .D(n817), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][31] ) );
  DFFSR \configs_reg[4][0]  ( .D(n818), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[0]) );
  DFFSR \configs_reg[4][1]  ( .D(n819), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[1]) );
  DFFSR \configs_reg[4][2]  ( .D(n820), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[2]) );
  DFFSR \configs_reg[4][3]  ( .D(n821), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[3]) );
  DFFSR \configs_reg[4][4]  ( .D(n822), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[4]) );
  DFFSR \configs_reg[4][5]  ( .D(n823), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[5]) );
  DFFSR \configs_reg[4][6]  ( .D(n824), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[6]) );
  DFFSR \configs_reg[4][7]  ( .D(n825), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[7]) );
  DFFSR \configs_reg[4][8]  ( .D(n826), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[8]) );
  DFFSR \configs_reg[4][9]  ( .D(n827), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[9]) );
  DFFSR \configs_reg[5][0]  ( .D(n828), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wstrb[0]) );
  DFFSR \configs_reg[5][1]  ( .D(n829), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wstrb[1]) );
  DFFSR \k_reg[9]  ( .D(n437), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[9]) );
  DFFSR \k_reg[8]  ( .D(n438), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[8]) );
  DFFSR \k_reg[7]  ( .D(n439), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[7]) );
  DFFSR \k_reg[6]  ( .D(n440), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[6]) );
  DFFSR \k_reg[5]  ( .D(n441), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[5]) );
  DFFSR \k_reg[4]  ( .D(n442), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[4]) );
  DFFSR \k_reg[3]  ( .D(n443), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[3]) );
  DFFSR \k_reg[2]  ( .D(n444), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[2]) );
  DFFSR \k_reg[1]  ( .D(n445), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[1]) );
  DFFSR \k_reg[0]  ( .D(n446), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[0]) );
  DFFSR \j_reg[10]  ( .D(n469), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[10]) );
  DFFSR \j_reg[0]  ( .D(n468), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[0]) );
  DFFSR \j_reg[1]  ( .D(n467), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[1]) );
  DFFSR \j_reg[2]  ( .D(n466), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[2]) );
  DFFSR \j_reg[3]  ( .D(n465), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[3]) );
  DFFSR \j_reg[4]  ( .D(n464), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[4]) );
  DFFSR \j_reg[5]  ( .D(n463), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[5]) );
  DFFSR \j_reg[6]  ( .D(n462), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[6]) );
  DFFSR \j_reg[7]  ( .D(n461), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[7]) );
  DFFSR \j_reg[8]  ( .D(n460), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[8]) );
  DFFSR \j_reg[9]  ( .D(n459), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[9]) );
  fft_axi_counter_WRITE_OR_READ0 read_counter ( .clk(clk), .n_rst(n_rst), 
        .len(arlen), .ready(rready), .valid(rvalid), .resp(rresp), .last(
        rcounter_last) );
  fft_axi_counter_WRITE_OR_READ1 write_counter ( .clk(clk), .n_rst(n_rst), 
        .len(awlen), .ready(wready), .valid(wvalid), .resp(1'b0), .last(wlast)
         );
  fft_axi_manager_DW01_add_0 add_120_2 ( .A({\configs[1][31] , 
        \configs[1][30] , \configs[1][29] , \configs[1][28] , \configs[1][27] , 
        \configs[1][26] , \configs[1][25] , \configs[1][24] , \configs[1][23] , 
        \configs[1][22] , \configs[1][21] , \configs[1][20] , \configs[1][19] , 
        \configs[1][18] , \configs[1][17] , \configs[1][16] , \configs[1][15] , 
        \configs[1][14] , \configs[1][13] , \configs[1][12] , \configs[1][11] , 
        \configs[1][10] , \configs[1][9] , \configs[1][8] , \configs[1][7] , 
        \configs[1][6] , \configs[1][5] , \configs[1][4] , \configs[1][3] , 
        \configs[1][2] , \configs[1][1] , \configs[1][0] }), .B({N164, N163, 
        N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, 
        N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, 
        N138, N137, N136, N135, N134, N133}), .CI(1'b0), .SUM({N196, N195, 
        N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, 
        N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, 
        N170, N169, N168, N167, N166, N165}) );
  fft_axi_manager_DW01_inc_0 add_120 ( .A({1'b0, arlen}), .SUM({N132, N131, 
        N130, N129, N128, N127, N126, N125, N124, N123, N122}) );
  fft_axi_manager_DW01_inc_1 add_77 ( .A({\config_reg[0][10] , 
        \config_reg[0][9] , \config_reg[0][8] , \config_reg[0][7] , 
        \config_reg[0][6] , \config_reg[0][5] , \config_reg[0][4] , 
        \config_reg[0][3] , \config_reg[0][2] , \config_reg[0][1] , 
        \config_reg[0][0] }), .SUM({N41, N40, N39, N38, N37, N36, N35, N34, 
        N33, N32, N31}) );
  fft_axi_manager_DW01_sub_0 sub_120 ( .A({1'b0, \configs[0][10] , 
        \configs[0][9] , \configs[0][8] , \configs[0][7] , \configs[0][6] , 
        \configs[0][5] , \configs[0][4] , \configs[0][3] , \configs[0][2] , 
        \configs[0][1] , \configs[0][0] }), .B({1'b0, k}), .CI(1'b0), .DIFF({
        N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110}) );
  fft_axi_manager_DW01_add_1 add_165_2 ( .A({\configs[3][31] , 
        \configs[3][30] , \configs[3][29] , \configs[3][28] , \configs[3][27] , 
        \configs[3][26] , \configs[3][25] , \configs[3][24] , \configs[3][23] , 
        \configs[3][22] , \configs[3][21] , \configs[3][20] , \configs[3][19] , 
        \configs[3][18] , \configs[3][17] , \configs[3][16] , \configs[3][15] , 
        \configs[3][14] , \configs[3][13] , \configs[3][12] , \configs[3][11] , 
        \configs[3][10] , \configs[3][9] , \configs[3][8] , \configs[3][7] , 
        \configs[3][6] , \configs[3][5] , \configs[3][4] , \configs[3][3] , 
        \configs[3][2] , \configs[3][1] , \configs[3][0] }), .B({N276, N275, 
        N274, N273, N272, N271, N270, N269, N268, N267, N266, N265, N264, N263, 
        N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, 
        N250, N249, N248, N247, N246, N245}), .CI(1'b0), .SUM({N308, N307, 
        N306, N305, N304, N303, N302, N301, N300, N299, N298, N297, N296, N295, 
        N294, N293, N292, N291, N290, N289, N288, N287, N286, N285, N284, N283, 
        N282, N281, N280, N279, N278, N277}) );
  fft_axi_manager_DW01_inc_2 add_165 ( .A({1'b0, awlen}), .SUM({N244, N243, 
        N242, N241, N240, N239, N238, N237, N236, N235, N234}) );
  fft_axi_manager_DW01_dec_2 sub_165_2 ( .A({N220, N220, N219, N218, N217, 
        N216, N215, N214, N213, N212, N211, N210, N209}), .SUM({N233, N232, 
        N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, N221}) );
  fft_axi_manager_DW01_sub_1 sub_165 ( .A({1'b0, \configs[0][10] , 
        \configs[0][9] , \configs[0][8] , \configs[0][7] , \configs[0][6] , 
        \configs[0][5] , \configs[0][4] , \configs[0][3] , \configs[0][2] , 
        \configs[0][1] , \configs[0][0] }), .B({1'b0, j}), .CI(1'b0), .DIFF({
        N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209}) );
  fft_axi_manager_DW_mult_uns_2 mult_165 ( .a({N233, N233, N233, N233, N233, 
        N233, N233, N233, N233, N233, N233, N233, N233, N233, N233, N233, N233, 
        N233, N233, N233, N232, N231, N230, N229, N228, N227, N226, N225, N224, 
        N223, N222, N221}), .b({N244, N243, N242, N241, N240, N239, N238, N237, 
        N236, N235, N234}), .product({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, N276, N275, N274, 
        N273, N272, N271, N270, N269, N268, N267, N266, N265, N264, N263, N262, 
        N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, 
        N249, N248, N247, N246, N245}) );
  fft_axi_manager_DW_mult_uns_3 mult_120 ( .a({N121, N121, N121, N121, N121, 
        N121, N121, N121, N121, N121, N121, N121, N121, N121, N121, N121, N121, 
        N121, N121, N121, N121, N120, N119, N118, N117, N116, N115, N114, N113, 
        N112, N111, N110}), .b({N132, N131, N130, N129, N128, N127, N126, N125, 
        N124, N123, N122}), .product({SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, N164, N163, N162, 
        N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, 
        N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, 
        N137, N136, N135, N134, N133}) );
  INVX2 U532 ( .A(n493), .Y(n473) );
  INVX8 U533 ( .A(n585), .Y(n493) );
  INVX2 U534 ( .A(n735), .Y(n743) );
  INVX2 U535 ( .A(n736), .Y(n474) );
  AND2X1 U536 ( .A(out_valid), .B(n475), .Y(wvalid) );
  OAI21X1 U537 ( .A(bvalid), .B(n476), .C(n477), .Y(next_wstate[1]) );
  AOI21X1 U538 ( .A(awready), .B(awvalid), .C(n475), .Y(n477) );
  NAND3X1 U539 ( .A(n478), .B(n479), .C(n480), .Y(next_wstate[0]) );
  AOI22X1 U540 ( .A(N312), .B(n481), .C(awvalid), .D(n482), .Y(n480) );
  INVX1 U541 ( .A(awready), .Y(n482) );
  INVX1 U542 ( .A(bvalid), .Y(n481) );
  NAND3X1 U543 ( .A(wlast), .B(n475), .C(wready), .Y(n478) );
  NOR2X1 U544 ( .A(n476), .B(wstate[0]), .Y(n475) );
  OAI21X1 U545 ( .A(n483), .B(n484), .C(n485), .Y(next_rstate[1]) );
  OAI21X1 U546 ( .A(n486), .B(n487), .C(rready), .Y(n485) );
  NAND2X1 U547 ( .A(rcounter_last), .B(n488), .Y(n487) );
  INVX1 U548 ( .A(rresp), .Y(n488) );
  INVX1 U549 ( .A(arready), .Y(n484) );
  OAI21X1 U550 ( .A(arready), .B(n483), .C(n489), .Y(next_rstate[0]) );
  AOI22X1 U551 ( .A(n490), .B(n491), .C(rresp), .D(rready), .Y(n489) );
  INVX1 U552 ( .A(arvalid), .Y(n483) );
  INVX1 U553 ( .A(n492), .Y(n744) );
  MUX2X1 U554 ( .B(\configs[1][0] ), .A(\config_reg[1][0] ), .S(n493), .Y(n492) );
  INVX1 U555 ( .A(n494), .Y(n745) );
  MUX2X1 U556 ( .B(\configs[1][1] ), .A(\config_reg[1][1] ), .S(n493), .Y(n494) );
  INVX1 U557 ( .A(n495), .Y(n746) );
  MUX2X1 U558 ( .B(\configs[1][2] ), .A(\config_reg[1][2] ), .S(n493), .Y(n495) );
  INVX1 U559 ( .A(n496), .Y(n747) );
  MUX2X1 U560 ( .B(\configs[1][3] ), .A(\config_reg[1][3] ), .S(n493), .Y(n496) );
  INVX1 U561 ( .A(n497), .Y(n748) );
  MUX2X1 U562 ( .B(\configs[1][4] ), .A(\config_reg[1][4] ), .S(n493), .Y(n497) );
  INVX1 U563 ( .A(n498), .Y(n749) );
  MUX2X1 U564 ( .B(\configs[1][5] ), .A(\config_reg[1][5] ), .S(n493), .Y(n498) );
  INVX1 U565 ( .A(n499), .Y(n750) );
  MUX2X1 U566 ( .B(\configs[1][6] ), .A(\config_reg[1][6] ), .S(n493), .Y(n499) );
  INVX1 U567 ( .A(n500), .Y(n751) );
  MUX2X1 U568 ( .B(\configs[1][7] ), .A(\config_reg[1][7] ), .S(n493), .Y(n500) );
  INVX1 U569 ( .A(n501), .Y(n752) );
  MUX2X1 U570 ( .B(\configs[1][8] ), .A(\config_reg[1][8] ), .S(n493), .Y(n501) );
  INVX1 U571 ( .A(n502), .Y(n753) );
  MUX2X1 U572 ( .B(\configs[1][9] ), .A(\config_reg[1][9] ), .S(n493), .Y(n502) );
  INVX1 U573 ( .A(n503), .Y(n754) );
  MUX2X1 U574 ( .B(\configs[1][10] ), .A(\config_reg[1][10] ), .S(n493), .Y(
        n503) );
  INVX1 U575 ( .A(n504), .Y(n755) );
  MUX2X1 U576 ( .B(\configs[1][11] ), .A(\config_reg[1][11] ), .S(n493), .Y(
        n504) );
  INVX1 U577 ( .A(n505), .Y(n756) );
  MUX2X1 U578 ( .B(\configs[1][12] ), .A(\config_reg[1][12] ), .S(n493), .Y(
        n505) );
  INVX1 U579 ( .A(n506), .Y(n757) );
  MUX2X1 U580 ( .B(\configs[1][13] ), .A(\config_reg[1][13] ), .S(n493), .Y(
        n506) );
  INVX1 U581 ( .A(n507), .Y(n758) );
  MUX2X1 U582 ( .B(\configs[1][14] ), .A(\config_reg[1][14] ), .S(n493), .Y(
        n507) );
  INVX1 U583 ( .A(n508), .Y(n759) );
  MUX2X1 U584 ( .B(\configs[1][15] ), .A(\config_reg[1][15] ), .S(n493), .Y(
        n508) );
  INVX1 U585 ( .A(n509), .Y(n760) );
  MUX2X1 U586 ( .B(\configs[1][16] ), .A(\config_reg[1][16] ), .S(n493), .Y(
        n509) );
  INVX1 U587 ( .A(n510), .Y(n761) );
  MUX2X1 U588 ( .B(\configs[1][17] ), .A(\config_reg[1][17] ), .S(n493), .Y(
        n510) );
  INVX1 U589 ( .A(n511), .Y(n762) );
  MUX2X1 U590 ( .B(\configs[1][18] ), .A(\config_reg[1][18] ), .S(n493), .Y(
        n511) );
  INVX1 U591 ( .A(n512), .Y(n763) );
  MUX2X1 U592 ( .B(\configs[1][19] ), .A(\config_reg[1][19] ), .S(n493), .Y(
        n512) );
  INVX1 U593 ( .A(n513), .Y(n764) );
  MUX2X1 U594 ( .B(\configs[1][20] ), .A(\config_reg[1][20] ), .S(n493), .Y(
        n513) );
  INVX1 U595 ( .A(n514), .Y(n765) );
  MUX2X1 U596 ( .B(\configs[1][21] ), .A(\config_reg[1][21] ), .S(n493), .Y(
        n514) );
  INVX1 U597 ( .A(n515), .Y(n766) );
  MUX2X1 U598 ( .B(\configs[1][22] ), .A(\config_reg[1][22] ), .S(n493), .Y(
        n515) );
  INVX1 U599 ( .A(n516), .Y(n767) );
  MUX2X1 U600 ( .B(\configs[1][23] ), .A(\config_reg[1][23] ), .S(n493), .Y(
        n516) );
  INVX1 U601 ( .A(n517), .Y(n768) );
  MUX2X1 U602 ( .B(\configs[1][24] ), .A(\config_reg[1][24] ), .S(n493), .Y(
        n517) );
  INVX1 U603 ( .A(n518), .Y(n769) );
  MUX2X1 U604 ( .B(\configs[1][25] ), .A(\config_reg[1][25] ), .S(n493), .Y(
        n518) );
  INVX1 U605 ( .A(n519), .Y(n770) );
  MUX2X1 U606 ( .B(\configs[1][26] ), .A(\config_reg[1][26] ), .S(n493), .Y(
        n519) );
  INVX1 U607 ( .A(n520), .Y(n771) );
  MUX2X1 U608 ( .B(\configs[1][27] ), .A(\config_reg[1][27] ), .S(n493), .Y(
        n520) );
  INVX1 U609 ( .A(n521), .Y(n772) );
  MUX2X1 U610 ( .B(\configs[1][28] ), .A(\config_reg[1][28] ), .S(n493), .Y(
        n521) );
  INVX1 U611 ( .A(n522), .Y(n773) );
  MUX2X1 U612 ( .B(\configs[1][29] ), .A(\config_reg[1][29] ), .S(n493), .Y(
        n522) );
  INVX1 U613 ( .A(n523), .Y(n774) );
  MUX2X1 U614 ( .B(\configs[1][30] ), .A(\config_reg[1][30] ), .S(n493), .Y(
        n523) );
  INVX1 U615 ( .A(n524), .Y(n775) );
  MUX2X1 U616 ( .B(\configs[1][31] ), .A(\config_reg[1][31] ), .S(n493), .Y(
        n524) );
  INVX1 U617 ( .A(n525), .Y(n776) );
  MUX2X1 U618 ( .B(arlen[0]), .A(\config_reg[2][0] ), .S(n493), .Y(n525) );
  INVX1 U619 ( .A(n526), .Y(n777) );
  MUX2X1 U620 ( .B(arlen[1]), .A(\config_reg[2][1] ), .S(n493), .Y(n526) );
  INVX1 U621 ( .A(n527), .Y(n778) );
  MUX2X1 U622 ( .B(arlen[2]), .A(\config_reg[2][2] ), .S(n493), .Y(n527) );
  INVX1 U623 ( .A(n528), .Y(n779) );
  MUX2X1 U624 ( .B(arlen[3]), .A(\config_reg[2][3] ), .S(n493), .Y(n528) );
  INVX1 U625 ( .A(n529), .Y(n780) );
  MUX2X1 U626 ( .B(arlen[4]), .A(\config_reg[2][4] ), .S(n493), .Y(n529) );
  INVX1 U627 ( .A(n530), .Y(n781) );
  MUX2X1 U628 ( .B(arlen[5]), .A(\config_reg[2][5] ), .S(n493), .Y(n530) );
  INVX1 U629 ( .A(n531), .Y(n782) );
  MUX2X1 U630 ( .B(arlen[6]), .A(\config_reg[2][6] ), .S(n493), .Y(n531) );
  INVX1 U631 ( .A(n532), .Y(n783) );
  MUX2X1 U632 ( .B(arlen[7]), .A(\config_reg[2][7] ), .S(n493), .Y(n532) );
  INVX1 U633 ( .A(n533), .Y(n784) );
  MUX2X1 U634 ( .B(arlen[8]), .A(\config_reg[2][8] ), .S(n493), .Y(n533) );
  INVX1 U635 ( .A(n534), .Y(n785) );
  MUX2X1 U636 ( .B(arlen[9]), .A(\config_reg[2][9] ), .S(n493), .Y(n534) );
  INVX1 U637 ( .A(n535), .Y(n786) );
  MUX2X1 U638 ( .B(\configs[3][0] ), .A(\config_reg[3][0] ), .S(n493), .Y(n535) );
  INVX1 U639 ( .A(n536), .Y(n787) );
  MUX2X1 U640 ( .B(\configs[3][1] ), .A(\config_reg[3][1] ), .S(n493), .Y(n536) );
  INVX1 U641 ( .A(n537), .Y(n788) );
  MUX2X1 U642 ( .B(\configs[3][2] ), .A(\config_reg[3][2] ), .S(n493), .Y(n537) );
  INVX1 U643 ( .A(n538), .Y(n789) );
  MUX2X1 U644 ( .B(\configs[3][3] ), .A(\config_reg[3][3] ), .S(n493), .Y(n538) );
  INVX1 U645 ( .A(n539), .Y(n790) );
  MUX2X1 U646 ( .B(\configs[3][4] ), .A(\config_reg[3][4] ), .S(n493), .Y(n539) );
  INVX1 U647 ( .A(n540), .Y(n791) );
  MUX2X1 U648 ( .B(\configs[3][5] ), .A(\config_reg[3][5] ), .S(n493), .Y(n540) );
  INVX1 U649 ( .A(n541), .Y(n792) );
  MUX2X1 U650 ( .B(\configs[3][6] ), .A(\config_reg[3][6] ), .S(n493), .Y(n541) );
  INVX1 U651 ( .A(n542), .Y(n793) );
  MUX2X1 U652 ( .B(\configs[3][7] ), .A(\config_reg[3][7] ), .S(n493), .Y(n542) );
  INVX1 U653 ( .A(n543), .Y(n794) );
  MUX2X1 U654 ( .B(\configs[3][8] ), .A(\config_reg[3][8] ), .S(n493), .Y(n543) );
  INVX1 U655 ( .A(n544), .Y(n795) );
  MUX2X1 U656 ( .B(\configs[3][9] ), .A(\config_reg[3][9] ), .S(n493), .Y(n544) );
  INVX1 U657 ( .A(n545), .Y(n796) );
  MUX2X1 U658 ( .B(\configs[3][10] ), .A(\config_reg[3][10] ), .S(n493), .Y(
        n545) );
  INVX1 U659 ( .A(n546), .Y(n797) );
  MUX2X1 U660 ( .B(\configs[3][11] ), .A(\config_reg[3][11] ), .S(n493), .Y(
        n546) );
  INVX1 U661 ( .A(n547), .Y(n798) );
  MUX2X1 U662 ( .B(\configs[3][12] ), .A(\config_reg[3][12] ), .S(n493), .Y(
        n547) );
  INVX1 U663 ( .A(n548), .Y(n799) );
  MUX2X1 U664 ( .B(\configs[3][13] ), .A(\config_reg[3][13] ), .S(n493), .Y(
        n548) );
  INVX1 U665 ( .A(n549), .Y(n800) );
  MUX2X1 U666 ( .B(\configs[3][14] ), .A(\config_reg[3][14] ), .S(n493), .Y(
        n549) );
  INVX1 U667 ( .A(n550), .Y(n801) );
  MUX2X1 U668 ( .B(\configs[3][15] ), .A(\config_reg[3][15] ), .S(n493), .Y(
        n550) );
  INVX1 U669 ( .A(n551), .Y(n802) );
  MUX2X1 U670 ( .B(\configs[3][16] ), .A(\config_reg[3][16] ), .S(n493), .Y(
        n551) );
  INVX1 U671 ( .A(n552), .Y(n803) );
  MUX2X1 U672 ( .B(\configs[3][17] ), .A(\config_reg[3][17] ), .S(n493), .Y(
        n552) );
  INVX1 U673 ( .A(n553), .Y(n804) );
  MUX2X1 U674 ( .B(\configs[3][18] ), .A(\config_reg[3][18] ), .S(n493), .Y(
        n553) );
  INVX1 U675 ( .A(n554), .Y(n805) );
  MUX2X1 U676 ( .B(\configs[3][19] ), .A(\config_reg[3][19] ), .S(n493), .Y(
        n554) );
  INVX1 U677 ( .A(n555), .Y(n806) );
  MUX2X1 U678 ( .B(\configs[3][20] ), .A(\config_reg[3][20] ), .S(n493), .Y(
        n555) );
  INVX1 U679 ( .A(n556), .Y(n807) );
  MUX2X1 U680 ( .B(\configs[3][21] ), .A(\config_reg[3][21] ), .S(n493), .Y(
        n556) );
  INVX1 U681 ( .A(n557), .Y(n808) );
  MUX2X1 U682 ( .B(\configs[3][22] ), .A(\config_reg[3][22] ), .S(n493), .Y(
        n557) );
  INVX1 U683 ( .A(n558), .Y(n809) );
  MUX2X1 U684 ( .B(\configs[3][23] ), .A(\config_reg[3][23] ), .S(n493), .Y(
        n558) );
  INVX1 U685 ( .A(n559), .Y(n810) );
  MUX2X1 U686 ( .B(\configs[3][24] ), .A(\config_reg[3][24] ), .S(n493), .Y(
        n559) );
  INVX1 U687 ( .A(n560), .Y(n811) );
  MUX2X1 U688 ( .B(\configs[3][25] ), .A(\config_reg[3][25] ), .S(n493), .Y(
        n560) );
  INVX1 U689 ( .A(n561), .Y(n812) );
  MUX2X1 U690 ( .B(\configs[3][26] ), .A(\config_reg[3][26] ), .S(n493), .Y(
        n561) );
  INVX1 U691 ( .A(n562), .Y(n813) );
  MUX2X1 U692 ( .B(\configs[3][27] ), .A(\config_reg[3][27] ), .S(n493), .Y(
        n562) );
  INVX1 U693 ( .A(n563), .Y(n814) );
  MUX2X1 U694 ( .B(\configs[3][28] ), .A(\config_reg[3][28] ), .S(n493), .Y(
        n563) );
  INVX1 U695 ( .A(n564), .Y(n815) );
  MUX2X1 U696 ( .B(\configs[3][29] ), .A(\config_reg[3][29] ), .S(n493), .Y(
        n564) );
  INVX1 U697 ( .A(n565), .Y(n816) );
  MUX2X1 U698 ( .B(\configs[3][30] ), .A(\config_reg[3][30] ), .S(n493), .Y(
        n565) );
  INVX1 U699 ( .A(n566), .Y(n817) );
  MUX2X1 U700 ( .B(\configs[3][31] ), .A(\config_reg[3][31] ), .S(n493), .Y(
        n566) );
  INVX1 U701 ( .A(n567), .Y(n818) );
  MUX2X1 U702 ( .B(awlen[0]), .A(\config_reg[4][0] ), .S(n493), .Y(n567) );
  INVX1 U703 ( .A(n568), .Y(n819) );
  MUX2X1 U704 ( .B(awlen[1]), .A(\config_reg[4][1] ), .S(n493), .Y(n568) );
  INVX1 U705 ( .A(n569), .Y(n820) );
  MUX2X1 U706 ( .B(awlen[2]), .A(\config_reg[4][2] ), .S(n493), .Y(n569) );
  INVX1 U707 ( .A(n570), .Y(n821) );
  MUX2X1 U708 ( .B(awlen[3]), .A(\config_reg[4][3] ), .S(n493), .Y(n570) );
  INVX1 U709 ( .A(n571), .Y(n822) );
  MUX2X1 U710 ( .B(awlen[4]), .A(\config_reg[4][4] ), .S(n493), .Y(n571) );
  INVX1 U711 ( .A(n572), .Y(n823) );
  MUX2X1 U712 ( .B(awlen[5]), .A(\config_reg[4][5] ), .S(n493), .Y(n572) );
  INVX1 U713 ( .A(n573), .Y(n824) );
  MUX2X1 U714 ( .B(awlen[6]), .A(\config_reg[4][6] ), .S(n493), .Y(n573) );
  INVX1 U715 ( .A(n574), .Y(n825) );
  MUX2X1 U716 ( .B(awlen[7]), .A(\config_reg[4][7] ), .S(n493), .Y(n574) );
  INVX1 U717 ( .A(n575), .Y(n826) );
  MUX2X1 U718 ( .B(awlen[8]), .A(\config_reg[4][8] ), .S(n493), .Y(n575) );
  INVX1 U719 ( .A(n576), .Y(n827) );
  MUX2X1 U720 ( .B(awlen[9]), .A(\config_reg[4][9] ), .S(n493), .Y(n576) );
  INVX1 U721 ( .A(n577), .Y(n828) );
  MUX2X1 U722 ( .B(wstrb[0]), .A(\config_reg[5][0] ), .S(n493), .Y(n577) );
  INVX1 U723 ( .A(n578), .Y(n829) );
  MUX2X1 U724 ( .B(wstrb[1]), .A(\config_reg[5][1] ), .S(n493), .Y(n578) );
  INVX1 U725 ( .A(n579), .Y(rready) );
  OAI21X1 U726 ( .A(n580), .B(n581), .C(n582), .Y(n470) );
  NAND2X1 U727 ( .A(N41), .B(n493), .Y(n582) );
  INVX1 U728 ( .A(k[10]), .Y(n581) );
  AOI21X1 U729 ( .A(n583), .B(k[9]), .C(n584), .Y(n580) );
  OAI21X1 U730 ( .A(n473), .B(n586), .C(n587), .Y(n469) );
  NAND2X1 U731 ( .A(j[10]), .B(n588), .Y(n587) );
  OAI21X1 U732 ( .A(n589), .B(n590), .C(n591), .Y(n588) );
  INVX1 U733 ( .A(\config_reg[0][10] ), .Y(n586) );
  INVX1 U734 ( .A(n592), .Y(n468) );
  AOI21X1 U735 ( .A(n493), .B(\config_reg[0][0] ), .C(n593), .Y(n592) );
  MUX2X1 U736 ( .B(n590), .A(n594), .S(j[0]), .Y(n593) );
  OAI21X1 U737 ( .A(n473), .B(n595), .C(n596), .Y(n467) );
  AOI22X1 U738 ( .A(j[1]), .B(n597), .C(n598), .D(n599), .Y(n596) );
  OAI21X1 U739 ( .A(n600), .B(n590), .C(n594), .Y(n597) );
  INVX1 U740 ( .A(j[0]), .Y(n600) );
  INVX1 U741 ( .A(\config_reg[0][1] ), .Y(n595) );
  OAI21X1 U742 ( .A(n473), .B(n601), .C(n602), .Y(n466) );
  MUX2X1 U743 ( .B(n603), .A(n604), .S(j[2]), .Y(n602) );
  AND2X1 U744 ( .A(n599), .B(n598), .Y(n603) );
  INVX1 U745 ( .A(\config_reg[0][2] ), .Y(n601) );
  OAI21X1 U746 ( .A(n473), .B(n605), .C(n606), .Y(n465) );
  AOI22X1 U747 ( .A(j[3]), .B(n607), .C(n598), .D(n608), .Y(n606) );
  OAI21X1 U748 ( .A(n609), .B(n590), .C(n610), .Y(n607) );
  INVX1 U749 ( .A(n604), .Y(n610) );
  OAI21X1 U750 ( .A(n599), .B(n590), .C(n594), .Y(n604) );
  INVX1 U751 ( .A(\config_reg[0][3] ), .Y(n605) );
  OAI21X1 U752 ( .A(n473), .B(n611), .C(n612), .Y(n464) );
  MUX2X1 U753 ( .B(n613), .A(n614), .S(j[4]), .Y(n612) );
  NOR2X1 U754 ( .A(n615), .B(n590), .Y(n613) );
  INVX1 U755 ( .A(\config_reg[0][4] ), .Y(n611) );
  OAI21X1 U756 ( .A(n473), .B(n616), .C(n617), .Y(n463) );
  AOI22X1 U757 ( .A(j[5]), .B(n618), .C(n598), .D(n619), .Y(n617) );
  OAI21X1 U758 ( .A(n620), .B(n590), .C(n621), .Y(n618) );
  INVX1 U759 ( .A(n614), .Y(n621) );
  OAI21X1 U760 ( .A(n608), .B(n590), .C(n594), .Y(n614) );
  INVX1 U761 ( .A(\config_reg[0][5] ), .Y(n616) );
  OAI21X1 U762 ( .A(n473), .B(n622), .C(n623), .Y(n462) );
  MUX2X1 U763 ( .B(n624), .A(n625), .S(j[6]), .Y(n623) );
  NOR2X1 U764 ( .A(n626), .B(n590), .Y(n624) );
  INVX1 U765 ( .A(\config_reg[0][6] ), .Y(n622) );
  OAI21X1 U766 ( .A(n473), .B(n627), .C(n628), .Y(n461) );
  AOI22X1 U767 ( .A(j[7]), .B(n629), .C(n598), .D(n630), .Y(n628) );
  OAI21X1 U768 ( .A(n631), .B(n590), .C(n632), .Y(n629) );
  INVX1 U769 ( .A(n625), .Y(n632) );
  OAI21X1 U770 ( .A(n619), .B(n590), .C(n594), .Y(n625) );
  INVX1 U771 ( .A(\config_reg[0][7] ), .Y(n627) );
  OAI21X1 U772 ( .A(n473), .B(n633), .C(n634), .Y(n460) );
  AOI21X1 U773 ( .A(j[8]), .B(n635), .C(n636), .Y(n634) );
  INVX1 U774 ( .A(n637), .Y(n636) );
  INVX1 U775 ( .A(\config_reg[0][8] ), .Y(n633) );
  INVX1 U776 ( .A(n638), .Y(n459) );
  AOI21X1 U777 ( .A(n493), .B(\config_reg[0][9] ), .C(n639), .Y(n638) );
  MUX2X1 U778 ( .B(n637), .A(n591), .S(j[9]), .Y(n639) );
  AOI21X1 U779 ( .A(j[8]), .B(n598), .C(n635), .Y(n591) );
  OAI21X1 U780 ( .A(n630), .B(n590), .C(n594), .Y(n635) );
  NAND3X1 U781 ( .A(n630), .B(n640), .C(n598), .Y(n637) );
  INVX1 U782 ( .A(n590), .Y(n598) );
  NAND2X1 U783 ( .A(n490), .B(n594), .Y(n590) );
  NAND2X1 U784 ( .A(n473), .B(n479), .Y(n594) );
  NAND2X1 U785 ( .A(n641), .B(n642), .Y(n479) );
  NOR2X1 U786 ( .A(n643), .B(n644), .Y(n642) );
  NAND3X1 U787 ( .A(n645), .B(n646), .C(n647), .Y(n644) );
  XOR2X1 U788 ( .A(n609), .B(k[2]), .Y(n647) );
  XOR2X1 U789 ( .A(n648), .B(k[3]), .Y(n646) );
  XNOR2X1 U790 ( .A(j[1]), .B(k[1]), .Y(n645) );
  NAND3X1 U791 ( .A(n490), .B(n649), .C(n650), .Y(n643) );
  NOR2X1 U792 ( .A(n651), .B(n652), .Y(n650) );
  XOR2X1 U793 ( .A(k[10]), .B(j[10]), .Y(n652) );
  XOR2X1 U794 ( .A(k[0]), .B(j[0]), .Y(n651) );
  NOR2X1 U795 ( .A(n653), .B(n654), .Y(n641) );
  NAND3X1 U796 ( .A(n655), .B(n656), .C(n657), .Y(n654) );
  XOR2X1 U797 ( .A(n640), .B(k[8]), .Y(n657) );
  XOR2X1 U798 ( .A(n589), .B(k[9]), .Y(n656) );
  XOR2X1 U799 ( .A(n658), .B(k[7]), .Y(n655) );
  NAND3X1 U800 ( .A(n659), .B(n660), .C(n661), .Y(n653) );
  XOR2X1 U801 ( .A(n662), .B(k[5]), .Y(n661) );
  XOR2X1 U802 ( .A(n631), .B(k[6]), .Y(n660) );
  XOR2X1 U803 ( .A(n620), .B(k[4]), .Y(n659) );
  INVX1 U804 ( .A(n663), .Y(n630) );
  XOR2X1 U805 ( .A(n664), .B(processing), .Y(n458) );
  OAI21X1 U806 ( .A(n665), .B(n666), .C(n473), .Y(n664) );
  OR2X1 U807 ( .A(n649), .B(n491), .Y(n666) );
  NAND3X1 U808 ( .A(n640), .B(n589), .C(n667), .Y(n649) );
  NOR2X1 U809 ( .A(j[10]), .B(n663), .Y(n667) );
  NAND3X1 U810 ( .A(n631), .B(n658), .C(n619), .Y(n663) );
  INVX1 U811 ( .A(n626), .Y(n619) );
  NAND3X1 U812 ( .A(n620), .B(n662), .C(n608), .Y(n626) );
  INVX1 U813 ( .A(n615), .Y(n608) );
  NAND3X1 U814 ( .A(n609), .B(n648), .C(n599), .Y(n615) );
  NOR2X1 U815 ( .A(j[0]), .B(j[1]), .Y(n599) );
  INVX1 U816 ( .A(j[3]), .Y(n648) );
  INVX1 U817 ( .A(j[2]), .Y(n609) );
  INVX1 U818 ( .A(j[5]), .Y(n662) );
  INVX1 U819 ( .A(j[4]), .Y(n620) );
  INVX1 U820 ( .A(j[7]), .Y(n658) );
  INVX1 U821 ( .A(j[6]), .Y(n631) );
  INVX1 U822 ( .A(j[9]), .Y(n589) );
  INVX1 U823 ( .A(j[8]), .Y(n640) );
  OR2X1 U824 ( .A(fft_done), .B(n668), .Y(n665) );
  INVX1 U825 ( .A(n669), .Y(n457) );
  MUX2X1 U826 ( .B(\configs[0][0] ), .A(\config_reg[0][0] ), .S(n493), .Y(n669) );
  INVX1 U827 ( .A(n670), .Y(n456) );
  MUX2X1 U828 ( .B(\configs[0][1] ), .A(\config_reg[0][1] ), .S(n493), .Y(n670) );
  INVX1 U829 ( .A(n671), .Y(n455) );
  MUX2X1 U830 ( .B(\configs[0][2] ), .A(\config_reg[0][2] ), .S(n493), .Y(n671) );
  INVX1 U831 ( .A(n672), .Y(n454) );
  MUX2X1 U832 ( .B(\configs[0][3] ), .A(\config_reg[0][3] ), .S(n493), .Y(n672) );
  INVX1 U833 ( .A(n673), .Y(n453) );
  MUX2X1 U834 ( .B(\configs[0][4] ), .A(\config_reg[0][4] ), .S(n493), .Y(n673) );
  INVX1 U835 ( .A(n674), .Y(n452) );
  MUX2X1 U836 ( .B(\configs[0][5] ), .A(\config_reg[0][5] ), .S(n493), .Y(n674) );
  INVX1 U837 ( .A(n675), .Y(n451) );
  MUX2X1 U838 ( .B(\configs[0][6] ), .A(\config_reg[0][6] ), .S(n493), .Y(n675) );
  INVX1 U839 ( .A(n676), .Y(n450) );
  MUX2X1 U840 ( .B(\configs[0][7] ), .A(\config_reg[0][7] ), .S(n493), .Y(n676) );
  INVX1 U841 ( .A(n677), .Y(n449) );
  MUX2X1 U842 ( .B(\configs[0][8] ), .A(\config_reg[0][8] ), .S(n493), .Y(n677) );
  INVX1 U843 ( .A(n678), .Y(n448) );
  MUX2X1 U844 ( .B(\configs[0][9] ), .A(\config_reg[0][9] ), .S(n493), .Y(n678) );
  INVX1 U845 ( .A(n679), .Y(n447) );
  MUX2X1 U846 ( .B(\configs[0][10] ), .A(\config_reg[0][10] ), .S(n493), .Y(
        n679) );
  OAI21X1 U847 ( .A(n473), .B(n680), .C(n681), .Y(n446) );
  MUX2X1 U848 ( .B(n583), .A(n682), .S(k[0]), .Y(n681) );
  INVX1 U849 ( .A(N31), .Y(n680) );
  OAI21X1 U850 ( .A(n473), .B(n683), .C(n684), .Y(n445) );
  AOI22X1 U851 ( .A(k[1]), .B(n685), .C(n583), .D(n686), .Y(n684) );
  OAI21X1 U852 ( .A(n687), .B(n688), .C(n689), .Y(n685) );
  INVX1 U853 ( .A(k[0]), .Y(n687) );
  INVX1 U854 ( .A(N32), .Y(n683) );
  OAI21X1 U855 ( .A(n585), .B(n690), .C(n691), .Y(n444) );
  MUX2X1 U856 ( .B(n692), .A(n693), .S(k[2]), .Y(n691) );
  AND2X1 U857 ( .A(n686), .B(n583), .Y(n692) );
  INVX1 U858 ( .A(N33), .Y(n690) );
  OAI21X1 U859 ( .A(n585), .B(n694), .C(n695), .Y(n443) );
  AOI22X1 U860 ( .A(k[3]), .B(n696), .C(n583), .D(n697), .Y(n695) );
  OAI21X1 U861 ( .A(n698), .B(n688), .C(n699), .Y(n696) );
  INVX1 U862 ( .A(n693), .Y(n699) );
  OAI21X1 U863 ( .A(n686), .B(n688), .C(n689), .Y(n693) );
  INVX1 U864 ( .A(N34), .Y(n694) );
  OAI21X1 U865 ( .A(n585), .B(n700), .C(n701), .Y(n442) );
  MUX2X1 U866 ( .B(n702), .A(n703), .S(k[4]), .Y(n701) );
  NOR2X1 U867 ( .A(n704), .B(n688), .Y(n702) );
  INVX1 U868 ( .A(N35), .Y(n700) );
  OAI21X1 U869 ( .A(n585), .B(n705), .C(n706), .Y(n441) );
  AOI22X1 U870 ( .A(k[5]), .B(n707), .C(n583), .D(n708), .Y(n706) );
  OAI21X1 U871 ( .A(n709), .B(n688), .C(n710), .Y(n707) );
  INVX1 U872 ( .A(n703), .Y(n710) );
  OAI21X1 U873 ( .A(n697), .B(n688), .C(n689), .Y(n703) );
  INVX1 U874 ( .A(N36), .Y(n705) );
  OAI21X1 U875 ( .A(n585), .B(n711), .C(n712), .Y(n440) );
  MUX2X1 U876 ( .B(n713), .A(n714), .S(k[6]), .Y(n712) );
  NOR2X1 U877 ( .A(n715), .B(n688), .Y(n713) );
  INVX1 U878 ( .A(N37), .Y(n711) );
  OAI21X1 U879 ( .A(n585), .B(n716), .C(n717), .Y(n439) );
  AOI22X1 U880 ( .A(k[7]), .B(n718), .C(n583), .D(n719), .Y(n717) );
  OAI21X1 U881 ( .A(n720), .B(n688), .C(n721), .Y(n718) );
  INVX1 U882 ( .A(n714), .Y(n721) );
  OAI21X1 U883 ( .A(n708), .B(n688), .C(n689), .Y(n714) );
  INVX1 U884 ( .A(N38), .Y(n716) );
  OAI21X1 U885 ( .A(n585), .B(n722), .C(n723), .Y(n438) );
  AOI21X1 U886 ( .A(k[8]), .B(n724), .C(n725), .Y(n723) );
  INVX1 U887 ( .A(N39), .Y(n722) );
  OAI21X1 U888 ( .A(n585), .B(n726), .C(n727), .Y(n437) );
  MUX2X1 U889 ( .B(n725), .A(n584), .S(k[9]), .Y(n727) );
  OAI21X1 U890 ( .A(n728), .B(n688), .C(n729), .Y(n584) );
  INVX1 U891 ( .A(n724), .Y(n729) );
  OAI21X1 U892 ( .A(n719), .B(n688), .C(n689), .Y(n724) );
  INVX1 U893 ( .A(n730), .Y(n725) );
  NAND3X1 U894 ( .A(n719), .B(n728), .C(n583), .Y(n730) );
  INVX1 U895 ( .A(n688), .Y(n583) );
  NAND2X1 U896 ( .A(n490), .B(n689), .Y(n688) );
  INVX1 U897 ( .A(n682), .Y(n689) );
  AOI21X1 U898 ( .A(n491), .B(n490), .C(n493), .Y(n682) );
  NAND3X1 U899 ( .A(n728), .B(n731), .C(n732), .Y(n491) );
  NOR2X1 U900 ( .A(k[10]), .B(n733), .Y(n732) );
  INVX1 U901 ( .A(k[9]), .Y(n731) );
  INVX1 U902 ( .A(n734), .Y(n490) );
  NAND3X1 U903 ( .A(n735), .B(n736), .C(processing), .Y(n734) );
  INVX1 U904 ( .A(n737), .Y(n736) );
  INVX1 U905 ( .A(k[8]), .Y(n728) );
  INVX1 U906 ( .A(n733), .Y(n719) );
  NAND3X1 U907 ( .A(n720), .B(n738), .C(n708), .Y(n733) );
  INVX1 U908 ( .A(n715), .Y(n708) );
  NAND3X1 U909 ( .A(n709), .B(n739), .C(n697), .Y(n715) );
  INVX1 U910 ( .A(n704), .Y(n697) );
  NAND3X1 U911 ( .A(n698), .B(n740), .C(n686), .Y(n704) );
  NOR2X1 U912 ( .A(k[0]), .B(k[1]), .Y(n686) );
  INVX1 U913 ( .A(k[3]), .Y(n740) );
  INVX1 U914 ( .A(k[2]), .Y(n698) );
  INVX1 U915 ( .A(k[5]), .Y(n739) );
  INVX1 U916 ( .A(k[4]), .Y(n709) );
  INVX1 U917 ( .A(k[7]), .Y(n738) );
  INVX1 U918 ( .A(k[6]), .Y(n720) );
  INVX1 U919 ( .A(N40), .Y(n726) );
  NAND2X1 U920 ( .A(\config_reg[6][0] ), .B(n668), .Y(n585) );
  INVX1 U921 ( .A(processing), .Y(n668) );
  NOR2X1 U922 ( .A(n486), .B(n579), .Y(in_valid) );
  NAND2X1 U923 ( .A(rstate[1]), .B(n741), .Y(n579) );
  INVX1 U924 ( .A(rvalid), .Y(n486) );
  NOR2X1 U925 ( .A(n742), .B(wstate[1]), .Y(awvalid) );
  AND2X1 U926 ( .A(N286), .B(n474), .Y(awaddr[9]) );
  AND2X1 U927 ( .A(N285), .B(n474), .Y(awaddr[8]) );
  AND2X1 U928 ( .A(N284), .B(n474), .Y(awaddr[7]) );
  AND2X1 U929 ( .A(N283), .B(n474), .Y(awaddr[6]) );
  AND2X1 U930 ( .A(N282), .B(n474), .Y(awaddr[5]) );
  AND2X1 U931 ( .A(N281), .B(n474), .Y(awaddr[4]) );
  AND2X1 U932 ( .A(N280), .B(n474), .Y(awaddr[3]) );
  AND2X1 U933 ( .A(N308), .B(n474), .Y(awaddr[31]) );
  AND2X1 U934 ( .A(N307), .B(n474), .Y(awaddr[30]) );
  AND2X1 U935 ( .A(N279), .B(n474), .Y(awaddr[2]) );
  AND2X1 U936 ( .A(N306), .B(n474), .Y(awaddr[29]) );
  AND2X1 U937 ( .A(N305), .B(n474), .Y(awaddr[28]) );
  AND2X1 U938 ( .A(N304), .B(n474), .Y(awaddr[27]) );
  AND2X1 U939 ( .A(N303), .B(n737), .Y(awaddr[26]) );
  AND2X1 U940 ( .A(N302), .B(n737), .Y(awaddr[25]) );
  AND2X1 U941 ( .A(N301), .B(n737), .Y(awaddr[24]) );
  AND2X1 U942 ( .A(N300), .B(n737), .Y(awaddr[23]) );
  AND2X1 U943 ( .A(N299), .B(n737), .Y(awaddr[22]) );
  AND2X1 U944 ( .A(N298), .B(n737), .Y(awaddr[21]) );
  AND2X1 U945 ( .A(N297), .B(n737), .Y(awaddr[20]) );
  AND2X1 U946 ( .A(N278), .B(n737), .Y(awaddr[1]) );
  AND2X1 U947 ( .A(N296), .B(n737), .Y(awaddr[19]) );
  AND2X1 U948 ( .A(N295), .B(n737), .Y(awaddr[18]) );
  AND2X1 U949 ( .A(N294), .B(n737), .Y(awaddr[17]) );
  AND2X1 U950 ( .A(N293), .B(n737), .Y(awaddr[16]) );
  AND2X1 U951 ( .A(N292), .B(n737), .Y(awaddr[15]) );
  AND2X1 U952 ( .A(N291), .B(n737), .Y(awaddr[14]) );
  AND2X1 U953 ( .A(N290), .B(n737), .Y(awaddr[13]) );
  AND2X1 U954 ( .A(N289), .B(n737), .Y(awaddr[12]) );
  AND2X1 U955 ( .A(N288), .B(n737), .Y(awaddr[11]) );
  AND2X1 U956 ( .A(N287), .B(n737), .Y(awaddr[10]) );
  AND2X1 U957 ( .A(N277), .B(n737), .Y(awaddr[0]) );
  NAND2X1 U958 ( .A(n476), .B(n742), .Y(n737) );
  NOR2X1 U959 ( .A(n741), .B(rstate[1]), .Y(arvalid) );
  INVX1 U960 ( .A(rstate[0]), .Y(n741) );
  AND2X1 U961 ( .A(N174), .B(n743), .Y(araddr[9]) );
  AND2X1 U962 ( .A(N173), .B(n743), .Y(araddr[8]) );
  AND2X1 U963 ( .A(N172), .B(n743), .Y(araddr[7]) );
  AND2X1 U964 ( .A(N171), .B(n743), .Y(araddr[6]) );
  AND2X1 U965 ( .A(N170), .B(n743), .Y(araddr[5]) );
  AND2X1 U966 ( .A(N169), .B(n743), .Y(araddr[4]) );
  AND2X1 U967 ( .A(N168), .B(n743), .Y(araddr[3]) );
  AND2X1 U968 ( .A(N196), .B(n743), .Y(araddr[31]) );
  AND2X1 U969 ( .A(N195), .B(n743), .Y(araddr[30]) );
  AND2X1 U970 ( .A(N167), .B(n743), .Y(araddr[2]) );
  AND2X1 U971 ( .A(N194), .B(n743), .Y(araddr[29]) );
  AND2X1 U972 ( .A(N193), .B(n743), .Y(araddr[28]) );
  AND2X1 U973 ( .A(N192), .B(n743), .Y(araddr[27]) );
  AND2X1 U974 ( .A(N191), .B(n743), .Y(araddr[26]) );
  AND2X1 U975 ( .A(N190), .B(n743), .Y(araddr[25]) );
  AND2X1 U976 ( .A(N189), .B(n743), .Y(araddr[24]) );
  AND2X1 U977 ( .A(N188), .B(n743), .Y(araddr[23]) );
  AND2X1 U978 ( .A(N187), .B(n743), .Y(araddr[22]) );
  AND2X1 U979 ( .A(N186), .B(n743), .Y(araddr[21]) );
  AND2X1 U980 ( .A(N185), .B(n743), .Y(araddr[20]) );
  AND2X1 U981 ( .A(N166), .B(n743), .Y(araddr[1]) );
  AND2X1 U982 ( .A(N184), .B(n743), .Y(araddr[19]) );
  AND2X1 U983 ( .A(N183), .B(n743), .Y(araddr[18]) );
  AND2X1 U984 ( .A(N182), .B(n743), .Y(araddr[17]) );
  AND2X1 U985 ( .A(N181), .B(n743), .Y(araddr[16]) );
  AND2X1 U986 ( .A(N180), .B(n743), .Y(araddr[15]) );
  AND2X1 U987 ( .A(N179), .B(n743), .Y(araddr[14]) );
  AND2X1 U988 ( .A(N178), .B(n743), .Y(araddr[13]) );
  AND2X1 U989 ( .A(N177), .B(n743), .Y(araddr[12]) );
  AND2X1 U990 ( .A(N176), .B(n743), .Y(araddr[11]) );
  AND2X1 U991 ( .A(N175), .B(n743), .Y(araddr[10]) );
  AND2X1 U992 ( .A(N165), .B(n743), .Y(araddr[0]) );
  NOR2X1 U993 ( .A(rstate[0]), .B(rstate[1]), .Y(n735) );
  NOR2X1 U994 ( .A(n742), .B(n476), .Y(N312) );
  INVX1 U995 ( .A(wstate[1]), .Y(n476) );
  INVX1 U996 ( .A(wstate[0]), .Y(n742) );
endmodule

