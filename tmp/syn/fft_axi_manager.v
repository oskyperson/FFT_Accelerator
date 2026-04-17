/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4
// Date      : Thu Apr 16 17:42:36 2026
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
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, n1, n2, n3, n4, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72;

  DFFSR \i_reg[0]  ( .D(n63), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[0]) );
  DFFSR \i_reg[9]  ( .D(n72), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[9]) );
  DFFSR \i_reg[8]  ( .D(n71), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[8]) );
  DFFSR \i_reg[7]  ( .D(n70), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[7]) );
  DFFSR \i_reg[6]  ( .D(n69), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[6]) );
  DFFSR \i_reg[5]  ( .D(n68), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[5]) );
  DFFSR \i_reg[4]  ( .D(n67), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[4]) );
  DFFSR \i_reg[3]  ( .D(n66), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[3]) );
  DFFSR \i_reg[2]  ( .D(n65), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[2]) );
  DFFSR \i_reg[1]  ( .D(n64), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[1]) );
  fft_axi_counter_WRITE_OR_READ0_DW01_inc_0_DW01_inc_1 add_31 ( .A(i), .SUM({
        N17, N16, N15, N14, N13, N12, N11, N10, N9, N8}) );
  OAI21X1 U6 ( .A(n1), .B(n2), .C(n3), .Y(n63) );
  NAND2X1 U7 ( .A(N8), .B(n4), .Y(n3) );
  OAI21X1 U15 ( .A(n1), .B(n15), .C(n16), .Y(n64) );
  NAND2X1 U16 ( .A(N9), .B(n4), .Y(n16) );
  OAI21X1 U17 ( .A(n1), .B(n17), .C(n18), .Y(n65) );
  NAND2X1 U18 ( .A(N10), .B(n4), .Y(n18) );
  OAI21X1 U19 ( .A(n1), .B(n19), .C(n20), .Y(n66) );
  NAND2X1 U20 ( .A(N11), .B(n4), .Y(n20) );
  OAI21X1 U21 ( .A(n1), .B(n21), .C(n22), .Y(n67) );
  NAND2X1 U22 ( .A(N12), .B(n4), .Y(n22) );
  OAI21X1 U23 ( .A(n1), .B(n23), .C(n24), .Y(n68) );
  NAND2X1 U24 ( .A(N13), .B(n4), .Y(n24) );
  OAI21X1 U25 ( .A(n1), .B(n25), .C(n26), .Y(n69) );
  NAND2X1 U26 ( .A(N14), .B(n4), .Y(n26) );
  OAI21X1 U27 ( .A(n1), .B(n27), .C(n28), .Y(n70) );
  NAND2X1 U28 ( .A(N15), .B(n4), .Y(n28) );
  OAI21X1 U29 ( .A(n1), .B(n29), .C(n30), .Y(n71) );
  NAND2X1 U30 ( .A(N16), .B(n4), .Y(n30) );
  OAI21X1 U31 ( .A(n1), .B(n31), .C(n32), .Y(n72) );
  NAND2X1 U32 ( .A(N17), .B(n4), .Y(n32) );
  NOR2X1 U33 ( .A(n33), .B(n34), .Y(n4) );
  OAI21X1 U34 ( .A(resp), .B(n35), .C(valid), .Y(n1) );
  INVX1 U35 ( .A(ready), .Y(n35) );
  NOR2X1 U36 ( .A(n36), .B(n33), .Y(last) );
  NAND3X1 U37 ( .A(ready), .B(n37), .C(valid), .Y(n33) );
  INVX1 U38 ( .A(resp), .Y(n37) );
  INVX1 U39 ( .A(n34), .Y(n36) );
  OAI21X1 U40 ( .A(len[9]), .B(n31), .C(n38), .Y(n34) );
  OAI21X1 U41 ( .A(i[9]), .B(n39), .C(n40), .Y(n38) );
  OAI21X1 U42 ( .A(len[8]), .B(n29), .C(n41), .Y(n40) );
  OAI21X1 U43 ( .A(i[8]), .B(n42), .C(n43), .Y(n41) );
  AOI22X1 U44 ( .A(len[7]), .B(n44), .C(n45), .D(n27), .Y(n43) );
  INVX1 U45 ( .A(i[7]), .Y(n27) );
  INVX1 U46 ( .A(n46), .Y(n45) );
  NAND2X1 U47 ( .A(i[7]), .B(n46), .Y(n44) );
  OAI21X1 U48 ( .A(len[6]), .B(n25), .C(n47), .Y(n46) );
  OAI21X1 U49 ( .A(i[6]), .B(n48), .C(n49), .Y(n47) );
  AOI22X1 U50 ( .A(len[5]), .B(n50), .C(n51), .D(n23), .Y(n49) );
  INVX1 U51 ( .A(i[5]), .Y(n23) );
  INVX1 U52 ( .A(n52), .Y(n51) );
  NAND2X1 U53 ( .A(i[5]), .B(n52), .Y(n50) );
  OAI22X1 U54 ( .A(n53), .B(n54), .C(len[4]), .D(n21), .Y(n52) );
  OAI21X1 U55 ( .A(i[3]), .B(n55), .C(n56), .Y(n54) );
  OAI21X1 U56 ( .A(n57), .B(n19), .C(len[3]), .Y(n56) );
  INVX1 U57 ( .A(i[3]), .Y(n19) );
  INVX1 U58 ( .A(n55), .Y(n57) );
  OAI21X1 U59 ( .A(len[2]), .B(n17), .C(n58), .Y(n55) );
  OAI21X1 U60 ( .A(i[2]), .B(n59), .C(n60), .Y(n58) );
  AOI22X1 U61 ( .A(n61), .B(len[0]), .C(len[1]), .D(n15), .Y(n60) );
  INVX1 U62 ( .A(n62), .Y(n61) );
  OAI21X1 U63 ( .A(n15), .B(len[1]), .C(n2), .Y(n62) );
  INVX1 U64 ( .A(i[0]), .Y(n2) );
  INVX1 U65 ( .A(i[1]), .Y(n15) );
  INVX1 U66 ( .A(len[2]), .Y(n59) );
  INVX1 U67 ( .A(i[2]), .Y(n17) );
  AND2X1 U68 ( .A(n21), .B(len[4]), .Y(n53) );
  INVX1 U69 ( .A(i[4]), .Y(n21) );
  INVX1 U70 ( .A(len[6]), .Y(n48) );
  INVX1 U71 ( .A(i[6]), .Y(n25) );
  INVX1 U72 ( .A(len[8]), .Y(n42) );
  INVX1 U73 ( .A(i[8]), .Y(n29) );
  INVX1 U74 ( .A(len[9]), .Y(n39) );
  INVX1 U75 ( .A(i[9]), .Y(n31) );
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
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, n1, n2, n3, n4, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72;

  DFFSR \i_reg[0]  ( .D(n63), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[0]) );
  DFFSR \i_reg[9]  ( .D(n72), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[9]) );
  DFFSR \i_reg[8]  ( .D(n71), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[8]) );
  DFFSR \i_reg[7]  ( .D(n70), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[7]) );
  DFFSR \i_reg[6]  ( .D(n69), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[6]) );
  DFFSR \i_reg[5]  ( .D(n68), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[5]) );
  DFFSR \i_reg[4]  ( .D(n67), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[4]) );
  DFFSR \i_reg[3]  ( .D(n66), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[3]) );
  DFFSR \i_reg[2]  ( .D(n65), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[2]) );
  DFFSR \i_reg[1]  ( .D(n64), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[1]) );
  fft_axi_counter_WRITE_OR_READ1_DW01_inc_0 add_31 ( .A(i), .SUM({N17, N16, 
        N15, N14, N13, N12, N11, N10, N9, N8}) );
  OAI21X1 U6 ( .A(n1), .B(n2), .C(n3), .Y(n63) );
  NAND2X1 U7 ( .A(N8), .B(n4), .Y(n3) );
  OAI21X1 U15 ( .A(n1), .B(n15), .C(n16), .Y(n64) );
  NAND2X1 U16 ( .A(N9), .B(n4), .Y(n16) );
  OAI21X1 U17 ( .A(n1), .B(n17), .C(n18), .Y(n65) );
  NAND2X1 U18 ( .A(N10), .B(n4), .Y(n18) );
  OAI21X1 U19 ( .A(n1), .B(n19), .C(n20), .Y(n66) );
  NAND2X1 U20 ( .A(N11), .B(n4), .Y(n20) );
  OAI21X1 U21 ( .A(n1), .B(n21), .C(n22), .Y(n67) );
  NAND2X1 U22 ( .A(N12), .B(n4), .Y(n22) );
  OAI21X1 U23 ( .A(n1), .B(n23), .C(n24), .Y(n68) );
  NAND2X1 U24 ( .A(N13), .B(n4), .Y(n24) );
  OAI21X1 U25 ( .A(n1), .B(n25), .C(n26), .Y(n69) );
  NAND2X1 U26 ( .A(N14), .B(n4), .Y(n26) );
  OAI21X1 U27 ( .A(n1), .B(n27), .C(n28), .Y(n70) );
  NAND2X1 U28 ( .A(N15), .B(n4), .Y(n28) );
  OAI21X1 U29 ( .A(n1), .B(n29), .C(n30), .Y(n71) );
  NAND2X1 U30 ( .A(N16), .B(n4), .Y(n30) );
  OAI21X1 U31 ( .A(n1), .B(n31), .C(n32), .Y(n72) );
  NAND2X1 U32 ( .A(N17), .B(n4), .Y(n32) );
  NOR2X1 U33 ( .A(n33), .B(n34), .Y(n4) );
  OAI21X1 U34 ( .A(resp), .B(n35), .C(ready), .Y(n1) );
  INVX1 U35 ( .A(valid), .Y(n35) );
  NOR2X1 U36 ( .A(n36), .B(n33), .Y(last) );
  NAND3X1 U37 ( .A(valid), .B(n37), .C(ready), .Y(n33) );
  INVX1 U38 ( .A(resp), .Y(n37) );
  INVX1 U39 ( .A(n34), .Y(n36) );
  OAI21X1 U40 ( .A(len[9]), .B(n31), .C(n38), .Y(n34) );
  OAI21X1 U41 ( .A(i[9]), .B(n39), .C(n40), .Y(n38) );
  OAI21X1 U42 ( .A(len[8]), .B(n29), .C(n41), .Y(n40) );
  OAI21X1 U43 ( .A(i[8]), .B(n42), .C(n43), .Y(n41) );
  AOI22X1 U44 ( .A(len[7]), .B(n44), .C(n45), .D(n27), .Y(n43) );
  INVX1 U45 ( .A(i[7]), .Y(n27) );
  INVX1 U46 ( .A(n46), .Y(n45) );
  NAND2X1 U47 ( .A(i[7]), .B(n46), .Y(n44) );
  OAI21X1 U48 ( .A(len[6]), .B(n25), .C(n47), .Y(n46) );
  OAI21X1 U49 ( .A(i[6]), .B(n48), .C(n49), .Y(n47) );
  AOI22X1 U50 ( .A(len[5]), .B(n50), .C(n51), .D(n23), .Y(n49) );
  INVX1 U51 ( .A(i[5]), .Y(n23) );
  INVX1 U52 ( .A(n52), .Y(n51) );
  NAND2X1 U53 ( .A(i[5]), .B(n52), .Y(n50) );
  OAI22X1 U54 ( .A(n53), .B(n54), .C(len[4]), .D(n21), .Y(n52) );
  OAI21X1 U55 ( .A(i[3]), .B(n55), .C(n56), .Y(n54) );
  OAI21X1 U56 ( .A(n57), .B(n19), .C(len[3]), .Y(n56) );
  INVX1 U57 ( .A(i[3]), .Y(n19) );
  INVX1 U58 ( .A(n55), .Y(n57) );
  OAI21X1 U59 ( .A(len[2]), .B(n17), .C(n58), .Y(n55) );
  OAI21X1 U60 ( .A(i[2]), .B(n59), .C(n60), .Y(n58) );
  AOI22X1 U61 ( .A(n61), .B(len[0]), .C(len[1]), .D(n15), .Y(n60) );
  INVX1 U62 ( .A(n62), .Y(n61) );
  OAI21X1 U63 ( .A(n15), .B(len[1]), .C(n2), .Y(n62) );
  INVX1 U64 ( .A(i[0]), .Y(n2) );
  INVX1 U65 ( .A(i[1]), .Y(n15) );
  INVX1 U66 ( .A(len[2]), .Y(n59) );
  INVX1 U67 ( .A(i[2]), .Y(n17) );
  AND2X1 U68 ( .A(n21), .B(len[4]), .Y(n53) );
  INVX1 U69 ( .A(i[4]), .Y(n21) );
  INVX1 U70 ( .A(len[6]), .Y(n48) );
  INVX1 U71 ( .A(i[6]), .Y(n25) );
  INVX1 U72 ( .A(len[8]), .Y(n42) );
  INVX1 U73 ( .A(i[8]), .Y(n29) );
  INVX1 U74 ( .A(len[9]), .Y(n39) );
  INVX1 U75 ( .A(i[9]), .Y(n31) );
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
  wire   rcounter_last, N44, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52;
  wire   [1:0] rstate;
  wire   [1:0] next_rstate;
  wire   [1:0] wstate;
  wire   [1:0] next_wstate;
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
  assign bready = N44;

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
  AND2X1 U61 ( .A(n30), .B(out_valid), .Y(wvalid) );
  OAI21X1 U62 ( .A(bvalid), .B(n31), .C(n32), .Y(next_wstate[1]) );
  AOI21X1 U63 ( .A(awready), .B(awvalid), .C(n30), .Y(n32) );
  NAND3X1 U64 ( .A(n33), .B(n34), .C(n35), .Y(next_wstate[0]) );
  AOI22X1 U65 ( .A(N44), .B(n36), .C(awvalid), .D(n37), .Y(n35) );
  INVX1 U66 ( .A(awready), .Y(n37) );
  INVX1 U67 ( .A(bvalid), .Y(n36) );
  NAND3X1 U68 ( .A(wlast), .B(n30), .C(wready), .Y(n34) );
  NOR2X1 U69 ( .A(n31), .B(wstate[0]), .Y(n30) );
  NAND3X1 U70 ( .A(n38), .B(out_valid), .C(\config_reg[6][0] ), .Y(n33) );
  INVX1 U71 ( .A(n39), .Y(n38) );
  OAI21X1 U72 ( .A(n40), .B(n41), .C(n42), .Y(next_rstate[1]) );
  OAI21X1 U73 ( .A(n43), .B(n44), .C(rready), .Y(n42) );
  INVX1 U74 ( .A(n45), .Y(rready) );
  OAI21X1 U75 ( .A(rlast), .B(rcounter_last), .C(n46), .Y(n44) );
  INVX1 U76 ( .A(arvalid), .Y(n40) );
  OAI21X1 U77 ( .A(n45), .B(n46), .C(n47), .Y(next_rstate[0]) );
  AOI22X1 U78 ( .A(n48), .B(fft_done), .C(arvalid), .D(n41), .Y(n47) );
  INVX1 U79 ( .A(arready), .Y(n41) );
  AND2X1 U80 ( .A(\config_reg[0][0] ), .B(n49), .Y(n48) );
  INVX1 U81 ( .A(rresp), .Y(n46) );
  NOR2X1 U82 ( .A(n50), .B(rstate[1]), .Y(arvalid) );
  NOR2X1 U83 ( .A(n43), .B(n45), .Y(in_valid) );
  NAND2X1 U84 ( .A(rstate[1]), .B(n50), .Y(n45) );
  INVX1 U85 ( .A(rstate[0]), .Y(n50) );
  INVX1 U86 ( .A(rvalid), .Y(n43) );
  NOR2X1 U87 ( .A(n51), .B(wstate[1]), .Y(awvalid) );
  AND2X1 U88 ( .A(\config_reg[3][9] ), .B(n39), .Y(awaddr[9]) );
  AND2X1 U89 ( .A(\config_reg[3][8] ), .B(n39), .Y(awaddr[8]) );
  AND2X1 U90 ( .A(\config_reg[3][7] ), .B(n39), .Y(awaddr[7]) );
  AND2X1 U91 ( .A(\config_reg[3][6] ), .B(n39), .Y(awaddr[6]) );
  AND2X1 U92 ( .A(\config_reg[3][5] ), .B(n39), .Y(awaddr[5]) );
  AND2X1 U93 ( .A(\config_reg[3][4] ), .B(n39), .Y(awaddr[4]) );
  AND2X1 U94 ( .A(\config_reg[3][3] ), .B(n39), .Y(awaddr[3]) );
  AND2X1 U95 ( .A(\config_reg[3][2] ), .B(n39), .Y(awaddr[2]) );
  AND2X1 U96 ( .A(\config_reg[3][1] ), .B(n39), .Y(awaddr[1]) );
  AND2X1 U97 ( .A(\config_reg[3][10] ), .B(n39), .Y(awaddr[10]) );
  AND2X1 U98 ( .A(\config_reg[3][0] ), .B(n39), .Y(awaddr[0]) );
  NAND2X1 U99 ( .A(n31), .B(n51), .Y(n39) );
  AND2X1 U100 ( .A(\config_reg[1][9] ), .B(n52), .Y(araddr[9]) );
  AND2X1 U101 ( .A(\config_reg[1][8] ), .B(n52), .Y(araddr[8]) );
  AND2X1 U102 ( .A(\config_reg[1][7] ), .B(n52), .Y(araddr[7]) );
  AND2X1 U103 ( .A(\config_reg[1][6] ), .B(n52), .Y(araddr[6]) );
  AND2X1 U104 ( .A(\config_reg[1][5] ), .B(n52), .Y(araddr[5]) );
  AND2X1 U105 ( .A(\config_reg[1][4] ), .B(n52), .Y(araddr[4]) );
  AND2X1 U106 ( .A(\config_reg[1][3] ), .B(n52), .Y(araddr[3]) );
  AND2X1 U107 ( .A(\config_reg[1][2] ), .B(n52), .Y(araddr[2]) );
  AND2X1 U108 ( .A(\config_reg[1][1] ), .B(n52), .Y(araddr[1]) );
  AND2X1 U109 ( .A(\config_reg[1][10] ), .B(n52), .Y(araddr[10]) );
  AND2X1 U110 ( .A(\config_reg[1][0] ), .B(n52), .Y(araddr[0]) );
  INVX1 U111 ( .A(n49), .Y(n52) );
  NOR2X1 U112 ( .A(rstate[0]), .B(rstate[1]), .Y(n49) );
  NOR2X1 U113 ( .A(n51), .B(n31), .Y(N44) );
  INVX1 U114 ( .A(wstate[1]), .Y(n31) );
  INVX1 U115 ( .A(wstate[0]), .Y(n51) );
endmodule

