/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4
// Date      : Mon Apr 20 03:30:15 2026
/////////////////////////////////////////////////////////////


module fft_axi_counter_WRITE_OR_READ0_DW01_inc_0_DW01_inc_5 ( A, SUM );
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
  fft_axi_counter_WRITE_OR_READ0_DW01_inc_0_DW01_inc_5 r376 ( .A(i), .SUM({N16, 
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


module fft_axi_counter_WRITE_OR_READ1_DW01_inc_0_DW01_inc_4 ( A, SUM );
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
  fft_axi_counter_WRITE_OR_READ1_DW01_inc_0_DW01_inc_4 r376 ( .A(i), .SUM({N16, 
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


module fft_axi_manager_DW01_add_1 ( A, B, CI, SUM, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21;
  wire   [31:1] carry;

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
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n20), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(n11), .B(A[28]), .Y(n1) );
  AND2X2 U2 ( .A(n12), .B(A[26]), .Y(n2) );
  AND2X2 U3 ( .A(n13), .B(A[24]), .Y(n3) );
  AND2X2 U4 ( .A(n14), .B(A[22]), .Y(n4) );
  AND2X2 U5 ( .A(n15), .B(A[20]), .Y(n5) );
  AND2X2 U6 ( .A(n16), .B(A[18]), .Y(n6) );
  AND2X2 U7 ( .A(n17), .B(A[16]), .Y(n7) );
  AND2X2 U8 ( .A(n18), .B(A[14]), .Y(n8) );
  AND2X2 U9 ( .A(n19), .B(A[12]), .Y(n9) );
  AND2X2 U10 ( .A(n1), .B(A[29]), .Y(n10) );
  AND2X2 U11 ( .A(n2), .B(A[27]), .Y(n11) );
  AND2X2 U12 ( .A(n3), .B(A[25]), .Y(n12) );
  AND2X2 U13 ( .A(n4), .B(A[23]), .Y(n13) );
  AND2X2 U14 ( .A(n5), .B(A[21]), .Y(n14) );
  AND2X2 U15 ( .A(n6), .B(A[19]), .Y(n15) );
  AND2X2 U16 ( .A(n7), .B(A[17]), .Y(n16) );
  AND2X2 U17 ( .A(n8), .B(A[15]), .Y(n17) );
  AND2X2 U18 ( .A(n9), .B(A[13]), .Y(n18) );
  AND2X2 U19 ( .A(carry[11]), .B(A[11]), .Y(n19) );
  AND2X2 U20 ( .A(B[0]), .B(A[0]), .Y(n20) );
  AND2X2 U21 ( .A(n10), .B(A[30]), .Y(n21) );
  XOR2X1 U22 ( .A(A[31]), .B(n21), .Y(SUM[31]) );
  XOR2X1 U23 ( .A(n10), .B(A[30]), .Y(SUM[30]) );
  XOR2X1 U24 ( .A(n1), .B(A[29]), .Y(SUM[29]) );
  XOR2X1 U25 ( .A(n11), .B(A[28]), .Y(SUM[28]) );
  XOR2X1 U26 ( .A(n2), .B(A[27]), .Y(SUM[27]) );
  XOR2X1 U27 ( .A(n12), .B(A[26]), .Y(SUM[26]) );
  XOR2X1 U28 ( .A(n3), .B(A[25]), .Y(SUM[25]) );
  XOR2X1 U29 ( .A(n13), .B(A[24]), .Y(SUM[24]) );
  XOR2X1 U30 ( .A(n4), .B(A[23]), .Y(SUM[23]) );
  XOR2X1 U31 ( .A(n14), .B(A[22]), .Y(SUM[22]) );
  XOR2X1 U32 ( .A(n5), .B(A[21]), .Y(SUM[21]) );
  XOR2X1 U33 ( .A(n15), .B(A[20]), .Y(SUM[20]) );
  XOR2X1 U34 ( .A(n6), .B(A[19]), .Y(SUM[19]) );
  XOR2X1 U35 ( .A(n16), .B(A[18]), .Y(SUM[18]) );
  XOR2X1 U36 ( .A(n7), .B(A[17]), .Y(SUM[17]) );
  XOR2X1 U37 ( .A(n17), .B(A[16]), .Y(SUM[16]) );
  XOR2X1 U38 ( .A(n8), .B(A[15]), .Y(SUM[15]) );
  XOR2X1 U39 ( .A(n18), .B(A[14]), .Y(SUM[14]) );
  XOR2X1 U40 ( .A(n9), .B(A[13]), .Y(SUM[13]) );
  XOR2X1 U41 ( .A(n19), .B(A[12]), .Y(SUM[12]) );
  XOR2X1 U42 ( .A(carry[11]), .B(A[11]), .Y(SUM[11]) );
  XOR2X1 U43 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module fft_axi_manager_DW01_add_2 ( A, B, CI, SUM, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21;
  wire   [31:1] carry;

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
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n20), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(n11), .B(A[28]), .Y(n1) );
  AND2X2 U2 ( .A(n12), .B(A[26]), .Y(n2) );
  AND2X2 U3 ( .A(n13), .B(A[24]), .Y(n3) );
  AND2X2 U4 ( .A(n14), .B(A[22]), .Y(n4) );
  AND2X2 U5 ( .A(n15), .B(A[20]), .Y(n5) );
  AND2X2 U6 ( .A(n16), .B(A[18]), .Y(n6) );
  AND2X2 U7 ( .A(n17), .B(A[16]), .Y(n7) );
  AND2X2 U8 ( .A(n18), .B(A[14]), .Y(n8) );
  AND2X2 U9 ( .A(n19), .B(A[12]), .Y(n9) );
  AND2X2 U10 ( .A(n1), .B(A[29]), .Y(n10) );
  AND2X2 U11 ( .A(n2), .B(A[27]), .Y(n11) );
  AND2X2 U12 ( .A(n3), .B(A[25]), .Y(n12) );
  AND2X2 U13 ( .A(n4), .B(A[23]), .Y(n13) );
  AND2X2 U14 ( .A(n5), .B(A[21]), .Y(n14) );
  AND2X2 U15 ( .A(n6), .B(A[19]), .Y(n15) );
  AND2X2 U16 ( .A(n7), .B(A[17]), .Y(n16) );
  AND2X2 U17 ( .A(n8), .B(A[15]), .Y(n17) );
  AND2X2 U18 ( .A(n9), .B(A[13]), .Y(n18) );
  AND2X2 U19 ( .A(carry[11]), .B(A[11]), .Y(n19) );
  AND2X2 U20 ( .A(B[0]), .B(A[0]), .Y(n20) );
  AND2X2 U21 ( .A(n10), .B(A[30]), .Y(n21) );
  XOR2X1 U22 ( .A(A[31]), .B(n21), .Y(SUM[31]) );
  XOR2X1 U23 ( .A(n10), .B(A[30]), .Y(SUM[30]) );
  XOR2X1 U24 ( .A(n1), .B(A[29]), .Y(SUM[29]) );
  XOR2X1 U25 ( .A(n11), .B(A[28]), .Y(SUM[28]) );
  XOR2X1 U26 ( .A(n2), .B(A[27]), .Y(SUM[27]) );
  XOR2X1 U27 ( .A(n12), .B(A[26]), .Y(SUM[26]) );
  XOR2X1 U28 ( .A(n3), .B(A[25]), .Y(SUM[25]) );
  XOR2X1 U29 ( .A(n13), .B(A[24]), .Y(SUM[24]) );
  XOR2X1 U30 ( .A(n4), .B(A[23]), .Y(SUM[23]) );
  XOR2X1 U31 ( .A(n14), .B(A[22]), .Y(SUM[22]) );
  XOR2X1 U32 ( .A(n5), .B(A[21]), .Y(SUM[21]) );
  XOR2X1 U33 ( .A(n15), .B(A[20]), .Y(SUM[20]) );
  XOR2X1 U34 ( .A(n6), .B(A[19]), .Y(SUM[19]) );
  XOR2X1 U35 ( .A(n16), .B(A[18]), .Y(SUM[18]) );
  XOR2X1 U36 ( .A(n7), .B(A[17]), .Y(SUM[17]) );
  XOR2X1 U37 ( .A(n17), .B(A[16]), .Y(SUM[16]) );
  XOR2X1 U38 ( .A(n8), .B(A[15]), .Y(SUM[15]) );
  XOR2X1 U39 ( .A(n18), .B(A[14]), .Y(SUM[14]) );
  XOR2X1 U40 ( .A(n9), .B(A[13]), .Y(SUM[13]) );
  XOR2X1 U41 ( .A(n19), .B(A[12]), .Y(SUM[12]) );
  XOR2X1 U42 ( .A(carry[11]), .B(A[11]), .Y(SUM[11]) );
  XOR2X1 U43 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
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


module fft_axi_manager_DW01_inc_2 ( A, SUM );
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


module fft_axi_manager_DW01_inc_3 ( A, SUM );
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
  XOR2X1 U1 ( .A(carry[10]), .B(A[10]), .Y(SUM[10]) );
endmodule


module fft_axi_manager_DW01_add_3 ( A, B, CI, SUM, CO );
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
        \config_reg[0][0] }), data_out, out_valid, data_in, in_valid, 
        load_size, frame_size );
  output [31:0] awaddr;
  output [9:0] awlen;
  output [31:0] wdata;
  output [1:0] wstrb;
  output [31:0] araddr;
  output [9:0] arlen;
  input [31:0] rdata;
  input [31:0] data_out;
  output [31:0] data_in;
  output [9:0] frame_size;
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
         \config_reg[0][0] , out_valid;
  output awvalid, wlast, wvalid, bready, arvalid, rready, in_valid, load_size;
  wire   N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, \configs[3][31] ,
         \configs[3][30] , \configs[3][29] , \configs[3][28] ,
         \configs[3][27] , \configs[3][26] , \configs[3][25] ,
         \configs[3][24] , \configs[3][23] , \configs[3][22] ,
         \configs[3][21] , \configs[3][20] , \configs[3][19] ,
         \configs[3][18] , \configs[3][17] , \configs[3][16] ,
         \configs[3][15] , \configs[3][14] , \configs[3][13] ,
         \configs[3][12] , \configs[3][11] , \configs[3][10] , \configs[3][9] ,
         \configs[3][8] , \configs[3][7] , \configs[3][6] , \configs[3][5] ,
         \configs[3][4] , \configs[3][3] , \configs[3][2] , \configs[3][1] ,
         \configs[3][0] , \configs[1][31] , \configs[1][30] , \configs[1][29] ,
         \configs[1][28] , \configs[1][27] , \configs[1][26] ,
         \configs[1][25] , \configs[1][24] , \configs[1][23] ,
         \configs[1][22] , \configs[1][21] , \configs[1][20] ,
         \configs[1][19] , \configs[1][18] , \configs[1][17] ,
         \configs[1][16] , \configs[1][15] , \configs[1][14] ,
         \configs[1][13] , \configs[1][12] , \configs[1][11] ,
         \configs[1][10] , \configs[1][9] , \configs[1][8] , \configs[1][7] ,
         \configs[1][6] , \configs[1][5] , \configs[1][4] , \configs[1][3] ,
         \configs[1][2] , \configs[1][1] , \configs[1][0] , processing, N48,
         N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62,
         N63, N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76,
         N77, N78, N79, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105,
         N106, N107, N108, N109, N110, N111, N112, N113, N114, N115, N116,
         N117, N118, N119, N120, N121, N122, N123, N124, N125, N126, N127,
         N146, N147, N148, N149, N150, N151, N152, N153, N154, N155, N156,
         N157, N158, N159, N160, N161, N162, N163, N164, N165, N166, N167,
         N168, N169, N170, N171, N172, N173, N174, N175, N176, N177,
         rcounter_last, N287, N288, N289, N290, N291, N292, N293, N294, N295,
         N296, N297, N298, N299, N300, N301, N302, N303, N304, N305, N306,
         N307, N308, N309, N310, N311, N312, N313, N314, N315, N316, N317,
         N318, N331, N332, N333, N334, N335, N336, N337, N338, N339, N340,
         N341, N342, N343, N344, N345, N346, N347, N348, N349, N350, N351,
         N352, N353, N354, N355, N356, N357, N358, N359, N360, N361, N362,
         n529, n707, n708, n709, n710, n711, n712, n713, n714, n715, n716,
         n717, n718, n719, n720, n721, n722, n723, n724, n725, n726, n727,
         n728, n729, n731, n732, n733, n734, n735, n736, n737, n738, n739,
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
         n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103,
         n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113,
         n1114, n1115, n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123,
         n1124, n1125, n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133,
         n1134, n1135, n1136, n1137, n1138, n1139, n1140, n1141, n1142, n1143,
         n1144, n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152, n1153,
         n1154, n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162, n1163,
         n1164, n1165, n1166, n1167, n1168, n1169, n1170, n1171, n1172, n1173,
         n1174, n1175, n1176, n1177, n1178, n1179, n1180, n1181, n1182, n1183,
         n1184, n1185, n1186, n1187, n1188, n1189, n1190, n1191, n1192, n1193,
         n1194, n1195, n1196, n1197, n1198, n1199, n1200, n1201, n1202, n1203,
         n1204, n1205, n1206, n1207, n1208, n1209, n1210, n1211, n1212, n1213,
         n1214, n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222, n1223,
         n1224, n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232, n1233,
         n1234, n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242, n1243,
         n1244, n1245, n1246, n1247, n1248, n1249, n1250, n1251, n1252, n1253,
         n1254, n1255, n1256, n1257, n1258, n1259, n1260, n1261, n1262, n1263,
         n1264, n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272, n1273,
         n1274, n1275, n1276, n1277, n1278, n1279, n1280, n1281, n1282, n1283,
         n1284, n1285, n1286, n1287, n1288, n1289, n1290, n1291, n1292, n1293,
         n1294, n1295, n1296, n1297, n1298, n1299, n1300, n1301, n1302, n1303,
         n1304, n1305, n1306, n1307, n1308, n1309, n1310, n1311, n1312, n1313,
         n1314, n1315, n1316, n1317, n1318, n1319, n1320, n1321, n1322, n1323,
         n1324, n1325, n1326, n1327, n1328, n1329, n1330, n1331, n1332, n1333,
         n1334;
  wire   [1:0] wstate;
  wire   [1:0] rstate;
  wire   [10:0] j;
  wire   [10:0] k;
  wire   [31:0] r_offset;
  wire   [31:0] w_offset;
  wire   [31:0] r_frame_size;
  wire   [31:0] w_frame_size;
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

  DFFSR \wstate_reg[0]  ( .D(next_wstate[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(wstate[0]) );
  DFFSR \wstate_reg[1]  ( .D(next_wstate[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(wstate[1]) );
  DFFSR load_size_reg ( .D(n529), .CLK(clk), .R(n_rst), .S(1'b1), .Q(load_size) );
  DFFSR \k_reg[10]  ( .D(n729), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[10]) );
  DFFSR processing_reg ( .D(n717), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        processing) );
  DFFSR \k_reg[0]  ( .D(n716), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[0]) );
  DFFSR \k_reg[1]  ( .D(n715), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[1]) );
  DFFSR \k_reg[2]  ( .D(n714), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[2]) );
  DFFSR \k_reg[3]  ( .D(n713), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[3]) );
  DFFSR \k_reg[4]  ( .D(n712), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[4]) );
  DFFSR \k_reg[5]  ( .D(n711), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[5]) );
  DFFSR \k_reg[6]  ( .D(n710), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[6]) );
  DFFSR \k_reg[7]  ( .D(n709), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[7]) );
  DFFSR \k_reg[8]  ( .D(n708), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[8]) );
  DFFSR \k_reg[9]  ( .D(n707), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[9]) );
  DFFSR \j_reg[10]  ( .D(n728), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[10]) );
  DFFSR \j_reg[0]  ( .D(n727), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[0]) );
  DFFSR \j_reg[1]  ( .D(n726), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[1]) );
  DFFSR \j_reg[2]  ( .D(n725), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[2]) );
  DFFSR \j_reg[3]  ( .D(n724), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[3]) );
  DFFSR \j_reg[4]  ( .D(n723), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[4]) );
  DFFSR \j_reg[5]  ( .D(n722), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[5]) );
  DFFSR \j_reg[6]  ( .D(n721), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[6]) );
  DFFSR \j_reg[7]  ( .D(n720), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[7]) );
  DFFSR \j_reg[8]  ( .D(n719), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[8]) );
  DFFSR \j_reg[9]  ( .D(n718), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[9]) );
  DFFSR \configs_reg[1][0]  ( .D(n1302), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][0] ) );
  DFFSR \configs_reg[1][1]  ( .D(n1301), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][1] ) );
  DFFSR \configs_reg[1][2]  ( .D(n1300), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][2] ) );
  DFFSR \configs_reg[1][3]  ( .D(n1299), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][3] ) );
  DFFSR \configs_reg[1][4]  ( .D(n1298), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][4] ) );
  DFFSR \configs_reg[1][5]  ( .D(n1297), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][5] ) );
  DFFSR \configs_reg[1][6]  ( .D(n1296), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][6] ) );
  DFFSR \configs_reg[1][7]  ( .D(n1295), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][7] ) );
  DFFSR \configs_reg[1][8]  ( .D(n1294), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][8] ) );
  DFFSR \configs_reg[1][9]  ( .D(n1293), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][9] ) );
  DFFSR \configs_reg[1][10]  ( .D(n1292), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][10] ) );
  DFFSR \configs_reg[1][11]  ( .D(n1291), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][11] ) );
  DFFSR \configs_reg[1][12]  ( .D(n1290), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][12] ) );
  DFFSR \configs_reg[1][13]  ( .D(n1289), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][13] ) );
  DFFSR \configs_reg[1][14]  ( .D(n1288), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][14] ) );
  DFFSR \configs_reg[1][15]  ( .D(n1287), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][15] ) );
  DFFSR \configs_reg[1][16]  ( .D(n1286), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][16] ) );
  DFFSR \configs_reg[1][17]  ( .D(n1285), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][17] ) );
  DFFSR \configs_reg[1][18]  ( .D(n1284), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][18] ) );
  DFFSR \configs_reg[1][19]  ( .D(n1283), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][19] ) );
  DFFSR \configs_reg[1][20]  ( .D(n1282), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][20] ) );
  DFFSR \configs_reg[1][21]  ( .D(n1281), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][21] ) );
  DFFSR \configs_reg[1][22]  ( .D(n1280), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][22] ) );
  DFFSR \configs_reg[1][23]  ( .D(n1279), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][23] ) );
  DFFSR \configs_reg[1][24]  ( .D(n1278), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][24] ) );
  DFFSR \configs_reg[1][25]  ( .D(n1277), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][25] ) );
  DFFSR \configs_reg[1][26]  ( .D(n1276), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][26] ) );
  DFFSR \configs_reg[1][27]  ( .D(n1275), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][27] ) );
  DFFSR \configs_reg[1][28]  ( .D(n1274), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][28] ) );
  DFFSR \configs_reg[1][29]  ( .D(n1273), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][29] ) );
  DFFSR \configs_reg[1][30]  ( .D(n1272), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][30] ) );
  DFFSR \configs_reg[1][31]  ( .D(n1271), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][31] ) );
  DFFSR \configs_reg[2][0]  ( .D(n1270), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[0]) );
  DFFSR \configs_reg[2][1]  ( .D(n1269), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[1]) );
  DFFSR \configs_reg[2][2]  ( .D(n1268), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[2]) );
  DFFSR \configs_reg[2][3]  ( .D(n1267), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[3]) );
  DFFSR \configs_reg[2][4]  ( .D(n1266), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[4]) );
  DFFSR \configs_reg[2][5]  ( .D(n1265), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[5]) );
  DFFSR \configs_reg[2][6]  ( .D(n1264), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[6]) );
  DFFSR \configs_reg[2][7]  ( .D(n1263), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[7]) );
  DFFSR \configs_reg[2][8]  ( .D(n1262), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[8]) );
  DFFSR \configs_reg[2][9]  ( .D(n1261), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        arlen[9]) );
  DFFSR \rstate_reg[1]  ( .D(next_rstate[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(rstate[1]) );
  DFFSR \rstate_reg[0]  ( .D(next_rstate[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(rstate[0]) );
  DFFSR \frame_size_reg[0]  ( .D(n1334), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[0]) );
  DFFSR \frame_size_reg[1]  ( .D(n1333), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[1]) );
  DFFSR \frame_size_reg[2]  ( .D(n1332), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[2]) );
  DFFSR \frame_size_reg[3]  ( .D(n1331), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[3]) );
  DFFSR \frame_size_reg[4]  ( .D(n1330), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[4]) );
  DFFSR \frame_size_reg[5]  ( .D(n1329), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[5]) );
  DFFSR \frame_size_reg[6]  ( .D(n1328), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[6]) );
  DFFSR \frame_size_reg[7]  ( .D(n1327), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[7]) );
  DFFSR \frame_size_reg[8]  ( .D(n1326), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[8]) );
  DFFSR \frame_size_reg[9]  ( .D(n1325), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        frame_size[9]) );
  DFFSR \configs_reg[3][0]  ( .D(n1260), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][0] ) );
  DFFSR \configs_reg[3][1]  ( .D(n1259), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][1] ) );
  DFFSR \configs_reg[3][2]  ( .D(n1258), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][2] ) );
  DFFSR \configs_reg[3][3]  ( .D(n1257), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][3] ) );
  DFFSR \configs_reg[3][4]  ( .D(n1256), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][4] ) );
  DFFSR \configs_reg[3][5]  ( .D(n1255), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][5] ) );
  DFFSR \configs_reg[3][6]  ( .D(n1254), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][6] ) );
  DFFSR \configs_reg[3][7]  ( .D(n1253), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][7] ) );
  DFFSR \configs_reg[3][8]  ( .D(n1252), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][8] ) );
  DFFSR \configs_reg[3][9]  ( .D(n1251), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][9] ) );
  DFFSR \configs_reg[3][10]  ( .D(n1250), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][10] ) );
  DFFSR \configs_reg[3][11]  ( .D(n1249), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][11] ) );
  DFFSR \configs_reg[3][12]  ( .D(n1248), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][12] ) );
  DFFSR \configs_reg[3][13]  ( .D(n1247), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][13] ) );
  DFFSR \configs_reg[3][14]  ( .D(n1246), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][14] ) );
  DFFSR \configs_reg[3][15]  ( .D(n1245), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][15] ) );
  DFFSR \configs_reg[3][16]  ( .D(n1244), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][16] ) );
  DFFSR \configs_reg[3][17]  ( .D(n1243), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][17] ) );
  DFFSR \configs_reg[3][18]  ( .D(n1242), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][18] ) );
  DFFSR \configs_reg[3][19]  ( .D(n1241), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][19] ) );
  DFFSR \configs_reg[3][20]  ( .D(n1240), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][20] ) );
  DFFSR \configs_reg[3][21]  ( .D(n1239), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][21] ) );
  DFFSR \configs_reg[3][22]  ( .D(n1238), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][22] ) );
  DFFSR \configs_reg[3][23]  ( .D(n1237), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][23] ) );
  DFFSR \configs_reg[3][24]  ( .D(n1236), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][24] ) );
  DFFSR \configs_reg[3][25]  ( .D(n1235), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][25] ) );
  DFFSR \configs_reg[3][26]  ( .D(n1234), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][26] ) );
  DFFSR \configs_reg[3][27]  ( .D(n1233), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][27] ) );
  DFFSR \configs_reg[3][28]  ( .D(n1232), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][28] ) );
  DFFSR \configs_reg[3][29]  ( .D(n1231), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][29] ) );
  DFFSR \configs_reg[3][30]  ( .D(n1230), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][30] ) );
  DFFSR \configs_reg[3][31]  ( .D(n1229), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][31] ) );
  DFFSR \configs_reg[4][0]  ( .D(n1228), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[0]) );
  DFFSR \configs_reg[4][1]  ( .D(n1227), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[1]) );
  DFFSR \configs_reg[4][2]  ( .D(n1226), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[2]) );
  DFFSR \configs_reg[4][3]  ( .D(n1225), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[3]) );
  DFFSR \configs_reg[4][4]  ( .D(n1224), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[4]) );
  DFFSR \configs_reg[4][5]  ( .D(n1223), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[5]) );
  DFFSR \configs_reg[4][6]  ( .D(n1222), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[6]) );
  DFFSR \configs_reg[4][7]  ( .D(n1221), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[7]) );
  DFFSR \configs_reg[4][8]  ( .D(n1220), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[8]) );
  DFFSR \configs_reg[4][9]  ( .D(n1219), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awlen[9]) );
  DFFSR \configs_reg[5][0]  ( .D(n1218), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wstrb[0]) );
  DFFSR \configs_reg[5][1]  ( .D(n1217), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wstrb[1]) );
  DFFSR \r_frame_size_reg[0]  ( .D(n1324), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[0]) );
  DFFSR \w_frame_size_reg[10]  ( .D(n1323), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(w_frame_size[10]) );
  DFFSR \w_frame_size_reg[9]  ( .D(n1322), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[9]) );
  DFFSR \w_frame_size_reg[8]  ( .D(n1321), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[8]) );
  DFFSR \w_frame_size_reg[7]  ( .D(n1320), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[7]) );
  DFFSR \w_frame_size_reg[6]  ( .D(n1319), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[6]) );
  DFFSR \w_frame_size_reg[5]  ( .D(n1318), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[5]) );
  DFFSR \w_frame_size_reg[4]  ( .D(n1317), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[4]) );
  DFFSR \w_frame_size_reg[3]  ( .D(n1316), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[3]) );
  DFFSR \w_frame_size_reg[2]  ( .D(n1315), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[2]) );
  DFFSR \w_frame_size_reg[1]  ( .D(n1314), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[1]) );
  DFFSR \w_frame_size_reg[0]  ( .D(n1313), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[0]) );
  DFFSR \r_frame_size_reg[10]  ( .D(n1312), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(r_frame_size[10]) );
  DFFSR \r_frame_size_reg[9]  ( .D(n1311), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[9]) );
  DFFSR \r_frame_size_reg[8]  ( .D(n1310), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[8]) );
  DFFSR \r_frame_size_reg[7]  ( .D(n1309), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[7]) );
  DFFSR \r_frame_size_reg[6]  ( .D(n1308), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[6]) );
  DFFSR \r_frame_size_reg[5]  ( .D(n1307), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[5]) );
  DFFSR \r_frame_size_reg[4]  ( .D(n1306), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[4]) );
  DFFSR \r_frame_size_reg[3]  ( .D(n1305), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[3]) );
  DFFSR \r_frame_size_reg[2]  ( .D(n1304), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[2]) );
  DFFSR \r_frame_size_reg[1]  ( .D(n1303), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[1]) );
  DFFSR \w_offset_reg[0]  ( .D(n1216), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[0]) );
  DFFSR \w_offset_reg[1]  ( .D(n1215), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[1]) );
  DFFSR \w_offset_reg[2]  ( .D(n1214), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[2]) );
  DFFSR \w_offset_reg[3]  ( .D(n1213), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[3]) );
  DFFSR \w_offset_reg[4]  ( .D(n1212), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[4]) );
  DFFSR \w_offset_reg[5]  ( .D(n1211), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[5]) );
  DFFSR \w_offset_reg[6]  ( .D(n1210), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[6]) );
  DFFSR \w_offset_reg[7]  ( .D(n1209), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[7]) );
  DFFSR \w_offset_reg[8]  ( .D(n1208), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[8]) );
  DFFSR \w_offset_reg[9]  ( .D(n1207), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[9]) );
  DFFSR \w_offset_reg[10]  ( .D(n1206), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[10]) );
  DFFSR \w_offset_reg[11]  ( .D(n1205), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[11]) );
  DFFSR \w_offset_reg[12]  ( .D(n1204), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[12]) );
  DFFSR \w_offset_reg[13]  ( .D(n1203), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[13]) );
  DFFSR \w_offset_reg[14]  ( .D(n1202), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[14]) );
  DFFSR \w_offset_reg[15]  ( .D(n1201), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[15]) );
  DFFSR \w_offset_reg[16]  ( .D(n1200), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[16]) );
  DFFSR \w_offset_reg[17]  ( .D(n1199), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[17]) );
  DFFSR \w_offset_reg[18]  ( .D(n1198), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[18]) );
  DFFSR \w_offset_reg[19]  ( .D(n1197), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[19]) );
  DFFSR \w_offset_reg[20]  ( .D(n1196), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[20]) );
  DFFSR \w_offset_reg[21]  ( .D(n1195), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[21]) );
  DFFSR \w_offset_reg[22]  ( .D(n1194), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[22]) );
  DFFSR \w_offset_reg[23]  ( .D(n1193), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[23]) );
  DFFSR \w_offset_reg[24]  ( .D(n1192), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[24]) );
  DFFSR \w_offset_reg[25]  ( .D(n1191), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[25]) );
  DFFSR \w_offset_reg[26]  ( .D(n1190), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[26]) );
  DFFSR \w_offset_reg[27]  ( .D(n1189), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[27]) );
  DFFSR \w_offset_reg[28]  ( .D(n1188), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[28]) );
  DFFSR \w_offset_reg[29]  ( .D(n1187), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[29]) );
  DFFSR \w_offset_reg[30]  ( .D(n1186), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[30]) );
  DFFSR \w_offset_reg[31]  ( .D(n1185), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[31]) );
  DFFSR \r_offset_reg[0]  ( .D(n1184), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[0]) );
  DFFSR \r_offset_reg[1]  ( .D(n1183), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[1]) );
  DFFSR \r_offset_reg[2]  ( .D(n1182), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[2]) );
  DFFSR \r_offset_reg[3]  ( .D(n1181), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[3]) );
  DFFSR \r_offset_reg[4]  ( .D(n1180), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[4]) );
  DFFSR \r_offset_reg[5]  ( .D(n1179), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[5]) );
  DFFSR \r_offset_reg[6]  ( .D(n1178), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[6]) );
  DFFSR \r_offset_reg[7]  ( .D(n1177), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[7]) );
  DFFSR \r_offset_reg[8]  ( .D(n1176), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[8]) );
  DFFSR \r_offset_reg[9]  ( .D(n1175), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[9]) );
  DFFSR \r_offset_reg[10]  ( .D(n1174), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[10]) );
  DFFSR \r_offset_reg[11]  ( .D(n1173), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[11]) );
  DFFSR \r_offset_reg[12]  ( .D(n1172), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[12]) );
  DFFSR \r_offset_reg[13]  ( .D(n1171), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[13]) );
  DFFSR \r_offset_reg[14]  ( .D(n1170), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[14]) );
  DFFSR \r_offset_reg[15]  ( .D(n1169), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[15]) );
  DFFSR \r_offset_reg[16]  ( .D(n1168), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[16]) );
  DFFSR \r_offset_reg[17]  ( .D(n1167), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[17]) );
  DFFSR \r_offset_reg[18]  ( .D(n1166), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[18]) );
  DFFSR \r_offset_reg[19]  ( .D(n1165), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[19]) );
  DFFSR \r_offset_reg[20]  ( .D(n1164), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[20]) );
  DFFSR \r_offset_reg[21]  ( .D(n1163), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[21]) );
  DFFSR \r_offset_reg[22]  ( .D(n1162), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[22]) );
  DFFSR \r_offset_reg[23]  ( .D(n1161), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[23]) );
  DFFSR \r_offset_reg[24]  ( .D(n1160), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[24]) );
  DFFSR \r_offset_reg[25]  ( .D(n1159), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[25]) );
  DFFSR \r_offset_reg[26]  ( .D(n1158), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[26]) );
  DFFSR \r_offset_reg[27]  ( .D(n1157), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[27]) );
  DFFSR \r_offset_reg[28]  ( .D(n1156), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[28]) );
  DFFSR \r_offset_reg[29]  ( .D(n1155), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[29]) );
  DFFSR \r_offset_reg[30]  ( .D(n1154), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[30]) );
  DFFSR \r_offset_reg[31]  ( .D(n1153), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[31]) );
  fft_axi_counter_WRITE_OR_READ0 read_counter ( .clk(clk), .n_rst(n_rst), 
        .len(arlen), .ready(rready), .valid(rvalid), .resp(rresp), .last(
        rcounter_last) );
  fft_axi_counter_WRITE_OR_READ1 write_counter ( .clk(clk), .n_rst(n_rst), 
        .len(awlen), .ready(wready), .valid(wvalid), .resp(1'b0), .last(wlast)
         );
  fft_axi_manager_DW01_add_0 add_155 ( .A({\configs[1][31] , \configs[1][30] , 
        \configs[1][29] , \configs[1][28] , \configs[1][27] , \configs[1][26] , 
        \configs[1][25] , \configs[1][24] , \configs[1][23] , \configs[1][22] , 
        \configs[1][21] , \configs[1][20] , \configs[1][19] , \configs[1][18] , 
        \configs[1][17] , \configs[1][16] , \configs[1][15] , \configs[1][14] , 
        \configs[1][13] , \configs[1][12] , \configs[1][11] , \configs[1][10] , 
        \configs[1][9] , \configs[1][8] , \configs[1][7] , \configs[1][6] , 
        \configs[1][5] , \configs[1][4] , \configs[1][3] , \configs[1][2] , 
        \configs[1][1] , \configs[1][0] }), .B(r_offset), .CI(1'b0), .SUM({
        N318, N317, N316, N315, N314, N313, N312, N311, N310, N309, N308, N307, 
        N306, N305, N304, N303, N302, N301, N300, N299, N298, N297, N296, N295, 
        N294, N293, N292, N291, N290, N289, N288, N287}) );
  fft_axi_manager_DW01_add_1 add_113 ( .A(w_offset), .B({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, w_frame_size[10:0]}), .CI(1'b0), 
        .SUM({N177, N176, N175, N174, N173, N172, N171, N170, N169, N168, N167, 
        N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, 
        N154, N153, N152, N151, N150, N149, N148, N147, N146}) );
  fft_axi_manager_DW01_add_2 add_107 ( .A(r_offset), .B({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r_frame_size[10:0]}), .CI(1'b0), 
        .SUM({N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, 
        N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, 
        N104, N103, N102, N101, N100, N99, N98, N97, N96}) );
  fft_axi_manager_DW01_inc_0 add_98 ( .A({1'b0, \config_reg[4][9] , 
        \config_reg[4][8] , \config_reg[4][7] , \config_reg[4][6] , 
        \config_reg[4][5] , \config_reg[4][4] , \config_reg[4][3] , 
        \config_reg[4][2] , \config_reg[4][1] , \config_reg[4][0] }), .SUM({
        N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69}) );
  fft_axi_manager_DW01_inc_1 add_97 ( .A({1'b0, \config_reg[2][9] , 
        \config_reg[2][8] , \config_reg[2][7] , \config_reg[2][6] , 
        \config_reg[2][5] , \config_reg[2][4] , \config_reg[2][3] , 
        \config_reg[2][2] , \config_reg[2][1] , \config_reg[2][0] }), .SUM({
        N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58}) );
  fft_axi_manager_DW01_inc_2 add_68 ( .A(arlen), .SUM({N31, N30, N29, N28, N27, 
        N26, N25, N24, N23, N22}) );
  fft_axi_manager_DW01_inc_3 add_96 ( .A({\config_reg[0][10] , 
        \config_reg[0][9] , \config_reg[0][8] , \config_reg[0][7] , 
        \config_reg[0][6] , \config_reg[0][5] , \config_reg[0][4] , 
        \config_reg[0][3] , \config_reg[0][2] , \config_reg[0][1] , 
        \config_reg[0][0] }), .SUM({N57, N56, N55, N54, N53, N52, N51, N50, 
        N49, N48, SYNOPSYS_UNCONNECTED__0}) );
  fft_axi_manager_DW01_add_3 add_200 ( .A({\configs[3][31] , \configs[3][30] , 
        \configs[3][29] , \configs[3][28] , \configs[3][27] , \configs[3][26] , 
        \configs[3][25] , \configs[3][24] , \configs[3][23] , \configs[3][22] , 
        \configs[3][21] , \configs[3][20] , \configs[3][19] , \configs[3][18] , 
        \configs[3][17] , \configs[3][16] , \configs[3][15] , \configs[3][14] , 
        \configs[3][13] , \configs[3][12] , \configs[3][11] , \configs[3][10] , 
        \configs[3][9] , \configs[3][8] , \configs[3][7] , \configs[3][6] , 
        \configs[3][5] , \configs[3][4] , \configs[3][3] , \configs[3][2] , 
        \configs[3][1] , \configs[3][0] }), .B(w_offset), .CI(1'b0), .SUM({
        N362, N361, N360, N359, N358, N357, N356, N355, N354, N353, N352, N351, 
        N350, N349, N348, N347, N346, N345, N344, N343, N342, N341, N340, N339, 
        N338, N337, N336, N335, N334, N333, N332, N331}) );
  OR2X2 U828 ( .A(n742), .B(n793), .Y(n731) );
  OR2X2 U829 ( .A(n739), .B(n793), .Y(n732) );
  OR2X2 U830 ( .A(n1149), .B(processing), .Y(n733) );
  INVX4 U831 ( .A(n731), .Y(n734) );
  INVX4 U832 ( .A(n732), .Y(n735) );
  INVX4 U833 ( .A(n733), .Y(n736) );
  INVX4 U834 ( .A(n733), .Y(n737) );
  INVX4 U835 ( .A(n733), .Y(n738) );
  INVX2 U836 ( .A(n737), .Y(n799) );
  BUFX2 U837 ( .A(n843), .Y(n739) );
  BUFX2 U838 ( .A(n1016), .Y(n740) );
  OR2X2 U839 ( .A(n740), .B(load_size), .Y(n529) );
  OR2X2 U840 ( .A(rstate[1]), .B(rstate[0]), .Y(n1150) );
  BUFX2 U841 ( .A(n1099), .Y(n741) );
  BUFX2 U842 ( .A(n761), .Y(n742) );
  AND2X1 U843 ( .A(out_valid), .B(n743), .Y(wvalid) );
  OAI21X1 U844 ( .A(bvalid), .B(n744), .C(n745), .Y(next_wstate[1]) );
  AOI21X1 U845 ( .A(awready), .B(awvalid), .C(n743), .Y(n745) );
  NAND3X1 U846 ( .A(n746), .B(n747), .C(n748), .Y(next_wstate[0]) );
  AOI22X1 U847 ( .A(awvalid), .B(n749), .C(bready), .D(n750), .Y(n748) );
  INVX1 U848 ( .A(bvalid), .Y(n750) );
  INVX1 U849 ( .A(awready), .Y(n749) );
  NAND3X1 U850 ( .A(wlast), .B(n743), .C(wready), .Y(n746) );
  NOR2X1 U851 ( .A(n744), .B(wstate[0]), .Y(n743) );
  OAI21X1 U852 ( .A(n751), .B(n752), .C(n753), .Y(next_rstate[1]) );
  OAI21X1 U853 ( .A(n754), .B(n755), .C(rready), .Y(n753) );
  NAND2X1 U854 ( .A(rcounter_last), .B(n756), .Y(n755) );
  INVX1 U855 ( .A(rresp), .Y(n756) );
  INVX1 U856 ( .A(arready), .Y(n752) );
  OAI21X1 U857 ( .A(arready), .B(n751), .C(n757), .Y(next_rstate[0]) );
  AOI22X1 U858 ( .A(n758), .B(n759), .C(rresp), .D(rready), .Y(n757) );
  INVX1 U859 ( .A(arvalid), .Y(n751) );
  INVX1 U860 ( .A(n760), .Y(n1153) );
  AOI22X1 U861 ( .A(N127), .B(n734), .C(r_offset[31]), .D(n742), .Y(n760) );
  INVX1 U862 ( .A(n762), .Y(n1154) );
  AOI22X1 U863 ( .A(N126), .B(n734), .C(r_offset[30]), .D(n742), .Y(n762) );
  INVX1 U864 ( .A(n763), .Y(n1155) );
  AOI22X1 U865 ( .A(N125), .B(n734), .C(r_offset[29]), .D(n742), .Y(n763) );
  INVX1 U866 ( .A(n764), .Y(n1156) );
  AOI22X1 U867 ( .A(N124), .B(n734), .C(r_offset[28]), .D(n742), .Y(n764) );
  INVX1 U868 ( .A(n765), .Y(n1157) );
  AOI22X1 U869 ( .A(N123), .B(n734), .C(r_offset[27]), .D(n742), .Y(n765) );
  INVX1 U870 ( .A(n766), .Y(n1158) );
  AOI22X1 U871 ( .A(N122), .B(n734), .C(r_offset[26]), .D(n742), .Y(n766) );
  INVX1 U872 ( .A(n767), .Y(n1159) );
  AOI22X1 U873 ( .A(N121), .B(n734), .C(r_offset[25]), .D(n742), .Y(n767) );
  INVX1 U874 ( .A(n768), .Y(n1160) );
  AOI22X1 U875 ( .A(N120), .B(n734), .C(r_offset[24]), .D(n742), .Y(n768) );
  INVX1 U876 ( .A(n769), .Y(n1161) );
  AOI22X1 U877 ( .A(N119), .B(n734), .C(r_offset[23]), .D(n742), .Y(n769) );
  INVX1 U878 ( .A(n770), .Y(n1162) );
  AOI22X1 U879 ( .A(N118), .B(n734), .C(r_offset[22]), .D(n742), .Y(n770) );
  INVX1 U880 ( .A(n771), .Y(n1163) );
  AOI22X1 U881 ( .A(N117), .B(n734), .C(r_offset[21]), .D(n742), .Y(n771) );
  INVX1 U882 ( .A(n772), .Y(n1164) );
  AOI22X1 U883 ( .A(N116), .B(n734), .C(r_offset[20]), .D(n742), .Y(n772) );
  INVX1 U884 ( .A(n773), .Y(n1165) );
  AOI22X1 U885 ( .A(N115), .B(n734), .C(r_offset[19]), .D(n742), .Y(n773) );
  INVX1 U886 ( .A(n774), .Y(n1166) );
  AOI22X1 U887 ( .A(N114), .B(n734), .C(r_offset[18]), .D(n742), .Y(n774) );
  INVX1 U888 ( .A(n775), .Y(n1167) );
  AOI22X1 U889 ( .A(N113), .B(n734), .C(r_offset[17]), .D(n742), .Y(n775) );
  INVX1 U890 ( .A(n776), .Y(n1168) );
  AOI22X1 U891 ( .A(N112), .B(n734), .C(r_offset[16]), .D(n742), .Y(n776) );
  INVX1 U892 ( .A(n777), .Y(n1169) );
  AOI22X1 U893 ( .A(N111), .B(n734), .C(r_offset[15]), .D(n742), .Y(n777) );
  INVX1 U894 ( .A(n778), .Y(n1170) );
  AOI22X1 U895 ( .A(N110), .B(n734), .C(r_offset[14]), .D(n742), .Y(n778) );
  INVX1 U896 ( .A(n779), .Y(n1171) );
  AOI22X1 U897 ( .A(N109), .B(n734), .C(r_offset[13]), .D(n742), .Y(n779) );
  INVX1 U898 ( .A(n780), .Y(n1172) );
  AOI22X1 U899 ( .A(N108), .B(n734), .C(r_offset[12]), .D(n742), .Y(n780) );
  INVX1 U900 ( .A(n781), .Y(n1173) );
  AOI22X1 U901 ( .A(N107), .B(n734), .C(r_offset[11]), .D(n761), .Y(n781) );
  INVX1 U902 ( .A(n782), .Y(n1174) );
  AOI22X1 U903 ( .A(N106), .B(n734), .C(r_offset[10]), .D(n761), .Y(n782) );
  INVX1 U904 ( .A(n783), .Y(n1175) );
  AOI22X1 U905 ( .A(N105), .B(n734), .C(r_offset[9]), .D(n761), .Y(n783) );
  INVX1 U906 ( .A(n784), .Y(n1176) );
  AOI22X1 U907 ( .A(N104), .B(n734), .C(r_offset[8]), .D(n761), .Y(n784) );
  INVX1 U908 ( .A(n785), .Y(n1177) );
  AOI22X1 U909 ( .A(N103), .B(n734), .C(r_offset[7]), .D(n761), .Y(n785) );
  INVX1 U910 ( .A(n786), .Y(n1178) );
  AOI22X1 U911 ( .A(N102), .B(n734), .C(r_offset[6]), .D(n761), .Y(n786) );
  INVX1 U912 ( .A(n787), .Y(n1179) );
  AOI22X1 U913 ( .A(N101), .B(n734), .C(r_offset[5]), .D(n761), .Y(n787) );
  INVX1 U914 ( .A(n788), .Y(n1180) );
  AOI22X1 U915 ( .A(N100), .B(n734), .C(r_offset[4]), .D(n761), .Y(n788) );
  INVX1 U916 ( .A(n789), .Y(n1181) );
  AOI22X1 U917 ( .A(N99), .B(n734), .C(r_offset[3]), .D(n761), .Y(n789) );
  INVX1 U918 ( .A(n790), .Y(n1182) );
  AOI22X1 U919 ( .A(N98), .B(n734), .C(r_offset[2]), .D(n761), .Y(n790) );
  INVX1 U920 ( .A(n791), .Y(n1183) );
  AOI22X1 U921 ( .A(N97), .B(n734), .C(r_offset[1]), .D(n761), .Y(n791) );
  INVX1 U922 ( .A(n792), .Y(n1184) );
  AOI22X1 U923 ( .A(N96), .B(n734), .C(r_offset[0]), .D(n761), .Y(n792) );
  OAI21X1 U924 ( .A(n794), .B(n795), .C(n796), .Y(n761) );
  OAI21X1 U925 ( .A(n797), .B(n798), .C(n799), .Y(n795) );
  OAI21X1 U926 ( .A(\config_reg[0][9] ), .B(n800), .C(n801), .Y(n798) );
  OAI21X1 U927 ( .A(n802), .B(n803), .C(k[9]), .Y(n801) );
  INVX1 U928 ( .A(n800), .Y(n802) );
  OAI21X1 U929 ( .A(n804), .B(n805), .C(n806), .Y(n800) );
  OAI21X1 U930 ( .A(n807), .B(\config_reg[0][8] ), .C(n808), .Y(n806) );
  INVX1 U931 ( .A(n804), .Y(n807) );
  OAI21X1 U932 ( .A(\config_reg[0][7] ), .B(n809), .C(n810), .Y(n804) );
  OAI21X1 U933 ( .A(n811), .B(n812), .C(k[7]), .Y(n810) );
  INVX1 U934 ( .A(n809), .Y(n811) );
  OAI21X1 U935 ( .A(n813), .B(n814), .C(n815), .Y(n809) );
  OAI21X1 U936 ( .A(n816), .B(\config_reg[0][6] ), .C(n817), .Y(n815) );
  INVX1 U937 ( .A(n813), .Y(n816) );
  OAI21X1 U938 ( .A(\config_reg[0][5] ), .B(n818), .C(n819), .Y(n813) );
  OAI21X1 U939 ( .A(n820), .B(n821), .C(k[5]), .Y(n819) );
  INVX1 U940 ( .A(n818), .Y(n820) );
  OAI21X1 U941 ( .A(n822), .B(n823), .C(n824), .Y(n818) );
  OAI21X1 U942 ( .A(n825), .B(\config_reg[0][4] ), .C(n826), .Y(n824) );
  INVX1 U943 ( .A(n822), .Y(n825) );
  OAI21X1 U944 ( .A(\config_reg[0][3] ), .B(n827), .C(n828), .Y(n822) );
  OAI21X1 U945 ( .A(k[3]), .B(n829), .C(n830), .Y(n828) );
  AOI21X1 U946 ( .A(\config_reg[0][2] ), .B(n831), .C(n832), .Y(n830) );
  AOI21X1 U947 ( .A(k[2]), .B(n833), .C(n834), .Y(n832) );
  OAI22X1 U948 ( .A(\config_reg[0][1] ), .B(n835), .C(n836), .D(n837), .Y(n834) );
  OAI21X1 U949 ( .A(k[1]), .B(n838), .C(n839), .Y(n837) );
  NOR2X1 U950 ( .A(\config_reg[0][10] ), .B(n840), .Y(n797) );
  NOR2X1 U951 ( .A(k[10]), .B(n841), .Y(n794) );
  INVX1 U952 ( .A(n842), .Y(n1185) );
  AOI22X1 U953 ( .A(N177), .B(n735), .C(w_offset[31]), .D(n739), .Y(n842) );
  INVX1 U954 ( .A(n844), .Y(n1186) );
  AOI22X1 U955 ( .A(N176), .B(n735), .C(w_offset[30]), .D(n739), .Y(n844) );
  INVX1 U956 ( .A(n845), .Y(n1187) );
  AOI22X1 U957 ( .A(N175), .B(n735), .C(w_offset[29]), .D(n739), .Y(n845) );
  INVX1 U958 ( .A(n846), .Y(n1188) );
  AOI22X1 U959 ( .A(N174), .B(n735), .C(w_offset[28]), .D(n739), .Y(n846) );
  INVX1 U960 ( .A(n847), .Y(n1189) );
  AOI22X1 U961 ( .A(N173), .B(n735), .C(w_offset[27]), .D(n739), .Y(n847) );
  INVX1 U962 ( .A(n848), .Y(n1190) );
  AOI22X1 U963 ( .A(N172), .B(n735), .C(w_offset[26]), .D(n739), .Y(n848) );
  INVX1 U964 ( .A(n849), .Y(n1191) );
  AOI22X1 U965 ( .A(N171), .B(n735), .C(w_offset[25]), .D(n739), .Y(n849) );
  INVX1 U966 ( .A(n850), .Y(n1192) );
  AOI22X1 U967 ( .A(N170), .B(n735), .C(w_offset[24]), .D(n739), .Y(n850) );
  INVX1 U968 ( .A(n851), .Y(n1193) );
  AOI22X1 U969 ( .A(N169), .B(n735), .C(w_offset[23]), .D(n739), .Y(n851) );
  INVX1 U970 ( .A(n852), .Y(n1194) );
  AOI22X1 U971 ( .A(N168), .B(n735), .C(w_offset[22]), .D(n739), .Y(n852) );
  INVX1 U972 ( .A(n853), .Y(n1195) );
  AOI22X1 U973 ( .A(N167), .B(n735), .C(w_offset[21]), .D(n739), .Y(n853) );
  INVX1 U974 ( .A(n854), .Y(n1196) );
  AOI22X1 U975 ( .A(N166), .B(n735), .C(w_offset[20]), .D(n739), .Y(n854) );
  INVX1 U976 ( .A(n855), .Y(n1197) );
  AOI22X1 U977 ( .A(N165), .B(n735), .C(w_offset[19]), .D(n739), .Y(n855) );
  INVX1 U978 ( .A(n856), .Y(n1198) );
  AOI22X1 U979 ( .A(N164), .B(n735), .C(w_offset[18]), .D(n739), .Y(n856) );
  INVX1 U980 ( .A(n857), .Y(n1199) );
  AOI22X1 U981 ( .A(N163), .B(n735), .C(w_offset[17]), .D(n739), .Y(n857) );
  INVX1 U982 ( .A(n858), .Y(n1200) );
  AOI22X1 U983 ( .A(N162), .B(n735), .C(w_offset[16]), .D(n739), .Y(n858) );
  INVX1 U984 ( .A(n859), .Y(n1201) );
  AOI22X1 U985 ( .A(N161), .B(n735), .C(w_offset[15]), .D(n739), .Y(n859) );
  INVX1 U986 ( .A(n860), .Y(n1202) );
  AOI22X1 U987 ( .A(N160), .B(n735), .C(w_offset[14]), .D(n739), .Y(n860) );
  INVX1 U988 ( .A(n861), .Y(n1203) );
  AOI22X1 U989 ( .A(N159), .B(n735), .C(w_offset[13]), .D(n739), .Y(n861) );
  INVX1 U990 ( .A(n862), .Y(n1204) );
  AOI22X1 U991 ( .A(N158), .B(n735), .C(w_offset[12]), .D(n739), .Y(n862) );
  INVX1 U992 ( .A(n863), .Y(n1205) );
  AOI22X1 U993 ( .A(N157), .B(n735), .C(w_offset[11]), .D(n843), .Y(n863) );
  INVX1 U994 ( .A(n864), .Y(n1206) );
  AOI22X1 U995 ( .A(N156), .B(n735), .C(w_offset[10]), .D(n843), .Y(n864) );
  INVX1 U996 ( .A(n865), .Y(n1207) );
  AOI22X1 U997 ( .A(N155), .B(n735), .C(w_offset[9]), .D(n843), .Y(n865) );
  INVX1 U998 ( .A(n866), .Y(n1208) );
  AOI22X1 U999 ( .A(N154), .B(n735), .C(w_offset[8]), .D(n843), .Y(n866) );
  INVX1 U1000 ( .A(n867), .Y(n1209) );
  AOI22X1 U1001 ( .A(N153), .B(n735), .C(w_offset[7]), .D(n843), .Y(n867) );
  INVX1 U1002 ( .A(n868), .Y(n1210) );
  AOI22X1 U1003 ( .A(N152), .B(n735), .C(w_offset[6]), .D(n843), .Y(n868) );
  INVX1 U1004 ( .A(n869), .Y(n1211) );
  AOI22X1 U1005 ( .A(N151), .B(n735), .C(w_offset[5]), .D(n843), .Y(n869) );
  INVX1 U1006 ( .A(n870), .Y(n1212) );
  AOI22X1 U1007 ( .A(N150), .B(n735), .C(w_offset[4]), .D(n843), .Y(n870) );
  INVX1 U1008 ( .A(n871), .Y(n1213) );
  AOI22X1 U1009 ( .A(N149), .B(n735), .C(w_offset[3]), .D(n843), .Y(n871) );
  INVX1 U1010 ( .A(n872), .Y(n1214) );
  AOI22X1 U1011 ( .A(N148), .B(n735), .C(w_offset[2]), .D(n843), .Y(n872) );
  INVX1 U1012 ( .A(n873), .Y(n1215) );
  AOI22X1 U1013 ( .A(N147), .B(n735), .C(w_offset[1]), .D(n843), .Y(n873) );
  INVX1 U1014 ( .A(n874), .Y(n1216) );
  AOI22X1 U1015 ( .A(N146), .B(n735), .C(w_offset[0]), .D(n843), .Y(n874) );
  OAI21X1 U1016 ( .A(n875), .B(n876), .C(n877), .Y(n843) );
  OAI21X1 U1017 ( .A(n878), .B(n879), .C(n799), .Y(n876) );
  OAI21X1 U1018 ( .A(\config_reg[0][9] ), .B(n880), .C(n881), .Y(n879) );
  OAI21X1 U1019 ( .A(n882), .B(n803), .C(j[9]), .Y(n881) );
  INVX1 U1020 ( .A(n880), .Y(n882) );
  OAI21X1 U1021 ( .A(j[8]), .B(n805), .C(n883), .Y(n880) );
  OAI21X1 U1022 ( .A(\config_reg[0][8] ), .B(n884), .C(n885), .Y(n883) );
  AOI22X1 U1023 ( .A(j[7]), .B(n886), .C(n887), .D(n812), .Y(n885) );
  INVX1 U1024 ( .A(n888), .Y(n887) );
  NAND2X1 U1025 ( .A(\config_reg[0][7] ), .B(n888), .Y(n886) );
  OAI21X1 U1026 ( .A(j[6]), .B(n814), .C(n889), .Y(n888) );
  OAI21X1 U1027 ( .A(\config_reg[0][6] ), .B(n890), .C(n891), .Y(n889) );
  AOI22X1 U1028 ( .A(j[5]), .B(n892), .C(n893), .D(n821), .Y(n891) );
  INVX1 U1029 ( .A(n894), .Y(n893) );
  NAND2X1 U1030 ( .A(\config_reg[0][5] ), .B(n894), .Y(n892) );
  OAI22X1 U1031 ( .A(n895), .B(n896), .C(j[4]), .D(n823), .Y(n894) );
  OAI21X1 U1032 ( .A(\config_reg[0][3] ), .B(n897), .C(n898), .Y(n896) );
  OAI21X1 U1033 ( .A(n899), .B(n829), .C(j[3]), .Y(n898) );
  INVX1 U1034 ( .A(n897), .Y(n899) );
  OAI21X1 U1035 ( .A(j[2]), .B(n833), .C(n900), .Y(n897) );
  OAI21X1 U1036 ( .A(\config_reg[0][2] ), .B(n901), .C(n902), .Y(n900) );
  AND2X1 U1037 ( .A(n903), .B(n904), .Y(n902) );
  OAI21X1 U1038 ( .A(n905), .B(n839), .C(n838), .Y(n904) );
  OAI21X1 U1039 ( .A(j[0]), .B(n839), .C(j[1]), .Y(n903) );
  NOR2X1 U1040 ( .A(\config_reg[0][4] ), .B(n906), .Y(n895) );
  AND2X1 U1041 ( .A(n841), .B(j[10]), .Y(n878) );
  NOR2X1 U1042 ( .A(j[10]), .B(n841), .Y(n875) );
  INVX1 U1043 ( .A(n907), .Y(n1217) );
  MUX2X1 U1044 ( .B(wstrb[1]), .A(\config_reg[5][1] ), .S(n736), .Y(n907) );
  INVX1 U1045 ( .A(n908), .Y(n1218) );
  MUX2X1 U1046 ( .B(wstrb[0]), .A(\config_reg[5][0] ), .S(n738), .Y(n908) );
  INVX1 U1047 ( .A(n909), .Y(n1219) );
  MUX2X1 U1048 ( .B(awlen[9]), .A(\config_reg[4][9] ), .S(n737), .Y(n909) );
  INVX1 U1049 ( .A(n910), .Y(n1220) );
  MUX2X1 U1050 ( .B(awlen[8]), .A(\config_reg[4][8] ), .S(n736), .Y(n910) );
  INVX1 U1051 ( .A(n911), .Y(n1221) );
  MUX2X1 U1052 ( .B(awlen[7]), .A(\config_reg[4][7] ), .S(n738), .Y(n911) );
  INVX1 U1053 ( .A(n912), .Y(n1222) );
  MUX2X1 U1054 ( .B(awlen[6]), .A(\config_reg[4][6] ), .S(n737), .Y(n912) );
  INVX1 U1055 ( .A(n913), .Y(n1223) );
  MUX2X1 U1056 ( .B(awlen[5]), .A(\config_reg[4][5] ), .S(n736), .Y(n913) );
  INVX1 U1057 ( .A(n914), .Y(n1224) );
  MUX2X1 U1058 ( .B(awlen[4]), .A(\config_reg[4][4] ), .S(n738), .Y(n914) );
  INVX1 U1059 ( .A(n915), .Y(n1225) );
  MUX2X1 U1060 ( .B(awlen[3]), .A(\config_reg[4][3] ), .S(n737), .Y(n915) );
  INVX1 U1061 ( .A(n916), .Y(n1226) );
  MUX2X1 U1062 ( .B(awlen[2]), .A(\config_reg[4][2] ), .S(n736), .Y(n916) );
  INVX1 U1063 ( .A(n917), .Y(n1227) );
  MUX2X1 U1064 ( .B(awlen[1]), .A(\config_reg[4][1] ), .S(n738), .Y(n917) );
  INVX1 U1065 ( .A(n918), .Y(n1228) );
  MUX2X1 U1066 ( .B(awlen[0]), .A(\config_reg[4][0] ), .S(n737), .Y(n918) );
  INVX1 U1067 ( .A(n919), .Y(n1229) );
  MUX2X1 U1068 ( .B(\configs[3][31] ), .A(\config_reg[3][31] ), .S(n736), .Y(
        n919) );
  INVX1 U1069 ( .A(n920), .Y(n1230) );
  MUX2X1 U1070 ( .B(\configs[3][30] ), .A(\config_reg[3][30] ), .S(n738), .Y(
        n920) );
  INVX1 U1071 ( .A(n921), .Y(n1231) );
  MUX2X1 U1072 ( .B(\configs[3][29] ), .A(\config_reg[3][29] ), .S(n737), .Y(
        n921) );
  INVX1 U1073 ( .A(n922), .Y(n1232) );
  MUX2X1 U1074 ( .B(\configs[3][28] ), .A(\config_reg[3][28] ), .S(n736), .Y(
        n922) );
  INVX1 U1075 ( .A(n923), .Y(n1233) );
  MUX2X1 U1076 ( .B(\configs[3][27] ), .A(\config_reg[3][27] ), .S(n738), .Y(
        n923) );
  INVX1 U1077 ( .A(n924), .Y(n1234) );
  MUX2X1 U1078 ( .B(\configs[3][26] ), .A(\config_reg[3][26] ), .S(n737), .Y(
        n924) );
  INVX1 U1079 ( .A(n925), .Y(n1235) );
  MUX2X1 U1080 ( .B(\configs[3][25] ), .A(\config_reg[3][25] ), .S(n736), .Y(
        n925) );
  INVX1 U1081 ( .A(n926), .Y(n1236) );
  MUX2X1 U1082 ( .B(\configs[3][24] ), .A(\config_reg[3][24] ), .S(n738), .Y(
        n926) );
  INVX1 U1083 ( .A(n927), .Y(n1237) );
  MUX2X1 U1084 ( .B(\configs[3][23] ), .A(\config_reg[3][23] ), .S(n737), .Y(
        n927) );
  INVX1 U1085 ( .A(n928), .Y(n1238) );
  MUX2X1 U1086 ( .B(\configs[3][22] ), .A(\config_reg[3][22] ), .S(n736), .Y(
        n928) );
  INVX1 U1087 ( .A(n929), .Y(n1239) );
  MUX2X1 U1088 ( .B(\configs[3][21] ), .A(\config_reg[3][21] ), .S(n738), .Y(
        n929) );
  INVX1 U1089 ( .A(n930), .Y(n1240) );
  MUX2X1 U1090 ( .B(\configs[3][20] ), .A(\config_reg[3][20] ), .S(n737), .Y(
        n930) );
  INVX1 U1091 ( .A(n931), .Y(n1241) );
  MUX2X1 U1092 ( .B(\configs[3][19] ), .A(\config_reg[3][19] ), .S(n736), .Y(
        n931) );
  INVX1 U1093 ( .A(n932), .Y(n1242) );
  MUX2X1 U1094 ( .B(\configs[3][18] ), .A(\config_reg[3][18] ), .S(n738), .Y(
        n932) );
  INVX1 U1095 ( .A(n933), .Y(n1243) );
  MUX2X1 U1096 ( .B(\configs[3][17] ), .A(\config_reg[3][17] ), .S(n737), .Y(
        n933) );
  INVX1 U1097 ( .A(n934), .Y(n1244) );
  MUX2X1 U1098 ( .B(\configs[3][16] ), .A(\config_reg[3][16] ), .S(n736), .Y(
        n934) );
  INVX1 U1099 ( .A(n935), .Y(n1245) );
  MUX2X1 U1100 ( .B(\configs[3][15] ), .A(\config_reg[3][15] ), .S(n738), .Y(
        n935) );
  INVX1 U1101 ( .A(n936), .Y(n1246) );
  MUX2X1 U1102 ( .B(\configs[3][14] ), .A(\config_reg[3][14] ), .S(n737), .Y(
        n936) );
  INVX1 U1103 ( .A(n937), .Y(n1247) );
  MUX2X1 U1104 ( .B(\configs[3][13] ), .A(\config_reg[3][13] ), .S(n736), .Y(
        n937) );
  INVX1 U1105 ( .A(n938), .Y(n1248) );
  MUX2X1 U1106 ( .B(\configs[3][12] ), .A(\config_reg[3][12] ), .S(n738), .Y(
        n938) );
  INVX1 U1107 ( .A(n939), .Y(n1249) );
  MUX2X1 U1108 ( .B(\configs[3][11] ), .A(\config_reg[3][11] ), .S(n737), .Y(
        n939) );
  INVX1 U1109 ( .A(n940), .Y(n1250) );
  MUX2X1 U1110 ( .B(\configs[3][10] ), .A(\config_reg[3][10] ), .S(n736), .Y(
        n940) );
  INVX1 U1111 ( .A(n941), .Y(n1251) );
  MUX2X1 U1112 ( .B(\configs[3][9] ), .A(\config_reg[3][9] ), .S(n738), .Y(
        n941) );
  INVX1 U1113 ( .A(n942), .Y(n1252) );
  MUX2X1 U1114 ( .B(\configs[3][8] ), .A(\config_reg[3][8] ), .S(n737), .Y(
        n942) );
  INVX1 U1115 ( .A(n943), .Y(n1253) );
  MUX2X1 U1116 ( .B(\configs[3][7] ), .A(\config_reg[3][7] ), .S(n736), .Y(
        n943) );
  INVX1 U1117 ( .A(n944), .Y(n1254) );
  MUX2X1 U1118 ( .B(\configs[3][6] ), .A(\config_reg[3][6] ), .S(n738), .Y(
        n944) );
  INVX1 U1119 ( .A(n945), .Y(n1255) );
  MUX2X1 U1120 ( .B(\configs[3][5] ), .A(\config_reg[3][5] ), .S(n737), .Y(
        n945) );
  INVX1 U1121 ( .A(n946), .Y(n1256) );
  MUX2X1 U1122 ( .B(\configs[3][4] ), .A(\config_reg[3][4] ), .S(n736), .Y(
        n946) );
  INVX1 U1123 ( .A(n947), .Y(n1257) );
  MUX2X1 U1124 ( .B(\configs[3][3] ), .A(\config_reg[3][3] ), .S(n738), .Y(
        n947) );
  INVX1 U1125 ( .A(n948), .Y(n1258) );
  MUX2X1 U1126 ( .B(\configs[3][2] ), .A(\config_reg[3][2] ), .S(n737), .Y(
        n948) );
  INVX1 U1127 ( .A(n949), .Y(n1259) );
  MUX2X1 U1128 ( .B(\configs[3][1] ), .A(\config_reg[3][1] ), .S(n736), .Y(
        n949) );
  INVX1 U1129 ( .A(n950), .Y(n1260) );
  MUX2X1 U1130 ( .B(\configs[3][0] ), .A(\config_reg[3][0] ), .S(n738), .Y(
        n950) );
  INVX1 U1131 ( .A(n951), .Y(n1261) );
  MUX2X1 U1132 ( .B(arlen[9]), .A(\config_reg[2][9] ), .S(n737), .Y(n951) );
  INVX1 U1133 ( .A(n952), .Y(n1262) );
  MUX2X1 U1134 ( .B(arlen[8]), .A(\config_reg[2][8] ), .S(n736), .Y(n952) );
  INVX1 U1135 ( .A(n953), .Y(n1263) );
  MUX2X1 U1136 ( .B(arlen[7]), .A(\config_reg[2][7] ), .S(n738), .Y(n953) );
  INVX1 U1137 ( .A(n954), .Y(n1264) );
  MUX2X1 U1138 ( .B(arlen[6]), .A(\config_reg[2][6] ), .S(n737), .Y(n954) );
  INVX1 U1139 ( .A(n955), .Y(n1265) );
  MUX2X1 U1140 ( .B(arlen[5]), .A(\config_reg[2][5] ), .S(n736), .Y(n955) );
  INVX1 U1141 ( .A(n956), .Y(n1266) );
  MUX2X1 U1142 ( .B(arlen[4]), .A(\config_reg[2][4] ), .S(n738), .Y(n956) );
  INVX1 U1143 ( .A(n957), .Y(n1267) );
  MUX2X1 U1144 ( .B(arlen[3]), .A(\config_reg[2][3] ), .S(n737), .Y(n957) );
  INVX1 U1145 ( .A(n958), .Y(n1268) );
  MUX2X1 U1146 ( .B(arlen[2]), .A(\config_reg[2][2] ), .S(n736), .Y(n958) );
  INVX1 U1147 ( .A(n959), .Y(n1269) );
  MUX2X1 U1148 ( .B(arlen[1]), .A(\config_reg[2][1] ), .S(n738), .Y(n959) );
  INVX1 U1149 ( .A(n960), .Y(n1270) );
  MUX2X1 U1150 ( .B(arlen[0]), .A(\config_reg[2][0] ), .S(n737), .Y(n960) );
  INVX1 U1151 ( .A(n961), .Y(n1271) );
  MUX2X1 U1152 ( .B(\configs[1][31] ), .A(\config_reg[1][31] ), .S(n736), .Y(
        n961) );
  INVX1 U1153 ( .A(n962), .Y(n1272) );
  MUX2X1 U1154 ( .B(\configs[1][30] ), .A(\config_reg[1][30] ), .S(n738), .Y(
        n962) );
  INVX1 U1155 ( .A(n963), .Y(n1273) );
  MUX2X1 U1156 ( .B(\configs[1][29] ), .A(\config_reg[1][29] ), .S(n737), .Y(
        n963) );
  INVX1 U1157 ( .A(n964), .Y(n1274) );
  MUX2X1 U1158 ( .B(\configs[1][28] ), .A(\config_reg[1][28] ), .S(n736), .Y(
        n964) );
  INVX1 U1159 ( .A(n965), .Y(n1275) );
  MUX2X1 U1160 ( .B(\configs[1][27] ), .A(\config_reg[1][27] ), .S(n738), .Y(
        n965) );
  INVX1 U1161 ( .A(n966), .Y(n1276) );
  MUX2X1 U1162 ( .B(\configs[1][26] ), .A(\config_reg[1][26] ), .S(n737), .Y(
        n966) );
  INVX1 U1163 ( .A(n967), .Y(n1277) );
  MUX2X1 U1164 ( .B(\configs[1][25] ), .A(\config_reg[1][25] ), .S(n736), .Y(
        n967) );
  INVX1 U1165 ( .A(n968), .Y(n1278) );
  MUX2X1 U1166 ( .B(\configs[1][24] ), .A(\config_reg[1][24] ), .S(n738), .Y(
        n968) );
  INVX1 U1167 ( .A(n969), .Y(n1279) );
  MUX2X1 U1168 ( .B(\configs[1][23] ), .A(\config_reg[1][23] ), .S(n737), .Y(
        n969) );
  INVX1 U1169 ( .A(n970), .Y(n1280) );
  MUX2X1 U1170 ( .B(\configs[1][22] ), .A(\config_reg[1][22] ), .S(n736), .Y(
        n970) );
  INVX1 U1171 ( .A(n971), .Y(n1281) );
  MUX2X1 U1172 ( .B(\configs[1][21] ), .A(\config_reg[1][21] ), .S(n738), .Y(
        n971) );
  INVX1 U1173 ( .A(n972), .Y(n1282) );
  MUX2X1 U1174 ( .B(\configs[1][20] ), .A(\config_reg[1][20] ), .S(n737), .Y(
        n972) );
  INVX1 U1175 ( .A(n973), .Y(n1283) );
  MUX2X1 U1176 ( .B(\configs[1][19] ), .A(\config_reg[1][19] ), .S(n736), .Y(
        n973) );
  INVX1 U1177 ( .A(n974), .Y(n1284) );
  MUX2X1 U1178 ( .B(\configs[1][18] ), .A(\config_reg[1][18] ), .S(n738), .Y(
        n974) );
  INVX1 U1179 ( .A(n975), .Y(n1285) );
  MUX2X1 U1180 ( .B(\configs[1][17] ), .A(\config_reg[1][17] ), .S(n737), .Y(
        n975) );
  INVX1 U1181 ( .A(n976), .Y(n1286) );
  MUX2X1 U1182 ( .B(\configs[1][16] ), .A(\config_reg[1][16] ), .S(n736), .Y(
        n976) );
  INVX1 U1183 ( .A(n977), .Y(n1287) );
  MUX2X1 U1184 ( .B(\configs[1][15] ), .A(\config_reg[1][15] ), .S(n738), .Y(
        n977) );
  INVX1 U1185 ( .A(n978), .Y(n1288) );
  MUX2X1 U1186 ( .B(\configs[1][14] ), .A(\config_reg[1][14] ), .S(n737), .Y(
        n978) );
  INVX1 U1187 ( .A(n979), .Y(n1289) );
  MUX2X1 U1188 ( .B(\configs[1][13] ), .A(\config_reg[1][13] ), .S(n736), .Y(
        n979) );
  INVX1 U1189 ( .A(n980), .Y(n1290) );
  MUX2X1 U1190 ( .B(\configs[1][12] ), .A(\config_reg[1][12] ), .S(n738), .Y(
        n980) );
  INVX1 U1191 ( .A(n981), .Y(n1291) );
  MUX2X1 U1192 ( .B(\configs[1][11] ), .A(\config_reg[1][11] ), .S(n737), .Y(
        n981) );
  INVX1 U1193 ( .A(n982), .Y(n1292) );
  MUX2X1 U1194 ( .B(\configs[1][10] ), .A(\config_reg[1][10] ), .S(n736), .Y(
        n982) );
  INVX1 U1195 ( .A(n983), .Y(n1293) );
  MUX2X1 U1196 ( .B(\configs[1][9] ), .A(\config_reg[1][9] ), .S(n738), .Y(
        n983) );
  INVX1 U1197 ( .A(n984), .Y(n1294) );
  MUX2X1 U1198 ( .B(\configs[1][8] ), .A(\config_reg[1][8] ), .S(n737), .Y(
        n984) );
  INVX1 U1199 ( .A(n985), .Y(n1295) );
  MUX2X1 U1200 ( .B(\configs[1][7] ), .A(\config_reg[1][7] ), .S(n736), .Y(
        n985) );
  INVX1 U1201 ( .A(n986), .Y(n1296) );
  MUX2X1 U1202 ( .B(\configs[1][6] ), .A(\config_reg[1][6] ), .S(n738), .Y(
        n986) );
  INVX1 U1203 ( .A(n987), .Y(n1297) );
  MUX2X1 U1204 ( .B(\configs[1][5] ), .A(\config_reg[1][5] ), .S(n737), .Y(
        n987) );
  INVX1 U1205 ( .A(n988), .Y(n1298) );
  MUX2X1 U1206 ( .B(\configs[1][4] ), .A(\config_reg[1][4] ), .S(n736), .Y(
        n988) );
  INVX1 U1207 ( .A(n989), .Y(n1299) );
  MUX2X1 U1208 ( .B(\configs[1][3] ), .A(\config_reg[1][3] ), .S(n738), .Y(
        n989) );
  INVX1 U1209 ( .A(n990), .Y(n1300) );
  MUX2X1 U1210 ( .B(\configs[1][2] ), .A(\config_reg[1][2] ), .S(n737), .Y(
        n990) );
  INVX1 U1211 ( .A(n991), .Y(n1301) );
  MUX2X1 U1212 ( .B(\configs[1][1] ), .A(\config_reg[1][1] ), .S(n736), .Y(
        n991) );
  INVX1 U1213 ( .A(n992), .Y(n1302) );
  MUX2X1 U1214 ( .B(\configs[1][0] ), .A(\config_reg[1][0] ), .S(n738), .Y(
        n992) );
  INVX1 U1215 ( .A(n993), .Y(n1303) );
  MUX2X1 U1216 ( .B(r_frame_size[1]), .A(N59), .S(n737), .Y(n993) );
  INVX1 U1217 ( .A(n994), .Y(n1304) );
  MUX2X1 U1218 ( .B(r_frame_size[2]), .A(N60), .S(n736), .Y(n994) );
  INVX1 U1219 ( .A(n995), .Y(n1305) );
  MUX2X1 U1220 ( .B(r_frame_size[3]), .A(N61), .S(n738), .Y(n995) );
  INVX1 U1221 ( .A(n996), .Y(n1306) );
  MUX2X1 U1222 ( .B(r_frame_size[4]), .A(N62), .S(n737), .Y(n996) );
  INVX1 U1223 ( .A(n997), .Y(n1307) );
  MUX2X1 U1224 ( .B(r_frame_size[5]), .A(N63), .S(n736), .Y(n997) );
  INVX1 U1225 ( .A(n998), .Y(n1308) );
  MUX2X1 U1226 ( .B(r_frame_size[6]), .A(N64), .S(n738), .Y(n998) );
  INVX1 U1227 ( .A(n999), .Y(n1309) );
  MUX2X1 U1228 ( .B(r_frame_size[7]), .A(N65), .S(n737), .Y(n999) );
  INVX1 U1229 ( .A(n1000), .Y(n1310) );
  MUX2X1 U1230 ( .B(r_frame_size[8]), .A(N66), .S(n736), .Y(n1000) );
  INVX1 U1231 ( .A(n1001), .Y(n1311) );
  MUX2X1 U1232 ( .B(r_frame_size[9]), .A(N67), .S(n738), .Y(n1001) );
  INVX1 U1233 ( .A(n1002), .Y(n1312) );
  MUX2X1 U1234 ( .B(r_frame_size[10]), .A(N68), .S(n737), .Y(n1002) );
  INVX1 U1235 ( .A(n1003), .Y(n1313) );
  MUX2X1 U1236 ( .B(w_frame_size[0]), .A(N69), .S(n736), .Y(n1003) );
  INVX1 U1237 ( .A(n1004), .Y(n1314) );
  MUX2X1 U1238 ( .B(w_frame_size[1]), .A(N70), .S(n738), .Y(n1004) );
  INVX1 U1239 ( .A(n1005), .Y(n1315) );
  MUX2X1 U1240 ( .B(w_frame_size[2]), .A(N71), .S(n737), .Y(n1005) );
  INVX1 U1241 ( .A(n1006), .Y(n1316) );
  MUX2X1 U1242 ( .B(w_frame_size[3]), .A(N72), .S(n736), .Y(n1006) );
  INVX1 U1243 ( .A(n1007), .Y(n1317) );
  MUX2X1 U1244 ( .B(w_frame_size[4]), .A(N73), .S(n738), .Y(n1007) );
  INVX1 U1245 ( .A(n1008), .Y(n1318) );
  MUX2X1 U1246 ( .B(w_frame_size[5]), .A(N74), .S(n737), .Y(n1008) );
  INVX1 U1247 ( .A(n1009), .Y(n1319) );
  MUX2X1 U1248 ( .B(w_frame_size[6]), .A(N75), .S(n736), .Y(n1009) );
  INVX1 U1249 ( .A(n1010), .Y(n1320) );
  MUX2X1 U1250 ( .B(w_frame_size[7]), .A(N76), .S(n738), .Y(n1010) );
  INVX1 U1251 ( .A(n1011), .Y(n1321) );
  MUX2X1 U1252 ( .B(w_frame_size[8]), .A(N77), .S(n737), .Y(n1011) );
  INVX1 U1253 ( .A(n1012), .Y(n1322) );
  MUX2X1 U1254 ( .B(w_frame_size[9]), .A(N78), .S(n736), .Y(n1012) );
  INVX1 U1255 ( .A(n1013), .Y(n1323) );
  MUX2X1 U1256 ( .B(w_frame_size[10]), .A(N79), .S(n738), .Y(n1013) );
  INVX1 U1257 ( .A(n1014), .Y(n1324) );
  MUX2X1 U1258 ( .B(r_frame_size[0]), .A(N58), .S(n737), .Y(n1014) );
  INVX1 U1259 ( .A(n1015), .Y(n1325) );
  MUX2X1 U1260 ( .B(frame_size[9]), .A(N31), .S(n740), .Y(n1015) );
  INVX1 U1261 ( .A(n1017), .Y(n1326) );
  MUX2X1 U1262 ( .B(frame_size[8]), .A(N30), .S(n740), .Y(n1017) );
  INVX1 U1263 ( .A(n1018), .Y(n1327) );
  MUX2X1 U1264 ( .B(frame_size[7]), .A(N29), .S(n740), .Y(n1018) );
  INVX1 U1265 ( .A(n1019), .Y(n1328) );
  MUX2X1 U1266 ( .B(frame_size[6]), .A(N28), .S(n740), .Y(n1019) );
  INVX1 U1267 ( .A(n1020), .Y(n1329) );
  MUX2X1 U1268 ( .B(frame_size[5]), .A(N27), .S(n740), .Y(n1020) );
  INVX1 U1269 ( .A(n1021), .Y(n1330) );
  MUX2X1 U1270 ( .B(frame_size[4]), .A(N26), .S(n740), .Y(n1021) );
  INVX1 U1271 ( .A(n1022), .Y(n1331) );
  MUX2X1 U1272 ( .B(frame_size[3]), .A(N25), .S(n740), .Y(n1022) );
  INVX1 U1273 ( .A(n1023), .Y(n1332) );
  MUX2X1 U1274 ( .B(frame_size[2]), .A(N24), .S(n740), .Y(n1023) );
  INVX1 U1275 ( .A(n1024), .Y(n1333) );
  MUX2X1 U1276 ( .B(frame_size[1]), .A(N23), .S(n740), .Y(n1024) );
  INVX1 U1277 ( .A(n1025), .Y(n1334) );
  MUX2X1 U1278 ( .B(frame_size[0]), .A(N22), .S(n740), .Y(n1025) );
  INVX1 U1279 ( .A(n1026), .Y(rready) );
  OAI21X1 U1280 ( .A(n1027), .B(n840), .C(n1028), .Y(n729) );
  NAND2X1 U1281 ( .A(N57), .B(n736), .Y(n1028) );
  INVX1 U1282 ( .A(k[10]), .Y(n840) );
  AOI21X1 U1283 ( .A(n1029), .B(k[9]), .C(n1030), .Y(n1027) );
  OAI21X1 U1284 ( .A(n841), .B(n799), .C(n1031), .Y(n728) );
  NAND2X1 U1285 ( .A(j[10]), .B(n1032), .Y(n1031) );
  OAI21X1 U1286 ( .A(n1033), .B(n1034), .C(n1035), .Y(n1032) );
  INVX1 U1287 ( .A(\config_reg[0][10] ), .Y(n841) );
  OAI21X1 U1288 ( .A(n839), .B(n799), .C(n1036), .Y(n727) );
  INVX1 U1289 ( .A(n1037), .Y(n1036) );
  MUX2X1 U1290 ( .B(n1034), .A(n877), .S(j[0]), .Y(n1037) );
  INVX1 U1291 ( .A(\config_reg[0][0] ), .Y(n839) );
  OAI21X1 U1292 ( .A(n838), .B(n799), .C(n1038), .Y(n726) );
  AOI22X1 U1293 ( .A(j[1]), .B(n1039), .C(n1040), .D(n1041), .Y(n1038) );
  OAI21X1 U1294 ( .A(n1042), .B(n1034), .C(n877), .Y(n1039) );
  INVX1 U1295 ( .A(j[0]), .Y(n1042) );
  INVX1 U1296 ( .A(\config_reg[0][1] ), .Y(n838) );
  OAI21X1 U1297 ( .A(n833), .B(n799), .C(n1043), .Y(n725) );
  MUX2X1 U1298 ( .B(n1044), .A(n1045), .S(j[2]), .Y(n1043) );
  NOR2X1 U1299 ( .A(n905), .B(n1034), .Y(n1044) );
  INVX1 U1300 ( .A(n1041), .Y(n905) );
  INVX1 U1301 ( .A(\config_reg[0][2] ), .Y(n833) );
  OAI21X1 U1302 ( .A(n829), .B(n799), .C(n1046), .Y(n724) );
  AOI22X1 U1303 ( .A(j[3]), .B(n1047), .C(n1040), .D(n1048), .Y(n1046) );
  OAI21X1 U1304 ( .A(n901), .B(n1034), .C(n1049), .Y(n1047) );
  INVX1 U1305 ( .A(n1045), .Y(n1049) );
  OAI21X1 U1306 ( .A(n1041), .B(n1034), .C(n877), .Y(n1045) );
  INVX1 U1307 ( .A(\config_reg[0][3] ), .Y(n829) );
  OAI21X1 U1308 ( .A(n823), .B(n799), .C(n1050), .Y(n723) );
  MUX2X1 U1309 ( .B(n1051), .A(n1052), .S(j[4]), .Y(n1050) );
  NOR2X1 U1310 ( .A(n1053), .B(n1034), .Y(n1051) );
  INVX1 U1311 ( .A(\config_reg[0][4] ), .Y(n823) );
  OAI21X1 U1312 ( .A(n821), .B(n799), .C(n1054), .Y(n722) );
  AOI22X1 U1313 ( .A(j[5]), .B(n1055), .C(n1040), .D(n1056), .Y(n1054) );
  OAI21X1 U1314 ( .A(n906), .B(n1034), .C(n1057), .Y(n1055) );
  INVX1 U1315 ( .A(n1052), .Y(n1057) );
  OAI21X1 U1316 ( .A(n1048), .B(n1034), .C(n877), .Y(n1052) );
  INVX1 U1317 ( .A(\config_reg[0][5] ), .Y(n821) );
  OAI21X1 U1318 ( .A(n814), .B(n799), .C(n1058), .Y(n721) );
  MUX2X1 U1319 ( .B(n1059), .A(n1060), .S(j[6]), .Y(n1058) );
  NOR2X1 U1320 ( .A(n1061), .B(n1034), .Y(n1059) );
  INVX1 U1321 ( .A(\config_reg[0][6] ), .Y(n814) );
  OAI21X1 U1322 ( .A(n812), .B(n799), .C(n1062), .Y(n720) );
  AOI22X1 U1323 ( .A(j[7]), .B(n1063), .C(n1040), .D(n1064), .Y(n1062) );
  OAI21X1 U1324 ( .A(n890), .B(n1034), .C(n1065), .Y(n1063) );
  INVX1 U1325 ( .A(n1060), .Y(n1065) );
  OAI21X1 U1326 ( .A(n1056), .B(n1034), .C(n877), .Y(n1060) );
  INVX1 U1327 ( .A(\config_reg[0][7] ), .Y(n812) );
  OAI21X1 U1328 ( .A(n805), .B(n799), .C(n1066), .Y(n719) );
  AOI21X1 U1329 ( .A(j[8]), .B(n1067), .C(n1068), .Y(n1066) );
  INVX1 U1330 ( .A(n1069), .Y(n1068) );
  INVX1 U1331 ( .A(\config_reg[0][8] ), .Y(n805) );
  OAI21X1 U1332 ( .A(n803), .B(n799), .C(n1070), .Y(n718) );
  INVX1 U1333 ( .A(n1071), .Y(n1070) );
  MUX2X1 U1334 ( .B(n1069), .A(n1035), .S(j[9]), .Y(n1071) );
  AOI21X1 U1335 ( .A(j[8]), .B(n1040), .C(n1067), .Y(n1035) );
  OAI21X1 U1336 ( .A(n1064), .B(n1034), .C(n877), .Y(n1067) );
  NAND3X1 U1337 ( .A(n1064), .B(n884), .C(n1040), .Y(n1069) );
  INVX1 U1338 ( .A(n1034), .Y(n1040) );
  NAND2X1 U1339 ( .A(n758), .B(n877), .Y(n1034) );
  NAND2X1 U1340 ( .A(n799), .B(n747), .Y(n877) );
  NAND2X1 U1341 ( .A(n1072), .B(n1073), .Y(n747) );
  NOR2X1 U1342 ( .A(n1074), .B(n1075), .Y(n1073) );
  NAND3X1 U1343 ( .A(n1076), .B(n1077), .C(n1078), .Y(n1075) );
  XOR2X1 U1344 ( .A(n901), .B(k[2]), .Y(n1078) );
  XOR2X1 U1345 ( .A(n1079), .B(k[3]), .Y(n1077) );
  XOR2X1 U1346 ( .A(j[1]), .B(n835), .Y(n1076) );
  INVX1 U1347 ( .A(k[1]), .Y(n835) );
  NAND3X1 U1348 ( .A(n758), .B(n1080), .C(n1081), .Y(n1074) );
  NOR2X1 U1349 ( .A(n1082), .B(n1083), .Y(n1081) );
  XOR2X1 U1350 ( .A(k[10]), .B(j[10]), .Y(n1083) );
  XOR2X1 U1351 ( .A(k[0]), .B(j[0]), .Y(n1082) );
  NOR2X1 U1352 ( .A(n1084), .B(n1085), .Y(n1072) );
  NAND3X1 U1353 ( .A(n1086), .B(n1087), .C(n1088), .Y(n1085) );
  XOR2X1 U1354 ( .A(n884), .B(k[8]), .Y(n1088) );
  XOR2X1 U1355 ( .A(n1033), .B(k[9]), .Y(n1087) );
  XOR2X1 U1356 ( .A(n1089), .B(k[7]), .Y(n1086) );
  NAND3X1 U1357 ( .A(n1090), .B(n1091), .C(n1092), .Y(n1084) );
  XOR2X1 U1358 ( .A(n1093), .B(k[5]), .Y(n1092) );
  XOR2X1 U1359 ( .A(n817), .B(j[6]), .Y(n1091) );
  XOR2X1 U1360 ( .A(n826), .B(j[4]), .Y(n1090) );
  INVX1 U1361 ( .A(n1094), .Y(n1064) );
  INVX1 U1362 ( .A(\config_reg[0][9] ), .Y(n803) );
  XOR2X1 U1363 ( .A(n1095), .B(processing), .Y(n717) );
  OAI21X1 U1364 ( .A(n1096), .B(n1097), .C(n799), .Y(n1095) );
  OR2X1 U1365 ( .A(n1080), .B(n759), .Y(n1097) );
  NAND3X1 U1366 ( .A(n884), .B(n1033), .C(n1098), .Y(n1080) );
  NOR2X1 U1367 ( .A(j[10]), .B(n1094), .Y(n1098) );
  NAND3X1 U1368 ( .A(n890), .B(n1089), .C(n1056), .Y(n1094) );
  INVX1 U1369 ( .A(n1061), .Y(n1056) );
  NAND3X1 U1370 ( .A(n906), .B(n1093), .C(n1048), .Y(n1061) );
  INVX1 U1371 ( .A(n1053), .Y(n1048) );
  NAND3X1 U1372 ( .A(n901), .B(n1079), .C(n1041), .Y(n1053) );
  NOR2X1 U1373 ( .A(j[0]), .B(j[1]), .Y(n1041) );
  INVX1 U1374 ( .A(j[3]), .Y(n1079) );
  INVX1 U1375 ( .A(j[2]), .Y(n901) );
  INVX1 U1376 ( .A(j[5]), .Y(n1093) );
  INVX1 U1377 ( .A(j[4]), .Y(n906) );
  INVX1 U1378 ( .A(j[7]), .Y(n1089) );
  INVX1 U1379 ( .A(j[6]), .Y(n890) );
  INVX1 U1380 ( .A(j[9]), .Y(n1033) );
  INVX1 U1381 ( .A(j[8]), .Y(n884) );
  NAND2X1 U1382 ( .A(processing), .B(n741), .Y(n1096) );
  OAI21X1 U1383 ( .A(\config_reg[0][0] ), .B(n799), .C(n1100), .Y(n716) );
  MUX2X1 U1384 ( .B(n1029), .A(n1101), .S(k[0]), .Y(n1100) );
  OAI21X1 U1385 ( .A(n799), .B(n1102), .C(n1103), .Y(n715) );
  AOI22X1 U1386 ( .A(k[1]), .B(n1104), .C(n1029), .D(n1105), .Y(n1103) );
  OAI21X1 U1387 ( .A(n836), .B(n1106), .C(n796), .Y(n1104) );
  INVX1 U1388 ( .A(k[0]), .Y(n836) );
  INVX1 U1389 ( .A(N48), .Y(n1102) );
  OAI21X1 U1390 ( .A(n799), .B(n1107), .C(n1108), .Y(n714) );
  MUX2X1 U1391 ( .B(n1109), .A(n1110), .S(k[2]), .Y(n1108) );
  AND2X1 U1392 ( .A(n1105), .B(n1029), .Y(n1109) );
  INVX1 U1393 ( .A(N49), .Y(n1107) );
  OAI21X1 U1394 ( .A(n799), .B(n1111), .C(n1112), .Y(n713) );
  AOI22X1 U1395 ( .A(k[3]), .B(n1113), .C(n1029), .D(n1114), .Y(n1112) );
  OAI21X1 U1396 ( .A(n831), .B(n1106), .C(n1115), .Y(n1113) );
  INVX1 U1397 ( .A(n1110), .Y(n1115) );
  OAI21X1 U1398 ( .A(n1105), .B(n1106), .C(n796), .Y(n1110) );
  INVX1 U1399 ( .A(N50), .Y(n1111) );
  OAI21X1 U1400 ( .A(n799), .B(n1116), .C(n1117), .Y(n712) );
  MUX2X1 U1401 ( .B(n1118), .A(n1119), .S(k[4]), .Y(n1117) );
  NOR2X1 U1402 ( .A(n1120), .B(n1106), .Y(n1118) );
  INVX1 U1403 ( .A(N51), .Y(n1116) );
  OAI21X1 U1404 ( .A(n799), .B(n1121), .C(n1122), .Y(n711) );
  AOI22X1 U1405 ( .A(k[5]), .B(n1123), .C(n1029), .D(n1124), .Y(n1122) );
  OAI21X1 U1406 ( .A(n826), .B(n1106), .C(n1125), .Y(n1123) );
  INVX1 U1407 ( .A(n1119), .Y(n1125) );
  OAI21X1 U1408 ( .A(n1114), .B(n1106), .C(n796), .Y(n1119) );
  INVX1 U1409 ( .A(N52), .Y(n1121) );
  OAI21X1 U1410 ( .A(n799), .B(n1126), .C(n1127), .Y(n710) );
  MUX2X1 U1411 ( .B(n1128), .A(n1129), .S(k[6]), .Y(n1127) );
  NOR2X1 U1412 ( .A(n1130), .B(n1106), .Y(n1128) );
  INVX1 U1413 ( .A(N53), .Y(n1126) );
  OAI21X1 U1414 ( .A(n799), .B(n1131), .C(n1132), .Y(n709) );
  AOI22X1 U1415 ( .A(k[7]), .B(n1133), .C(n1029), .D(n1134), .Y(n1132) );
  OAI21X1 U1416 ( .A(n817), .B(n1106), .C(n1135), .Y(n1133) );
  INVX1 U1417 ( .A(n1129), .Y(n1135) );
  OAI21X1 U1418 ( .A(n1124), .B(n1106), .C(n796), .Y(n1129) );
  INVX1 U1419 ( .A(N54), .Y(n1131) );
  OAI21X1 U1420 ( .A(n799), .B(n1136), .C(n1137), .Y(n708) );
  AOI21X1 U1421 ( .A(k[8]), .B(n1138), .C(n1139), .Y(n1137) );
  INVX1 U1422 ( .A(N55), .Y(n1136) );
  OAI21X1 U1423 ( .A(n799), .B(n1140), .C(n1141), .Y(n707) );
  MUX2X1 U1424 ( .B(n1139), .A(n1030), .S(k[9]), .Y(n1141) );
  OAI21X1 U1425 ( .A(n808), .B(n1106), .C(n1142), .Y(n1030) );
  INVX1 U1426 ( .A(n1138), .Y(n1142) );
  OAI21X1 U1427 ( .A(n1134), .B(n1106), .C(n796), .Y(n1138) );
  INVX1 U1428 ( .A(n1143), .Y(n1139) );
  NAND3X1 U1429 ( .A(n1134), .B(n808), .C(n1029), .Y(n1143) );
  INVX1 U1430 ( .A(n1106), .Y(n1029) );
  NAND2X1 U1431 ( .A(n758), .B(n796), .Y(n1106) );
  INVX1 U1432 ( .A(n1101), .Y(n796) );
  AOI21X1 U1433 ( .A(n759), .B(n758), .C(n738), .Y(n1101) );
  NAND3X1 U1434 ( .A(n808), .B(n1144), .C(n1145), .Y(n759) );
  NOR2X1 U1435 ( .A(k[10]), .B(n1146), .Y(n1145) );
  INVX1 U1436 ( .A(k[9]), .Y(n1144) );
  INVX1 U1437 ( .A(n793), .Y(n758) );
  NAND2X1 U1438 ( .A(processing), .B(n740), .Y(n793) );
  INVX1 U1439 ( .A(k[8]), .Y(n808) );
  INVX1 U1440 ( .A(n1146), .Y(n1134) );
  NAND3X1 U1441 ( .A(n817), .B(n1147), .C(n1124), .Y(n1146) );
  INVX1 U1442 ( .A(n1130), .Y(n1124) );
  NAND3X1 U1443 ( .A(n826), .B(n1148), .C(n1114), .Y(n1130) );
  INVX1 U1444 ( .A(n1120), .Y(n1114) );
  NAND3X1 U1445 ( .A(n831), .B(n827), .C(n1105), .Y(n1120) );
  NOR2X1 U1446 ( .A(k[0]), .B(k[1]), .Y(n1105) );
  INVX1 U1447 ( .A(k[3]), .Y(n827) );
  INVX1 U1448 ( .A(k[2]), .Y(n831) );
  INVX1 U1449 ( .A(k[5]), .Y(n1148) );
  INVX1 U1450 ( .A(k[4]), .Y(n826) );
  INVX1 U1451 ( .A(k[7]), .Y(n1147) );
  INVX1 U1452 ( .A(k[6]), .Y(n817) );
  INVX1 U1453 ( .A(N56), .Y(n1140) );
  INVX1 U1454 ( .A(\config_reg[6][0] ), .Y(n1149) );
  NOR2X1 U1455 ( .A(n1150), .B(n741), .Y(n1016) );
  NOR2X1 U1456 ( .A(n754), .B(n1026), .Y(in_valid) );
  NAND2X1 U1457 ( .A(rstate[1]), .B(n1151), .Y(n1026) );
  INVX1 U1458 ( .A(rvalid), .Y(n754) );
  NOR2X1 U1459 ( .A(n1152), .B(n744), .Y(bready) );
  NOR2X1 U1460 ( .A(n1152), .B(wstate[1]), .Y(awvalid) );
  AND2X1 U1461 ( .A(N340), .B(n741), .Y(awaddr[9]) );
  AND2X1 U1462 ( .A(N339), .B(n741), .Y(awaddr[8]) );
  AND2X1 U1463 ( .A(N338), .B(n741), .Y(awaddr[7]) );
  AND2X1 U1464 ( .A(N337), .B(n741), .Y(awaddr[6]) );
  AND2X1 U1465 ( .A(N336), .B(n741), .Y(awaddr[5]) );
  AND2X1 U1466 ( .A(N335), .B(n741), .Y(awaddr[4]) );
  AND2X1 U1467 ( .A(N334), .B(n741), .Y(awaddr[3]) );
  AND2X1 U1468 ( .A(N362), .B(n741), .Y(awaddr[31]) );
  AND2X1 U1469 ( .A(N361), .B(n741), .Y(awaddr[30]) );
  AND2X1 U1470 ( .A(N333), .B(n741), .Y(awaddr[2]) );
  AND2X1 U1471 ( .A(N360), .B(n741), .Y(awaddr[29]) );
  AND2X1 U1472 ( .A(N359), .B(n741), .Y(awaddr[28]) );
  AND2X1 U1473 ( .A(N358), .B(n741), .Y(awaddr[27]) );
  AND2X1 U1474 ( .A(N357), .B(n741), .Y(awaddr[26]) );
  AND2X1 U1475 ( .A(N356), .B(n741), .Y(awaddr[25]) );
  AND2X1 U1476 ( .A(N355), .B(n741), .Y(awaddr[24]) );
  AND2X1 U1477 ( .A(N354), .B(n741), .Y(awaddr[23]) );
  AND2X1 U1478 ( .A(N353), .B(n741), .Y(awaddr[22]) );
  AND2X1 U1479 ( .A(N352), .B(n741), .Y(awaddr[21]) );
  AND2X1 U1480 ( .A(N351), .B(n741), .Y(awaddr[20]) );
  AND2X1 U1481 ( .A(N332), .B(n741), .Y(awaddr[1]) );
  AND2X1 U1482 ( .A(N350), .B(n741), .Y(awaddr[19]) );
  AND2X1 U1483 ( .A(N349), .B(n741), .Y(awaddr[18]) );
  AND2X1 U1484 ( .A(N348), .B(n741), .Y(awaddr[17]) );
  AND2X1 U1485 ( .A(N347), .B(n741), .Y(awaddr[16]) );
  AND2X1 U1486 ( .A(N346), .B(n741), .Y(awaddr[15]) );
  AND2X1 U1487 ( .A(N345), .B(n741), .Y(awaddr[14]) );
  AND2X1 U1488 ( .A(N344), .B(n741), .Y(awaddr[13]) );
  AND2X1 U1489 ( .A(N343), .B(n741), .Y(awaddr[12]) );
  AND2X1 U1490 ( .A(N342), .B(n741), .Y(awaddr[11]) );
  AND2X1 U1491 ( .A(N341), .B(n741), .Y(awaddr[10]) );
  AND2X1 U1492 ( .A(N331), .B(n741), .Y(awaddr[0]) );
  NAND2X1 U1493 ( .A(n744), .B(n1152), .Y(n1099) );
  INVX1 U1494 ( .A(wstate[0]), .Y(n1152) );
  INVX1 U1495 ( .A(wstate[1]), .Y(n744) );
  NOR2X1 U1496 ( .A(n1151), .B(rstate[1]), .Y(arvalid) );
  INVX1 U1497 ( .A(rstate[0]), .Y(n1151) );
  AND2X1 U1498 ( .A(N296), .B(n1150), .Y(araddr[9]) );
  AND2X1 U1499 ( .A(N295), .B(n1150), .Y(araddr[8]) );
  AND2X1 U1500 ( .A(N294), .B(n1150), .Y(araddr[7]) );
  AND2X1 U1501 ( .A(N293), .B(n1150), .Y(araddr[6]) );
  AND2X1 U1502 ( .A(N292), .B(n1150), .Y(araddr[5]) );
  AND2X1 U1503 ( .A(N291), .B(n1150), .Y(araddr[4]) );
  AND2X1 U1504 ( .A(N290), .B(n1150), .Y(araddr[3]) );
  AND2X1 U1505 ( .A(N318), .B(n1150), .Y(araddr[31]) );
  AND2X1 U1506 ( .A(N317), .B(n1150), .Y(araddr[30]) );
  AND2X1 U1507 ( .A(N289), .B(n1150), .Y(araddr[2]) );
  AND2X1 U1508 ( .A(N316), .B(n1150), .Y(araddr[29]) );
  AND2X1 U1509 ( .A(N315), .B(n1150), .Y(araddr[28]) );
  AND2X1 U1510 ( .A(N314), .B(n1150), .Y(araddr[27]) );
  AND2X1 U1511 ( .A(N313), .B(n1150), .Y(araddr[26]) );
  AND2X1 U1512 ( .A(N312), .B(n1150), .Y(araddr[25]) );
  AND2X1 U1513 ( .A(N311), .B(n1150), .Y(araddr[24]) );
  AND2X1 U1514 ( .A(N310), .B(n1150), .Y(araddr[23]) );
  AND2X1 U1515 ( .A(N309), .B(n1150), .Y(araddr[22]) );
  AND2X1 U1516 ( .A(N308), .B(n1150), .Y(araddr[21]) );
  AND2X1 U1517 ( .A(N307), .B(n1150), .Y(araddr[20]) );
  AND2X1 U1518 ( .A(N288), .B(n1150), .Y(araddr[1]) );
  AND2X1 U1519 ( .A(N306), .B(n1150), .Y(araddr[19]) );
  AND2X1 U1520 ( .A(N305), .B(n1150), .Y(araddr[18]) );
  AND2X1 U1521 ( .A(N304), .B(n1150), .Y(araddr[17]) );
  AND2X1 U1522 ( .A(N303), .B(n1150), .Y(araddr[16]) );
  AND2X1 U1523 ( .A(N302), .B(n1150), .Y(araddr[15]) );
  AND2X1 U1524 ( .A(N301), .B(n1150), .Y(araddr[14]) );
  AND2X1 U1525 ( .A(N300), .B(n1150), .Y(araddr[13]) );
  AND2X1 U1526 ( .A(N299), .B(n1150), .Y(araddr[12]) );
  AND2X1 U1527 ( .A(N298), .B(n1150), .Y(araddr[11]) );
  AND2X1 U1528 ( .A(N297), .B(n1150), .Y(araddr[10]) );
  AND2X1 U1529 ( .A(N287), .B(n1150), .Y(araddr[0]) );
endmodule

