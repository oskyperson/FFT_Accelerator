/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4
// Date      : Tue Apr 21 17:31:04 2026
/////////////////////////////////////////////////////////////


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
  fft_axi_counter_WRITE_OR_READ1_DW01_inc_0_DW01_inc_1 r376 ( .A(i), .SUM({N16, 
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


module fft_axi_counter_WRITE_OR_READ0_DW01_inc_0 ( A, SUM );
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
  fft_axi_counter_WRITE_OR_READ0_DW01_inc_0 r376 ( .A(i), .SUM({N16, N15, N14, 
        N13, N12, N11, N10, N9, N8, N7}) );
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


module fft_axi_subordinate ( clk, n_rst, fft_sub_awready, fft_sub_awaddr, 
        fft_sub_awlen, fft_sub_awvalid, fft_sub_wready, fft_sub_wdata, 
        fft_sub_wstrb, fft_sub_wlast, fft_sub_wvalid, fft_sub_bresp, 
        fft_sub_bvalid, fft_sub_bready, fft_sub_arready, fft_sub_araddr, 
        fft_sub_arlen, fft_sub_arvalid, fft_sub_rlast, fft_sub_rvalid, 
        fft_sub_rdata, fft_sub_rready, fft_sub_rresp, .config_reg({
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
        \config_reg[0][0] }) );
  input [31:0] fft_sub_awaddr;
  input [9:0] fft_sub_awlen;
  input [31:0] fft_sub_wdata;
  input [1:0] fft_sub_wstrb;
  input [31:0] fft_sub_araddr;
  input [9:0] fft_sub_arlen;
  output [31:0] fft_sub_rdata;
  input clk, n_rst, fft_sub_awvalid, fft_sub_wlast, fft_sub_wvalid,
         fft_sub_bready, fft_sub_arvalid, fft_sub_rready;
  output fft_sub_awready, fft_sub_wready, fft_sub_bresp, fft_sub_bvalid,
         fft_sub_arready, fft_sub_rlast, fft_sub_rvalid, fft_sub_rresp,
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
         \config_reg[0][0] ;
  wire   N32, N33, N34, write_last, \next_config_reg[7][31] ,
         \next_config_reg[7][30] , \next_config_reg[7][29] ,
         \next_config_reg[7][28] , \next_config_reg[7][27] ,
         \next_config_reg[7][26] , \next_config_reg[7][25] ,
         \next_config_reg[7][24] , \next_config_reg[7][23] ,
         \next_config_reg[7][22] , \next_config_reg[7][21] ,
         \next_config_reg[7][20] , \next_config_reg[7][19] ,
         \next_config_reg[7][18] , \next_config_reg[7][17] ,
         \next_config_reg[7][16] , \next_config_reg[7][15] ,
         \next_config_reg[7][14] , \next_config_reg[7][13] ,
         \next_config_reg[7][12] , \next_config_reg[7][11] ,
         \next_config_reg[7][10] , \next_config_reg[7][9] ,
         \next_config_reg[7][8] , \next_config_reg[7][7] ,
         \next_config_reg[7][6] , \next_config_reg[7][5] ,
         \next_config_reg[7][4] , \next_config_reg[7][3] ,
         \next_config_reg[7][2] , \next_config_reg[7][1] ,
         \next_config_reg[7][0] , \next_config_reg[6][31] ,
         \next_config_reg[6][30] , \next_config_reg[6][29] ,
         \next_config_reg[6][28] , \next_config_reg[6][27] ,
         \next_config_reg[6][26] , \next_config_reg[6][25] ,
         \next_config_reg[6][24] , \next_config_reg[6][23] ,
         \next_config_reg[6][22] , \next_config_reg[6][21] ,
         \next_config_reg[6][20] , \next_config_reg[6][19] ,
         \next_config_reg[6][18] , \next_config_reg[6][17] ,
         \next_config_reg[6][16] , \next_config_reg[6][15] ,
         \next_config_reg[6][14] , \next_config_reg[6][13] ,
         \next_config_reg[6][12] , \next_config_reg[6][11] ,
         \next_config_reg[6][10] , \next_config_reg[6][9] ,
         \next_config_reg[6][8] , \next_config_reg[6][7] ,
         \next_config_reg[6][6] , \next_config_reg[6][5] ,
         \next_config_reg[6][4] , \next_config_reg[6][3] ,
         \next_config_reg[6][2] , \next_config_reg[6][1] ,
         \next_config_reg[6][0] , \next_config_reg[5][31] ,
         \next_config_reg[5][30] , \next_config_reg[5][29] ,
         \next_config_reg[5][28] , \next_config_reg[5][27] ,
         \next_config_reg[5][26] , \next_config_reg[5][25] ,
         \next_config_reg[5][24] , \next_config_reg[5][23] ,
         \next_config_reg[5][22] , \next_config_reg[5][21] ,
         \next_config_reg[5][20] , \next_config_reg[5][19] ,
         \next_config_reg[5][18] , \next_config_reg[5][17] ,
         \next_config_reg[5][16] , \next_config_reg[5][15] ,
         \next_config_reg[5][14] , \next_config_reg[5][13] ,
         \next_config_reg[5][12] , \next_config_reg[5][11] ,
         \next_config_reg[5][10] , \next_config_reg[5][9] ,
         \next_config_reg[5][8] , \next_config_reg[5][7] ,
         \next_config_reg[5][6] , \next_config_reg[5][5] ,
         \next_config_reg[5][4] , \next_config_reg[5][3] ,
         \next_config_reg[5][2] , \next_config_reg[5][1] ,
         \next_config_reg[5][0] , \next_config_reg[4][31] ,
         \next_config_reg[4][30] , \next_config_reg[4][29] ,
         \next_config_reg[4][28] , \next_config_reg[4][27] ,
         \next_config_reg[4][26] , \next_config_reg[4][25] ,
         \next_config_reg[4][24] , \next_config_reg[4][23] ,
         \next_config_reg[4][22] , \next_config_reg[4][21] ,
         \next_config_reg[4][20] , \next_config_reg[4][19] ,
         \next_config_reg[4][18] , \next_config_reg[4][17] ,
         \next_config_reg[4][16] , \next_config_reg[4][15] ,
         \next_config_reg[4][14] , \next_config_reg[4][13] ,
         \next_config_reg[4][12] , \next_config_reg[4][11] ,
         \next_config_reg[4][10] , \next_config_reg[4][9] ,
         \next_config_reg[4][8] , \next_config_reg[4][7] ,
         \next_config_reg[4][6] , \next_config_reg[4][5] ,
         \next_config_reg[4][4] , \next_config_reg[4][3] ,
         \next_config_reg[4][2] , \next_config_reg[4][1] ,
         \next_config_reg[4][0] , \next_config_reg[3][31] ,
         \next_config_reg[3][30] , \next_config_reg[3][29] ,
         \next_config_reg[3][28] , \next_config_reg[3][27] ,
         \next_config_reg[3][26] , \next_config_reg[3][25] ,
         \next_config_reg[3][24] , \next_config_reg[3][23] ,
         \next_config_reg[3][22] , \next_config_reg[3][21] ,
         \next_config_reg[3][20] , \next_config_reg[3][19] ,
         \next_config_reg[3][18] , \next_config_reg[3][17] ,
         \next_config_reg[3][16] , \next_config_reg[3][15] ,
         \next_config_reg[3][14] , \next_config_reg[3][13] ,
         \next_config_reg[3][12] , \next_config_reg[3][11] ,
         \next_config_reg[3][10] , \next_config_reg[3][9] ,
         \next_config_reg[3][8] , \next_config_reg[3][7] ,
         \next_config_reg[3][6] , \next_config_reg[3][5] ,
         \next_config_reg[3][4] , \next_config_reg[3][3] ,
         \next_config_reg[3][2] , \next_config_reg[3][1] ,
         \next_config_reg[3][0] , \next_config_reg[2][31] ,
         \next_config_reg[2][30] , \next_config_reg[2][29] ,
         \next_config_reg[2][28] , \next_config_reg[2][27] ,
         \next_config_reg[2][26] , \next_config_reg[2][25] ,
         \next_config_reg[2][24] , \next_config_reg[2][23] ,
         \next_config_reg[2][22] , \next_config_reg[2][21] ,
         \next_config_reg[2][20] , \next_config_reg[2][19] ,
         \next_config_reg[2][18] , \next_config_reg[2][17] ,
         \next_config_reg[2][16] , \next_config_reg[2][15] ,
         \next_config_reg[2][14] , \next_config_reg[2][13] ,
         \next_config_reg[2][12] , \next_config_reg[2][11] ,
         \next_config_reg[2][10] , \next_config_reg[2][9] ,
         \next_config_reg[2][8] , \next_config_reg[2][7] ,
         \next_config_reg[2][6] , \next_config_reg[2][5] ,
         \next_config_reg[2][4] , \next_config_reg[2][3] ,
         \next_config_reg[2][2] , \next_config_reg[2][1] ,
         \next_config_reg[2][0] , \next_config_reg[1][31] ,
         \next_config_reg[1][30] , \next_config_reg[1][29] ,
         \next_config_reg[1][28] , \next_config_reg[1][27] ,
         \next_config_reg[1][26] , \next_config_reg[1][25] ,
         \next_config_reg[1][24] , \next_config_reg[1][23] ,
         \next_config_reg[1][22] , \next_config_reg[1][21] ,
         \next_config_reg[1][20] , \next_config_reg[1][19] ,
         \next_config_reg[1][18] , \next_config_reg[1][17] ,
         \next_config_reg[1][16] , \next_config_reg[1][15] ,
         \next_config_reg[1][14] , \next_config_reg[1][13] ,
         \next_config_reg[1][12] , \next_config_reg[1][11] ,
         \next_config_reg[1][10] , \next_config_reg[1][9] ,
         \next_config_reg[1][8] , \next_config_reg[1][7] ,
         \next_config_reg[1][6] , \next_config_reg[1][5] ,
         \next_config_reg[1][4] , \next_config_reg[1][3] ,
         \next_config_reg[1][2] , \next_config_reg[1][1] ,
         \next_config_reg[1][0] , \next_config_reg[0][31] ,
         \next_config_reg[0][30] , \next_config_reg[0][29] ,
         \next_config_reg[0][28] , \next_config_reg[0][27] ,
         \next_config_reg[0][26] , \next_config_reg[0][25] ,
         \next_config_reg[0][24] , \next_config_reg[0][23] ,
         \next_config_reg[0][22] , \next_config_reg[0][21] ,
         \next_config_reg[0][20] , \next_config_reg[0][19] ,
         \next_config_reg[0][18] , \next_config_reg[0][17] ,
         \next_config_reg[0][16] , \next_config_reg[0][15] ,
         \next_config_reg[0][14] , \next_config_reg[0][13] ,
         \next_config_reg[0][12] , \next_config_reg[0][11] ,
         \next_config_reg[0][10] , \next_config_reg[0][9] ,
         \next_config_reg[0][8] , \next_config_reg[0][7] ,
         \next_config_reg[0][6] , \next_config_reg[0][5] ,
         \next_config_reg[0][4] , \next_config_reg[0][3] ,
         \next_config_reg[0][2] , \next_config_reg[0][1] ,
         \next_config_reg[0][0] , next_bvalid, next_bresp, next_arready,
         next_rvalid, next_rresp, N386, N387, N388, N389, N390, N391, N392,
         N393, N394, N395, N396, N397, N398, N399, N400, N401, N402, N403,
         N404, N405, N406, N407, N408, N409, N410, N411, N412, N413, N414,
         N415, N416, N417, n537, n539, n541, n543, n545, n547, n549, n551,
         n553, n555, n557, n559, n561, n563, n565, n567, n569, n571, n573,
         n575, n577, n579, n581, n583, n585, n587, n589, n591, n593, n595,
         n597, n599, n861, n863, n865, n910, n911, n912, n913, n914, n915,
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
         n1334, n1335, n1336, n1337, n1338, n1339, n1340, n1341, n1342, n1343,
         n1344, n1345, n1346, n1347, n1348, n1349, n1350, n1351, n1352, n1353,
         n1354, n1355, n1356, n1357, n1358, n1359, n1360, n1361, n1362, n1363,
         n1364, n1365, n1366, n1367, n1368, n1369, n1370, n1371, n1372, n1373,
         n1374, n1375, n1376, n1377, n1378, n1379, n1380, n1381, n1382, n1383,
         n1384, n1385, n1386, n1387, n1388, n1389, n1390, n1391, n1392, n1393,
         n1394, n1395, n1396, n1397, n1398, n1399, n1400, n1401, n1402, n1403,
         n1404, n1405, n1406, n1407, n1408, n1409, n1410, n1411, n1412, n1413,
         n1414, n1415, n1416, n1417, n1418, n1419, n1420, n1421, n1422, n1423,
         n1424, n1425, n1426, n1427, n1428, n1429, n1430, n1431, n1432, n1433,
         n1434, n1435, n1436, n1437, n1438, n1439, n1440, n1441, n1442, n1443,
         n1444, n1445, n1446, n1447, n1448, n1449, n1450, n1451, n1452, n1453,
         n1454, n1455, n1456, n1457, n1458, n1459, n1460, n1461, n1462, n1463,
         n1464, n1465, n1466, n1467, n1468, n1469, n1470, n1471, n1472, n1473,
         n1474, n1475, n1476, n1477, n1478, n1479, n1480, n1481, n1482, n1483,
         n1484, n1485, n1486, n1487, n1488, n1489, n1490, n1491, n1492, n1493,
         n1494, n1495, n1496, n1497, n1498, n1499, n1500, n1501, n1502, n1503,
         n1504, n1505, n1506, n1507, n1508, n1509, n1510, n1511, n1512, n1513,
         n1514, n1515, n1516, n1517, n1518, n1519, n1520, n1521, n1522, n1523,
         n1524, n1525, n1526, n1527, n1528, n1529, n1530, n1531, n1532, n1533,
         n1534, n1535, n1536, n1537, n1538, n1539, n1540, n1541, n1542, n1543,
         n1544, n1545, n1546, n1547, n1548, n1549, n1550, n1551, n1552, n1553,
         n1554, n1555, n1556, n1557, n1558, n1559, n1560, n1561, n1562, n1563,
         n1564, n1565, n1566, n1567, n1568, n1569, n1570, n1571, n1572, n1573,
         n1574, n1575, n1576, n1577, n1578, n1579, n1580, n1581, n1582, n1583,
         n1584, n1585, n1586, n1587, n1588, n1589, n1590, n1591, n1592, n1593,
         n1594, n1595, n1596, n1597, n1598, n1599, n1600, n1601, n1602, n1603,
         n1604, n1605, n1606, n1607, n1608, n1609, n1610, n1611, n1612, n1613,
         n1614, n1615, n1616, n1617, n1618;
  wire   [31:0] awaddr_reg;
  wire   [9:0] wcount;
  wire   [31:0] araddr_reg;
  wire   [9:0] rcount;
  wire   [31:3] next_awaddr;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13;

  DFFSR fft_sub_awready_reg ( .D(n1618), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        fft_sub_awready) );
  DFFSR \awaddr_reg_reg[9]  ( .D(n1614), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awaddr_reg[9]) );
  DFFSR \awaddr_reg_reg[8]  ( .D(n1615), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awaddr_reg[8]) );
  DFFSR \awaddr_reg_reg[7]  ( .D(next_awaddr[7]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(awaddr_reg[7]) );
  DFFSR \awaddr_reg_reg[6]  ( .D(next_awaddr[6]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(awaddr_reg[6]) );
  DFFSR \awaddr_reg_reg[5]  ( .D(n1616), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awaddr_reg[5]) );
  DFFSR \awaddr_reg_reg[4]  ( .D(n1617), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awaddr_reg[4]) );
  DFFSR \awaddr_reg_reg[3]  ( .D(next_awaddr[3]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(awaddr_reg[3]) );
  DFFSR \awaddr_reg_reg[31]  ( .D(next_awaddr[31]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(awaddr_reg[31]) );
  DFFSR \awaddr_reg_reg[30]  ( .D(n1606), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awaddr_reg[30]) );
  DFFSR \awaddr_reg_reg[29]  ( .D(n1607), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awaddr_reg[29]) );
  DFFSR \awaddr_reg_reg[28]  ( .D(next_awaddr[28]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(awaddr_reg[28]) );
  DFFSR \awaddr_reg_reg[27]  ( .D(next_awaddr[27]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(awaddr_reg[27]) );
  DFFSR \awaddr_reg_reg[26]  ( .D(next_awaddr[26]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(awaddr_reg[26]) );
  DFFSR \awaddr_reg_reg[25]  ( .D(next_awaddr[25]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(awaddr_reg[25]) );
  DFFSR \awaddr_reg_reg[24]  ( .D(next_awaddr[24]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(awaddr_reg[24]) );
  DFFSR \awaddr_reg_reg[23]  ( .D(n1608), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awaddr_reg[23]) );
  DFFSR \awaddr_reg_reg[22]  ( .D(n1609), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awaddr_reg[22]) );
  DFFSR \awaddr_reg_reg[21]  ( .D(next_awaddr[21]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(awaddr_reg[21]) );
  DFFSR \awaddr_reg_reg[20]  ( .D(next_awaddr[20]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(awaddr_reg[20]) );
  DFFSR \awaddr_reg_reg[19]  ( .D(n1610), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awaddr_reg[19]) );
  DFFSR \awaddr_reg_reg[18]  ( .D(n1611), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awaddr_reg[18]) );
  DFFSR \awaddr_reg_reg[17]  ( .D(next_awaddr[17]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(awaddr_reg[17]) );
  DFFSR \awaddr_reg_reg[16]  ( .D(next_awaddr[16]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(awaddr_reg[16]) );
  DFFSR \awaddr_reg_reg[15]  ( .D(n1612), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awaddr_reg[15]) );
  DFFSR \awaddr_reg_reg[14]  ( .D(n1613), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awaddr_reg[14]) );
  DFFSR \awaddr_reg_reg[13]  ( .D(next_awaddr[13]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(awaddr_reg[13]) );
  DFFSR \awaddr_reg_reg[12]  ( .D(next_awaddr[12]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(awaddr_reg[12]) );
  DFFSR \awaddr_reg_reg[11]  ( .D(next_awaddr[11]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(awaddr_reg[11]) );
  DFFSR \awaddr_reg_reg[10]  ( .D(next_awaddr[10]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(awaddr_reg[10]) );
  DFFSR fft_sub_wready_reg ( .D(n910), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_sub_wready) );
  DFFSR \awaddr_reg_reg[1]  ( .D(n865), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awaddr_reg[1]) );
  DFFSR \awaddr_reg_reg[0]  ( .D(n863), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awaddr_reg[0]) );
  DFFSR \awaddr_reg_reg[2]  ( .D(n861), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awaddr_reg[2]) );
  DFFSR fft_sub_bresp_reg ( .D(next_bresp), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_sub_bresp) );
  DFFSR \config_reg_reg[6][9]  ( .D(\next_config_reg[6][9] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][9] ) );
  DFFSR \config_reg_reg[6][8]  ( .D(\next_config_reg[6][8] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][8] ) );
  DFFSR \config_reg_reg[6][7]  ( .D(\next_config_reg[6][7] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][7] ) );
  DFFSR \config_reg_reg[6][6]  ( .D(\next_config_reg[6][6] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][6] ) );
  DFFSR \config_reg_reg[6][5]  ( .D(\next_config_reg[6][5] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][5] ) );
  DFFSR \config_reg_reg[6][4]  ( .D(\next_config_reg[6][4] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][4] ) );
  DFFSR \config_reg_reg[6][3]  ( .D(\next_config_reg[6][3] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][3] ) );
  DFFSR \config_reg_reg[6][31]  ( .D(\next_config_reg[6][31] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][31] ) );
  DFFSR \config_reg_reg[6][30]  ( .D(\next_config_reg[6][30] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][30] ) );
  DFFSR \config_reg_reg[6][2]  ( .D(\next_config_reg[6][2] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][2] ) );
  DFFSR \config_reg_reg[6][29]  ( .D(\next_config_reg[6][29] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][29] ) );
  DFFSR \config_reg_reg[6][28]  ( .D(\next_config_reg[6][28] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][28] ) );
  DFFSR \config_reg_reg[6][27]  ( .D(\next_config_reg[6][27] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][27] ) );
  DFFSR \config_reg_reg[6][26]  ( .D(\next_config_reg[6][26] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][26] ) );
  DFFSR \config_reg_reg[6][25]  ( .D(\next_config_reg[6][25] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][25] ) );
  DFFSR \config_reg_reg[6][24]  ( .D(\next_config_reg[6][24] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][24] ) );
  DFFSR \config_reg_reg[6][23]  ( .D(\next_config_reg[6][23] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][23] ) );
  DFFSR \config_reg_reg[6][22]  ( .D(\next_config_reg[6][22] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][22] ) );
  DFFSR \config_reg_reg[6][21]  ( .D(\next_config_reg[6][21] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][21] ) );
  DFFSR \config_reg_reg[6][20]  ( .D(\next_config_reg[6][20] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][20] ) );
  DFFSR \config_reg_reg[6][1]  ( .D(\next_config_reg[6][1] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][1] ) );
  DFFSR \config_reg_reg[6][19]  ( .D(\next_config_reg[6][19] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][19] ) );
  DFFSR \config_reg_reg[6][18]  ( .D(\next_config_reg[6][18] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][18] ) );
  DFFSR \config_reg_reg[6][17]  ( .D(\next_config_reg[6][17] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][17] ) );
  DFFSR \config_reg_reg[6][16]  ( .D(\next_config_reg[6][16] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][16] ) );
  DFFSR \config_reg_reg[6][15]  ( .D(\next_config_reg[6][15] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][15] ) );
  DFFSR \config_reg_reg[6][14]  ( .D(\next_config_reg[6][14] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][14] ) );
  DFFSR \config_reg_reg[6][13]  ( .D(\next_config_reg[6][13] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][13] ) );
  DFFSR \config_reg_reg[6][12]  ( .D(\next_config_reg[6][12] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][12] ) );
  DFFSR \config_reg_reg[6][11]  ( .D(\next_config_reg[6][11] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][11] ) );
  DFFSR \config_reg_reg[6][10]  ( .D(\next_config_reg[6][10] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][10] ) );
  DFFSR \config_reg_reg[6][0]  ( .D(\next_config_reg[6][0] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[6][0] ) );
  DFFSR \config_reg_reg[5][9]  ( .D(\next_config_reg[5][9] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][9] ) );
  DFFSR \config_reg_reg[5][8]  ( .D(\next_config_reg[5][8] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][8] ) );
  DFFSR \config_reg_reg[5][7]  ( .D(\next_config_reg[5][7] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][7] ) );
  DFFSR \config_reg_reg[5][6]  ( .D(\next_config_reg[5][6] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][6] ) );
  DFFSR \config_reg_reg[5][5]  ( .D(\next_config_reg[5][5] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][5] ) );
  DFFSR \config_reg_reg[5][4]  ( .D(\next_config_reg[5][4] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][4] ) );
  DFFSR \config_reg_reg[5][3]  ( .D(\next_config_reg[5][3] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][3] ) );
  DFFSR \config_reg_reg[5][31]  ( .D(\next_config_reg[5][31] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][31] ) );
  DFFSR \config_reg_reg[5][30]  ( .D(\next_config_reg[5][30] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][30] ) );
  DFFSR \config_reg_reg[5][2]  ( .D(\next_config_reg[5][2] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][2] ) );
  DFFSR \config_reg_reg[5][29]  ( .D(\next_config_reg[5][29] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][29] ) );
  DFFSR \config_reg_reg[5][28]  ( .D(\next_config_reg[5][28] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][28] ) );
  DFFSR \config_reg_reg[5][27]  ( .D(\next_config_reg[5][27] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][27] ) );
  DFFSR \config_reg_reg[5][26]  ( .D(\next_config_reg[5][26] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][26] ) );
  DFFSR \config_reg_reg[5][25]  ( .D(\next_config_reg[5][25] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][25] ) );
  DFFSR \config_reg_reg[5][24]  ( .D(\next_config_reg[5][24] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][24] ) );
  DFFSR \config_reg_reg[5][23]  ( .D(\next_config_reg[5][23] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][23] ) );
  DFFSR \config_reg_reg[5][22]  ( .D(\next_config_reg[5][22] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][22] ) );
  DFFSR \config_reg_reg[5][21]  ( .D(\next_config_reg[5][21] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][21] ) );
  DFFSR \config_reg_reg[5][20]  ( .D(\next_config_reg[5][20] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][20] ) );
  DFFSR \config_reg_reg[5][1]  ( .D(\next_config_reg[5][1] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][1] ) );
  DFFSR \config_reg_reg[5][19]  ( .D(\next_config_reg[5][19] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][19] ) );
  DFFSR \config_reg_reg[5][18]  ( .D(\next_config_reg[5][18] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][18] ) );
  DFFSR \config_reg_reg[5][17]  ( .D(\next_config_reg[5][17] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][17] ) );
  DFFSR \config_reg_reg[5][16]  ( .D(\next_config_reg[5][16] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][16] ) );
  DFFSR \config_reg_reg[5][15]  ( .D(\next_config_reg[5][15] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][15] ) );
  DFFSR \config_reg_reg[5][14]  ( .D(\next_config_reg[5][14] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][14] ) );
  DFFSR \config_reg_reg[5][13]  ( .D(\next_config_reg[5][13] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][13] ) );
  DFFSR \config_reg_reg[5][12]  ( .D(\next_config_reg[5][12] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][12] ) );
  DFFSR \config_reg_reg[5][11]  ( .D(\next_config_reg[5][11] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][11] ) );
  DFFSR \config_reg_reg[5][10]  ( .D(\next_config_reg[5][10] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][10] ) );
  DFFSR \config_reg_reg[5][0]  ( .D(\next_config_reg[5][0] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[5][0] ) );
  DFFSR \config_reg_reg[0][9]  ( .D(\next_config_reg[0][9] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][9] ) );
  DFFSR \config_reg_reg[0][8]  ( .D(\next_config_reg[0][8] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][8] ) );
  DFFSR \config_reg_reg[0][7]  ( .D(\next_config_reg[0][7] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][7] ) );
  DFFSR \config_reg_reg[0][6]  ( .D(\next_config_reg[0][6] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][6] ) );
  DFFSR \config_reg_reg[0][5]  ( .D(\next_config_reg[0][5] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][5] ) );
  DFFSR \config_reg_reg[0][4]  ( .D(\next_config_reg[0][4] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][4] ) );
  DFFSR \config_reg_reg[0][3]  ( .D(\next_config_reg[0][3] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][3] ) );
  DFFSR \config_reg_reg[0][31]  ( .D(\next_config_reg[0][31] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][31] ) );
  DFFSR \config_reg_reg[0][30]  ( .D(\next_config_reg[0][30] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][30] ) );
  DFFSR \config_reg_reg[0][2]  ( .D(\next_config_reg[0][2] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][2] ) );
  DFFSR \config_reg_reg[0][29]  ( .D(\next_config_reg[0][29] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][29] ) );
  DFFSR \config_reg_reg[0][28]  ( .D(\next_config_reg[0][28] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][28] ) );
  DFFSR \config_reg_reg[0][27]  ( .D(\next_config_reg[0][27] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][27] ) );
  DFFSR \config_reg_reg[0][26]  ( .D(\next_config_reg[0][26] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][26] ) );
  DFFSR \config_reg_reg[0][25]  ( .D(\next_config_reg[0][25] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][25] ) );
  DFFSR \config_reg_reg[0][24]  ( .D(\next_config_reg[0][24] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][24] ) );
  DFFSR \config_reg_reg[0][23]  ( .D(\next_config_reg[0][23] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][23] ) );
  DFFSR \config_reg_reg[0][22]  ( .D(\next_config_reg[0][22] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][22] ) );
  DFFSR \config_reg_reg[0][21]  ( .D(\next_config_reg[0][21] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][21] ) );
  DFFSR \config_reg_reg[0][20]  ( .D(\next_config_reg[0][20] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][20] ) );
  DFFSR \config_reg_reg[0][1]  ( .D(\next_config_reg[0][1] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][1] ) );
  DFFSR \config_reg_reg[0][19]  ( .D(\next_config_reg[0][19] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][19] ) );
  DFFSR \config_reg_reg[0][18]  ( .D(\next_config_reg[0][18] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][18] ) );
  DFFSR \config_reg_reg[0][17]  ( .D(\next_config_reg[0][17] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][17] ) );
  DFFSR \config_reg_reg[0][16]  ( .D(\next_config_reg[0][16] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][16] ) );
  DFFSR \config_reg_reg[0][15]  ( .D(\next_config_reg[0][15] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][15] ) );
  DFFSR \config_reg_reg[0][14]  ( .D(\next_config_reg[0][14] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][14] ) );
  DFFSR \config_reg_reg[0][13]  ( .D(\next_config_reg[0][13] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][13] ) );
  DFFSR \config_reg_reg[0][12]  ( .D(\next_config_reg[0][12] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][12] ) );
  DFFSR \config_reg_reg[0][11]  ( .D(\next_config_reg[0][11] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][11] ) );
  DFFSR \config_reg_reg[0][10]  ( .D(\next_config_reg[0][10] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][10] ) );
  DFFSR \config_reg_reg[0][0]  ( .D(\next_config_reg[0][0] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[0][0] ) );
  DFFSR \config_reg_reg[1][9]  ( .D(\next_config_reg[1][9] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][9] ) );
  DFFSR \config_reg_reg[1][8]  ( .D(\next_config_reg[1][8] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][8] ) );
  DFFSR \config_reg_reg[1][7]  ( .D(\next_config_reg[1][7] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][7] ) );
  DFFSR \config_reg_reg[1][6]  ( .D(\next_config_reg[1][6] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][6] ) );
  DFFSR \config_reg_reg[1][5]  ( .D(\next_config_reg[1][5] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][5] ) );
  DFFSR \config_reg_reg[1][4]  ( .D(\next_config_reg[1][4] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][4] ) );
  DFFSR \config_reg_reg[1][3]  ( .D(\next_config_reg[1][3] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][3] ) );
  DFFSR \config_reg_reg[1][31]  ( .D(\next_config_reg[1][31] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][31] ) );
  DFFSR \config_reg_reg[1][30]  ( .D(\next_config_reg[1][30] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][30] ) );
  DFFSR \config_reg_reg[1][2]  ( .D(\next_config_reg[1][2] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][2] ) );
  DFFSR \config_reg_reg[1][29]  ( .D(\next_config_reg[1][29] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][29] ) );
  DFFSR \config_reg_reg[1][28]  ( .D(\next_config_reg[1][28] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][28] ) );
  DFFSR \config_reg_reg[1][27]  ( .D(\next_config_reg[1][27] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][27] ) );
  DFFSR \config_reg_reg[1][26]  ( .D(\next_config_reg[1][26] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][26] ) );
  DFFSR \config_reg_reg[1][25]  ( .D(\next_config_reg[1][25] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][25] ) );
  DFFSR \config_reg_reg[1][24]  ( .D(\next_config_reg[1][24] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][24] ) );
  DFFSR \config_reg_reg[1][23]  ( .D(\next_config_reg[1][23] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][23] ) );
  DFFSR \config_reg_reg[1][22]  ( .D(\next_config_reg[1][22] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][22] ) );
  DFFSR \config_reg_reg[1][21]  ( .D(\next_config_reg[1][21] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][21] ) );
  DFFSR \config_reg_reg[1][20]  ( .D(\next_config_reg[1][20] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][20] ) );
  DFFSR \config_reg_reg[1][1]  ( .D(\next_config_reg[1][1] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][1] ) );
  DFFSR \config_reg_reg[1][19]  ( .D(\next_config_reg[1][19] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][19] ) );
  DFFSR \config_reg_reg[1][18]  ( .D(\next_config_reg[1][18] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][18] ) );
  DFFSR \config_reg_reg[1][17]  ( .D(\next_config_reg[1][17] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][17] ) );
  DFFSR \config_reg_reg[1][16]  ( .D(\next_config_reg[1][16] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][16] ) );
  DFFSR \config_reg_reg[1][15]  ( .D(\next_config_reg[1][15] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][15] ) );
  DFFSR \config_reg_reg[1][14]  ( .D(\next_config_reg[1][14] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][14] ) );
  DFFSR \config_reg_reg[1][13]  ( .D(\next_config_reg[1][13] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][13] ) );
  DFFSR \config_reg_reg[1][12]  ( .D(\next_config_reg[1][12] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][12] ) );
  DFFSR \config_reg_reg[1][11]  ( .D(\next_config_reg[1][11] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][11] ) );
  DFFSR \config_reg_reg[1][10]  ( .D(\next_config_reg[1][10] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][10] ) );
  DFFSR \config_reg_reg[1][0]  ( .D(\next_config_reg[1][0] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[1][0] ) );
  DFFSR \config_reg_reg[3][9]  ( .D(\next_config_reg[3][9] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][9] ) );
  DFFSR \config_reg_reg[3][8]  ( .D(\next_config_reg[3][8] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][8] ) );
  DFFSR \config_reg_reg[3][7]  ( .D(\next_config_reg[3][7] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][7] ) );
  DFFSR \config_reg_reg[3][6]  ( .D(\next_config_reg[3][6] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][6] ) );
  DFFSR \config_reg_reg[3][5]  ( .D(\next_config_reg[3][5] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][5] ) );
  DFFSR \config_reg_reg[3][4]  ( .D(\next_config_reg[3][4] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][4] ) );
  DFFSR \config_reg_reg[3][3]  ( .D(\next_config_reg[3][3] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][3] ) );
  DFFSR \config_reg_reg[3][31]  ( .D(\next_config_reg[3][31] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][31] ) );
  DFFSR \config_reg_reg[3][30]  ( .D(\next_config_reg[3][30] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][30] ) );
  DFFSR \config_reg_reg[3][2]  ( .D(\next_config_reg[3][2] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][2] ) );
  DFFSR \config_reg_reg[3][29]  ( .D(\next_config_reg[3][29] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][29] ) );
  DFFSR \config_reg_reg[3][28]  ( .D(\next_config_reg[3][28] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][28] ) );
  DFFSR \config_reg_reg[3][27]  ( .D(\next_config_reg[3][27] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][27] ) );
  DFFSR \config_reg_reg[3][26]  ( .D(\next_config_reg[3][26] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][26] ) );
  DFFSR \config_reg_reg[3][25]  ( .D(\next_config_reg[3][25] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][25] ) );
  DFFSR \config_reg_reg[3][24]  ( .D(\next_config_reg[3][24] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][24] ) );
  DFFSR \config_reg_reg[3][23]  ( .D(\next_config_reg[3][23] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][23] ) );
  DFFSR \config_reg_reg[3][22]  ( .D(\next_config_reg[3][22] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][22] ) );
  DFFSR \config_reg_reg[3][21]  ( .D(\next_config_reg[3][21] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][21] ) );
  DFFSR \config_reg_reg[3][20]  ( .D(\next_config_reg[3][20] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][20] ) );
  DFFSR \config_reg_reg[3][1]  ( .D(\next_config_reg[3][1] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][1] ) );
  DFFSR \config_reg_reg[3][19]  ( .D(\next_config_reg[3][19] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][19] ) );
  DFFSR \config_reg_reg[3][18]  ( .D(\next_config_reg[3][18] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][18] ) );
  DFFSR \config_reg_reg[3][17]  ( .D(\next_config_reg[3][17] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][17] ) );
  DFFSR \config_reg_reg[3][16]  ( .D(\next_config_reg[3][16] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][16] ) );
  DFFSR \config_reg_reg[3][15]  ( .D(\next_config_reg[3][15] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][15] ) );
  DFFSR \config_reg_reg[3][14]  ( .D(\next_config_reg[3][14] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][14] ) );
  DFFSR \config_reg_reg[3][13]  ( .D(\next_config_reg[3][13] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][13] ) );
  DFFSR \config_reg_reg[3][12]  ( .D(\next_config_reg[3][12] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][12] ) );
  DFFSR \config_reg_reg[3][11]  ( .D(\next_config_reg[3][11] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][11] ) );
  DFFSR \config_reg_reg[3][10]  ( .D(\next_config_reg[3][10] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][10] ) );
  DFFSR \config_reg_reg[3][0]  ( .D(\next_config_reg[3][0] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[3][0] ) );
  DFFSR \config_reg_reg[2][9]  ( .D(\next_config_reg[2][9] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][9] ) );
  DFFSR \config_reg_reg[2][8]  ( .D(\next_config_reg[2][8] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][8] ) );
  DFFSR \config_reg_reg[2][7]  ( .D(\next_config_reg[2][7] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][7] ) );
  DFFSR \config_reg_reg[2][6]  ( .D(\next_config_reg[2][6] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][6] ) );
  DFFSR \config_reg_reg[2][5]  ( .D(\next_config_reg[2][5] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][5] ) );
  DFFSR \config_reg_reg[2][4]  ( .D(\next_config_reg[2][4] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][4] ) );
  DFFSR \config_reg_reg[2][3]  ( .D(\next_config_reg[2][3] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][3] ) );
  DFFSR \config_reg_reg[2][31]  ( .D(\next_config_reg[2][31] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][31] ) );
  DFFSR \config_reg_reg[2][30]  ( .D(\next_config_reg[2][30] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][30] ) );
  DFFSR \config_reg_reg[2][2]  ( .D(\next_config_reg[2][2] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][2] ) );
  DFFSR \config_reg_reg[2][29]  ( .D(\next_config_reg[2][29] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][29] ) );
  DFFSR \config_reg_reg[2][28]  ( .D(\next_config_reg[2][28] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][28] ) );
  DFFSR \config_reg_reg[2][27]  ( .D(\next_config_reg[2][27] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][27] ) );
  DFFSR \config_reg_reg[2][26]  ( .D(\next_config_reg[2][26] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][26] ) );
  DFFSR \config_reg_reg[2][25]  ( .D(\next_config_reg[2][25] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][25] ) );
  DFFSR \config_reg_reg[2][24]  ( .D(\next_config_reg[2][24] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][24] ) );
  DFFSR \config_reg_reg[2][23]  ( .D(\next_config_reg[2][23] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][23] ) );
  DFFSR \config_reg_reg[2][22]  ( .D(\next_config_reg[2][22] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][22] ) );
  DFFSR \config_reg_reg[2][21]  ( .D(\next_config_reg[2][21] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][21] ) );
  DFFSR \config_reg_reg[2][20]  ( .D(\next_config_reg[2][20] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][20] ) );
  DFFSR \config_reg_reg[2][1]  ( .D(\next_config_reg[2][1] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][1] ) );
  DFFSR \config_reg_reg[2][19]  ( .D(\next_config_reg[2][19] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][19] ) );
  DFFSR \config_reg_reg[2][18]  ( .D(\next_config_reg[2][18] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][18] ) );
  DFFSR \config_reg_reg[2][17]  ( .D(\next_config_reg[2][17] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][17] ) );
  DFFSR \config_reg_reg[2][16]  ( .D(\next_config_reg[2][16] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][16] ) );
  DFFSR \config_reg_reg[2][15]  ( .D(\next_config_reg[2][15] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][15] ) );
  DFFSR \config_reg_reg[2][14]  ( .D(\next_config_reg[2][14] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][14] ) );
  DFFSR \config_reg_reg[2][13]  ( .D(\next_config_reg[2][13] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][13] ) );
  DFFSR \config_reg_reg[2][12]  ( .D(\next_config_reg[2][12] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][12] ) );
  DFFSR \config_reg_reg[2][11]  ( .D(\next_config_reg[2][11] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][11] ) );
  DFFSR \config_reg_reg[2][10]  ( .D(\next_config_reg[2][10] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][10] ) );
  DFFSR \config_reg_reg[2][0]  ( .D(\next_config_reg[2][0] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[2][0] ) );
  DFFSR \config_reg_reg[4][9]  ( .D(\next_config_reg[4][9] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][9] ) );
  DFFSR \config_reg_reg[4][8]  ( .D(\next_config_reg[4][8] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][8] ) );
  DFFSR \config_reg_reg[4][7]  ( .D(\next_config_reg[4][7] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][7] ) );
  DFFSR \config_reg_reg[4][6]  ( .D(\next_config_reg[4][6] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][6] ) );
  DFFSR \config_reg_reg[4][5]  ( .D(\next_config_reg[4][5] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][5] ) );
  DFFSR \config_reg_reg[4][4]  ( .D(\next_config_reg[4][4] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][4] ) );
  DFFSR \config_reg_reg[4][3]  ( .D(\next_config_reg[4][3] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][3] ) );
  DFFSR \config_reg_reg[4][31]  ( .D(\next_config_reg[4][31] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][31] ) );
  DFFSR \config_reg_reg[4][30]  ( .D(\next_config_reg[4][30] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][30] ) );
  DFFSR \config_reg_reg[4][2]  ( .D(\next_config_reg[4][2] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][2] ) );
  DFFSR \config_reg_reg[4][29]  ( .D(\next_config_reg[4][29] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][29] ) );
  DFFSR \config_reg_reg[4][28]  ( .D(\next_config_reg[4][28] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][28] ) );
  DFFSR \config_reg_reg[4][27]  ( .D(\next_config_reg[4][27] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][27] ) );
  DFFSR \config_reg_reg[4][26]  ( .D(\next_config_reg[4][26] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][26] ) );
  DFFSR \config_reg_reg[4][25]  ( .D(\next_config_reg[4][25] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][25] ) );
  DFFSR \config_reg_reg[4][24]  ( .D(\next_config_reg[4][24] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][24] ) );
  DFFSR \config_reg_reg[4][23]  ( .D(\next_config_reg[4][23] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][23] ) );
  DFFSR \config_reg_reg[4][22]  ( .D(\next_config_reg[4][22] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][22] ) );
  DFFSR \config_reg_reg[4][21]  ( .D(\next_config_reg[4][21] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][21] ) );
  DFFSR \config_reg_reg[4][20]  ( .D(\next_config_reg[4][20] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][20] ) );
  DFFSR \config_reg_reg[4][1]  ( .D(\next_config_reg[4][1] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][1] ) );
  DFFSR \config_reg_reg[4][19]  ( .D(\next_config_reg[4][19] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][19] ) );
  DFFSR \config_reg_reg[4][18]  ( .D(\next_config_reg[4][18] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][18] ) );
  DFFSR \config_reg_reg[4][17]  ( .D(\next_config_reg[4][17] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][17] ) );
  DFFSR \config_reg_reg[4][16]  ( .D(\next_config_reg[4][16] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][16] ) );
  DFFSR \config_reg_reg[4][15]  ( .D(\next_config_reg[4][15] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][15] ) );
  DFFSR \config_reg_reg[4][14]  ( .D(\next_config_reg[4][14] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][14] ) );
  DFFSR \config_reg_reg[4][13]  ( .D(\next_config_reg[4][13] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][13] ) );
  DFFSR \config_reg_reg[4][12]  ( .D(\next_config_reg[4][12] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][12] ) );
  DFFSR \config_reg_reg[4][11]  ( .D(\next_config_reg[4][11] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][11] ) );
  DFFSR \config_reg_reg[4][10]  ( .D(\next_config_reg[4][10] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][10] ) );
  DFFSR \config_reg_reg[4][0]  ( .D(\next_config_reg[4][0] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[4][0] ) );
  DFFSR \config_reg_reg[7][9]  ( .D(\next_config_reg[7][9] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][9] ) );
  DFFSR \config_reg_reg[7][8]  ( .D(\next_config_reg[7][8] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][8] ) );
  DFFSR \config_reg_reg[7][7]  ( .D(\next_config_reg[7][7] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][7] ) );
  DFFSR \config_reg_reg[7][6]  ( .D(\next_config_reg[7][6] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][6] ) );
  DFFSR \config_reg_reg[7][5]  ( .D(\next_config_reg[7][5] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][5] ) );
  DFFSR \config_reg_reg[7][4]  ( .D(\next_config_reg[7][4] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][4] ) );
  DFFSR \config_reg_reg[7][3]  ( .D(\next_config_reg[7][3] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][3] ) );
  DFFSR \config_reg_reg[7][31]  ( .D(\next_config_reg[7][31] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][31] ) );
  DFFSR \config_reg_reg[7][30]  ( .D(\next_config_reg[7][30] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][30] ) );
  DFFSR \config_reg_reg[7][2]  ( .D(\next_config_reg[7][2] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][2] ) );
  DFFSR \config_reg_reg[7][29]  ( .D(\next_config_reg[7][29] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][29] ) );
  DFFSR \config_reg_reg[7][28]  ( .D(\next_config_reg[7][28] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][28] ) );
  DFFSR \config_reg_reg[7][27]  ( .D(\next_config_reg[7][27] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][27] ) );
  DFFSR \config_reg_reg[7][26]  ( .D(\next_config_reg[7][26] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][26] ) );
  DFFSR \config_reg_reg[7][25]  ( .D(\next_config_reg[7][25] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][25] ) );
  DFFSR \config_reg_reg[7][24]  ( .D(\next_config_reg[7][24] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][24] ) );
  DFFSR \config_reg_reg[7][23]  ( .D(\next_config_reg[7][23] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][23] ) );
  DFFSR \config_reg_reg[7][22]  ( .D(\next_config_reg[7][22] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][22] ) );
  DFFSR \config_reg_reg[7][21]  ( .D(\next_config_reg[7][21] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][21] ) );
  DFFSR \config_reg_reg[7][20]  ( .D(\next_config_reg[7][20] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][20] ) );
  DFFSR \config_reg_reg[7][1]  ( .D(\next_config_reg[7][1] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][1] ) );
  DFFSR \config_reg_reg[7][19]  ( .D(\next_config_reg[7][19] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][19] ) );
  DFFSR \config_reg_reg[7][18]  ( .D(\next_config_reg[7][18] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][18] ) );
  DFFSR \config_reg_reg[7][17]  ( .D(\next_config_reg[7][17] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][17] ) );
  DFFSR \config_reg_reg[7][16]  ( .D(\next_config_reg[7][16] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][16] ) );
  DFFSR \config_reg_reg[7][15]  ( .D(\next_config_reg[7][15] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][15] ) );
  DFFSR \config_reg_reg[7][14]  ( .D(\next_config_reg[7][14] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][14] ) );
  DFFSR \config_reg_reg[7][13]  ( .D(\next_config_reg[7][13] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][13] ) );
  DFFSR \config_reg_reg[7][12]  ( .D(\next_config_reg[7][12] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][12] ) );
  DFFSR \config_reg_reg[7][11]  ( .D(\next_config_reg[7][11] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][11] ) );
  DFFSR \config_reg_reg[7][10]  ( .D(\next_config_reg[7][10] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][10] ) );
  DFFSR \config_reg_reg[7][0]  ( .D(\next_config_reg[7][0] ), .CLK(clk), .R(
        n_rst), .S(1'b1), .Q(\config_reg[7][0] ) );
  DFFSR fft_sub_bvalid_reg ( .D(next_bvalid), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_sub_bvalid) );
  DFFSR fft_sub_rresp_reg ( .D(next_rresp), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_sub_rresp) );
  DFFSR fft_sub_arready_reg ( .D(next_arready), .CLK(clk), .R(1'b1), .S(n_rst), 
        .Q(fft_sub_arready) );
  DFFSR \araddr_reg_reg[30]  ( .D(n599), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[30]) );
  DFFSR \araddr_reg_reg[29]  ( .D(n597), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[29]) );
  DFFSR \araddr_reg_reg[28]  ( .D(n595), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[28]) );
  DFFSR \araddr_reg_reg[27]  ( .D(n593), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[27]) );
  DFFSR \araddr_reg_reg[26]  ( .D(n591), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[26]) );
  DFFSR \araddr_reg_reg[25]  ( .D(n589), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[25]) );
  DFFSR \araddr_reg_reg[24]  ( .D(n587), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[24]) );
  DFFSR \araddr_reg_reg[23]  ( .D(n585), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[23]) );
  DFFSR \araddr_reg_reg[22]  ( .D(n583), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[22]) );
  DFFSR \araddr_reg_reg[21]  ( .D(n581), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[21]) );
  DFFSR \araddr_reg_reg[20]  ( .D(n579), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[20]) );
  DFFSR \araddr_reg_reg[19]  ( .D(n577), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[19]) );
  DFFSR \araddr_reg_reg[18]  ( .D(n575), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[18]) );
  DFFSR \araddr_reg_reg[17]  ( .D(n573), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[17]) );
  DFFSR \araddr_reg_reg[16]  ( .D(n571), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[16]) );
  DFFSR \araddr_reg_reg[15]  ( .D(n569), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[15]) );
  DFFSR \araddr_reg_reg[14]  ( .D(n567), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[14]) );
  DFFSR \araddr_reg_reg[13]  ( .D(n565), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[13]) );
  DFFSR \araddr_reg_reg[12]  ( .D(n563), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[12]) );
  DFFSR \araddr_reg_reg[11]  ( .D(n561), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[11]) );
  DFFSR \araddr_reg_reg[10]  ( .D(n559), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[10]) );
  DFFSR \araddr_reg_reg[9]  ( .D(n557), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[9]) );
  DFFSR \araddr_reg_reg[8]  ( .D(n555), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[8]) );
  DFFSR \araddr_reg_reg[7]  ( .D(n553), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[7]) );
  DFFSR \araddr_reg_reg[6]  ( .D(n551), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[6]) );
  DFFSR \araddr_reg_reg[5]  ( .D(n549), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[5]) );
  DFFSR \araddr_reg_reg[4]  ( .D(n547), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[4]) );
  DFFSR \araddr_reg_reg[3]  ( .D(n545), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[3]) );
  DFFSR \araddr_reg_reg[2]  ( .D(n543), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[2]) );
  DFFSR \araddr_reg_reg[1]  ( .D(n541), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[1]) );
  DFFSR \araddr_reg_reg[0]  ( .D(n539), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[0]) );
  DFFSR \araddr_reg_reg[31]  ( .D(n537), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        araddr_reg[31]) );
  DFFSR fft_sub_rvalid_reg ( .D(next_rvalid), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_sub_rvalid) );
  fft_axi_counter_WRITE_OR_READ1 write_counter ( .clk(clk), .n_rst(n_rst), 
        .len(fft_sub_awlen), .ready(fft_sub_wready), .valid(fft_sub_wvalid), 
        .resp(fft_sub_bresp), .last(write_last), .i({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, wcount[2:0]}) );
  fft_axi_counter_WRITE_OR_READ0 read_counter ( .clk(clk), .n_rst(n_rst), 
        .len(fft_sub_arlen), .ready(fft_sub_rready), .valid(fft_sub_rvalid), 
        .resp(fft_sub_rresp), .last(fft_sub_rlast), .i({
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, rcount[2:0]}) );
  NAND2X1 U1214 ( .A(n929), .B(N32), .Y(n1089) );
  INVX4 U1215 ( .A(n1089), .Y(n911) );
  NAND2X1 U1216 ( .A(n931), .B(n1101), .Y(n1095) );
  INVX4 U1217 ( .A(n1095), .Y(n912) );
  BUFX2 U1218 ( .A(n1182), .Y(n913) );
  BUFX2 U1219 ( .A(n1355), .Y(n914) );
  NAND2X1 U1220 ( .A(n931), .B(N32), .Y(n1091) );
  INVX4 U1221 ( .A(n1091), .Y(n915) );
  NAND2X1 U1222 ( .A(n929), .B(n1101), .Y(n1093) );
  INVX4 U1223 ( .A(n1093), .Y(n916) );
  BUFX2 U1224 ( .A(n1216), .Y(n917) );
  BUFX2 U1225 ( .A(n1322), .Y(n918) );
  NAND2X1 U1226 ( .A(N32), .B(n930), .Y(n1088) );
  INVX4 U1227 ( .A(n1088), .Y(n919) );
  NAND2X1 U1228 ( .A(n932), .B(n1101), .Y(n1094) );
  INVX4 U1229 ( .A(n1094), .Y(n920) );
  BUFX2 U1230 ( .A(n1288), .Y(n921) );
  BUFX2 U1231 ( .A(n1250), .Y(n922) );
  INVX2 U1232 ( .A(n1568), .Y(n1567) );
  NAND2X1 U1233 ( .A(n932), .B(N32), .Y(n1090) );
  INVX4 U1234 ( .A(n1090), .Y(n923) );
  NAND2X1 U1235 ( .A(n930), .B(n1101), .Y(n1092) );
  INVX4 U1236 ( .A(n1092), .Y(n924) );
  BUFX2 U1237 ( .A(n1388), .Y(n925) );
  BUFX2 U1238 ( .A(n1115), .Y(n926) );
  BUFX2 U1239 ( .A(n1106), .Y(n927) );
  BUFX2 U1240 ( .A(n1425), .Y(n928) );
  NOR2X1 U1241 ( .A(n1103), .B(N33), .Y(n929) );
  NOR2X1 U1242 ( .A(n1103), .B(n1102), .Y(n930) );
  AOI22X1 U1243 ( .A(\config_reg[5][0] ), .B(n911), .C(\config_reg[7][0] ), 
        .D(n919), .Y(n937) );
  NOR2X1 U1244 ( .A(N33), .B(N34), .Y(n931) );
  NOR2X1 U1245 ( .A(n1102), .B(N34), .Y(n932) );
  AOI22X1 U1246 ( .A(\config_reg[1][0] ), .B(n915), .C(\config_reg[3][0] ), 
        .D(n923), .Y(n936) );
  AOI22X1 U1247 ( .A(\config_reg[4][0] ), .B(n916), .C(\config_reg[6][0] ), 
        .D(n924), .Y(n934) );
  AOI22X1 U1248 ( .A(\config_reg[0][0] ), .B(n912), .C(\config_reg[2][0] ), 
        .D(n920), .Y(n933) );
  AND2X1 U1249 ( .A(n934), .B(n933), .Y(n935) );
  NAND3X1 U1250 ( .A(n937), .B(n936), .C(n935), .Y(N417) );
  AOI22X1 U1251 ( .A(\config_reg[5][1] ), .B(n911), .C(\config_reg[7][1] ), 
        .D(n919), .Y(n942) );
  AOI22X1 U1252 ( .A(\config_reg[1][1] ), .B(n915), .C(\config_reg[3][1] ), 
        .D(n923), .Y(n941) );
  AOI22X1 U1253 ( .A(\config_reg[4][1] ), .B(n916), .C(\config_reg[6][1] ), 
        .D(n924), .Y(n939) );
  AOI22X1 U1254 ( .A(\config_reg[0][1] ), .B(n912), .C(\config_reg[2][1] ), 
        .D(n920), .Y(n938) );
  AND2X1 U1255 ( .A(n939), .B(n938), .Y(n940) );
  NAND3X1 U1256 ( .A(n942), .B(n941), .C(n940), .Y(N416) );
  AOI22X1 U1257 ( .A(\config_reg[5][2] ), .B(n911), .C(\config_reg[7][2] ), 
        .D(n919), .Y(n947) );
  AOI22X1 U1258 ( .A(\config_reg[1][2] ), .B(n915), .C(\config_reg[3][2] ), 
        .D(n923), .Y(n946) );
  AOI22X1 U1259 ( .A(\config_reg[4][2] ), .B(n916), .C(\config_reg[6][2] ), 
        .D(n924), .Y(n944) );
  AOI22X1 U1260 ( .A(\config_reg[0][2] ), .B(n912), .C(\config_reg[2][2] ), 
        .D(n920), .Y(n943) );
  AND2X1 U1261 ( .A(n944), .B(n943), .Y(n945) );
  NAND3X1 U1262 ( .A(n947), .B(n946), .C(n945), .Y(N415) );
  AOI22X1 U1263 ( .A(\config_reg[5][3] ), .B(n911), .C(\config_reg[7][3] ), 
        .D(n919), .Y(n952) );
  AOI22X1 U1264 ( .A(\config_reg[1][3] ), .B(n915), .C(\config_reg[3][3] ), 
        .D(n923), .Y(n951) );
  AOI22X1 U1265 ( .A(\config_reg[4][3] ), .B(n916), .C(\config_reg[6][3] ), 
        .D(n924), .Y(n949) );
  AOI22X1 U1266 ( .A(\config_reg[0][3] ), .B(n912), .C(\config_reg[2][3] ), 
        .D(n920), .Y(n948) );
  AND2X1 U1267 ( .A(n949), .B(n948), .Y(n950) );
  NAND3X1 U1268 ( .A(n952), .B(n951), .C(n950), .Y(N414) );
  AOI22X1 U1269 ( .A(\config_reg[5][4] ), .B(n911), .C(\config_reg[7][4] ), 
        .D(n919), .Y(n957) );
  AOI22X1 U1270 ( .A(\config_reg[1][4] ), .B(n915), .C(\config_reg[3][4] ), 
        .D(n923), .Y(n956) );
  AOI22X1 U1271 ( .A(\config_reg[4][4] ), .B(n916), .C(\config_reg[6][4] ), 
        .D(n924), .Y(n954) );
  AOI22X1 U1272 ( .A(\config_reg[0][4] ), .B(n912), .C(\config_reg[2][4] ), 
        .D(n920), .Y(n953) );
  AND2X1 U1273 ( .A(n954), .B(n953), .Y(n955) );
  NAND3X1 U1274 ( .A(n957), .B(n956), .C(n955), .Y(N413) );
  AOI22X1 U1275 ( .A(\config_reg[5][5] ), .B(n911), .C(\config_reg[7][5] ), 
        .D(n919), .Y(n962) );
  AOI22X1 U1276 ( .A(\config_reg[1][5] ), .B(n915), .C(\config_reg[3][5] ), 
        .D(n923), .Y(n961) );
  AOI22X1 U1277 ( .A(\config_reg[4][5] ), .B(n916), .C(\config_reg[6][5] ), 
        .D(n924), .Y(n959) );
  AOI22X1 U1278 ( .A(\config_reg[0][5] ), .B(n912), .C(\config_reg[2][5] ), 
        .D(n920), .Y(n958) );
  AND2X1 U1279 ( .A(n959), .B(n958), .Y(n960) );
  NAND3X1 U1280 ( .A(n962), .B(n961), .C(n960), .Y(N412) );
  AOI22X1 U1281 ( .A(\config_reg[5][6] ), .B(n911), .C(\config_reg[7][6] ), 
        .D(n919), .Y(n967) );
  AOI22X1 U1282 ( .A(\config_reg[1][6] ), .B(n915), .C(\config_reg[3][6] ), 
        .D(n923), .Y(n966) );
  AOI22X1 U1283 ( .A(\config_reg[4][6] ), .B(n916), .C(\config_reg[6][6] ), 
        .D(n924), .Y(n964) );
  AOI22X1 U1284 ( .A(\config_reg[0][6] ), .B(n912), .C(\config_reg[2][6] ), 
        .D(n920), .Y(n963) );
  AND2X1 U1285 ( .A(n964), .B(n963), .Y(n965) );
  NAND3X1 U1286 ( .A(n967), .B(n966), .C(n965), .Y(N411) );
  AOI22X1 U1287 ( .A(\config_reg[5][7] ), .B(n911), .C(\config_reg[7][7] ), 
        .D(n919), .Y(n972) );
  AOI22X1 U1288 ( .A(\config_reg[1][7] ), .B(n915), .C(\config_reg[3][7] ), 
        .D(n923), .Y(n971) );
  AOI22X1 U1289 ( .A(\config_reg[4][7] ), .B(n916), .C(\config_reg[6][7] ), 
        .D(n924), .Y(n969) );
  AOI22X1 U1290 ( .A(\config_reg[0][7] ), .B(n912), .C(\config_reg[2][7] ), 
        .D(n920), .Y(n968) );
  AND2X1 U1291 ( .A(n969), .B(n968), .Y(n970) );
  NAND3X1 U1292 ( .A(n972), .B(n971), .C(n970), .Y(N410) );
  AOI22X1 U1293 ( .A(\config_reg[5][8] ), .B(n911), .C(\config_reg[7][8] ), 
        .D(n919), .Y(n977) );
  AOI22X1 U1294 ( .A(\config_reg[1][8] ), .B(n915), .C(\config_reg[3][8] ), 
        .D(n923), .Y(n976) );
  AOI22X1 U1295 ( .A(\config_reg[4][8] ), .B(n916), .C(\config_reg[6][8] ), 
        .D(n924), .Y(n974) );
  AOI22X1 U1296 ( .A(\config_reg[0][8] ), .B(n912), .C(\config_reg[2][8] ), 
        .D(n920), .Y(n973) );
  AND2X1 U1297 ( .A(n974), .B(n973), .Y(n975) );
  NAND3X1 U1298 ( .A(n977), .B(n976), .C(n975), .Y(N409) );
  AOI22X1 U1299 ( .A(\config_reg[5][9] ), .B(n911), .C(\config_reg[7][9] ), 
        .D(n919), .Y(n982) );
  AOI22X1 U1300 ( .A(\config_reg[1][9] ), .B(n915), .C(\config_reg[3][9] ), 
        .D(n923), .Y(n981) );
  AOI22X1 U1301 ( .A(\config_reg[4][9] ), .B(n916), .C(\config_reg[6][9] ), 
        .D(n924), .Y(n979) );
  AOI22X1 U1302 ( .A(\config_reg[0][9] ), .B(n912), .C(\config_reg[2][9] ), 
        .D(n920), .Y(n978) );
  AND2X1 U1303 ( .A(n979), .B(n978), .Y(n980) );
  NAND3X1 U1304 ( .A(n982), .B(n981), .C(n980), .Y(N408) );
  AOI22X1 U1305 ( .A(\config_reg[5][10] ), .B(n911), .C(\config_reg[7][10] ), 
        .D(n919), .Y(n987) );
  AOI22X1 U1306 ( .A(\config_reg[1][10] ), .B(n915), .C(\config_reg[3][10] ), 
        .D(n923), .Y(n986) );
  AOI22X1 U1307 ( .A(\config_reg[4][10] ), .B(n916), .C(\config_reg[6][10] ), 
        .D(n924), .Y(n984) );
  AOI22X1 U1308 ( .A(\config_reg[0][10] ), .B(n912), .C(\config_reg[2][10] ), 
        .D(n920), .Y(n983) );
  AND2X1 U1309 ( .A(n984), .B(n983), .Y(n985) );
  NAND3X1 U1310 ( .A(n987), .B(n986), .C(n985), .Y(N407) );
  AOI22X1 U1311 ( .A(\config_reg[5][11] ), .B(n911), .C(\config_reg[7][11] ), 
        .D(n919), .Y(n992) );
  AOI22X1 U1312 ( .A(\config_reg[1][11] ), .B(n915), .C(\config_reg[3][11] ), 
        .D(n923), .Y(n991) );
  AOI22X1 U1313 ( .A(\config_reg[4][11] ), .B(n916), .C(\config_reg[6][11] ), 
        .D(n924), .Y(n989) );
  AOI22X1 U1314 ( .A(\config_reg[0][11] ), .B(n912), .C(\config_reg[2][11] ), 
        .D(n920), .Y(n988) );
  AND2X1 U1315 ( .A(n989), .B(n988), .Y(n990) );
  NAND3X1 U1316 ( .A(n992), .B(n991), .C(n990), .Y(N406) );
  AOI22X1 U1317 ( .A(\config_reg[5][12] ), .B(n911), .C(\config_reg[7][12] ), 
        .D(n919), .Y(n997) );
  AOI22X1 U1318 ( .A(\config_reg[1][12] ), .B(n915), .C(\config_reg[3][12] ), 
        .D(n923), .Y(n996) );
  AOI22X1 U1319 ( .A(\config_reg[4][12] ), .B(n916), .C(\config_reg[6][12] ), 
        .D(n924), .Y(n994) );
  AOI22X1 U1320 ( .A(\config_reg[0][12] ), .B(n912), .C(\config_reg[2][12] ), 
        .D(n920), .Y(n993) );
  AND2X1 U1321 ( .A(n994), .B(n993), .Y(n995) );
  NAND3X1 U1322 ( .A(n997), .B(n996), .C(n995), .Y(N405) );
  AOI22X1 U1323 ( .A(\config_reg[5][13] ), .B(n911), .C(\config_reg[7][13] ), 
        .D(n919), .Y(n1002) );
  AOI22X1 U1324 ( .A(\config_reg[1][13] ), .B(n915), .C(\config_reg[3][13] ), 
        .D(n923), .Y(n1001) );
  AOI22X1 U1325 ( .A(\config_reg[4][13] ), .B(n916), .C(\config_reg[6][13] ), 
        .D(n924), .Y(n999) );
  AOI22X1 U1326 ( .A(\config_reg[0][13] ), .B(n912), .C(\config_reg[2][13] ), 
        .D(n920), .Y(n998) );
  AND2X1 U1327 ( .A(n999), .B(n998), .Y(n1000) );
  NAND3X1 U1328 ( .A(n1002), .B(n1001), .C(n1000), .Y(N404) );
  AOI22X1 U1329 ( .A(\config_reg[5][14] ), .B(n911), .C(\config_reg[7][14] ), 
        .D(n919), .Y(n1007) );
  AOI22X1 U1330 ( .A(\config_reg[1][14] ), .B(n915), .C(\config_reg[3][14] ), 
        .D(n923), .Y(n1006) );
  AOI22X1 U1331 ( .A(\config_reg[4][14] ), .B(n916), .C(\config_reg[6][14] ), 
        .D(n924), .Y(n1004) );
  AOI22X1 U1332 ( .A(\config_reg[0][14] ), .B(n912), .C(\config_reg[2][14] ), 
        .D(n920), .Y(n1003) );
  AND2X1 U1333 ( .A(n1004), .B(n1003), .Y(n1005) );
  NAND3X1 U1334 ( .A(n1007), .B(n1006), .C(n1005), .Y(N403) );
  AOI22X1 U1335 ( .A(\config_reg[5][15] ), .B(n911), .C(\config_reg[7][15] ), 
        .D(n919), .Y(n1012) );
  AOI22X1 U1336 ( .A(\config_reg[1][15] ), .B(n915), .C(\config_reg[3][15] ), 
        .D(n923), .Y(n1011) );
  AOI22X1 U1337 ( .A(\config_reg[4][15] ), .B(n916), .C(\config_reg[6][15] ), 
        .D(n924), .Y(n1009) );
  AOI22X1 U1338 ( .A(\config_reg[0][15] ), .B(n912), .C(\config_reg[2][15] ), 
        .D(n920), .Y(n1008) );
  AND2X1 U1339 ( .A(n1009), .B(n1008), .Y(n1010) );
  NAND3X1 U1340 ( .A(n1012), .B(n1011), .C(n1010), .Y(N402) );
  AOI22X1 U1341 ( .A(\config_reg[5][16] ), .B(n911), .C(\config_reg[7][16] ), 
        .D(n919), .Y(n1017) );
  AOI22X1 U1342 ( .A(\config_reg[1][16] ), .B(n915), .C(\config_reg[3][16] ), 
        .D(n923), .Y(n1016) );
  AOI22X1 U1343 ( .A(\config_reg[4][16] ), .B(n916), .C(\config_reg[6][16] ), 
        .D(n924), .Y(n1014) );
  AOI22X1 U1344 ( .A(\config_reg[0][16] ), .B(n912), .C(\config_reg[2][16] ), 
        .D(n920), .Y(n1013) );
  AND2X1 U1345 ( .A(n1014), .B(n1013), .Y(n1015) );
  NAND3X1 U1346 ( .A(n1017), .B(n1016), .C(n1015), .Y(N401) );
  AOI22X1 U1347 ( .A(\config_reg[5][17] ), .B(n911), .C(\config_reg[7][17] ), 
        .D(n919), .Y(n1022) );
  AOI22X1 U1348 ( .A(\config_reg[1][17] ), .B(n915), .C(\config_reg[3][17] ), 
        .D(n923), .Y(n1021) );
  AOI22X1 U1349 ( .A(\config_reg[4][17] ), .B(n916), .C(\config_reg[6][17] ), 
        .D(n924), .Y(n1019) );
  AOI22X1 U1350 ( .A(\config_reg[0][17] ), .B(n912), .C(\config_reg[2][17] ), 
        .D(n920), .Y(n1018) );
  AND2X1 U1351 ( .A(n1019), .B(n1018), .Y(n1020) );
  NAND3X1 U1352 ( .A(n1022), .B(n1021), .C(n1020), .Y(N400) );
  AOI22X1 U1353 ( .A(\config_reg[5][18] ), .B(n911), .C(\config_reg[7][18] ), 
        .D(n919), .Y(n1027) );
  AOI22X1 U1354 ( .A(\config_reg[1][18] ), .B(n915), .C(\config_reg[3][18] ), 
        .D(n923), .Y(n1026) );
  AOI22X1 U1355 ( .A(\config_reg[4][18] ), .B(n916), .C(\config_reg[6][18] ), 
        .D(n924), .Y(n1024) );
  AOI22X1 U1356 ( .A(\config_reg[0][18] ), .B(n912), .C(\config_reg[2][18] ), 
        .D(n920), .Y(n1023) );
  AND2X1 U1357 ( .A(n1024), .B(n1023), .Y(n1025) );
  NAND3X1 U1358 ( .A(n1027), .B(n1026), .C(n1025), .Y(N399) );
  AOI22X1 U1359 ( .A(\config_reg[5][19] ), .B(n911), .C(\config_reg[7][19] ), 
        .D(n919), .Y(n1032) );
  AOI22X1 U1360 ( .A(\config_reg[1][19] ), .B(n915), .C(\config_reg[3][19] ), 
        .D(n923), .Y(n1031) );
  AOI22X1 U1361 ( .A(\config_reg[4][19] ), .B(n916), .C(\config_reg[6][19] ), 
        .D(n924), .Y(n1029) );
  AOI22X1 U1362 ( .A(\config_reg[0][19] ), .B(n912), .C(\config_reg[2][19] ), 
        .D(n920), .Y(n1028) );
  AND2X1 U1363 ( .A(n1029), .B(n1028), .Y(n1030) );
  NAND3X1 U1364 ( .A(n1032), .B(n1031), .C(n1030), .Y(N398) );
  AOI22X1 U1365 ( .A(\config_reg[5][20] ), .B(n911), .C(\config_reg[7][20] ), 
        .D(n919), .Y(n1037) );
  AOI22X1 U1366 ( .A(\config_reg[1][20] ), .B(n915), .C(\config_reg[3][20] ), 
        .D(n923), .Y(n1036) );
  AOI22X1 U1367 ( .A(\config_reg[4][20] ), .B(n916), .C(\config_reg[6][20] ), 
        .D(n924), .Y(n1034) );
  AOI22X1 U1368 ( .A(\config_reg[0][20] ), .B(n912), .C(\config_reg[2][20] ), 
        .D(n920), .Y(n1033) );
  AND2X1 U1369 ( .A(n1034), .B(n1033), .Y(n1035) );
  NAND3X1 U1370 ( .A(n1037), .B(n1036), .C(n1035), .Y(N397) );
  AOI22X1 U1371 ( .A(\config_reg[5][21] ), .B(n911), .C(\config_reg[7][21] ), 
        .D(n919), .Y(n1042) );
  AOI22X1 U1372 ( .A(\config_reg[1][21] ), .B(n915), .C(\config_reg[3][21] ), 
        .D(n923), .Y(n1041) );
  AOI22X1 U1373 ( .A(\config_reg[4][21] ), .B(n916), .C(\config_reg[6][21] ), 
        .D(n924), .Y(n1039) );
  AOI22X1 U1374 ( .A(\config_reg[0][21] ), .B(n912), .C(\config_reg[2][21] ), 
        .D(n920), .Y(n1038) );
  AND2X1 U1375 ( .A(n1039), .B(n1038), .Y(n1040) );
  NAND3X1 U1376 ( .A(n1042), .B(n1041), .C(n1040), .Y(N396) );
  AOI22X1 U1377 ( .A(\config_reg[5][22] ), .B(n911), .C(\config_reg[7][22] ), 
        .D(n919), .Y(n1047) );
  AOI22X1 U1378 ( .A(\config_reg[1][22] ), .B(n915), .C(\config_reg[3][22] ), 
        .D(n923), .Y(n1046) );
  AOI22X1 U1379 ( .A(\config_reg[4][22] ), .B(n916), .C(\config_reg[6][22] ), 
        .D(n924), .Y(n1044) );
  AOI22X1 U1380 ( .A(\config_reg[0][22] ), .B(n912), .C(\config_reg[2][22] ), 
        .D(n920), .Y(n1043) );
  AND2X1 U1381 ( .A(n1044), .B(n1043), .Y(n1045) );
  NAND3X1 U1382 ( .A(n1047), .B(n1046), .C(n1045), .Y(N395) );
  AOI22X1 U1383 ( .A(\config_reg[5][23] ), .B(n911), .C(\config_reg[7][23] ), 
        .D(n919), .Y(n1052) );
  AOI22X1 U1384 ( .A(\config_reg[1][23] ), .B(n915), .C(\config_reg[3][23] ), 
        .D(n923), .Y(n1051) );
  AOI22X1 U1385 ( .A(\config_reg[4][23] ), .B(n916), .C(\config_reg[6][23] ), 
        .D(n924), .Y(n1049) );
  AOI22X1 U1386 ( .A(\config_reg[0][23] ), .B(n912), .C(\config_reg[2][23] ), 
        .D(n920), .Y(n1048) );
  AND2X1 U1387 ( .A(n1049), .B(n1048), .Y(n1050) );
  NAND3X1 U1388 ( .A(n1052), .B(n1051), .C(n1050), .Y(N394) );
  AOI22X1 U1389 ( .A(\config_reg[5][24] ), .B(n911), .C(\config_reg[7][24] ), 
        .D(n919), .Y(n1057) );
  AOI22X1 U1390 ( .A(\config_reg[1][24] ), .B(n915), .C(\config_reg[3][24] ), 
        .D(n923), .Y(n1056) );
  AOI22X1 U1391 ( .A(\config_reg[4][24] ), .B(n916), .C(\config_reg[6][24] ), 
        .D(n924), .Y(n1054) );
  AOI22X1 U1392 ( .A(\config_reg[0][24] ), .B(n912), .C(\config_reg[2][24] ), 
        .D(n920), .Y(n1053) );
  AND2X1 U1393 ( .A(n1054), .B(n1053), .Y(n1055) );
  NAND3X1 U1394 ( .A(n1057), .B(n1056), .C(n1055), .Y(N393) );
  AOI22X1 U1395 ( .A(\config_reg[5][25] ), .B(n911), .C(\config_reg[7][25] ), 
        .D(n919), .Y(n1062) );
  AOI22X1 U1396 ( .A(\config_reg[1][25] ), .B(n915), .C(\config_reg[3][25] ), 
        .D(n923), .Y(n1061) );
  AOI22X1 U1397 ( .A(\config_reg[4][25] ), .B(n916), .C(\config_reg[6][25] ), 
        .D(n924), .Y(n1059) );
  AOI22X1 U1398 ( .A(\config_reg[0][25] ), .B(n912), .C(\config_reg[2][25] ), 
        .D(n920), .Y(n1058) );
  AND2X1 U1399 ( .A(n1059), .B(n1058), .Y(n1060) );
  NAND3X1 U1400 ( .A(n1062), .B(n1061), .C(n1060), .Y(N392) );
  AOI22X1 U1401 ( .A(\config_reg[5][26] ), .B(n911), .C(\config_reg[7][26] ), 
        .D(n919), .Y(n1067) );
  AOI22X1 U1402 ( .A(\config_reg[1][26] ), .B(n915), .C(\config_reg[3][26] ), 
        .D(n923), .Y(n1066) );
  AOI22X1 U1403 ( .A(\config_reg[4][26] ), .B(n916), .C(\config_reg[6][26] ), 
        .D(n924), .Y(n1064) );
  AOI22X1 U1404 ( .A(\config_reg[0][26] ), .B(n912), .C(\config_reg[2][26] ), 
        .D(n920), .Y(n1063) );
  AND2X1 U1405 ( .A(n1064), .B(n1063), .Y(n1065) );
  NAND3X1 U1406 ( .A(n1067), .B(n1066), .C(n1065), .Y(N391) );
  AOI22X1 U1407 ( .A(\config_reg[5][27] ), .B(n911), .C(\config_reg[7][27] ), 
        .D(n919), .Y(n1072) );
  AOI22X1 U1408 ( .A(\config_reg[1][27] ), .B(n915), .C(\config_reg[3][27] ), 
        .D(n923), .Y(n1071) );
  AOI22X1 U1409 ( .A(\config_reg[4][27] ), .B(n916), .C(\config_reg[6][27] ), 
        .D(n924), .Y(n1069) );
  AOI22X1 U1410 ( .A(\config_reg[0][27] ), .B(n912), .C(\config_reg[2][27] ), 
        .D(n920), .Y(n1068) );
  AND2X1 U1411 ( .A(n1069), .B(n1068), .Y(n1070) );
  NAND3X1 U1412 ( .A(n1072), .B(n1071), .C(n1070), .Y(N390) );
  AOI22X1 U1413 ( .A(\config_reg[5][28] ), .B(n911), .C(\config_reg[7][28] ), 
        .D(n919), .Y(n1077) );
  AOI22X1 U1414 ( .A(\config_reg[1][28] ), .B(n915), .C(\config_reg[3][28] ), 
        .D(n923), .Y(n1076) );
  AOI22X1 U1415 ( .A(\config_reg[4][28] ), .B(n916), .C(\config_reg[6][28] ), 
        .D(n924), .Y(n1074) );
  AOI22X1 U1416 ( .A(\config_reg[0][28] ), .B(n912), .C(\config_reg[2][28] ), 
        .D(n920), .Y(n1073) );
  AND2X1 U1417 ( .A(n1074), .B(n1073), .Y(n1075) );
  NAND3X1 U1418 ( .A(n1077), .B(n1076), .C(n1075), .Y(N389) );
  AOI22X1 U1419 ( .A(\config_reg[5][29] ), .B(n911), .C(\config_reg[7][29] ), 
        .D(n919), .Y(n1082) );
  AOI22X1 U1420 ( .A(\config_reg[1][29] ), .B(n915), .C(\config_reg[3][29] ), 
        .D(n923), .Y(n1081) );
  AOI22X1 U1421 ( .A(\config_reg[4][29] ), .B(n916), .C(\config_reg[6][29] ), 
        .D(n924), .Y(n1079) );
  AOI22X1 U1422 ( .A(\config_reg[0][29] ), .B(n912), .C(\config_reg[2][29] ), 
        .D(n920), .Y(n1078) );
  AND2X1 U1423 ( .A(n1079), .B(n1078), .Y(n1080) );
  NAND3X1 U1424 ( .A(n1082), .B(n1081), .C(n1080), .Y(N388) );
  AOI22X1 U1425 ( .A(\config_reg[5][30] ), .B(n911), .C(\config_reg[7][30] ), 
        .D(n919), .Y(n1087) );
  AOI22X1 U1426 ( .A(\config_reg[1][30] ), .B(n915), .C(\config_reg[3][30] ), 
        .D(n923), .Y(n1086) );
  AOI22X1 U1427 ( .A(\config_reg[4][30] ), .B(n916), .C(\config_reg[6][30] ), 
        .D(n924), .Y(n1084) );
  AOI22X1 U1428 ( .A(\config_reg[0][30] ), .B(n912), .C(\config_reg[2][30] ), 
        .D(n920), .Y(n1083) );
  AND2X1 U1429 ( .A(n1084), .B(n1083), .Y(n1085) );
  NAND3X1 U1430 ( .A(n1087), .B(n1086), .C(n1085), .Y(N387) );
  AOI22X1 U1431 ( .A(\config_reg[5][31] ), .B(n911), .C(\config_reg[7][31] ), 
        .D(n919), .Y(n1100) );
  AOI22X1 U1432 ( .A(\config_reg[1][31] ), .B(n915), .C(\config_reg[3][31] ), 
        .D(n923), .Y(n1099) );
  AOI22X1 U1433 ( .A(\config_reg[4][31] ), .B(n916), .C(\config_reg[6][31] ), 
        .D(n924), .Y(n1097) );
  AOI22X1 U1434 ( .A(\config_reg[0][31] ), .B(n912), .C(\config_reg[2][31] ), 
        .D(n920), .Y(n1096) );
  AND2X1 U1435 ( .A(n1097), .B(n1096), .Y(n1098) );
  NAND3X1 U1436 ( .A(n1100), .B(n1099), .C(n1098), .Y(N386) );
  INVX2 U1437 ( .A(N32), .Y(n1101) );
  INVX2 U1438 ( .A(N33), .Y(n1102) );
  INVX2 U1439 ( .A(N34), .Y(n1103) );
  OAI21X1 U1440 ( .A(n1104), .B(n1105), .C(n927), .Y(next_rvalid) );
  AND2X1 U1441 ( .A(fft_sub_rlast), .B(fft_sub_rready), .Y(n1104) );
  NOR2X1 U1442 ( .A(n1105), .B(n1107), .Y(next_rresp) );
  NAND2X1 U1443 ( .A(fft_sub_rready), .B(n1108), .Y(n1107) );
  OAI21X1 U1444 ( .A(n1109), .B(n1110), .C(n1111), .Y(n1108) );
  OAI21X1 U1445 ( .A(araddr_reg[2]), .B(n1112), .C(rcount[2]), .Y(n1111) );
  INVX1 U1446 ( .A(araddr_reg[2]), .Y(n1110) );
  INVX1 U1447 ( .A(n1112), .Y(n1109) );
  INVX1 U1448 ( .A(fft_sub_rvalid), .Y(n1105) );
  MUX2X1 U1449 ( .B(n1113), .A(n1114), .S(n926), .Y(\next_config_reg[7][9] )
         );
  INVX1 U1450 ( .A(\config_reg[7][9] ), .Y(n1114) );
  MUX2X1 U1451 ( .B(n1116), .A(n1117), .S(n926), .Y(\next_config_reg[7][8] )
         );
  INVX1 U1452 ( .A(\config_reg[7][8] ), .Y(n1117) );
  MUX2X1 U1453 ( .B(n1118), .A(n1119), .S(n926), .Y(\next_config_reg[7][7] )
         );
  INVX1 U1454 ( .A(\config_reg[7][7] ), .Y(n1119) );
  MUX2X1 U1455 ( .B(n1120), .A(n1121), .S(n926), .Y(\next_config_reg[7][6] )
         );
  INVX1 U1456 ( .A(\config_reg[7][6] ), .Y(n1121) );
  MUX2X1 U1457 ( .B(n1122), .A(n1123), .S(n926), .Y(\next_config_reg[7][5] )
         );
  INVX1 U1458 ( .A(\config_reg[7][5] ), .Y(n1123) );
  MUX2X1 U1459 ( .B(n1124), .A(n1125), .S(n926), .Y(\next_config_reg[7][4] )
         );
  INVX1 U1460 ( .A(\config_reg[7][4] ), .Y(n1125) );
  MUX2X1 U1461 ( .B(n1126), .A(n1127), .S(n926), .Y(\next_config_reg[7][3] )
         );
  INVX1 U1462 ( .A(\config_reg[7][3] ), .Y(n1127) );
  MUX2X1 U1463 ( .B(n1128), .A(n1129), .S(n926), .Y(\next_config_reg[7][31] )
         );
  INVX1 U1464 ( .A(\config_reg[7][31] ), .Y(n1129) );
  MUX2X1 U1465 ( .B(n1130), .A(n1131), .S(n926), .Y(\next_config_reg[7][30] )
         );
  INVX1 U1466 ( .A(\config_reg[7][30] ), .Y(n1131) );
  MUX2X1 U1467 ( .B(n1132), .A(n1133), .S(n926), .Y(\next_config_reg[7][2] )
         );
  INVX1 U1468 ( .A(\config_reg[7][2] ), .Y(n1133) );
  MUX2X1 U1469 ( .B(n1134), .A(n1135), .S(n926), .Y(\next_config_reg[7][29] )
         );
  INVX1 U1470 ( .A(\config_reg[7][29] ), .Y(n1135) );
  MUX2X1 U1471 ( .B(n1136), .A(n1137), .S(n926), .Y(\next_config_reg[7][28] )
         );
  INVX1 U1472 ( .A(\config_reg[7][28] ), .Y(n1137) );
  MUX2X1 U1473 ( .B(n1138), .A(n1139), .S(n926), .Y(\next_config_reg[7][27] )
         );
  INVX1 U1474 ( .A(\config_reg[7][27] ), .Y(n1139) );
  MUX2X1 U1475 ( .B(n1140), .A(n1141), .S(n926), .Y(\next_config_reg[7][26] )
         );
  INVX1 U1476 ( .A(\config_reg[7][26] ), .Y(n1141) );
  MUX2X1 U1477 ( .B(n1142), .A(n1143), .S(n926), .Y(\next_config_reg[7][25] )
         );
  INVX1 U1478 ( .A(\config_reg[7][25] ), .Y(n1143) );
  MUX2X1 U1479 ( .B(n1144), .A(n1145), .S(n926), .Y(\next_config_reg[7][24] )
         );
  INVX1 U1480 ( .A(\config_reg[7][24] ), .Y(n1145) );
  MUX2X1 U1481 ( .B(n1146), .A(n1147), .S(n926), .Y(\next_config_reg[7][23] )
         );
  INVX1 U1482 ( .A(\config_reg[7][23] ), .Y(n1147) );
  MUX2X1 U1483 ( .B(n1148), .A(n1149), .S(n926), .Y(\next_config_reg[7][22] )
         );
  INVX1 U1484 ( .A(\config_reg[7][22] ), .Y(n1149) );
  MUX2X1 U1485 ( .B(n1150), .A(n1151), .S(n926), .Y(\next_config_reg[7][21] )
         );
  INVX1 U1486 ( .A(\config_reg[7][21] ), .Y(n1151) );
  MUX2X1 U1487 ( .B(n1152), .A(n1153), .S(n926), .Y(\next_config_reg[7][20] )
         );
  INVX1 U1488 ( .A(\config_reg[7][20] ), .Y(n1153) );
  MUX2X1 U1489 ( .B(n1154), .A(n1155), .S(n926), .Y(\next_config_reg[7][1] )
         );
  INVX1 U1490 ( .A(\config_reg[7][1] ), .Y(n1155) );
  MUX2X1 U1491 ( .B(n1156), .A(n1157), .S(n926), .Y(\next_config_reg[7][19] )
         );
  INVX1 U1492 ( .A(\config_reg[7][19] ), .Y(n1157) );
  MUX2X1 U1493 ( .B(n1158), .A(n1159), .S(n926), .Y(\next_config_reg[7][18] )
         );
  INVX1 U1494 ( .A(\config_reg[7][18] ), .Y(n1159) );
  MUX2X1 U1495 ( .B(n1160), .A(n1161), .S(n926), .Y(\next_config_reg[7][17] )
         );
  INVX1 U1496 ( .A(\config_reg[7][17] ), .Y(n1161) );
  MUX2X1 U1497 ( .B(n1162), .A(n1163), .S(n926), .Y(\next_config_reg[7][16] )
         );
  INVX1 U1498 ( .A(\config_reg[7][16] ), .Y(n1163) );
  MUX2X1 U1499 ( .B(n1164), .A(n1165), .S(n1115), .Y(\next_config_reg[7][15] )
         );
  INVX1 U1500 ( .A(\config_reg[7][15] ), .Y(n1165) );
  MUX2X1 U1501 ( .B(n1166), .A(n1167), .S(n1115), .Y(\next_config_reg[7][14] )
         );
  INVX1 U1502 ( .A(\config_reg[7][14] ), .Y(n1167) );
  MUX2X1 U1503 ( .B(n1168), .A(n1169), .S(n1115), .Y(\next_config_reg[7][13] )
         );
  INVX1 U1504 ( .A(\config_reg[7][13] ), .Y(n1169) );
  MUX2X1 U1505 ( .B(n1170), .A(n1171), .S(n1115), .Y(\next_config_reg[7][12] )
         );
  INVX1 U1506 ( .A(\config_reg[7][12] ), .Y(n1171) );
  MUX2X1 U1507 ( .B(n1172), .A(n1173), .S(n1115), .Y(\next_config_reg[7][11] )
         );
  INVX1 U1508 ( .A(\config_reg[7][11] ), .Y(n1173) );
  MUX2X1 U1509 ( .B(n1174), .A(n1175), .S(n1115), .Y(\next_config_reg[7][10] )
         );
  INVX1 U1510 ( .A(\config_reg[7][10] ), .Y(n1175) );
  MUX2X1 U1511 ( .B(n1176), .A(n1177), .S(n1115), .Y(\next_config_reg[7][0] )
         );
  NAND3X1 U1512 ( .A(n1178), .B(n1179), .C(n1180), .Y(n1115) );
  INVX1 U1513 ( .A(\config_reg[7][0] ), .Y(n1177) );
  MUX2X1 U1514 ( .B(n1113), .A(n1181), .S(n913), .Y(\next_config_reg[6][9] )
         );
  INVX1 U1515 ( .A(\config_reg[6][9] ), .Y(n1181) );
  MUX2X1 U1516 ( .B(n1116), .A(n1183), .S(n913), .Y(\next_config_reg[6][8] )
         );
  INVX1 U1517 ( .A(\config_reg[6][8] ), .Y(n1183) );
  MUX2X1 U1518 ( .B(n1118), .A(n1184), .S(n913), .Y(\next_config_reg[6][7] )
         );
  INVX1 U1519 ( .A(\config_reg[6][7] ), .Y(n1184) );
  MUX2X1 U1520 ( .B(n1120), .A(n1185), .S(n913), .Y(\next_config_reg[6][6] )
         );
  INVX1 U1521 ( .A(\config_reg[6][6] ), .Y(n1185) );
  MUX2X1 U1522 ( .B(n1122), .A(n1186), .S(n913), .Y(\next_config_reg[6][5] )
         );
  INVX1 U1523 ( .A(\config_reg[6][5] ), .Y(n1186) );
  MUX2X1 U1524 ( .B(n1124), .A(n1187), .S(n913), .Y(\next_config_reg[6][4] )
         );
  INVX1 U1525 ( .A(\config_reg[6][4] ), .Y(n1187) );
  MUX2X1 U1526 ( .B(n1126), .A(n1188), .S(n913), .Y(\next_config_reg[6][3] )
         );
  INVX1 U1527 ( .A(\config_reg[6][3] ), .Y(n1188) );
  MUX2X1 U1528 ( .B(n1128), .A(n1189), .S(n913), .Y(\next_config_reg[6][31] )
         );
  INVX1 U1529 ( .A(\config_reg[6][31] ), .Y(n1189) );
  MUX2X1 U1530 ( .B(n1130), .A(n1190), .S(n913), .Y(\next_config_reg[6][30] )
         );
  INVX1 U1531 ( .A(\config_reg[6][30] ), .Y(n1190) );
  MUX2X1 U1532 ( .B(n1132), .A(n1191), .S(n913), .Y(\next_config_reg[6][2] )
         );
  INVX1 U1533 ( .A(\config_reg[6][2] ), .Y(n1191) );
  MUX2X1 U1534 ( .B(n1134), .A(n1192), .S(n913), .Y(\next_config_reg[6][29] )
         );
  INVX1 U1535 ( .A(\config_reg[6][29] ), .Y(n1192) );
  MUX2X1 U1536 ( .B(n1136), .A(n1193), .S(n913), .Y(\next_config_reg[6][28] )
         );
  INVX1 U1537 ( .A(\config_reg[6][28] ), .Y(n1193) );
  MUX2X1 U1538 ( .B(n1138), .A(n1194), .S(n913), .Y(\next_config_reg[6][27] )
         );
  INVX1 U1539 ( .A(\config_reg[6][27] ), .Y(n1194) );
  MUX2X1 U1540 ( .B(n1140), .A(n1195), .S(n913), .Y(\next_config_reg[6][26] )
         );
  INVX1 U1541 ( .A(\config_reg[6][26] ), .Y(n1195) );
  MUX2X1 U1542 ( .B(n1142), .A(n1196), .S(n913), .Y(\next_config_reg[6][25] )
         );
  INVX1 U1543 ( .A(\config_reg[6][25] ), .Y(n1196) );
  MUX2X1 U1544 ( .B(n1144), .A(n1197), .S(n913), .Y(\next_config_reg[6][24] )
         );
  INVX1 U1545 ( .A(\config_reg[6][24] ), .Y(n1197) );
  MUX2X1 U1546 ( .B(n1146), .A(n1198), .S(n913), .Y(\next_config_reg[6][23] )
         );
  INVX1 U1547 ( .A(\config_reg[6][23] ), .Y(n1198) );
  MUX2X1 U1548 ( .B(n1148), .A(n1199), .S(n913), .Y(\next_config_reg[6][22] )
         );
  INVX1 U1549 ( .A(\config_reg[6][22] ), .Y(n1199) );
  MUX2X1 U1550 ( .B(n1150), .A(n1200), .S(n913), .Y(\next_config_reg[6][21] )
         );
  INVX1 U1551 ( .A(\config_reg[6][21] ), .Y(n1200) );
  MUX2X1 U1552 ( .B(n1152), .A(n1201), .S(n913), .Y(\next_config_reg[6][20] )
         );
  INVX1 U1553 ( .A(\config_reg[6][20] ), .Y(n1201) );
  MUX2X1 U1554 ( .B(n1154), .A(n1202), .S(n913), .Y(\next_config_reg[6][1] )
         );
  INVX1 U1555 ( .A(\config_reg[6][1] ), .Y(n1202) );
  MUX2X1 U1556 ( .B(n1156), .A(n1203), .S(n913), .Y(\next_config_reg[6][19] )
         );
  INVX1 U1557 ( .A(\config_reg[6][19] ), .Y(n1203) );
  MUX2X1 U1558 ( .B(n1158), .A(n1204), .S(n913), .Y(\next_config_reg[6][18] )
         );
  INVX1 U1559 ( .A(\config_reg[6][18] ), .Y(n1204) );
  MUX2X1 U1560 ( .B(n1160), .A(n1205), .S(n913), .Y(\next_config_reg[6][17] )
         );
  INVX1 U1561 ( .A(\config_reg[6][17] ), .Y(n1205) );
  MUX2X1 U1562 ( .B(n1162), .A(n1206), .S(n913), .Y(\next_config_reg[6][16] )
         );
  INVX1 U1563 ( .A(\config_reg[6][16] ), .Y(n1206) );
  MUX2X1 U1564 ( .B(n1164), .A(n1207), .S(n1182), .Y(\next_config_reg[6][15] )
         );
  INVX1 U1565 ( .A(\config_reg[6][15] ), .Y(n1207) );
  MUX2X1 U1566 ( .B(n1166), .A(n1208), .S(n1182), .Y(\next_config_reg[6][14] )
         );
  INVX1 U1567 ( .A(\config_reg[6][14] ), .Y(n1208) );
  MUX2X1 U1568 ( .B(n1168), .A(n1209), .S(n1182), .Y(\next_config_reg[6][13] )
         );
  INVX1 U1569 ( .A(\config_reg[6][13] ), .Y(n1209) );
  MUX2X1 U1570 ( .B(n1170), .A(n1210), .S(n1182), .Y(\next_config_reg[6][12] )
         );
  INVX1 U1571 ( .A(\config_reg[6][12] ), .Y(n1210) );
  MUX2X1 U1572 ( .B(n1172), .A(n1211), .S(n1182), .Y(\next_config_reg[6][11] )
         );
  INVX1 U1573 ( .A(\config_reg[6][11] ), .Y(n1211) );
  MUX2X1 U1574 ( .B(n1174), .A(n1212), .S(n1182), .Y(\next_config_reg[6][10] )
         );
  INVX1 U1575 ( .A(\config_reg[6][10] ), .Y(n1212) );
  MUX2X1 U1576 ( .B(n1176), .A(n1213), .S(n1182), .Y(\next_config_reg[6][0] )
         );
  NAND3X1 U1577 ( .A(n1179), .B(n1214), .C(n1180), .Y(n1182) );
  INVX1 U1578 ( .A(\config_reg[6][0] ), .Y(n1213) );
  MUX2X1 U1579 ( .B(n1113), .A(n1215), .S(n917), .Y(\next_config_reg[5][9] )
         );
  INVX1 U1580 ( .A(\config_reg[5][9] ), .Y(n1215) );
  MUX2X1 U1581 ( .B(n1116), .A(n1217), .S(n917), .Y(\next_config_reg[5][8] )
         );
  INVX1 U1582 ( .A(\config_reg[5][8] ), .Y(n1217) );
  MUX2X1 U1583 ( .B(n1118), .A(n1218), .S(n917), .Y(\next_config_reg[5][7] )
         );
  INVX1 U1584 ( .A(\config_reg[5][7] ), .Y(n1218) );
  MUX2X1 U1585 ( .B(n1120), .A(n1219), .S(n917), .Y(\next_config_reg[5][6] )
         );
  INVX1 U1586 ( .A(\config_reg[5][6] ), .Y(n1219) );
  MUX2X1 U1587 ( .B(n1122), .A(n1220), .S(n917), .Y(\next_config_reg[5][5] )
         );
  INVX1 U1588 ( .A(\config_reg[5][5] ), .Y(n1220) );
  MUX2X1 U1589 ( .B(n1124), .A(n1221), .S(n917), .Y(\next_config_reg[5][4] )
         );
  INVX1 U1590 ( .A(\config_reg[5][4] ), .Y(n1221) );
  MUX2X1 U1591 ( .B(n1126), .A(n1222), .S(n917), .Y(\next_config_reg[5][3] )
         );
  INVX1 U1592 ( .A(\config_reg[5][3] ), .Y(n1222) );
  MUX2X1 U1593 ( .B(n1128), .A(n1223), .S(n917), .Y(\next_config_reg[5][31] )
         );
  INVX1 U1594 ( .A(\config_reg[5][31] ), .Y(n1223) );
  MUX2X1 U1595 ( .B(n1130), .A(n1224), .S(n917), .Y(\next_config_reg[5][30] )
         );
  INVX1 U1596 ( .A(\config_reg[5][30] ), .Y(n1224) );
  MUX2X1 U1597 ( .B(n1132), .A(n1225), .S(n917), .Y(\next_config_reg[5][2] )
         );
  INVX1 U1598 ( .A(\config_reg[5][2] ), .Y(n1225) );
  MUX2X1 U1599 ( .B(n1134), .A(n1226), .S(n917), .Y(\next_config_reg[5][29] )
         );
  INVX1 U1600 ( .A(\config_reg[5][29] ), .Y(n1226) );
  MUX2X1 U1601 ( .B(n1136), .A(n1227), .S(n917), .Y(\next_config_reg[5][28] )
         );
  INVX1 U1602 ( .A(\config_reg[5][28] ), .Y(n1227) );
  MUX2X1 U1603 ( .B(n1138), .A(n1228), .S(n917), .Y(\next_config_reg[5][27] )
         );
  INVX1 U1604 ( .A(\config_reg[5][27] ), .Y(n1228) );
  MUX2X1 U1605 ( .B(n1140), .A(n1229), .S(n917), .Y(\next_config_reg[5][26] )
         );
  INVX1 U1606 ( .A(\config_reg[5][26] ), .Y(n1229) );
  MUX2X1 U1607 ( .B(n1142), .A(n1230), .S(n917), .Y(\next_config_reg[5][25] )
         );
  INVX1 U1608 ( .A(\config_reg[5][25] ), .Y(n1230) );
  MUX2X1 U1609 ( .B(n1144), .A(n1231), .S(n917), .Y(\next_config_reg[5][24] )
         );
  INVX1 U1610 ( .A(\config_reg[5][24] ), .Y(n1231) );
  MUX2X1 U1611 ( .B(n1146), .A(n1232), .S(n917), .Y(\next_config_reg[5][23] )
         );
  INVX1 U1612 ( .A(\config_reg[5][23] ), .Y(n1232) );
  MUX2X1 U1613 ( .B(n1148), .A(n1233), .S(n917), .Y(\next_config_reg[5][22] )
         );
  INVX1 U1614 ( .A(\config_reg[5][22] ), .Y(n1233) );
  MUX2X1 U1615 ( .B(n1150), .A(n1234), .S(n917), .Y(\next_config_reg[5][21] )
         );
  INVX1 U1616 ( .A(\config_reg[5][21] ), .Y(n1234) );
  MUX2X1 U1617 ( .B(n1152), .A(n1235), .S(n917), .Y(\next_config_reg[5][20] )
         );
  INVX1 U1618 ( .A(\config_reg[5][20] ), .Y(n1235) );
  MUX2X1 U1619 ( .B(n1154), .A(n1236), .S(n917), .Y(\next_config_reg[5][1] )
         );
  INVX1 U1620 ( .A(\config_reg[5][1] ), .Y(n1236) );
  MUX2X1 U1621 ( .B(n1156), .A(n1237), .S(n917), .Y(\next_config_reg[5][19] )
         );
  INVX1 U1622 ( .A(\config_reg[5][19] ), .Y(n1237) );
  MUX2X1 U1623 ( .B(n1158), .A(n1238), .S(n917), .Y(\next_config_reg[5][18] )
         );
  INVX1 U1624 ( .A(\config_reg[5][18] ), .Y(n1238) );
  MUX2X1 U1625 ( .B(n1160), .A(n1239), .S(n917), .Y(\next_config_reg[5][17] )
         );
  INVX1 U1626 ( .A(\config_reg[5][17] ), .Y(n1239) );
  MUX2X1 U1627 ( .B(n1162), .A(n1240), .S(n917), .Y(\next_config_reg[5][16] )
         );
  INVX1 U1628 ( .A(\config_reg[5][16] ), .Y(n1240) );
  MUX2X1 U1629 ( .B(n1164), .A(n1241), .S(n1216), .Y(\next_config_reg[5][15] )
         );
  INVX1 U1630 ( .A(\config_reg[5][15] ), .Y(n1241) );
  MUX2X1 U1631 ( .B(n1166), .A(n1242), .S(n1216), .Y(\next_config_reg[5][14] )
         );
  INVX1 U1632 ( .A(\config_reg[5][14] ), .Y(n1242) );
  MUX2X1 U1633 ( .B(n1168), .A(n1243), .S(n1216), .Y(\next_config_reg[5][13] )
         );
  INVX1 U1634 ( .A(\config_reg[5][13] ), .Y(n1243) );
  MUX2X1 U1635 ( .B(n1170), .A(n1244), .S(n1216), .Y(\next_config_reg[5][12] )
         );
  INVX1 U1636 ( .A(\config_reg[5][12] ), .Y(n1244) );
  MUX2X1 U1637 ( .B(n1172), .A(n1245), .S(n1216), .Y(\next_config_reg[5][11] )
         );
  INVX1 U1638 ( .A(\config_reg[5][11] ), .Y(n1245) );
  MUX2X1 U1639 ( .B(n1174), .A(n1246), .S(n1216), .Y(\next_config_reg[5][10] )
         );
  INVX1 U1640 ( .A(\config_reg[5][10] ), .Y(n1246) );
  MUX2X1 U1641 ( .B(n1176), .A(n1247), .S(n1216), .Y(\next_config_reg[5][0] )
         );
  NAND3X1 U1642 ( .A(n1180), .B(n1178), .C(n1248), .Y(n1216) );
  INVX1 U1643 ( .A(\config_reg[5][0] ), .Y(n1247) );
  MUX2X1 U1644 ( .B(n1113), .A(n1249), .S(n922), .Y(\next_config_reg[4][9] )
         );
  INVX1 U1645 ( .A(\config_reg[4][9] ), .Y(n1249) );
  MUX2X1 U1646 ( .B(n1116), .A(n1251), .S(n922), .Y(\next_config_reg[4][8] )
         );
  INVX1 U1647 ( .A(\config_reg[4][8] ), .Y(n1251) );
  MUX2X1 U1648 ( .B(n1118), .A(n1252), .S(n922), .Y(\next_config_reg[4][7] )
         );
  INVX1 U1649 ( .A(\config_reg[4][7] ), .Y(n1252) );
  MUX2X1 U1650 ( .B(n1120), .A(n1253), .S(n922), .Y(\next_config_reg[4][6] )
         );
  INVX1 U1651 ( .A(\config_reg[4][6] ), .Y(n1253) );
  MUX2X1 U1652 ( .B(n1122), .A(n1254), .S(n922), .Y(\next_config_reg[4][5] )
         );
  INVX1 U1653 ( .A(\config_reg[4][5] ), .Y(n1254) );
  MUX2X1 U1654 ( .B(n1124), .A(n1255), .S(n922), .Y(\next_config_reg[4][4] )
         );
  INVX1 U1655 ( .A(\config_reg[4][4] ), .Y(n1255) );
  MUX2X1 U1656 ( .B(n1126), .A(n1256), .S(n922), .Y(\next_config_reg[4][3] )
         );
  INVX1 U1657 ( .A(\config_reg[4][3] ), .Y(n1256) );
  MUX2X1 U1658 ( .B(n1128), .A(n1257), .S(n922), .Y(\next_config_reg[4][31] )
         );
  INVX1 U1659 ( .A(\config_reg[4][31] ), .Y(n1257) );
  MUX2X1 U1660 ( .B(n1130), .A(n1258), .S(n922), .Y(\next_config_reg[4][30] )
         );
  INVX1 U1661 ( .A(\config_reg[4][30] ), .Y(n1258) );
  MUX2X1 U1662 ( .B(n1132), .A(n1259), .S(n922), .Y(\next_config_reg[4][2] )
         );
  INVX1 U1663 ( .A(\config_reg[4][2] ), .Y(n1259) );
  MUX2X1 U1664 ( .B(n1134), .A(n1260), .S(n922), .Y(\next_config_reg[4][29] )
         );
  INVX1 U1665 ( .A(\config_reg[4][29] ), .Y(n1260) );
  MUX2X1 U1666 ( .B(n1136), .A(n1261), .S(n922), .Y(\next_config_reg[4][28] )
         );
  INVX1 U1667 ( .A(\config_reg[4][28] ), .Y(n1261) );
  MUX2X1 U1668 ( .B(n1138), .A(n1262), .S(n922), .Y(\next_config_reg[4][27] )
         );
  INVX1 U1669 ( .A(\config_reg[4][27] ), .Y(n1262) );
  MUX2X1 U1670 ( .B(n1140), .A(n1263), .S(n922), .Y(\next_config_reg[4][26] )
         );
  INVX1 U1671 ( .A(\config_reg[4][26] ), .Y(n1263) );
  MUX2X1 U1672 ( .B(n1142), .A(n1264), .S(n922), .Y(\next_config_reg[4][25] )
         );
  INVX1 U1673 ( .A(\config_reg[4][25] ), .Y(n1264) );
  MUX2X1 U1674 ( .B(n1144), .A(n1265), .S(n922), .Y(\next_config_reg[4][24] )
         );
  INVX1 U1675 ( .A(\config_reg[4][24] ), .Y(n1265) );
  MUX2X1 U1676 ( .B(n1146), .A(n1266), .S(n922), .Y(\next_config_reg[4][23] )
         );
  INVX1 U1677 ( .A(\config_reg[4][23] ), .Y(n1266) );
  MUX2X1 U1678 ( .B(n1148), .A(n1267), .S(n922), .Y(\next_config_reg[4][22] )
         );
  INVX1 U1679 ( .A(\config_reg[4][22] ), .Y(n1267) );
  MUX2X1 U1680 ( .B(n1150), .A(n1268), .S(n922), .Y(\next_config_reg[4][21] )
         );
  INVX1 U1681 ( .A(\config_reg[4][21] ), .Y(n1268) );
  MUX2X1 U1682 ( .B(n1152), .A(n1269), .S(n922), .Y(\next_config_reg[4][20] )
         );
  INVX1 U1683 ( .A(\config_reg[4][20] ), .Y(n1269) );
  MUX2X1 U1684 ( .B(n1154), .A(n1270), .S(n922), .Y(\next_config_reg[4][1] )
         );
  INVX1 U1685 ( .A(\config_reg[4][1] ), .Y(n1270) );
  MUX2X1 U1686 ( .B(n1156), .A(n1271), .S(n922), .Y(\next_config_reg[4][19] )
         );
  INVX1 U1687 ( .A(\config_reg[4][19] ), .Y(n1271) );
  MUX2X1 U1688 ( .B(n1158), .A(n1272), .S(n922), .Y(\next_config_reg[4][18] )
         );
  INVX1 U1689 ( .A(\config_reg[4][18] ), .Y(n1272) );
  MUX2X1 U1690 ( .B(n1160), .A(n1273), .S(n922), .Y(\next_config_reg[4][17] )
         );
  INVX1 U1691 ( .A(\config_reg[4][17] ), .Y(n1273) );
  MUX2X1 U1692 ( .B(n1162), .A(n1274), .S(n922), .Y(\next_config_reg[4][16] )
         );
  INVX1 U1693 ( .A(\config_reg[4][16] ), .Y(n1274) );
  MUX2X1 U1694 ( .B(n1164), .A(n1275), .S(n1250), .Y(\next_config_reg[4][15] )
         );
  INVX1 U1695 ( .A(\config_reg[4][15] ), .Y(n1275) );
  MUX2X1 U1696 ( .B(n1166), .A(n1276), .S(n1250), .Y(\next_config_reg[4][14] )
         );
  INVX1 U1697 ( .A(\config_reg[4][14] ), .Y(n1276) );
  MUX2X1 U1698 ( .B(n1168), .A(n1277), .S(n1250), .Y(\next_config_reg[4][13] )
         );
  INVX1 U1699 ( .A(\config_reg[4][13] ), .Y(n1277) );
  MUX2X1 U1700 ( .B(n1170), .A(n1278), .S(n1250), .Y(\next_config_reg[4][12] )
         );
  INVX1 U1701 ( .A(\config_reg[4][12] ), .Y(n1278) );
  MUX2X1 U1702 ( .B(n1172), .A(n1279), .S(n1250), .Y(\next_config_reg[4][11] )
         );
  INVX1 U1703 ( .A(\config_reg[4][11] ), .Y(n1279) );
  MUX2X1 U1704 ( .B(n1174), .A(n1280), .S(n1250), .Y(\next_config_reg[4][10] )
         );
  INVX1 U1705 ( .A(\config_reg[4][10] ), .Y(n1280) );
  MUX2X1 U1706 ( .B(n1176), .A(n1281), .S(n1250), .Y(\next_config_reg[4][0] )
         );
  NAND3X1 U1707 ( .A(n1180), .B(n1214), .C(n1248), .Y(n1250) );
  INVX1 U1708 ( .A(n1282), .Y(n1180) );
  NAND3X1 U1709 ( .A(n1283), .B(n1284), .C(n1285), .Y(n1282) );
  INVX1 U1710 ( .A(n1286), .Y(n1284) );
  INVX1 U1711 ( .A(\config_reg[4][0] ), .Y(n1281) );
  MUX2X1 U1712 ( .B(n1113), .A(n1287), .S(n921), .Y(\next_config_reg[3][9] )
         );
  INVX1 U1713 ( .A(\config_reg[3][9] ), .Y(n1287) );
  MUX2X1 U1714 ( .B(n1116), .A(n1289), .S(n921), .Y(\next_config_reg[3][8] )
         );
  INVX1 U1715 ( .A(\config_reg[3][8] ), .Y(n1289) );
  MUX2X1 U1716 ( .B(n1118), .A(n1290), .S(n921), .Y(\next_config_reg[3][7] )
         );
  INVX1 U1717 ( .A(\config_reg[3][7] ), .Y(n1290) );
  MUX2X1 U1718 ( .B(n1120), .A(n1291), .S(n921), .Y(\next_config_reg[3][6] )
         );
  INVX1 U1719 ( .A(\config_reg[3][6] ), .Y(n1291) );
  MUX2X1 U1720 ( .B(n1122), .A(n1292), .S(n921), .Y(\next_config_reg[3][5] )
         );
  INVX1 U1721 ( .A(\config_reg[3][5] ), .Y(n1292) );
  MUX2X1 U1722 ( .B(n1124), .A(n1293), .S(n921), .Y(\next_config_reg[3][4] )
         );
  INVX1 U1723 ( .A(\config_reg[3][4] ), .Y(n1293) );
  MUX2X1 U1724 ( .B(n1126), .A(n1294), .S(n921), .Y(\next_config_reg[3][3] )
         );
  INVX1 U1725 ( .A(\config_reg[3][3] ), .Y(n1294) );
  MUX2X1 U1726 ( .B(n1128), .A(n1295), .S(n921), .Y(\next_config_reg[3][31] )
         );
  INVX1 U1727 ( .A(\config_reg[3][31] ), .Y(n1295) );
  MUX2X1 U1728 ( .B(n1130), .A(n1296), .S(n921), .Y(\next_config_reg[3][30] )
         );
  INVX1 U1729 ( .A(\config_reg[3][30] ), .Y(n1296) );
  MUX2X1 U1730 ( .B(n1132), .A(n1297), .S(n921), .Y(\next_config_reg[3][2] )
         );
  INVX1 U1731 ( .A(\config_reg[3][2] ), .Y(n1297) );
  MUX2X1 U1732 ( .B(n1134), .A(n1298), .S(n921), .Y(\next_config_reg[3][29] )
         );
  INVX1 U1733 ( .A(\config_reg[3][29] ), .Y(n1298) );
  MUX2X1 U1734 ( .B(n1136), .A(n1299), .S(n921), .Y(\next_config_reg[3][28] )
         );
  INVX1 U1735 ( .A(\config_reg[3][28] ), .Y(n1299) );
  MUX2X1 U1736 ( .B(n1138), .A(n1300), .S(n921), .Y(\next_config_reg[3][27] )
         );
  INVX1 U1737 ( .A(\config_reg[3][27] ), .Y(n1300) );
  MUX2X1 U1738 ( .B(n1140), .A(n1301), .S(n921), .Y(\next_config_reg[3][26] )
         );
  INVX1 U1739 ( .A(\config_reg[3][26] ), .Y(n1301) );
  MUX2X1 U1740 ( .B(n1142), .A(n1302), .S(n921), .Y(\next_config_reg[3][25] )
         );
  INVX1 U1741 ( .A(\config_reg[3][25] ), .Y(n1302) );
  MUX2X1 U1742 ( .B(n1144), .A(n1303), .S(n921), .Y(\next_config_reg[3][24] )
         );
  INVX1 U1743 ( .A(\config_reg[3][24] ), .Y(n1303) );
  MUX2X1 U1744 ( .B(n1146), .A(n1304), .S(n921), .Y(\next_config_reg[3][23] )
         );
  INVX1 U1745 ( .A(\config_reg[3][23] ), .Y(n1304) );
  MUX2X1 U1746 ( .B(n1148), .A(n1305), .S(n921), .Y(\next_config_reg[3][22] )
         );
  INVX1 U1747 ( .A(\config_reg[3][22] ), .Y(n1305) );
  MUX2X1 U1748 ( .B(n1150), .A(n1306), .S(n921), .Y(\next_config_reg[3][21] )
         );
  INVX1 U1749 ( .A(\config_reg[3][21] ), .Y(n1306) );
  MUX2X1 U1750 ( .B(n1152), .A(n1307), .S(n921), .Y(\next_config_reg[3][20] )
         );
  INVX1 U1751 ( .A(\config_reg[3][20] ), .Y(n1307) );
  MUX2X1 U1752 ( .B(n1154), .A(n1308), .S(n921), .Y(\next_config_reg[3][1] )
         );
  INVX1 U1753 ( .A(\config_reg[3][1] ), .Y(n1308) );
  MUX2X1 U1754 ( .B(n1156), .A(n1309), .S(n921), .Y(\next_config_reg[3][19] )
         );
  INVX1 U1755 ( .A(\config_reg[3][19] ), .Y(n1309) );
  MUX2X1 U1756 ( .B(n1158), .A(n1310), .S(n921), .Y(\next_config_reg[3][18] )
         );
  INVX1 U1757 ( .A(\config_reg[3][18] ), .Y(n1310) );
  MUX2X1 U1758 ( .B(n1160), .A(n1311), .S(n921), .Y(\next_config_reg[3][17] )
         );
  INVX1 U1759 ( .A(\config_reg[3][17] ), .Y(n1311) );
  MUX2X1 U1760 ( .B(n1162), .A(n1312), .S(n921), .Y(\next_config_reg[3][16] )
         );
  INVX1 U1761 ( .A(\config_reg[3][16] ), .Y(n1312) );
  MUX2X1 U1762 ( .B(n1164), .A(n1313), .S(n1288), .Y(\next_config_reg[3][15] )
         );
  INVX1 U1763 ( .A(\config_reg[3][15] ), .Y(n1313) );
  MUX2X1 U1764 ( .B(n1166), .A(n1314), .S(n1288), .Y(\next_config_reg[3][14] )
         );
  INVX1 U1765 ( .A(\config_reg[3][14] ), .Y(n1314) );
  MUX2X1 U1766 ( .B(n1168), .A(n1315), .S(n1288), .Y(\next_config_reg[3][13] )
         );
  INVX1 U1767 ( .A(\config_reg[3][13] ), .Y(n1315) );
  MUX2X1 U1768 ( .B(n1170), .A(n1316), .S(n1288), .Y(\next_config_reg[3][12] )
         );
  INVX1 U1769 ( .A(\config_reg[3][12] ), .Y(n1316) );
  MUX2X1 U1770 ( .B(n1172), .A(n1317), .S(n1288), .Y(\next_config_reg[3][11] )
         );
  INVX1 U1771 ( .A(\config_reg[3][11] ), .Y(n1317) );
  MUX2X1 U1772 ( .B(n1174), .A(n1318), .S(n1288), .Y(\next_config_reg[3][10] )
         );
  INVX1 U1773 ( .A(\config_reg[3][10] ), .Y(n1318) );
  MUX2X1 U1774 ( .B(n1176), .A(n1319), .S(n1288), .Y(\next_config_reg[3][0] )
         );
  NAND3X1 U1775 ( .A(n1178), .B(n1179), .C(n1320), .Y(n1288) );
  INVX1 U1776 ( .A(\config_reg[3][0] ), .Y(n1319) );
  MUX2X1 U1777 ( .B(n1113), .A(n1321), .S(n918), .Y(\next_config_reg[2][9] )
         );
  INVX1 U1778 ( .A(\config_reg[2][9] ), .Y(n1321) );
  MUX2X1 U1779 ( .B(n1116), .A(n1323), .S(n918), .Y(\next_config_reg[2][8] )
         );
  INVX1 U1780 ( .A(\config_reg[2][8] ), .Y(n1323) );
  MUX2X1 U1781 ( .B(n1118), .A(n1324), .S(n918), .Y(\next_config_reg[2][7] )
         );
  INVX1 U1782 ( .A(\config_reg[2][7] ), .Y(n1324) );
  MUX2X1 U1783 ( .B(n1120), .A(n1325), .S(n918), .Y(\next_config_reg[2][6] )
         );
  INVX1 U1784 ( .A(\config_reg[2][6] ), .Y(n1325) );
  MUX2X1 U1785 ( .B(n1122), .A(n1326), .S(n918), .Y(\next_config_reg[2][5] )
         );
  INVX1 U1786 ( .A(\config_reg[2][5] ), .Y(n1326) );
  MUX2X1 U1787 ( .B(n1124), .A(n1327), .S(n918), .Y(\next_config_reg[2][4] )
         );
  INVX1 U1788 ( .A(\config_reg[2][4] ), .Y(n1327) );
  MUX2X1 U1789 ( .B(n1126), .A(n1328), .S(n918), .Y(\next_config_reg[2][3] )
         );
  INVX1 U1790 ( .A(\config_reg[2][3] ), .Y(n1328) );
  MUX2X1 U1791 ( .B(n1128), .A(n1329), .S(n918), .Y(\next_config_reg[2][31] )
         );
  INVX1 U1792 ( .A(\config_reg[2][31] ), .Y(n1329) );
  MUX2X1 U1793 ( .B(n1130), .A(n1330), .S(n918), .Y(\next_config_reg[2][30] )
         );
  INVX1 U1794 ( .A(\config_reg[2][30] ), .Y(n1330) );
  MUX2X1 U1795 ( .B(n1132), .A(n1331), .S(n918), .Y(\next_config_reg[2][2] )
         );
  INVX1 U1796 ( .A(\config_reg[2][2] ), .Y(n1331) );
  MUX2X1 U1797 ( .B(n1134), .A(n1332), .S(n918), .Y(\next_config_reg[2][29] )
         );
  INVX1 U1798 ( .A(\config_reg[2][29] ), .Y(n1332) );
  MUX2X1 U1799 ( .B(n1136), .A(n1333), .S(n918), .Y(\next_config_reg[2][28] )
         );
  INVX1 U1800 ( .A(\config_reg[2][28] ), .Y(n1333) );
  MUX2X1 U1801 ( .B(n1138), .A(n1334), .S(n918), .Y(\next_config_reg[2][27] )
         );
  INVX1 U1802 ( .A(\config_reg[2][27] ), .Y(n1334) );
  MUX2X1 U1803 ( .B(n1140), .A(n1335), .S(n918), .Y(\next_config_reg[2][26] )
         );
  INVX1 U1804 ( .A(\config_reg[2][26] ), .Y(n1335) );
  MUX2X1 U1805 ( .B(n1142), .A(n1336), .S(n918), .Y(\next_config_reg[2][25] )
         );
  INVX1 U1806 ( .A(\config_reg[2][25] ), .Y(n1336) );
  MUX2X1 U1807 ( .B(n1144), .A(n1337), .S(n918), .Y(\next_config_reg[2][24] )
         );
  INVX1 U1808 ( .A(\config_reg[2][24] ), .Y(n1337) );
  MUX2X1 U1809 ( .B(n1146), .A(n1338), .S(n918), .Y(\next_config_reg[2][23] )
         );
  INVX1 U1810 ( .A(\config_reg[2][23] ), .Y(n1338) );
  MUX2X1 U1811 ( .B(n1148), .A(n1339), .S(n918), .Y(\next_config_reg[2][22] )
         );
  INVX1 U1812 ( .A(\config_reg[2][22] ), .Y(n1339) );
  MUX2X1 U1813 ( .B(n1150), .A(n1340), .S(n918), .Y(\next_config_reg[2][21] )
         );
  INVX1 U1814 ( .A(\config_reg[2][21] ), .Y(n1340) );
  MUX2X1 U1815 ( .B(n1152), .A(n1341), .S(n918), .Y(\next_config_reg[2][20] )
         );
  INVX1 U1816 ( .A(\config_reg[2][20] ), .Y(n1341) );
  MUX2X1 U1817 ( .B(n1154), .A(n1342), .S(n918), .Y(\next_config_reg[2][1] )
         );
  INVX1 U1818 ( .A(\config_reg[2][1] ), .Y(n1342) );
  MUX2X1 U1819 ( .B(n1156), .A(n1343), .S(n918), .Y(\next_config_reg[2][19] )
         );
  INVX1 U1820 ( .A(\config_reg[2][19] ), .Y(n1343) );
  MUX2X1 U1821 ( .B(n1158), .A(n1344), .S(n918), .Y(\next_config_reg[2][18] )
         );
  INVX1 U1822 ( .A(\config_reg[2][18] ), .Y(n1344) );
  MUX2X1 U1823 ( .B(n1160), .A(n1345), .S(n918), .Y(\next_config_reg[2][17] )
         );
  INVX1 U1824 ( .A(\config_reg[2][17] ), .Y(n1345) );
  MUX2X1 U1825 ( .B(n1162), .A(n1346), .S(n918), .Y(\next_config_reg[2][16] )
         );
  INVX1 U1826 ( .A(\config_reg[2][16] ), .Y(n1346) );
  MUX2X1 U1827 ( .B(n1164), .A(n1347), .S(n1322), .Y(\next_config_reg[2][15] )
         );
  INVX1 U1828 ( .A(\config_reg[2][15] ), .Y(n1347) );
  MUX2X1 U1829 ( .B(n1166), .A(n1348), .S(n1322), .Y(\next_config_reg[2][14] )
         );
  INVX1 U1830 ( .A(\config_reg[2][14] ), .Y(n1348) );
  MUX2X1 U1831 ( .B(n1168), .A(n1349), .S(n1322), .Y(\next_config_reg[2][13] )
         );
  INVX1 U1832 ( .A(\config_reg[2][13] ), .Y(n1349) );
  MUX2X1 U1833 ( .B(n1170), .A(n1350), .S(n1322), .Y(\next_config_reg[2][12] )
         );
  INVX1 U1834 ( .A(\config_reg[2][12] ), .Y(n1350) );
  MUX2X1 U1835 ( .B(n1172), .A(n1351), .S(n1322), .Y(\next_config_reg[2][11] )
         );
  INVX1 U1836 ( .A(\config_reg[2][11] ), .Y(n1351) );
  MUX2X1 U1837 ( .B(n1174), .A(n1352), .S(n1322), .Y(\next_config_reg[2][10] )
         );
  INVX1 U1838 ( .A(\config_reg[2][10] ), .Y(n1352) );
  MUX2X1 U1839 ( .B(n1176), .A(n1353), .S(n1322), .Y(\next_config_reg[2][0] )
         );
  NAND3X1 U1840 ( .A(n1179), .B(n1214), .C(n1320), .Y(n1322) );
  INVX1 U1841 ( .A(\config_reg[2][0] ), .Y(n1353) );
  MUX2X1 U1842 ( .B(n1113), .A(n1354), .S(n914), .Y(\next_config_reg[1][9] )
         );
  INVX1 U1843 ( .A(\config_reg[1][9] ), .Y(n1354) );
  MUX2X1 U1844 ( .B(n1116), .A(n1356), .S(n914), .Y(\next_config_reg[1][8] )
         );
  INVX1 U1845 ( .A(\config_reg[1][8] ), .Y(n1356) );
  MUX2X1 U1846 ( .B(n1118), .A(n1357), .S(n914), .Y(\next_config_reg[1][7] )
         );
  INVX1 U1847 ( .A(\config_reg[1][7] ), .Y(n1357) );
  MUX2X1 U1848 ( .B(n1120), .A(n1358), .S(n914), .Y(\next_config_reg[1][6] )
         );
  INVX1 U1849 ( .A(\config_reg[1][6] ), .Y(n1358) );
  MUX2X1 U1850 ( .B(n1122), .A(n1359), .S(n914), .Y(\next_config_reg[1][5] )
         );
  INVX1 U1851 ( .A(\config_reg[1][5] ), .Y(n1359) );
  MUX2X1 U1852 ( .B(n1124), .A(n1360), .S(n914), .Y(\next_config_reg[1][4] )
         );
  INVX1 U1853 ( .A(\config_reg[1][4] ), .Y(n1360) );
  MUX2X1 U1854 ( .B(n1126), .A(n1361), .S(n914), .Y(\next_config_reg[1][3] )
         );
  INVX1 U1855 ( .A(\config_reg[1][3] ), .Y(n1361) );
  MUX2X1 U1856 ( .B(n1128), .A(n1362), .S(n914), .Y(\next_config_reg[1][31] )
         );
  INVX1 U1857 ( .A(\config_reg[1][31] ), .Y(n1362) );
  MUX2X1 U1858 ( .B(n1130), .A(n1363), .S(n914), .Y(\next_config_reg[1][30] )
         );
  INVX1 U1859 ( .A(\config_reg[1][30] ), .Y(n1363) );
  MUX2X1 U1860 ( .B(n1132), .A(n1364), .S(n914), .Y(\next_config_reg[1][2] )
         );
  INVX1 U1861 ( .A(\config_reg[1][2] ), .Y(n1364) );
  MUX2X1 U1862 ( .B(n1134), .A(n1365), .S(n914), .Y(\next_config_reg[1][29] )
         );
  INVX1 U1863 ( .A(\config_reg[1][29] ), .Y(n1365) );
  MUX2X1 U1864 ( .B(n1136), .A(n1366), .S(n914), .Y(\next_config_reg[1][28] )
         );
  INVX1 U1865 ( .A(\config_reg[1][28] ), .Y(n1366) );
  MUX2X1 U1866 ( .B(n1138), .A(n1367), .S(n914), .Y(\next_config_reg[1][27] )
         );
  INVX1 U1867 ( .A(\config_reg[1][27] ), .Y(n1367) );
  MUX2X1 U1868 ( .B(n1140), .A(n1368), .S(n914), .Y(\next_config_reg[1][26] )
         );
  INVX1 U1869 ( .A(\config_reg[1][26] ), .Y(n1368) );
  MUX2X1 U1870 ( .B(n1142), .A(n1369), .S(n914), .Y(\next_config_reg[1][25] )
         );
  INVX1 U1871 ( .A(\config_reg[1][25] ), .Y(n1369) );
  MUX2X1 U1872 ( .B(n1144), .A(n1370), .S(n914), .Y(\next_config_reg[1][24] )
         );
  INVX1 U1873 ( .A(\config_reg[1][24] ), .Y(n1370) );
  MUX2X1 U1874 ( .B(n1146), .A(n1371), .S(n914), .Y(\next_config_reg[1][23] )
         );
  INVX1 U1875 ( .A(\config_reg[1][23] ), .Y(n1371) );
  MUX2X1 U1876 ( .B(n1148), .A(n1372), .S(n914), .Y(\next_config_reg[1][22] )
         );
  INVX1 U1877 ( .A(\config_reg[1][22] ), .Y(n1372) );
  MUX2X1 U1878 ( .B(n1150), .A(n1373), .S(n914), .Y(\next_config_reg[1][21] )
         );
  INVX1 U1879 ( .A(\config_reg[1][21] ), .Y(n1373) );
  MUX2X1 U1880 ( .B(n1152), .A(n1374), .S(n914), .Y(\next_config_reg[1][20] )
         );
  INVX1 U1881 ( .A(\config_reg[1][20] ), .Y(n1374) );
  MUX2X1 U1882 ( .B(n1154), .A(n1375), .S(n914), .Y(\next_config_reg[1][1] )
         );
  INVX1 U1883 ( .A(\config_reg[1][1] ), .Y(n1375) );
  MUX2X1 U1884 ( .B(n1156), .A(n1376), .S(n914), .Y(\next_config_reg[1][19] )
         );
  INVX1 U1885 ( .A(\config_reg[1][19] ), .Y(n1376) );
  MUX2X1 U1886 ( .B(n1158), .A(n1377), .S(n914), .Y(\next_config_reg[1][18] )
         );
  INVX1 U1887 ( .A(\config_reg[1][18] ), .Y(n1377) );
  MUX2X1 U1888 ( .B(n1160), .A(n1378), .S(n914), .Y(\next_config_reg[1][17] )
         );
  INVX1 U1889 ( .A(\config_reg[1][17] ), .Y(n1378) );
  MUX2X1 U1890 ( .B(n1162), .A(n1379), .S(n914), .Y(\next_config_reg[1][16] )
         );
  INVX1 U1891 ( .A(\config_reg[1][16] ), .Y(n1379) );
  MUX2X1 U1892 ( .B(n1164), .A(n1380), .S(n1355), .Y(\next_config_reg[1][15] )
         );
  INVX1 U1893 ( .A(\config_reg[1][15] ), .Y(n1380) );
  MUX2X1 U1894 ( .B(n1166), .A(n1381), .S(n1355), .Y(\next_config_reg[1][14] )
         );
  INVX1 U1895 ( .A(\config_reg[1][14] ), .Y(n1381) );
  MUX2X1 U1896 ( .B(n1168), .A(n1382), .S(n1355), .Y(\next_config_reg[1][13] )
         );
  INVX1 U1897 ( .A(\config_reg[1][13] ), .Y(n1382) );
  MUX2X1 U1898 ( .B(n1170), .A(n1383), .S(n1355), .Y(\next_config_reg[1][12] )
         );
  INVX1 U1899 ( .A(\config_reg[1][12] ), .Y(n1383) );
  MUX2X1 U1900 ( .B(n1172), .A(n1384), .S(n1355), .Y(\next_config_reg[1][11] )
         );
  INVX1 U1901 ( .A(\config_reg[1][11] ), .Y(n1384) );
  MUX2X1 U1902 ( .B(n1174), .A(n1385), .S(n1355), .Y(\next_config_reg[1][10] )
         );
  INVX1 U1903 ( .A(\config_reg[1][10] ), .Y(n1385) );
  MUX2X1 U1904 ( .B(n1176), .A(n1386), .S(n1355), .Y(\next_config_reg[1][0] )
         );
  NAND3X1 U1905 ( .A(n1248), .B(n1178), .C(n1320), .Y(n1355) );
  INVX1 U1906 ( .A(n1214), .Y(n1178) );
  INVX1 U1907 ( .A(\config_reg[1][0] ), .Y(n1386) );
  MUX2X1 U1908 ( .B(n1113), .A(n1387), .S(n925), .Y(\next_config_reg[0][9] )
         );
  INVX1 U1909 ( .A(\config_reg[0][9] ), .Y(n1387) );
  NAND2X1 U1910 ( .A(fft_sub_wdata[9]), .B(n1389), .Y(n1113) );
  MUX2X1 U1911 ( .B(n1116), .A(n1390), .S(n925), .Y(\next_config_reg[0][8] )
         );
  INVX1 U1912 ( .A(\config_reg[0][8] ), .Y(n1390) );
  NAND2X1 U1913 ( .A(fft_sub_wdata[8]), .B(n1389), .Y(n1116) );
  MUX2X1 U1914 ( .B(n1118), .A(n1391), .S(n925), .Y(\next_config_reg[0][7] )
         );
  INVX1 U1915 ( .A(\config_reg[0][7] ), .Y(n1391) );
  NAND2X1 U1916 ( .A(fft_sub_wdata[7]), .B(n1389), .Y(n1118) );
  MUX2X1 U1917 ( .B(n1120), .A(n1392), .S(n925), .Y(\next_config_reg[0][6] )
         );
  INVX1 U1918 ( .A(\config_reg[0][6] ), .Y(n1392) );
  NAND2X1 U1919 ( .A(fft_sub_wdata[6]), .B(n1389), .Y(n1120) );
  MUX2X1 U1920 ( .B(n1122), .A(n1393), .S(n925), .Y(\next_config_reg[0][5] )
         );
  INVX1 U1921 ( .A(\config_reg[0][5] ), .Y(n1393) );
  NAND2X1 U1922 ( .A(fft_sub_wdata[5]), .B(n1389), .Y(n1122) );
  MUX2X1 U1923 ( .B(n1124), .A(n1394), .S(n925), .Y(\next_config_reg[0][4] )
         );
  INVX1 U1924 ( .A(\config_reg[0][4] ), .Y(n1394) );
  NAND2X1 U1925 ( .A(fft_sub_wdata[4]), .B(n1389), .Y(n1124) );
  MUX2X1 U1926 ( .B(n1126), .A(n1395), .S(n925), .Y(\next_config_reg[0][3] )
         );
  INVX1 U1927 ( .A(\config_reg[0][3] ), .Y(n1395) );
  NAND2X1 U1928 ( .A(fft_sub_wdata[3]), .B(n1389), .Y(n1126) );
  MUX2X1 U1929 ( .B(n1128), .A(n1396), .S(n925), .Y(\next_config_reg[0][31] )
         );
  INVX1 U1930 ( .A(\config_reg[0][31] ), .Y(n1396) );
  NAND2X1 U1931 ( .A(fft_sub_wdata[31]), .B(n1397), .Y(n1128) );
  MUX2X1 U1932 ( .B(n1130), .A(n1398), .S(n925), .Y(\next_config_reg[0][30] )
         );
  INVX1 U1933 ( .A(\config_reg[0][30] ), .Y(n1398) );
  NAND2X1 U1934 ( .A(fft_sub_wdata[30]), .B(n1397), .Y(n1130) );
  MUX2X1 U1935 ( .B(n1132), .A(n1399), .S(n925), .Y(\next_config_reg[0][2] )
         );
  INVX1 U1936 ( .A(\config_reg[0][2] ), .Y(n1399) );
  NAND2X1 U1937 ( .A(fft_sub_wdata[2]), .B(n1389), .Y(n1132) );
  MUX2X1 U1938 ( .B(n1134), .A(n1400), .S(n925), .Y(\next_config_reg[0][29] )
         );
  INVX1 U1939 ( .A(\config_reg[0][29] ), .Y(n1400) );
  NAND2X1 U1940 ( .A(fft_sub_wdata[29]), .B(n1397), .Y(n1134) );
  MUX2X1 U1941 ( .B(n1136), .A(n1401), .S(n925), .Y(\next_config_reg[0][28] )
         );
  INVX1 U1942 ( .A(\config_reg[0][28] ), .Y(n1401) );
  NAND2X1 U1943 ( .A(fft_sub_wdata[28]), .B(n1397), .Y(n1136) );
  MUX2X1 U1944 ( .B(n1138), .A(n1402), .S(n925), .Y(\next_config_reg[0][27] )
         );
  INVX1 U1945 ( .A(\config_reg[0][27] ), .Y(n1402) );
  NAND2X1 U1946 ( .A(fft_sub_wdata[27]), .B(n1397), .Y(n1138) );
  MUX2X1 U1947 ( .B(n1140), .A(n1403), .S(n925), .Y(\next_config_reg[0][26] )
         );
  INVX1 U1948 ( .A(\config_reg[0][26] ), .Y(n1403) );
  NAND2X1 U1949 ( .A(fft_sub_wdata[26]), .B(n1397), .Y(n1140) );
  MUX2X1 U1950 ( .B(n1142), .A(n1404), .S(n925), .Y(\next_config_reg[0][25] )
         );
  INVX1 U1951 ( .A(\config_reg[0][25] ), .Y(n1404) );
  NAND2X1 U1952 ( .A(fft_sub_wdata[25]), .B(n1397), .Y(n1142) );
  MUX2X1 U1953 ( .B(n1144), .A(n1405), .S(n925), .Y(\next_config_reg[0][24] )
         );
  INVX1 U1954 ( .A(\config_reg[0][24] ), .Y(n1405) );
  NAND2X1 U1955 ( .A(fft_sub_wdata[24]), .B(n1397), .Y(n1144) );
  MUX2X1 U1956 ( .B(n1146), .A(n1406), .S(n925), .Y(\next_config_reg[0][23] )
         );
  INVX1 U1957 ( .A(\config_reg[0][23] ), .Y(n1406) );
  NAND2X1 U1958 ( .A(fft_sub_wdata[23]), .B(n1397), .Y(n1146) );
  MUX2X1 U1959 ( .B(n1148), .A(n1407), .S(n925), .Y(\next_config_reg[0][22] )
         );
  INVX1 U1960 ( .A(\config_reg[0][22] ), .Y(n1407) );
  NAND2X1 U1961 ( .A(fft_sub_wdata[22]), .B(n1397), .Y(n1148) );
  MUX2X1 U1962 ( .B(n1150), .A(n1408), .S(n925), .Y(\next_config_reg[0][21] )
         );
  INVX1 U1963 ( .A(\config_reg[0][21] ), .Y(n1408) );
  NAND2X1 U1964 ( .A(fft_sub_wdata[21]), .B(n1397), .Y(n1150) );
  MUX2X1 U1965 ( .B(n1152), .A(n1409), .S(n925), .Y(\next_config_reg[0][20] )
         );
  INVX1 U1966 ( .A(\config_reg[0][20] ), .Y(n1409) );
  NAND2X1 U1967 ( .A(fft_sub_wdata[20]), .B(n1397), .Y(n1152) );
  MUX2X1 U1968 ( .B(n1154), .A(n1410), .S(n925), .Y(\next_config_reg[0][1] )
         );
  INVX1 U1969 ( .A(\config_reg[0][1] ), .Y(n1410) );
  NAND2X1 U1970 ( .A(fft_sub_wdata[1]), .B(n1389), .Y(n1154) );
  MUX2X1 U1971 ( .B(n1156), .A(n1411), .S(n925), .Y(\next_config_reg[0][19] )
         );
  INVX1 U1972 ( .A(\config_reg[0][19] ), .Y(n1411) );
  NAND2X1 U1973 ( .A(fft_sub_wdata[19]), .B(n1397), .Y(n1156) );
  MUX2X1 U1974 ( .B(n1158), .A(n1412), .S(n925), .Y(\next_config_reg[0][18] )
         );
  INVX1 U1975 ( .A(\config_reg[0][18] ), .Y(n1412) );
  NAND2X1 U1976 ( .A(fft_sub_wdata[18]), .B(n1397), .Y(n1158) );
  MUX2X1 U1977 ( .B(n1160), .A(n1413), .S(n925), .Y(\next_config_reg[0][17] )
         );
  INVX1 U1978 ( .A(\config_reg[0][17] ), .Y(n1413) );
  NAND2X1 U1979 ( .A(fft_sub_wdata[17]), .B(n1397), .Y(n1160) );
  MUX2X1 U1980 ( .B(n1162), .A(n1414), .S(n925), .Y(\next_config_reg[0][16] )
         );
  INVX1 U1981 ( .A(\config_reg[0][16] ), .Y(n1414) );
  NAND2X1 U1982 ( .A(fft_sub_wdata[16]), .B(n1397), .Y(n1162) );
  OR2X1 U1983 ( .A(fft_sub_wstrb[1]), .B(fft_sub_wstrb[0]), .Y(n1397) );
  MUX2X1 U1984 ( .B(n1164), .A(n1415), .S(n1388), .Y(\next_config_reg[0][15] )
         );
  INVX1 U1985 ( .A(\config_reg[0][15] ), .Y(n1415) );
  NAND2X1 U1986 ( .A(fft_sub_wdata[15]), .B(n1389), .Y(n1164) );
  MUX2X1 U1987 ( .B(n1166), .A(n1416), .S(n1388), .Y(\next_config_reg[0][14] )
         );
  INVX1 U1988 ( .A(\config_reg[0][14] ), .Y(n1416) );
  NAND2X1 U1989 ( .A(fft_sub_wdata[14]), .B(n1389), .Y(n1166) );
  MUX2X1 U1990 ( .B(n1168), .A(n1417), .S(n1388), .Y(\next_config_reg[0][13] )
         );
  INVX1 U1991 ( .A(\config_reg[0][13] ), .Y(n1417) );
  NAND2X1 U1992 ( .A(fft_sub_wdata[13]), .B(n1389), .Y(n1168) );
  MUX2X1 U1993 ( .B(n1170), .A(n1418), .S(n1388), .Y(\next_config_reg[0][12] )
         );
  INVX1 U1994 ( .A(\config_reg[0][12] ), .Y(n1418) );
  NAND2X1 U1995 ( .A(fft_sub_wdata[12]), .B(n1389), .Y(n1170) );
  MUX2X1 U1996 ( .B(n1172), .A(n1419), .S(n1388), .Y(\next_config_reg[0][11] )
         );
  INVX1 U1997 ( .A(\config_reg[0][11] ), .Y(n1419) );
  NAND2X1 U1998 ( .A(fft_sub_wdata[11]), .B(n1389), .Y(n1172) );
  MUX2X1 U1999 ( .B(n1174), .A(n1420), .S(n1388), .Y(\next_config_reg[0][10] )
         );
  INVX1 U2000 ( .A(\config_reg[0][10] ), .Y(n1420) );
  NAND2X1 U2001 ( .A(fft_sub_wdata[10]), .B(n1389), .Y(n1174) );
  MUX2X1 U2002 ( .B(n1176), .A(n1421), .S(n1388), .Y(\next_config_reg[0][0] )
         );
  NAND3X1 U2003 ( .A(n1248), .B(n1214), .C(n1320), .Y(n1388) );
  NOR3X1 U2004 ( .A(n1283), .B(n1286), .C(n1422), .Y(n1320) );
  MUX2X1 U2005 ( .B(n1423), .A(n1424), .S(n928), .Y(n1286) );
  NOR2X1 U2006 ( .A(n1426), .B(n1427), .Y(n1424) );
  NAND2X1 U2007 ( .A(n1428), .B(n1429), .Y(n1427) );
  NOR2X1 U2008 ( .A(n1430), .B(n1431), .Y(n1429) );
  NAND3X1 U2009 ( .A(n1432), .B(n1433), .C(n1434), .Y(n1431) );
  NAND3X1 U2010 ( .A(n1435), .B(n1436), .C(n1437), .Y(n1430) );
  NOR2X1 U2011 ( .A(awaddr_reg[23]), .B(awaddr_reg[22]), .Y(n1437) );
  NOR2X1 U2012 ( .A(n1438), .B(n1439), .Y(n1428) );
  NAND3X1 U2013 ( .A(n1440), .B(n1441), .C(n1442), .Y(n1439) );
  NAND3X1 U2014 ( .A(n1443), .B(n1444), .C(n1445), .Y(n1438) );
  NOR2X1 U2015 ( .A(awaddr_reg[16]), .B(awaddr_reg[15]), .Y(n1445) );
  NAND2X1 U2016 ( .A(n1446), .B(n1447), .Y(n1426) );
  NOR2X1 U2017 ( .A(n1448), .B(n1449), .Y(n1447) );
  NAND3X1 U2018 ( .A(n1450), .B(n1451), .C(n1452), .Y(n1449) );
  NOR2X1 U2019 ( .A(awaddr_reg[5]), .B(awaddr_reg[4]), .Y(n1452) );
  NAND3X1 U2020 ( .A(n1453), .B(n1454), .C(n1455), .Y(n1448) );
  NOR2X1 U2021 ( .A(awaddr_reg[9]), .B(awaddr_reg[8]), .Y(n1455) );
  NOR2X1 U2022 ( .A(n1456), .B(n1457), .Y(n1446) );
  NAND3X1 U2023 ( .A(n1458), .B(n1459), .C(n1460), .Y(n1457) );
  NAND3X1 U2024 ( .A(n1461), .B(n1462), .C(n1463), .Y(n1456) );
  NOR2X1 U2025 ( .A(awaddr_reg[30]), .B(awaddr_reg[29]), .Y(n1463) );
  NOR2X1 U2026 ( .A(n1464), .B(n1465), .Y(n1423) );
  NAND2X1 U2027 ( .A(n1466), .B(n1467), .Y(n1465) );
  NOR2X1 U2028 ( .A(n1468), .B(n1469), .Y(n1467) );
  NAND3X1 U2029 ( .A(n1470), .B(n1471), .C(n1472), .Y(n1469) );
  NAND3X1 U2030 ( .A(n1473), .B(n1474), .C(n1475), .Y(n1468) );
  NOR2X1 U2031 ( .A(fft_sub_awaddr[23]), .B(fft_sub_awaddr[22]), .Y(n1475) );
  NOR2X1 U2032 ( .A(n1476), .B(n1477), .Y(n1466) );
  NAND3X1 U2033 ( .A(n1478), .B(n1479), .C(n1480), .Y(n1477) );
  NAND3X1 U2034 ( .A(n1481), .B(n1482), .C(n1483), .Y(n1476) );
  NOR2X1 U2035 ( .A(fft_sub_awaddr[16]), .B(fft_sub_awaddr[15]), .Y(n1483) );
  NAND2X1 U2036 ( .A(n1484), .B(n1485), .Y(n1464) );
  NOR2X1 U2037 ( .A(n1486), .B(n1487), .Y(n1485) );
  NAND3X1 U2038 ( .A(n1488), .B(n1489), .C(n1490), .Y(n1487) );
  NOR2X1 U2039 ( .A(fft_sub_awaddr[5]), .B(fft_sub_awaddr[4]), .Y(n1490) );
  NAND3X1 U2040 ( .A(n1491), .B(n1492), .C(n1493), .Y(n1486) );
  NOR2X1 U2041 ( .A(fft_sub_awaddr[9]), .B(fft_sub_awaddr[8]), .Y(n1493) );
  NOR2X1 U2042 ( .A(n1494), .B(n1495), .Y(n1484) );
  NAND3X1 U2043 ( .A(n1496), .B(n1497), .C(n1498), .Y(n1495) );
  NAND3X1 U2044 ( .A(n1499), .B(n1500), .C(n1501), .Y(n1494) );
  NOR2X1 U2045 ( .A(fft_sub_awaddr[30]), .B(fft_sub_awaddr[29]), .Y(n1501) );
  MUX2X1 U2046 ( .B(n1502), .A(n1503), .S(wcount[2]), .Y(n1283) );
  XNOR2X1 U2047 ( .A(awaddr_reg[2]), .B(n1504), .Y(n1503) );
  OAI21X1 U2048 ( .A(n1504), .B(n1505), .C(n1506), .Y(n1502) );
  OAI21X1 U2049 ( .A(wcount[0]), .B(awaddr_reg[0]), .C(n1507), .Y(n1214) );
  INVX1 U2050 ( .A(n1179), .Y(n1248) );
  XOR2X1 U2051 ( .A(n1508), .B(n1509), .Y(n1179) );
  XNOR2X1 U2052 ( .A(wcount[1]), .B(n1510), .Y(n1509) );
  INVX1 U2053 ( .A(\config_reg[0][0] ), .Y(n1421) );
  NAND2X1 U2054 ( .A(fft_sub_wdata[0]), .B(n1389), .Y(n1176) );
  NAND2X1 U2055 ( .A(fft_sub_wstrb[0]), .B(n1511), .Y(n1389) );
  INVX1 U2056 ( .A(fft_sub_wstrb[1]), .Y(n1511) );
  OAI21X1 U2057 ( .A(fft_sub_bready), .B(n1512), .C(n1513), .Y(next_bvalid) );
  INVX1 U2058 ( .A(fft_sub_bvalid), .Y(n1512) );
  NOR2X1 U2059 ( .A(n1514), .B(n1513), .Y(next_bresp) );
  OAI21X1 U2060 ( .A(write_last), .B(fft_sub_wlast), .C(n1285), .Y(n1513) );
  INVX1 U2061 ( .A(n1422), .Y(n1285) );
  AOI22X1 U2062 ( .A(wcount[2]), .B(n1506), .C(awaddr_reg[2]), .D(n1515), .Y(
        n1514) );
  NAND2X1 U2063 ( .A(n1504), .B(n1505), .Y(n1506) );
  INVX1 U2064 ( .A(awaddr_reg[2]), .Y(n1505) );
  INVX1 U2065 ( .A(n1515), .Y(n1504) );
  OAI21X1 U2066 ( .A(n1507), .B(n1510), .C(n1516), .Y(n1515) );
  OAI21X1 U2067 ( .A(n1508), .B(awaddr_reg[1]), .C(wcount[1]), .Y(n1516) );
  INVX1 U2068 ( .A(n1507), .Y(n1508) );
  INVX1 U2069 ( .A(awaddr_reg[1]), .Y(n1510) );
  NAND2X1 U2070 ( .A(wcount[0]), .B(awaddr_reg[0]), .Y(n1507) );
  MUX2X1 U2071 ( .B(n1492), .A(n1454), .S(n928), .Y(next_awaddr[7]) );
  INVX1 U2072 ( .A(awaddr_reg[7]), .Y(n1454) );
  INVX1 U2073 ( .A(fft_sub_awaddr[7]), .Y(n1492) );
  MUX2X1 U2074 ( .B(n1491), .A(n1453), .S(n928), .Y(next_awaddr[6]) );
  INVX1 U2075 ( .A(awaddr_reg[6]), .Y(n1453) );
  INVX1 U2076 ( .A(fft_sub_awaddr[6]), .Y(n1491) );
  MUX2X1 U2077 ( .B(n1489), .A(n1451), .S(n928), .Y(next_awaddr[3]) );
  INVX1 U2078 ( .A(awaddr_reg[3]), .Y(n1451) );
  INVX1 U2079 ( .A(fft_sub_awaddr[3]), .Y(n1489) );
  MUX2X1 U2080 ( .B(n1488), .A(n1450), .S(n928), .Y(next_awaddr[31]) );
  INVX1 U2081 ( .A(awaddr_reg[31]), .Y(n1450) );
  INVX1 U2082 ( .A(fft_sub_awaddr[31]), .Y(n1488) );
  MUX2X1 U2083 ( .B(n1500), .A(n1462), .S(n928), .Y(next_awaddr[28]) );
  INVX1 U2084 ( .A(awaddr_reg[28]), .Y(n1462) );
  INVX1 U2085 ( .A(fft_sub_awaddr[28]), .Y(n1500) );
  MUX2X1 U2086 ( .B(n1499), .A(n1461), .S(n928), .Y(next_awaddr[27]) );
  INVX1 U2087 ( .A(awaddr_reg[27]), .Y(n1461) );
  INVX1 U2088 ( .A(fft_sub_awaddr[27]), .Y(n1499) );
  MUX2X1 U2089 ( .B(n1497), .A(n1459), .S(n928), .Y(next_awaddr[26]) );
  INVX1 U2090 ( .A(awaddr_reg[26]), .Y(n1459) );
  INVX1 U2091 ( .A(fft_sub_awaddr[26]), .Y(n1497) );
  MUX2X1 U2092 ( .B(n1496), .A(n1458), .S(n928), .Y(next_awaddr[25]) );
  INVX1 U2093 ( .A(awaddr_reg[25]), .Y(n1458) );
  INVX1 U2094 ( .A(fft_sub_awaddr[25]), .Y(n1496) );
  MUX2X1 U2095 ( .B(n1498), .A(n1460), .S(n928), .Y(next_awaddr[24]) );
  INVX1 U2096 ( .A(awaddr_reg[24]), .Y(n1460) );
  INVX1 U2097 ( .A(fft_sub_awaddr[24]), .Y(n1498) );
  MUX2X1 U2098 ( .B(n1474), .A(n1436), .S(n928), .Y(next_awaddr[21]) );
  INVX1 U2099 ( .A(awaddr_reg[21]), .Y(n1436) );
  INVX1 U2100 ( .A(fft_sub_awaddr[21]), .Y(n1474) );
  MUX2X1 U2101 ( .B(n1473), .A(n1435), .S(n928), .Y(next_awaddr[20]) );
  INVX1 U2102 ( .A(awaddr_reg[20]), .Y(n1435) );
  INVX1 U2103 ( .A(fft_sub_awaddr[20]), .Y(n1473) );
  MUX2X1 U2104 ( .B(n1472), .A(n1434), .S(n928), .Y(next_awaddr[17]) );
  INVX1 U2105 ( .A(awaddr_reg[17]), .Y(n1434) );
  INVX1 U2106 ( .A(fft_sub_awaddr[17]), .Y(n1472) );
  INVX1 U2107 ( .A(n1517), .Y(next_awaddr[16]) );
  MUX2X1 U2108 ( .B(fft_sub_awaddr[16]), .A(awaddr_reg[16]), .S(n928), .Y(
        n1517) );
  MUX2X1 U2109 ( .B(n1481), .A(n1443), .S(n928), .Y(next_awaddr[13]) );
  INVX1 U2110 ( .A(awaddr_reg[13]), .Y(n1443) );
  INVX1 U2111 ( .A(fft_sub_awaddr[13]), .Y(n1481) );
  MUX2X1 U2112 ( .B(n1479), .A(n1441), .S(n928), .Y(next_awaddr[12]) );
  INVX1 U2113 ( .A(awaddr_reg[12]), .Y(n1441) );
  INVX1 U2114 ( .A(fft_sub_awaddr[12]), .Y(n1479) );
  MUX2X1 U2115 ( .B(n1478), .A(n1440), .S(n928), .Y(next_awaddr[11]) );
  INVX1 U2116 ( .A(awaddr_reg[11]), .Y(n1440) );
  INVX1 U2117 ( .A(fft_sub_awaddr[11]), .Y(n1478) );
  MUX2X1 U2118 ( .B(n1480), .A(n1442), .S(n928), .Y(next_awaddr[10]) );
  INVX1 U2119 ( .A(awaddr_reg[10]), .Y(n1442) );
  INVX1 U2120 ( .A(fft_sub_awaddr[10]), .Y(n1480) );
  MUX2X1 U2121 ( .B(n1518), .A(fft_sub_arvalid), .S(fft_sub_arready), .Y(
        next_arready) );
  NAND3X1 U2122 ( .A(fft_sub_rready), .B(fft_sub_rlast), .C(fft_sub_rvalid), 
        .Y(n1518) );
  INVX1 U2123 ( .A(n1519), .Y(n1606) );
  MUX2X1 U2124 ( .B(fft_sub_awaddr[30]), .A(awaddr_reg[30]), .S(n928), .Y(
        n1519) );
  INVX1 U2125 ( .A(n1520), .Y(n1607) );
  MUX2X1 U2126 ( .B(fft_sub_awaddr[29]), .A(awaddr_reg[29]), .S(n928), .Y(
        n1520) );
  INVX1 U2127 ( .A(n1521), .Y(n1608) );
  MUX2X1 U2128 ( .B(fft_sub_awaddr[23]), .A(awaddr_reg[23]), .S(n928), .Y(
        n1521) );
  INVX1 U2129 ( .A(n1522), .Y(n1609) );
  MUX2X1 U2130 ( .B(fft_sub_awaddr[22]), .A(awaddr_reg[22]), .S(n928), .Y(
        n1522) );
  MUX2X1 U2131 ( .B(n1471), .A(n1433), .S(n1425), .Y(n1610) );
  INVX1 U2132 ( .A(awaddr_reg[19]), .Y(n1433) );
  INVX1 U2133 ( .A(fft_sub_awaddr[19]), .Y(n1471) );
  MUX2X1 U2134 ( .B(n1470), .A(n1432), .S(n1425), .Y(n1611) );
  INVX1 U2135 ( .A(awaddr_reg[18]), .Y(n1432) );
  INVX1 U2136 ( .A(fft_sub_awaddr[18]), .Y(n1470) );
  INVX1 U2137 ( .A(n1523), .Y(n1612) );
  MUX2X1 U2138 ( .B(fft_sub_awaddr[15]), .A(awaddr_reg[15]), .S(n1425), .Y(
        n1523) );
  MUX2X1 U2139 ( .B(n1482), .A(n1444), .S(n1425), .Y(n1613) );
  INVX1 U2140 ( .A(awaddr_reg[14]), .Y(n1444) );
  INVX1 U2141 ( .A(fft_sub_awaddr[14]), .Y(n1482) );
  INVX1 U2142 ( .A(n1524), .Y(n1614) );
  MUX2X1 U2143 ( .B(fft_sub_awaddr[9]), .A(awaddr_reg[9]), .S(n1425), .Y(n1524) );
  INVX1 U2144 ( .A(n1525), .Y(n1615) );
  MUX2X1 U2145 ( .B(fft_sub_awaddr[8]), .A(awaddr_reg[8]), .S(n1425), .Y(n1525) );
  INVX1 U2146 ( .A(n1526), .Y(n1616) );
  MUX2X1 U2147 ( .B(fft_sub_awaddr[5]), .A(awaddr_reg[5]), .S(n1425), .Y(n1526) );
  INVX1 U2148 ( .A(n1527), .Y(n1617) );
  MUX2X1 U2149 ( .B(fft_sub_awaddr[4]), .A(awaddr_reg[4]), .S(n1425), .Y(n1527) );
  INVX1 U2150 ( .A(n1528), .Y(n1618) );
  MUX2X1 U2151 ( .B(fft_sub_awready), .A(n928), .S(n1529), .Y(n1528) );
  OAI21X1 U2152 ( .A(n1530), .B(n1529), .C(n928), .Y(n910) );
  OAI21X1 U2153 ( .A(n1422), .B(n1531), .C(n928), .Y(n1529) );
  INVX1 U2154 ( .A(fft_sub_wlast), .Y(n1531) );
  NAND2X1 U2155 ( .A(fft_sub_wvalid), .B(fft_sub_wready), .Y(n1422) );
  INVX1 U2156 ( .A(fft_sub_wready), .Y(n1530) );
  INVX1 U2157 ( .A(n1532), .Y(n865) );
  MUX2X1 U2158 ( .B(fft_sub_awaddr[1]), .A(awaddr_reg[1]), .S(n1425), .Y(n1532) );
  INVX1 U2159 ( .A(n1533), .Y(n863) );
  MUX2X1 U2160 ( .B(fft_sub_awaddr[0]), .A(awaddr_reg[0]), .S(n1425), .Y(n1533) );
  INVX1 U2161 ( .A(n1534), .Y(n861) );
  MUX2X1 U2162 ( .B(fft_sub_awaddr[2]), .A(awaddr_reg[2]), .S(n1425), .Y(n1534) );
  NAND2X1 U2163 ( .A(fft_sub_awvalid), .B(fft_sub_awready), .Y(n1425) );
  INVX1 U2164 ( .A(n1535), .Y(n599) );
  MUX2X1 U2165 ( .B(fft_sub_araddr[30]), .A(araddr_reg[30]), .S(n927), .Y(
        n1535) );
  INVX1 U2166 ( .A(n1536), .Y(n597) );
  MUX2X1 U2167 ( .B(fft_sub_araddr[29]), .A(araddr_reg[29]), .S(n927), .Y(
        n1536) );
  INVX1 U2168 ( .A(n1537), .Y(n595) );
  MUX2X1 U2169 ( .B(fft_sub_araddr[28]), .A(araddr_reg[28]), .S(n927), .Y(
        n1537) );
  INVX1 U2170 ( .A(n1538), .Y(n593) );
  MUX2X1 U2171 ( .B(fft_sub_araddr[27]), .A(araddr_reg[27]), .S(n927), .Y(
        n1538) );
  INVX1 U2172 ( .A(n1539), .Y(n591) );
  MUX2X1 U2173 ( .B(fft_sub_araddr[26]), .A(araddr_reg[26]), .S(n927), .Y(
        n1539) );
  INVX1 U2174 ( .A(n1540), .Y(n589) );
  MUX2X1 U2175 ( .B(fft_sub_araddr[25]), .A(araddr_reg[25]), .S(n927), .Y(
        n1540) );
  INVX1 U2176 ( .A(n1541), .Y(n587) );
  MUX2X1 U2177 ( .B(fft_sub_araddr[24]), .A(araddr_reg[24]), .S(n927), .Y(
        n1541) );
  INVX1 U2178 ( .A(n1542), .Y(n585) );
  MUX2X1 U2179 ( .B(fft_sub_araddr[23]), .A(araddr_reg[23]), .S(n927), .Y(
        n1542) );
  INVX1 U2180 ( .A(n1543), .Y(n583) );
  MUX2X1 U2181 ( .B(fft_sub_araddr[22]), .A(araddr_reg[22]), .S(n927), .Y(
        n1543) );
  INVX1 U2182 ( .A(n1544), .Y(n581) );
  MUX2X1 U2183 ( .B(fft_sub_araddr[21]), .A(araddr_reg[21]), .S(n927), .Y(
        n1544) );
  INVX1 U2184 ( .A(n1545), .Y(n579) );
  MUX2X1 U2185 ( .B(fft_sub_araddr[20]), .A(araddr_reg[20]), .S(n927), .Y(
        n1545) );
  INVX1 U2186 ( .A(n1546), .Y(n577) );
  MUX2X1 U2187 ( .B(fft_sub_araddr[19]), .A(araddr_reg[19]), .S(n927), .Y(
        n1546) );
  INVX1 U2188 ( .A(n1547), .Y(n575) );
  MUX2X1 U2189 ( .B(fft_sub_araddr[18]), .A(araddr_reg[18]), .S(n927), .Y(
        n1547) );
  INVX1 U2190 ( .A(n1548), .Y(n573) );
  MUX2X1 U2191 ( .B(fft_sub_araddr[17]), .A(araddr_reg[17]), .S(n927), .Y(
        n1548) );
  INVX1 U2192 ( .A(n1549), .Y(n571) );
  MUX2X1 U2193 ( .B(fft_sub_araddr[16]), .A(araddr_reg[16]), .S(n927), .Y(
        n1549) );
  INVX1 U2194 ( .A(n1550), .Y(n569) );
  MUX2X1 U2195 ( .B(fft_sub_araddr[15]), .A(araddr_reg[15]), .S(n927), .Y(
        n1550) );
  INVX1 U2196 ( .A(n1551), .Y(n567) );
  MUX2X1 U2197 ( .B(fft_sub_araddr[14]), .A(araddr_reg[14]), .S(n927), .Y(
        n1551) );
  INVX1 U2198 ( .A(n1552), .Y(n565) );
  MUX2X1 U2199 ( .B(fft_sub_araddr[13]), .A(araddr_reg[13]), .S(n927), .Y(
        n1552) );
  INVX1 U2200 ( .A(n1553), .Y(n563) );
  MUX2X1 U2201 ( .B(fft_sub_araddr[12]), .A(araddr_reg[12]), .S(n927), .Y(
        n1553) );
  INVX1 U2202 ( .A(n1554), .Y(n561) );
  MUX2X1 U2203 ( .B(fft_sub_araddr[11]), .A(araddr_reg[11]), .S(n927), .Y(
        n1554) );
  INVX1 U2204 ( .A(n1555), .Y(n559) );
  MUX2X1 U2205 ( .B(fft_sub_araddr[10]), .A(araddr_reg[10]), .S(n927), .Y(
        n1555) );
  INVX1 U2206 ( .A(n1556), .Y(n557) );
  MUX2X1 U2207 ( .B(fft_sub_araddr[9]), .A(araddr_reg[9]), .S(n927), .Y(n1556)
         );
  INVX1 U2208 ( .A(n1557), .Y(n555) );
  MUX2X1 U2209 ( .B(fft_sub_araddr[8]), .A(araddr_reg[8]), .S(n927), .Y(n1557)
         );
  INVX1 U2210 ( .A(n1558), .Y(n553) );
  MUX2X1 U2211 ( .B(fft_sub_araddr[7]), .A(araddr_reg[7]), .S(n927), .Y(n1558)
         );
  INVX1 U2212 ( .A(n1559), .Y(n551) );
  MUX2X1 U2213 ( .B(fft_sub_araddr[6]), .A(araddr_reg[6]), .S(n1106), .Y(n1559) );
  INVX1 U2214 ( .A(n1560), .Y(n549) );
  MUX2X1 U2215 ( .B(fft_sub_araddr[5]), .A(araddr_reg[5]), .S(n1106), .Y(n1560) );
  INVX1 U2216 ( .A(n1561), .Y(n547) );
  MUX2X1 U2217 ( .B(fft_sub_araddr[4]), .A(araddr_reg[4]), .S(n1106), .Y(n1561) );
  INVX1 U2218 ( .A(n1562), .Y(n545) );
  MUX2X1 U2219 ( .B(fft_sub_araddr[3]), .A(araddr_reg[3]), .S(n1106), .Y(n1562) );
  INVX1 U2220 ( .A(n1563), .Y(n543) );
  MUX2X1 U2221 ( .B(fft_sub_araddr[2]), .A(araddr_reg[2]), .S(n1106), .Y(n1563) );
  INVX1 U2222 ( .A(n1564), .Y(n541) );
  MUX2X1 U2223 ( .B(fft_sub_araddr[1]), .A(araddr_reg[1]), .S(n1106), .Y(n1564) );
  INVX1 U2224 ( .A(n1565), .Y(n539) );
  MUX2X1 U2225 ( .B(fft_sub_araddr[0]), .A(araddr_reg[0]), .S(n1106), .Y(n1565) );
  INVX1 U2226 ( .A(n1566), .Y(n537) );
  MUX2X1 U2227 ( .B(fft_sub_araddr[31]), .A(araddr_reg[31]), .S(n1106), .Y(
        n1566) );
  NAND2X1 U2228 ( .A(fft_sub_arvalid), .B(fft_sub_arready), .Y(n1106) );
  AND2X1 U2229 ( .A(N408), .B(n1567), .Y(fft_sub_rdata[9]) );
  AND2X1 U2230 ( .A(N409), .B(n1567), .Y(fft_sub_rdata[8]) );
  AND2X1 U2231 ( .A(N410), .B(n1567), .Y(fft_sub_rdata[7]) );
  AND2X1 U2232 ( .A(N411), .B(n1567), .Y(fft_sub_rdata[6]) );
  AND2X1 U2233 ( .A(N412), .B(n1567), .Y(fft_sub_rdata[5]) );
  AND2X1 U2234 ( .A(N413), .B(n1567), .Y(fft_sub_rdata[4]) );
  AND2X1 U2235 ( .A(N414), .B(n1567), .Y(fft_sub_rdata[3]) );
  AND2X1 U2236 ( .A(N386), .B(n1567), .Y(fft_sub_rdata[31]) );
  AND2X1 U2237 ( .A(N387), .B(n1567), .Y(fft_sub_rdata[30]) );
  AND2X1 U2238 ( .A(N415), .B(n1567), .Y(fft_sub_rdata[2]) );
  AND2X1 U2239 ( .A(N388), .B(n1567), .Y(fft_sub_rdata[29]) );
  AND2X1 U2240 ( .A(N389), .B(n1567), .Y(fft_sub_rdata[28]) );
  AND2X1 U2241 ( .A(N390), .B(n1567), .Y(fft_sub_rdata[27]) );
  AND2X1 U2242 ( .A(N391), .B(n1567), .Y(fft_sub_rdata[26]) );
  AND2X1 U2243 ( .A(N392), .B(n1567), .Y(fft_sub_rdata[25]) );
  AND2X1 U2244 ( .A(N393), .B(n1567), .Y(fft_sub_rdata[24]) );
  AND2X1 U2245 ( .A(N394), .B(n1567), .Y(fft_sub_rdata[23]) );
  AND2X1 U2246 ( .A(N395), .B(n1567), .Y(fft_sub_rdata[22]) );
  AND2X1 U2247 ( .A(N396), .B(n1567), .Y(fft_sub_rdata[21]) );
  AND2X1 U2248 ( .A(N397), .B(n1567), .Y(fft_sub_rdata[20]) );
  AND2X1 U2249 ( .A(N416), .B(n1567), .Y(fft_sub_rdata[1]) );
  AND2X1 U2250 ( .A(N398), .B(n1567), .Y(fft_sub_rdata[19]) );
  AND2X1 U2251 ( .A(N399), .B(n1567), .Y(fft_sub_rdata[18]) );
  AND2X1 U2252 ( .A(N400), .B(n1567), .Y(fft_sub_rdata[17]) );
  AND2X1 U2253 ( .A(N401), .B(n1567), .Y(fft_sub_rdata[16]) );
  AND2X1 U2254 ( .A(N402), .B(n1567), .Y(fft_sub_rdata[15]) );
  AND2X1 U2255 ( .A(N403), .B(n1567), .Y(fft_sub_rdata[14]) );
  AND2X1 U2256 ( .A(N404), .B(n1567), .Y(fft_sub_rdata[13]) );
  AND2X1 U2257 ( .A(N405), .B(n1567), .Y(fft_sub_rdata[12]) );
  AND2X1 U2258 ( .A(N406), .B(n1567), .Y(fft_sub_rdata[11]) );
  AND2X1 U2259 ( .A(N407), .B(n1567), .Y(fft_sub_rdata[10]) );
  AND2X1 U2260 ( .A(N417), .B(n1567), .Y(fft_sub_rdata[0]) );
  NAND3X1 U2261 ( .A(n1569), .B(n1570), .C(n1571), .Y(n1568) );
  AND2X1 U2262 ( .A(n1572), .B(n1573), .Y(n1571) );
  NOR2X1 U2263 ( .A(n1574), .B(n1575), .Y(n1573) );
  NAND3X1 U2264 ( .A(n1576), .B(n1577), .C(n1578), .Y(n1575) );
  NOR2X1 U2265 ( .A(araddr_reg[5]), .B(araddr_reg[4]), .Y(n1578) );
  INVX1 U2266 ( .A(araddr_reg[3]), .Y(n1577) );
  INVX1 U2267 ( .A(araddr_reg[31]), .Y(n1576) );
  NAND3X1 U2268 ( .A(n1579), .B(n1580), .C(n1581), .Y(n1574) );
  NOR2X1 U2269 ( .A(araddr_reg[9]), .B(araddr_reg[8]), .Y(n1581) );
  INVX1 U2270 ( .A(araddr_reg[7]), .Y(n1580) );
  INVX1 U2271 ( .A(araddr_reg[6]), .Y(n1579) );
  NOR2X1 U2272 ( .A(n1582), .B(n1583), .Y(n1572) );
  INVX1 U2273 ( .A(n1584), .Y(n1583) );
  NOR3X1 U2274 ( .A(araddr_reg[25]), .B(araddr_reg[26]), .C(araddr_reg[24]), 
        .Y(n1584) );
  NAND3X1 U2275 ( .A(n1585), .B(n1586), .C(n1587), .Y(n1582) );
  NOR2X1 U2276 ( .A(araddr_reg[30]), .B(araddr_reg[29]), .Y(n1587) );
  INVX1 U2277 ( .A(araddr_reg[28]), .Y(n1586) );
  INVX1 U2278 ( .A(araddr_reg[27]), .Y(n1585) );
  NOR2X1 U2279 ( .A(n1588), .B(n1589), .Y(n1570) );
  INVX1 U2280 ( .A(n1590), .Y(n1589) );
  NOR3X1 U2281 ( .A(araddr_reg[18]), .B(araddr_reg[19]), .C(araddr_reg[17]), 
        .Y(n1590) );
  NAND3X1 U2282 ( .A(n1591), .B(n1592), .C(n1593), .Y(n1588) );
  NOR2X1 U2283 ( .A(araddr_reg[23]), .B(araddr_reg[22]), .Y(n1593) );
  INVX1 U2284 ( .A(araddr_reg[21]), .Y(n1592) );
  INVX1 U2285 ( .A(araddr_reg[20]), .Y(n1591) );
  NOR2X1 U2286 ( .A(n1594), .B(n1595), .Y(n1569) );
  INVX1 U2287 ( .A(n1596), .Y(n1595) );
  NOR3X1 U2288 ( .A(araddr_reg[11]), .B(araddr_reg[12]), .C(araddr_reg[10]), 
        .Y(n1596) );
  NAND3X1 U2289 ( .A(n1597), .B(n1598), .C(n1599), .Y(n1594) );
  NOR2X1 U2290 ( .A(araddr_reg[16]), .B(araddr_reg[15]), .Y(n1599) );
  INVX1 U2291 ( .A(araddr_reg[14]), .Y(n1598) );
  INVX1 U2292 ( .A(araddr_reg[13]), .Y(n1597) );
  XNOR2X1 U2293 ( .A(n1600), .B(n1112), .Y(N34) );
  OAI21X1 U2294 ( .A(n1601), .B(n1602), .C(n1603), .Y(n1112) );
  OAI21X1 U2295 ( .A(n1604), .B(araddr_reg[1]), .C(rcount[1]), .Y(n1603) );
  INVX1 U2296 ( .A(araddr_reg[1]), .Y(n1602) );
  XNOR2X1 U2297 ( .A(rcount[2]), .B(araddr_reg[2]), .Y(n1600) );
  XNOR2X1 U2298 ( .A(n1604), .B(n1605), .Y(N33) );
  XNOR2X1 U2299 ( .A(rcount[1]), .B(araddr_reg[1]), .Y(n1605) );
  INVX1 U2300 ( .A(n1601), .Y(n1604) );
  NAND2X1 U2301 ( .A(rcount[0]), .B(araddr_reg[0]), .Y(n1601) );
  XOR2X1 U2302 ( .A(rcount[0]), .B(araddr_reg[0]), .Y(N32) );
endmodule

