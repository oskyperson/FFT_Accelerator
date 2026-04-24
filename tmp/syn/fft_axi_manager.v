/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4
// Date      : Thu Apr 23 20:33:34 2026
/////////////////////////////////////////////////////////////


module fft_cla_1 ( a, b, cin, sum, cout );
  input [31:0] a;
  input [31:0] b;
  output [31:0] sum;
  input cin;
  output cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
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
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271;

  XOR2X1 U1 ( .A(n1), .B(n2), .Y(sum[9]) );
  XNOR2X1 U2 ( .A(n3), .B(n4), .Y(sum[8]) );
  XNOR2X1 U3 ( .A(n5), .B(n6), .Y(sum[7]) );
  XOR2X1 U4 ( .A(n7), .B(n8), .Y(sum[6]) );
  XNOR2X1 U5 ( .A(n9), .B(n10), .Y(sum[5]) );
  XOR2X1 U6 ( .A(n11), .B(n12), .Y(sum[4]) );
  NAND2X1 U7 ( .A(n13), .B(n14), .Y(n11) );
  XNOR2X1 U8 ( .A(n15), .B(n16), .Y(sum[3]) );
  XOR2X1 U9 ( .A(n17), .B(n18), .Y(sum[31]) );
  OAI21X1 U10 ( .A(n19), .B(n20), .C(n21), .Y(n17) );
  AOI22X1 U11 ( .A(n22), .B(n23), .C(a[29]), .D(b[29]), .Y(n19) );
  OAI21X1 U12 ( .A(n24), .B(n25), .C(n26), .Y(n23) );
  XNOR2X1 U13 ( .A(n27), .B(n20), .Y(sum[30]) );
  OAI21X1 U14 ( .A(n28), .B(n29), .C(n30), .Y(n27) );
  AOI22X1 U15 ( .A(n31), .B(n32), .C(n33), .D(n34), .Y(n28) );
  INVX1 U16 ( .A(n25), .Y(n32) );
  AOI21X1 U17 ( .A(n35), .B(n36), .C(n37), .Y(n31) );
  NAND3X1 U18 ( .A(n38), .B(n39), .C(n40), .Y(n36) );
  XNOR2X1 U19 ( .A(n41), .B(n42), .Y(sum[2]) );
  NOR2X1 U20 ( .A(n43), .B(n44), .Y(n42) );
  XNOR2X1 U21 ( .A(n45), .B(n29), .Y(sum[29]) );
  OAI21X1 U22 ( .A(n46), .B(n25), .C(n26), .Y(n45) );
  AOI21X1 U23 ( .A(b[28]), .B(a[28]), .C(n47), .Y(n26) );
  INVX1 U24 ( .A(n48), .Y(n47) );
  NAND3X1 U25 ( .A(a[27]), .B(n33), .C(b[27]), .Y(n48) );
  NAND2X1 U26 ( .A(n49), .B(n33), .Y(n25) );
  AOI21X1 U27 ( .A(n50), .B(n51), .C(n52), .Y(n46) );
  XOR2X1 U28 ( .A(n53), .B(n33), .Y(sum[28]) );
  XNOR2X1 U29 ( .A(n24), .B(n49), .Y(sum[27]) );
  NOR2X1 U30 ( .A(n54), .B(n52), .Y(n24) );
  OAI21X1 U31 ( .A(n55), .B(n56), .C(n57), .Y(n52) );
  NAND3X1 U32 ( .A(a[25]), .B(n58), .C(b[25]), .Y(n57) );
  INVX1 U33 ( .A(a[26]), .Y(n56) );
  INVX1 U34 ( .A(n59), .Y(n54) );
  AOI22X1 U35 ( .A(n50), .B(n60), .C(n61), .D(n62), .Y(n59) );
  NOR2X1 U36 ( .A(n63), .B(n64), .Y(n62) );
  INVX1 U37 ( .A(n65), .Y(n64) );
  AND2X1 U38 ( .A(n66), .B(n50), .Y(n61) );
  OAI21X1 U39 ( .A(n67), .B(n68), .C(n69), .Y(n60) );
  NAND2X1 U40 ( .A(a[23]), .B(n66), .Y(n68) );
  XNOR2X1 U41 ( .A(n70), .B(n37), .Y(sum[26]) );
  OAI21X1 U42 ( .A(n71), .B(n72), .C(n35), .Y(n70) );
  AOI21X1 U43 ( .A(n73), .B(n38), .C(n74), .Y(n35) );
  NAND2X1 U44 ( .A(n38), .B(n75), .Y(n72) );
  OAI21X1 U45 ( .A(n76), .B(n77), .C(n78), .Y(n75) );
  NOR2X1 U46 ( .A(n79), .B(n80), .Y(n38) );
  XNOR2X1 U47 ( .A(n51), .B(n80), .Y(sum[25]) );
  OAI21X1 U48 ( .A(n81), .B(n79), .C(n69), .Y(n51) );
  AOI21X1 U49 ( .A(n40), .B(n82), .C(n73), .Y(n81) );
  OAI22X1 U50 ( .A(n83), .B(n84), .C(n85), .D(n86), .Y(n82) );
  INVX1 U51 ( .A(n87), .Y(n86) );
  INVX1 U52 ( .A(n71), .Y(n40) );
  XNOR2X1 U53 ( .A(n88), .B(n79), .Y(sum[24]) );
  INVX1 U54 ( .A(n66), .Y(n79) );
  XNOR2X1 U55 ( .A(n65), .B(n63), .Y(sum[23]) );
  AOI21X1 U56 ( .A(b[22]), .B(a[22]), .C(n89), .Y(n63) );
  INVX1 U57 ( .A(n90), .Y(n89) );
  OAI21X1 U58 ( .A(n91), .B(n92), .C(n93), .Y(n90) );
  NOR2X1 U59 ( .A(n94), .B(n95), .Y(n91) );
  AOI22X1 U60 ( .A(n96), .B(n97), .C(a[19]), .D(b[19]), .Y(n94) );
  XOR2X1 U61 ( .A(n39), .B(n93), .Y(sum[22]) );
  OAI21X1 U62 ( .A(n98), .B(n77), .C(n78), .Y(n39) );
  AOI21X1 U63 ( .A(n99), .B(n100), .C(n92), .Y(n78) );
  NAND2X1 U64 ( .A(n101), .B(n100), .Y(n77) );
  AOI21X1 U65 ( .A(n102), .B(n103), .C(n104), .Y(n98) );
  XNOR2X1 U66 ( .A(n87), .B(n85), .Y(sum[21]) );
  AOI21X1 U67 ( .A(a[20]), .B(b[20]), .C(n105), .Y(n85) );
  INVX1 U68 ( .A(n106), .Y(n105) );
  OAI21X1 U69 ( .A(n107), .B(n99), .C(n108), .Y(n106) );
  INVX1 U70 ( .A(n109), .Y(n99) );
  NOR2X1 U71 ( .A(n110), .B(n111), .Y(n107) );
  AOI22X1 U72 ( .A(n112), .B(n113), .C(a[17]), .D(b[17]), .Y(n110) );
  XOR2X1 U73 ( .A(n114), .B(n108), .Y(sum[20]) );
  XOR2X1 U74 ( .A(n115), .B(n116), .Y(sum[1]) );
  XOR2X1 U75 ( .A(n97), .B(n96), .Y(sum[19]) );
  OAI21X1 U76 ( .A(n117), .B(n118), .C(n119), .Y(n97) );
  AOI22X1 U77 ( .A(n120), .B(n121), .C(a[18]), .D(b[18]), .Y(n119) );
  OAI21X1 U78 ( .A(n122), .B(n123), .C(n124), .Y(n121) );
  NAND2X1 U79 ( .A(n125), .B(n112), .Y(n118) );
  NAND2X1 U80 ( .A(n120), .B(n126), .Y(n117) );
  XNOR2X1 U81 ( .A(n120), .B(n76), .Y(sum[18]) );
  AOI21X1 U82 ( .A(n127), .B(n102), .C(n104), .Y(n76) );
  OAI21X1 U83 ( .A(n128), .B(n122), .C(n124), .Y(n104) );
  INVX1 U84 ( .A(n129), .Y(n102) );
  NAND3X1 U85 ( .A(n112), .B(n130), .C(n125), .Y(n129) );
  INVX1 U86 ( .A(n131), .Y(n127) );
  AOI21X1 U87 ( .A(n132), .B(n133), .C(n134), .Y(n131) );
  AND2X1 U88 ( .A(n135), .B(n136), .Y(n133) );
  NOR2X1 U89 ( .A(n137), .B(n138), .Y(n132) );
  XOR2X1 U90 ( .A(n113), .B(n112), .Y(sum[17]) );
  OAI21X1 U91 ( .A(n139), .B(n140), .C(n141), .Y(n113) );
  AOI22X1 U92 ( .A(n125), .B(n142), .C(n143), .D(n144), .Y(n141) );
  INVX1 U93 ( .A(n123), .Y(n143) );
  OAI21X1 U94 ( .A(n145), .B(n146), .C(n147), .Y(n142) );
  AOI22X1 U95 ( .A(n136), .B(n148), .C(a[13]), .D(b[13]), .Y(n145) );
  INVX1 U96 ( .A(n149), .Y(n148) );
  NOR2X1 U97 ( .A(n150), .B(n151), .Y(n125) );
  INVX1 U98 ( .A(n144), .Y(n151) );
  INVX1 U99 ( .A(a[16]), .Y(n139) );
  XNOR2X1 U100 ( .A(n144), .B(n152), .Y(sum[16]) );
  XNOR2X1 U101 ( .A(n126), .B(n150), .Y(sum[15]) );
  OAI21X1 U102 ( .A(n153), .B(n146), .C(n147), .Y(n126) );
  AOI21X1 U103 ( .A(n136), .B(n154), .C(n155), .Y(n153) );
  OAI21X1 U104 ( .A(n156), .B(n138), .C(n157), .Y(n154) );
  XNOR2X1 U105 ( .A(n103), .B(n146), .Y(sum[14]) );
  INVX1 U106 ( .A(n130), .Y(n146) );
  OAI21X1 U107 ( .A(n138), .B(n158), .C(n159), .Y(n103) );
  INVX1 U108 ( .A(n134), .Y(n159) );
  OAI21X1 U109 ( .A(n160), .B(n161), .C(n162), .Y(n134) );
  NAND2X1 U110 ( .A(n136), .B(n163), .Y(n161) );
  INVX1 U111 ( .A(n164), .Y(n163) );
  NAND2X1 U112 ( .A(n136), .B(n165), .Y(n158) );
  OAI21X1 U113 ( .A(n166), .B(n137), .C(n167), .Y(n165) );
  NAND3X1 U114 ( .A(n8), .B(n7), .C(n168), .Y(n167) );
  AND2X1 U115 ( .A(n169), .B(n170), .Y(n168) );
  XNOR2X1 U116 ( .A(n136), .B(n149), .Y(sum[13]) );
  AOI21X1 U117 ( .A(a[12]), .B(b[12]), .C(n171), .Y(n149) );
  OAI21X1 U118 ( .A(n138), .B(n172), .C(n157), .Y(n171) );
  NAND3X1 U119 ( .A(b[11]), .B(n173), .C(a[11]), .Y(n157) );
  AOI21X1 U120 ( .A(n1), .B(n170), .C(n174), .Y(n172) );
  NAND2X1 U121 ( .A(n175), .B(n176), .Y(n174) );
  NAND3X1 U122 ( .A(n177), .B(n178), .C(n179), .Y(n1) );
  NAND3X1 U123 ( .A(n169), .B(n8), .C(n180), .Y(n178) );
  NAND3X1 U124 ( .A(n169), .B(n9), .C(n181), .Y(n177) );
  OAI21X1 U125 ( .A(n182), .B(n183), .C(n184), .Y(n9) );
  AND2X1 U126 ( .A(n185), .B(n186), .Y(n184) );
  AOI22X1 U127 ( .A(n41), .B(n187), .C(a[2]), .D(b[2]), .Y(n182) );
  OAI21X1 U128 ( .A(n115), .B(n116), .C(n188), .Y(n187) );
  AND2X1 U129 ( .A(n189), .B(n190), .Y(n115) );
  NAND2X1 U130 ( .A(n191), .B(n173), .Y(n138) );
  XNOR2X1 U131 ( .A(n192), .B(n160), .Y(sum[12]) );
  XNOR2X1 U132 ( .A(n191), .B(n156), .Y(sum[11]) );
  NOR2X1 U133 ( .A(n193), .B(n194), .Y(n156) );
  OAI21X1 U134 ( .A(n195), .B(n196), .C(n197), .Y(n194) );
  INVX1 U135 ( .A(n198), .Y(n197) );
  NAND2X1 U136 ( .A(n169), .B(n6), .Y(n196) );
  OAI21X1 U137 ( .A(n199), .B(n200), .C(n201), .Y(n6) );
  AOI21X1 U138 ( .A(n180), .B(n8), .C(n202), .Y(n201) );
  AOI21X1 U139 ( .A(n203), .B(n186), .C(n204), .Y(n202) );
  INVX1 U140 ( .A(n181), .Y(n204) );
  INVX1 U141 ( .A(n205), .Y(n180) );
  OAI21X1 U142 ( .A(n206), .B(n207), .C(n176), .Y(n193) );
  NAND2X1 U143 ( .A(n170), .B(a[7]), .Y(n207) );
  NAND2X1 U144 ( .A(b[7]), .B(n3), .Y(n206) );
  XNOR2X1 U145 ( .A(n135), .B(n137), .Y(sum[10]) );
  INVX1 U146 ( .A(n208), .Y(n137) );
  OAI21X1 U147 ( .A(n209), .B(n210), .C(n166), .Y(n135) );
  AOI22X1 U148 ( .A(b[9]), .B(a[9]), .C(n211), .D(n2), .Y(n166) );
  INVX1 U149 ( .A(n179), .Y(n211) );
  AOI22X1 U150 ( .A(b[8]), .B(a[8]), .C(n212), .D(n3), .Y(n179) );
  INVX1 U151 ( .A(n213), .Y(n3) );
  NAND2X1 U152 ( .A(n169), .B(n2), .Y(n210) );
  NOR2X1 U153 ( .A(n5), .B(n213), .Y(n169) );
  NAND2X1 U154 ( .A(n8), .B(n7), .Y(n209) );
  OAI21X1 U155 ( .A(n203), .B(n10), .C(n214), .Y(n7) );
  INVX1 U156 ( .A(n215), .Y(n214) );
  INVX1 U157 ( .A(n216), .Y(n203) );
  OAI21X1 U158 ( .A(n15), .B(n183), .C(n185), .Y(n216) );
  NAND3X1 U159 ( .A(a[3]), .B(n12), .C(b[3]), .Y(n185) );
  NAND2X1 U160 ( .A(n16), .B(n12), .Y(n183) );
  AOI21X1 U161 ( .A(n41), .B(n43), .C(n217), .Y(n15) );
  XOR2X1 U162 ( .A(cin), .B(n218), .Y(sum[0]) );
  OAI21X1 U163 ( .A(n219), .B(n220), .C(n221), .Y(cout) );
  OAI21X1 U164 ( .A(n222), .B(n223), .C(n18), .Y(n221) );
  XNOR2X1 U165 ( .A(n220), .B(b[31]), .Y(n18) );
  INVX1 U166 ( .A(n21), .Y(n223) );
  NAND2X1 U167 ( .A(a[30]), .B(b[30]), .Y(n21) );
  AOI21X1 U168 ( .A(n30), .B(n224), .C(n20), .Y(n222) );
  XNOR2X1 U169 ( .A(a[30]), .B(b[30]), .Y(n20) );
  NAND3X1 U170 ( .A(n33), .B(n53), .C(n22), .Y(n224) );
  NAND3X1 U171 ( .A(n225), .B(n226), .C(n227), .Y(n53) );
  INVX1 U172 ( .A(n34), .Y(n227) );
  OAI21X1 U173 ( .A(n228), .B(n229), .C(n230), .Y(n34) );
  NAND3X1 U174 ( .A(b[26]), .B(n49), .C(a[26]), .Y(n230) );
  INVX1 U175 ( .A(a[27]), .Y(n228) );
  NAND3X1 U176 ( .A(n58), .B(n74), .C(n49), .Y(n226) );
  OAI22X1 U177 ( .A(n231), .B(n232), .C(n80), .D(n69), .Y(n74) );
  NAND2X1 U178 ( .A(a[24]), .B(b[24]), .Y(n69) );
  NAND3X1 U179 ( .A(n66), .B(n88), .C(n233), .Y(n225) );
  AND2X1 U180 ( .A(n49), .B(n50), .Y(n233) );
  NOR2X1 U181 ( .A(n80), .B(n37), .Y(n50) );
  INVX1 U182 ( .A(n58), .Y(n37) );
  XNOR2X1 U183 ( .A(a[26]), .B(n55), .Y(n58) );
  INVX1 U184 ( .A(b[26]), .Y(n55) );
  XNOR2X1 U185 ( .A(n231), .B(n232), .Y(n80) );
  INVX1 U186 ( .A(b[25]), .Y(n232) );
  INVX1 U187 ( .A(a[25]), .Y(n231) );
  XNOR2X1 U188 ( .A(a[27]), .B(n229), .Y(n49) );
  INVX1 U189 ( .A(b[27]), .Y(n229) );
  OAI21X1 U190 ( .A(n234), .B(n71), .C(n235), .Y(n88) );
  INVX1 U191 ( .A(n73), .Y(n235) );
  OAI21X1 U192 ( .A(n236), .B(n67), .C(n237), .Y(n73) );
  NAND3X1 U193 ( .A(b[22]), .B(n65), .C(a[22]), .Y(n237) );
  INVX1 U194 ( .A(a[23]), .Y(n236) );
  NAND2X1 U195 ( .A(n65), .B(n93), .Y(n71) );
  XOR2X1 U196 ( .A(a[22]), .B(b[22]), .Y(n93) );
  XNOR2X1 U197 ( .A(a[23]), .B(n67), .Y(n65) );
  INVX1 U198 ( .A(b[23]), .Y(n67) );
  AOI21X1 U199 ( .A(n100), .B(n114), .C(n92), .Y(n234) );
  OAI21X1 U200 ( .A(n83), .B(n84), .C(n238), .Y(n92) );
  NAND3X1 U201 ( .A(a[20]), .B(n87), .C(b[20]), .Y(n238) );
  INVX1 U202 ( .A(a[21]), .Y(n84) );
  NAND2X1 U203 ( .A(n239), .B(n109), .Y(n114) );
  AOI21X1 U204 ( .A(b[19]), .B(a[19]), .C(n240), .Y(n109) );
  INVX1 U205 ( .A(n241), .Y(n240) );
  NAND3X1 U206 ( .A(b[18]), .B(n96), .C(a[18]), .Y(n241) );
  AOI22X1 U207 ( .A(n242), .B(n101), .C(n101), .D(n243), .Y(n239) );
  INVX1 U208 ( .A(n124), .Y(n243) );
  AOI21X1 U209 ( .A(b[17]), .B(a[17]), .C(n244), .Y(n124) );
  INVX1 U210 ( .A(n245), .Y(n244) );
  NAND3X1 U211 ( .A(a[16]), .B(n112), .C(b[16]), .Y(n245) );
  INVX1 U212 ( .A(n111), .Y(n101) );
  NAND2X1 U213 ( .A(n96), .B(n120), .Y(n111) );
  XOR2X1 U214 ( .A(a[18]), .B(b[18]), .Y(n120) );
  XOR2X1 U215 ( .A(a[19]), .B(b[19]), .Y(n96) );
  NOR2X1 U216 ( .A(n152), .B(n122), .Y(n242) );
  NAND2X1 U217 ( .A(n112), .B(n144), .Y(n122) );
  XNOR2X1 U218 ( .A(a[16]), .B(n140), .Y(n144) );
  INVX1 U219 ( .A(b[16]), .Y(n140) );
  XOR2X1 U220 ( .A(a[17]), .B(b[17]), .Y(n112) );
  INVX1 U221 ( .A(n246), .Y(n152) );
  OAI21X1 U222 ( .A(n150), .B(n247), .C(n128), .Y(n246) );
  INVX1 U223 ( .A(n248), .Y(n128) );
  OAI21X1 U224 ( .A(n150), .B(n147), .C(n123), .Y(n248) );
  NAND2X1 U225 ( .A(b[15]), .B(a[15]), .Y(n123) );
  NAND2X1 U226 ( .A(a[14]), .B(b[14]), .Y(n147) );
  NAND2X1 U227 ( .A(n130), .B(n249), .Y(n247) );
  OAI21X1 U228 ( .A(n160), .B(n250), .C(n162), .Y(n249) );
  INVX1 U229 ( .A(n155), .Y(n162) );
  OAI21X1 U230 ( .A(n251), .B(n252), .C(n253), .Y(n155) );
  NAND3X1 U231 ( .A(a[12]), .B(n136), .C(b[12]), .Y(n253) );
  INVX1 U232 ( .A(a[13]), .Y(n252) );
  NAND2X1 U233 ( .A(n136), .B(n192), .Y(n250) );
  OAI21X1 U234 ( .A(n254), .B(n255), .C(n164), .Y(n192) );
  AOI22X1 U235 ( .A(b[11]), .B(a[11]), .C(n191), .D(n256), .Y(n164) );
  INVX1 U236 ( .A(n176), .Y(n256) );
  NAND2X1 U237 ( .A(b[10]), .B(a[10]), .Y(n176) );
  INVX1 U238 ( .A(n255), .Y(n191) );
  XNOR2X1 U239 ( .A(a[11]), .B(b[11]), .Y(n255) );
  AOI21X1 U240 ( .A(n257), .B(n170), .C(n198), .Y(n254) );
  OAI21X1 U241 ( .A(n195), .B(n258), .C(n175), .Y(n198) );
  NAND3X1 U242 ( .A(b[9]), .B(n208), .C(a[9]), .Y(n175) );
  NAND2X1 U243 ( .A(a[8]), .B(b[8]), .Y(n258) );
  INVX1 U244 ( .A(n195), .Y(n170) );
  NAND2X1 U245 ( .A(n208), .B(n2), .Y(n195) );
  XOR2X1 U246 ( .A(a[9]), .B(b[9]), .Y(n2) );
  XOR2X1 U247 ( .A(a[10]), .B(b[10]), .Y(n208) );
  NOR2X1 U248 ( .A(n4), .B(n213), .Y(n257) );
  XNOR2X1 U249 ( .A(a[8]), .B(b[8]), .Y(n213) );
  NOR2X1 U250 ( .A(n212), .B(n259), .Y(n4) );
  OAI21X1 U251 ( .A(n260), .B(n261), .C(n262), .Y(n259) );
  NAND3X1 U252 ( .A(n8), .B(n215), .C(n263), .Y(n262) );
  OAI21X1 U253 ( .A(n10), .B(n186), .C(n205), .Y(n215) );
  NAND2X1 U254 ( .A(a[4]), .B(b[4]), .Y(n186) );
  INVX1 U255 ( .A(n264), .Y(n8) );
  NAND2X1 U256 ( .A(n181), .B(n12), .Y(n261) );
  XOR2X1 U257 ( .A(a[4]), .B(b[4]), .Y(n12) );
  NOR2X1 U258 ( .A(n10), .B(n264), .Y(n181) );
  XNOR2X1 U259 ( .A(n199), .B(n200), .Y(n264) );
  INVX1 U260 ( .A(b[6]), .Y(n200) );
  INVX1 U261 ( .A(a[6]), .Y(n199) );
  OAI21X1 U262 ( .A(b[5]), .B(a[5]), .C(n205), .Y(n10) );
  NAND2X1 U263 ( .A(b[5]), .B(a[5]), .Y(n205) );
  INVX1 U264 ( .A(n265), .Y(n260) );
  AOI21X1 U265 ( .A(n14), .B(n13), .C(n5), .Y(n265) );
  INVX1 U266 ( .A(n263), .Y(n5) );
  AOI22X1 U267 ( .A(a[3]), .B(b[3]), .C(n217), .D(n16), .Y(n13) );
  INVX1 U268 ( .A(n266), .Y(n217) );
  AOI22X1 U269 ( .A(b[2]), .B(a[2]), .C(n44), .D(n41), .Y(n266) );
  OAI21X1 U270 ( .A(n116), .B(n190), .C(n188), .Y(n44) );
  NAND2X1 U271 ( .A(a[1]), .B(b[1]), .Y(n188) );
  NAND2X1 U272 ( .A(b[0]), .B(a[0]), .Y(n190) );
  NAND3X1 U273 ( .A(n41), .B(n16), .C(n43), .Y(n14) );
  NOR2X1 U274 ( .A(n189), .B(n116), .Y(n43) );
  XNOR2X1 U275 ( .A(a[1]), .B(b[1]), .Y(n116) );
  NAND2X1 U276 ( .A(cin), .B(n218), .Y(n189) );
  XOR2X1 U277 ( .A(a[0]), .B(b[0]), .Y(n218) );
  XOR2X1 U278 ( .A(a[3]), .B(b[3]), .Y(n16) );
  XOR2X1 U279 ( .A(a[2]), .B(b[2]), .Y(n41) );
  OAI21X1 U280 ( .A(n267), .B(n268), .C(n269), .Y(n212) );
  NAND3X1 U281 ( .A(a[6]), .B(n263), .C(b[6]), .Y(n269) );
  XNOR2X1 U282 ( .A(a[7]), .B(n267), .Y(n263) );
  INVX1 U283 ( .A(a[7]), .Y(n268) );
  INVX1 U284 ( .A(b[7]), .Y(n267) );
  XNOR2X1 U285 ( .A(a[13]), .B(n251), .Y(n136) );
  INVX1 U286 ( .A(b[13]), .Y(n251) );
  INVX1 U287 ( .A(n173), .Y(n160) );
  XOR2X1 U288 ( .A(a[12]), .B(b[12]), .Y(n173) );
  XOR2X1 U289 ( .A(a[14]), .B(b[14]), .Y(n130) );
  XNOR2X1 U290 ( .A(a[15]), .B(b[15]), .Y(n150) );
  INVX1 U291 ( .A(n95), .Y(n100) );
  NAND2X1 U292 ( .A(n108), .B(n87), .Y(n95) );
  XNOR2X1 U293 ( .A(a[21]), .B(n83), .Y(n87) );
  INVX1 U294 ( .A(b[21]), .Y(n83) );
  XOR2X1 U295 ( .A(a[20]), .B(b[20]), .Y(n108) );
  XOR2X1 U296 ( .A(a[24]), .B(b[24]), .Y(n66) );
  XOR2X1 U297 ( .A(a[28]), .B(b[28]), .Y(n33) );
  AOI21X1 U298 ( .A(b[29]), .B(a[29]), .C(n270), .Y(n30) );
  INVX1 U299 ( .A(n271), .Y(n270) );
  NAND3X1 U300 ( .A(b[28]), .B(n22), .C(a[28]), .Y(n271) );
  INVX1 U301 ( .A(n29), .Y(n22) );
  XNOR2X1 U302 ( .A(a[29]), .B(b[29]), .Y(n29) );
  INVX1 U303 ( .A(a[31]), .Y(n220) );
  INVX1 U304 ( .A(b[31]), .Y(n219) );
endmodule


module fft_cla_0 ( a, b, cin, sum, cout );
  input [31:0] a;
  input [31:0] b;
  output [31:0] sum;
  input cin;
  output cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
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
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271;

  XOR2X1 U1 ( .A(n1), .B(n2), .Y(sum[9]) );
  XNOR2X1 U2 ( .A(n3), .B(n4), .Y(sum[8]) );
  XNOR2X1 U3 ( .A(n5), .B(n6), .Y(sum[7]) );
  XOR2X1 U4 ( .A(n7), .B(n8), .Y(sum[6]) );
  XNOR2X1 U5 ( .A(n9), .B(n10), .Y(sum[5]) );
  XOR2X1 U6 ( .A(n11), .B(n12), .Y(sum[4]) );
  NAND2X1 U7 ( .A(n13), .B(n14), .Y(n11) );
  XNOR2X1 U8 ( .A(n15), .B(n16), .Y(sum[3]) );
  XOR2X1 U9 ( .A(n17), .B(n18), .Y(sum[31]) );
  OAI21X1 U10 ( .A(n19), .B(n20), .C(n21), .Y(n17) );
  AOI22X1 U11 ( .A(n22), .B(n23), .C(a[29]), .D(b[29]), .Y(n19) );
  OAI21X1 U12 ( .A(n24), .B(n25), .C(n26), .Y(n23) );
  XNOR2X1 U13 ( .A(n27), .B(n20), .Y(sum[30]) );
  OAI21X1 U14 ( .A(n28), .B(n29), .C(n30), .Y(n27) );
  AOI22X1 U15 ( .A(n31), .B(n32), .C(n33), .D(n34), .Y(n28) );
  INVX1 U16 ( .A(n25), .Y(n32) );
  AOI21X1 U17 ( .A(n35), .B(n36), .C(n37), .Y(n31) );
  NAND3X1 U18 ( .A(n38), .B(n39), .C(n40), .Y(n36) );
  XNOR2X1 U19 ( .A(n41), .B(n42), .Y(sum[2]) );
  NOR2X1 U20 ( .A(n43), .B(n44), .Y(n42) );
  XNOR2X1 U21 ( .A(n45), .B(n29), .Y(sum[29]) );
  OAI21X1 U22 ( .A(n46), .B(n25), .C(n26), .Y(n45) );
  AOI21X1 U23 ( .A(b[28]), .B(a[28]), .C(n47), .Y(n26) );
  INVX1 U24 ( .A(n48), .Y(n47) );
  NAND3X1 U25 ( .A(a[27]), .B(n33), .C(b[27]), .Y(n48) );
  NAND2X1 U26 ( .A(n49), .B(n33), .Y(n25) );
  AOI21X1 U27 ( .A(n50), .B(n51), .C(n52), .Y(n46) );
  XOR2X1 U28 ( .A(n53), .B(n33), .Y(sum[28]) );
  XNOR2X1 U29 ( .A(n24), .B(n49), .Y(sum[27]) );
  NOR2X1 U30 ( .A(n54), .B(n52), .Y(n24) );
  OAI21X1 U31 ( .A(n55), .B(n56), .C(n57), .Y(n52) );
  NAND3X1 U32 ( .A(a[25]), .B(n58), .C(b[25]), .Y(n57) );
  INVX1 U33 ( .A(a[26]), .Y(n56) );
  INVX1 U34 ( .A(n59), .Y(n54) );
  AOI22X1 U35 ( .A(n50), .B(n60), .C(n61), .D(n62), .Y(n59) );
  NOR2X1 U36 ( .A(n63), .B(n64), .Y(n62) );
  INVX1 U37 ( .A(n65), .Y(n64) );
  AND2X1 U38 ( .A(n66), .B(n50), .Y(n61) );
  OAI21X1 U39 ( .A(n67), .B(n68), .C(n69), .Y(n60) );
  NAND2X1 U40 ( .A(a[23]), .B(n66), .Y(n68) );
  XNOR2X1 U41 ( .A(n70), .B(n37), .Y(sum[26]) );
  OAI21X1 U42 ( .A(n71), .B(n72), .C(n35), .Y(n70) );
  AOI21X1 U43 ( .A(n73), .B(n38), .C(n74), .Y(n35) );
  NAND2X1 U44 ( .A(n38), .B(n75), .Y(n72) );
  OAI21X1 U45 ( .A(n76), .B(n77), .C(n78), .Y(n75) );
  NOR2X1 U46 ( .A(n79), .B(n80), .Y(n38) );
  XNOR2X1 U47 ( .A(n51), .B(n80), .Y(sum[25]) );
  OAI21X1 U48 ( .A(n81), .B(n79), .C(n69), .Y(n51) );
  AOI21X1 U49 ( .A(n40), .B(n82), .C(n73), .Y(n81) );
  OAI22X1 U50 ( .A(n83), .B(n84), .C(n85), .D(n86), .Y(n82) );
  INVX1 U51 ( .A(n87), .Y(n86) );
  INVX1 U52 ( .A(n71), .Y(n40) );
  XNOR2X1 U53 ( .A(n88), .B(n79), .Y(sum[24]) );
  INVX1 U54 ( .A(n66), .Y(n79) );
  XNOR2X1 U55 ( .A(n65), .B(n63), .Y(sum[23]) );
  AOI21X1 U56 ( .A(b[22]), .B(a[22]), .C(n89), .Y(n63) );
  INVX1 U57 ( .A(n90), .Y(n89) );
  OAI21X1 U58 ( .A(n91), .B(n92), .C(n93), .Y(n90) );
  NOR2X1 U59 ( .A(n94), .B(n95), .Y(n91) );
  AOI22X1 U60 ( .A(n96), .B(n97), .C(a[19]), .D(b[19]), .Y(n94) );
  XOR2X1 U61 ( .A(n39), .B(n93), .Y(sum[22]) );
  OAI21X1 U62 ( .A(n98), .B(n77), .C(n78), .Y(n39) );
  AOI21X1 U63 ( .A(n99), .B(n100), .C(n92), .Y(n78) );
  NAND2X1 U64 ( .A(n101), .B(n100), .Y(n77) );
  AOI21X1 U65 ( .A(n102), .B(n103), .C(n104), .Y(n98) );
  XNOR2X1 U66 ( .A(n87), .B(n85), .Y(sum[21]) );
  AOI21X1 U67 ( .A(a[20]), .B(b[20]), .C(n105), .Y(n85) );
  INVX1 U68 ( .A(n106), .Y(n105) );
  OAI21X1 U69 ( .A(n107), .B(n99), .C(n108), .Y(n106) );
  INVX1 U70 ( .A(n109), .Y(n99) );
  NOR2X1 U71 ( .A(n110), .B(n111), .Y(n107) );
  AOI22X1 U72 ( .A(n112), .B(n113), .C(a[17]), .D(b[17]), .Y(n110) );
  XOR2X1 U73 ( .A(n114), .B(n108), .Y(sum[20]) );
  XOR2X1 U74 ( .A(n115), .B(n116), .Y(sum[1]) );
  XOR2X1 U75 ( .A(n97), .B(n96), .Y(sum[19]) );
  OAI21X1 U76 ( .A(n117), .B(n118), .C(n119), .Y(n97) );
  AOI22X1 U77 ( .A(n120), .B(n121), .C(a[18]), .D(b[18]), .Y(n119) );
  OAI21X1 U78 ( .A(n122), .B(n123), .C(n124), .Y(n121) );
  NAND2X1 U79 ( .A(n125), .B(n112), .Y(n118) );
  NAND2X1 U80 ( .A(n120), .B(n126), .Y(n117) );
  XNOR2X1 U81 ( .A(n120), .B(n76), .Y(sum[18]) );
  AOI21X1 U82 ( .A(n127), .B(n102), .C(n104), .Y(n76) );
  OAI21X1 U83 ( .A(n128), .B(n122), .C(n124), .Y(n104) );
  INVX1 U84 ( .A(n129), .Y(n102) );
  NAND3X1 U85 ( .A(n112), .B(n130), .C(n125), .Y(n129) );
  INVX1 U86 ( .A(n131), .Y(n127) );
  AOI21X1 U87 ( .A(n132), .B(n133), .C(n134), .Y(n131) );
  AND2X1 U88 ( .A(n135), .B(n136), .Y(n133) );
  NOR2X1 U89 ( .A(n137), .B(n138), .Y(n132) );
  XOR2X1 U90 ( .A(n113), .B(n112), .Y(sum[17]) );
  OAI21X1 U91 ( .A(n139), .B(n140), .C(n141), .Y(n113) );
  AOI22X1 U92 ( .A(n125), .B(n142), .C(n143), .D(n144), .Y(n141) );
  INVX1 U93 ( .A(n123), .Y(n143) );
  OAI21X1 U94 ( .A(n145), .B(n146), .C(n147), .Y(n142) );
  AOI22X1 U95 ( .A(n136), .B(n148), .C(a[13]), .D(b[13]), .Y(n145) );
  INVX1 U96 ( .A(n149), .Y(n148) );
  NOR2X1 U97 ( .A(n150), .B(n151), .Y(n125) );
  INVX1 U98 ( .A(n144), .Y(n151) );
  INVX1 U99 ( .A(a[16]), .Y(n139) );
  XNOR2X1 U100 ( .A(n144), .B(n152), .Y(sum[16]) );
  XNOR2X1 U101 ( .A(n126), .B(n150), .Y(sum[15]) );
  OAI21X1 U102 ( .A(n153), .B(n146), .C(n147), .Y(n126) );
  AOI21X1 U103 ( .A(n136), .B(n154), .C(n155), .Y(n153) );
  OAI21X1 U104 ( .A(n156), .B(n138), .C(n157), .Y(n154) );
  XNOR2X1 U105 ( .A(n103), .B(n146), .Y(sum[14]) );
  INVX1 U106 ( .A(n130), .Y(n146) );
  OAI21X1 U107 ( .A(n138), .B(n158), .C(n159), .Y(n103) );
  INVX1 U108 ( .A(n134), .Y(n159) );
  OAI21X1 U109 ( .A(n160), .B(n161), .C(n162), .Y(n134) );
  NAND2X1 U110 ( .A(n136), .B(n163), .Y(n161) );
  INVX1 U111 ( .A(n164), .Y(n163) );
  NAND2X1 U112 ( .A(n136), .B(n165), .Y(n158) );
  OAI21X1 U113 ( .A(n166), .B(n137), .C(n167), .Y(n165) );
  NAND3X1 U114 ( .A(n8), .B(n7), .C(n168), .Y(n167) );
  AND2X1 U115 ( .A(n169), .B(n170), .Y(n168) );
  XNOR2X1 U116 ( .A(n136), .B(n149), .Y(sum[13]) );
  AOI21X1 U117 ( .A(a[12]), .B(b[12]), .C(n171), .Y(n149) );
  OAI21X1 U118 ( .A(n138), .B(n172), .C(n157), .Y(n171) );
  NAND3X1 U119 ( .A(b[11]), .B(n173), .C(a[11]), .Y(n157) );
  AOI21X1 U120 ( .A(n1), .B(n170), .C(n174), .Y(n172) );
  NAND2X1 U121 ( .A(n175), .B(n176), .Y(n174) );
  NAND3X1 U122 ( .A(n177), .B(n178), .C(n179), .Y(n1) );
  NAND3X1 U123 ( .A(n169), .B(n8), .C(n180), .Y(n178) );
  NAND3X1 U124 ( .A(n169), .B(n9), .C(n181), .Y(n177) );
  OAI21X1 U125 ( .A(n182), .B(n183), .C(n184), .Y(n9) );
  AND2X1 U126 ( .A(n185), .B(n186), .Y(n184) );
  AOI22X1 U127 ( .A(n41), .B(n187), .C(a[2]), .D(b[2]), .Y(n182) );
  OAI21X1 U128 ( .A(n115), .B(n116), .C(n188), .Y(n187) );
  AND2X1 U129 ( .A(n189), .B(n190), .Y(n115) );
  NAND2X1 U130 ( .A(n191), .B(n173), .Y(n138) );
  XNOR2X1 U131 ( .A(n192), .B(n160), .Y(sum[12]) );
  XNOR2X1 U132 ( .A(n191), .B(n156), .Y(sum[11]) );
  NOR2X1 U133 ( .A(n193), .B(n194), .Y(n156) );
  OAI21X1 U134 ( .A(n195), .B(n196), .C(n197), .Y(n194) );
  INVX1 U135 ( .A(n198), .Y(n197) );
  NAND2X1 U136 ( .A(n169), .B(n6), .Y(n196) );
  OAI21X1 U137 ( .A(n199), .B(n200), .C(n201), .Y(n6) );
  AOI21X1 U138 ( .A(n180), .B(n8), .C(n202), .Y(n201) );
  AOI21X1 U139 ( .A(n203), .B(n186), .C(n204), .Y(n202) );
  INVX1 U140 ( .A(n181), .Y(n204) );
  INVX1 U141 ( .A(n205), .Y(n180) );
  OAI21X1 U142 ( .A(n206), .B(n207), .C(n176), .Y(n193) );
  NAND2X1 U143 ( .A(n170), .B(a[7]), .Y(n207) );
  NAND2X1 U144 ( .A(b[7]), .B(n3), .Y(n206) );
  XNOR2X1 U145 ( .A(n135), .B(n137), .Y(sum[10]) );
  INVX1 U146 ( .A(n208), .Y(n137) );
  OAI21X1 U147 ( .A(n209), .B(n210), .C(n166), .Y(n135) );
  AOI22X1 U148 ( .A(b[9]), .B(a[9]), .C(n211), .D(n2), .Y(n166) );
  INVX1 U149 ( .A(n179), .Y(n211) );
  AOI22X1 U150 ( .A(b[8]), .B(a[8]), .C(n212), .D(n3), .Y(n179) );
  INVX1 U151 ( .A(n213), .Y(n3) );
  NAND2X1 U152 ( .A(n169), .B(n2), .Y(n210) );
  NOR2X1 U153 ( .A(n5), .B(n213), .Y(n169) );
  NAND2X1 U154 ( .A(n8), .B(n7), .Y(n209) );
  OAI21X1 U155 ( .A(n203), .B(n10), .C(n214), .Y(n7) );
  INVX1 U156 ( .A(n215), .Y(n214) );
  INVX1 U157 ( .A(n216), .Y(n203) );
  OAI21X1 U158 ( .A(n15), .B(n183), .C(n185), .Y(n216) );
  NAND3X1 U159 ( .A(a[3]), .B(n12), .C(b[3]), .Y(n185) );
  NAND2X1 U160 ( .A(n16), .B(n12), .Y(n183) );
  AOI21X1 U161 ( .A(n41), .B(n43), .C(n217), .Y(n15) );
  XOR2X1 U162 ( .A(cin), .B(n218), .Y(sum[0]) );
  OAI21X1 U163 ( .A(n219), .B(n220), .C(n221), .Y(cout) );
  OAI21X1 U164 ( .A(n222), .B(n223), .C(n18), .Y(n221) );
  XNOR2X1 U165 ( .A(n220), .B(b[31]), .Y(n18) );
  INVX1 U166 ( .A(n21), .Y(n223) );
  NAND2X1 U167 ( .A(a[30]), .B(b[30]), .Y(n21) );
  AOI21X1 U168 ( .A(n30), .B(n224), .C(n20), .Y(n222) );
  XNOR2X1 U169 ( .A(a[30]), .B(b[30]), .Y(n20) );
  NAND3X1 U170 ( .A(n33), .B(n53), .C(n22), .Y(n224) );
  NAND3X1 U171 ( .A(n225), .B(n226), .C(n227), .Y(n53) );
  INVX1 U172 ( .A(n34), .Y(n227) );
  OAI21X1 U173 ( .A(n228), .B(n229), .C(n230), .Y(n34) );
  NAND3X1 U174 ( .A(b[26]), .B(n49), .C(a[26]), .Y(n230) );
  INVX1 U175 ( .A(a[27]), .Y(n228) );
  NAND3X1 U176 ( .A(n58), .B(n74), .C(n49), .Y(n226) );
  OAI22X1 U177 ( .A(n231), .B(n232), .C(n80), .D(n69), .Y(n74) );
  NAND2X1 U178 ( .A(a[24]), .B(b[24]), .Y(n69) );
  NAND3X1 U179 ( .A(n66), .B(n88), .C(n233), .Y(n225) );
  AND2X1 U180 ( .A(n49), .B(n50), .Y(n233) );
  NOR2X1 U181 ( .A(n80), .B(n37), .Y(n50) );
  INVX1 U182 ( .A(n58), .Y(n37) );
  XNOR2X1 U183 ( .A(a[26]), .B(n55), .Y(n58) );
  INVX1 U184 ( .A(b[26]), .Y(n55) );
  XNOR2X1 U185 ( .A(n231), .B(n232), .Y(n80) );
  INVX1 U186 ( .A(b[25]), .Y(n232) );
  INVX1 U187 ( .A(a[25]), .Y(n231) );
  XNOR2X1 U188 ( .A(a[27]), .B(n229), .Y(n49) );
  INVX1 U189 ( .A(b[27]), .Y(n229) );
  OAI21X1 U190 ( .A(n234), .B(n71), .C(n235), .Y(n88) );
  INVX1 U191 ( .A(n73), .Y(n235) );
  OAI21X1 U192 ( .A(n236), .B(n67), .C(n237), .Y(n73) );
  NAND3X1 U193 ( .A(b[22]), .B(n65), .C(a[22]), .Y(n237) );
  INVX1 U194 ( .A(a[23]), .Y(n236) );
  NAND2X1 U195 ( .A(n65), .B(n93), .Y(n71) );
  XOR2X1 U196 ( .A(a[22]), .B(b[22]), .Y(n93) );
  XNOR2X1 U197 ( .A(a[23]), .B(n67), .Y(n65) );
  INVX1 U198 ( .A(b[23]), .Y(n67) );
  AOI21X1 U199 ( .A(n100), .B(n114), .C(n92), .Y(n234) );
  OAI21X1 U200 ( .A(n83), .B(n84), .C(n238), .Y(n92) );
  NAND3X1 U201 ( .A(a[20]), .B(n87), .C(b[20]), .Y(n238) );
  INVX1 U202 ( .A(a[21]), .Y(n84) );
  NAND2X1 U203 ( .A(n239), .B(n109), .Y(n114) );
  AOI21X1 U204 ( .A(b[19]), .B(a[19]), .C(n240), .Y(n109) );
  INVX1 U205 ( .A(n241), .Y(n240) );
  NAND3X1 U206 ( .A(b[18]), .B(n96), .C(a[18]), .Y(n241) );
  AOI22X1 U207 ( .A(n242), .B(n101), .C(n101), .D(n243), .Y(n239) );
  INVX1 U208 ( .A(n124), .Y(n243) );
  AOI21X1 U209 ( .A(b[17]), .B(a[17]), .C(n244), .Y(n124) );
  INVX1 U210 ( .A(n245), .Y(n244) );
  NAND3X1 U211 ( .A(a[16]), .B(n112), .C(b[16]), .Y(n245) );
  INVX1 U212 ( .A(n111), .Y(n101) );
  NAND2X1 U213 ( .A(n96), .B(n120), .Y(n111) );
  XOR2X1 U214 ( .A(a[18]), .B(b[18]), .Y(n120) );
  XOR2X1 U215 ( .A(a[19]), .B(b[19]), .Y(n96) );
  NOR2X1 U216 ( .A(n152), .B(n122), .Y(n242) );
  NAND2X1 U217 ( .A(n112), .B(n144), .Y(n122) );
  XNOR2X1 U218 ( .A(a[16]), .B(n140), .Y(n144) );
  INVX1 U219 ( .A(b[16]), .Y(n140) );
  XOR2X1 U220 ( .A(a[17]), .B(b[17]), .Y(n112) );
  INVX1 U221 ( .A(n246), .Y(n152) );
  OAI21X1 U222 ( .A(n150), .B(n247), .C(n128), .Y(n246) );
  INVX1 U223 ( .A(n248), .Y(n128) );
  OAI21X1 U224 ( .A(n150), .B(n147), .C(n123), .Y(n248) );
  NAND2X1 U225 ( .A(b[15]), .B(a[15]), .Y(n123) );
  NAND2X1 U226 ( .A(a[14]), .B(b[14]), .Y(n147) );
  NAND2X1 U227 ( .A(n130), .B(n249), .Y(n247) );
  OAI21X1 U228 ( .A(n160), .B(n250), .C(n162), .Y(n249) );
  INVX1 U229 ( .A(n155), .Y(n162) );
  OAI21X1 U230 ( .A(n251), .B(n252), .C(n253), .Y(n155) );
  NAND3X1 U231 ( .A(a[12]), .B(n136), .C(b[12]), .Y(n253) );
  INVX1 U232 ( .A(a[13]), .Y(n252) );
  NAND2X1 U233 ( .A(n136), .B(n192), .Y(n250) );
  OAI21X1 U234 ( .A(n254), .B(n255), .C(n164), .Y(n192) );
  AOI22X1 U235 ( .A(b[11]), .B(a[11]), .C(n191), .D(n256), .Y(n164) );
  INVX1 U236 ( .A(n176), .Y(n256) );
  NAND2X1 U237 ( .A(b[10]), .B(a[10]), .Y(n176) );
  INVX1 U238 ( .A(n255), .Y(n191) );
  XNOR2X1 U239 ( .A(a[11]), .B(b[11]), .Y(n255) );
  AOI21X1 U240 ( .A(n257), .B(n170), .C(n198), .Y(n254) );
  OAI21X1 U241 ( .A(n195), .B(n258), .C(n175), .Y(n198) );
  NAND3X1 U242 ( .A(b[9]), .B(n208), .C(a[9]), .Y(n175) );
  NAND2X1 U243 ( .A(a[8]), .B(b[8]), .Y(n258) );
  INVX1 U244 ( .A(n195), .Y(n170) );
  NAND2X1 U245 ( .A(n208), .B(n2), .Y(n195) );
  XOR2X1 U246 ( .A(a[9]), .B(b[9]), .Y(n2) );
  XOR2X1 U247 ( .A(a[10]), .B(b[10]), .Y(n208) );
  NOR2X1 U248 ( .A(n4), .B(n213), .Y(n257) );
  XNOR2X1 U249 ( .A(a[8]), .B(b[8]), .Y(n213) );
  NOR2X1 U250 ( .A(n212), .B(n259), .Y(n4) );
  OAI21X1 U251 ( .A(n260), .B(n261), .C(n262), .Y(n259) );
  NAND3X1 U252 ( .A(n8), .B(n215), .C(n263), .Y(n262) );
  OAI21X1 U253 ( .A(n10), .B(n186), .C(n205), .Y(n215) );
  NAND2X1 U254 ( .A(a[4]), .B(b[4]), .Y(n186) );
  INVX1 U255 ( .A(n264), .Y(n8) );
  NAND2X1 U256 ( .A(n181), .B(n12), .Y(n261) );
  XOR2X1 U257 ( .A(a[4]), .B(b[4]), .Y(n12) );
  NOR2X1 U258 ( .A(n10), .B(n264), .Y(n181) );
  XNOR2X1 U259 ( .A(n199), .B(n200), .Y(n264) );
  INVX1 U260 ( .A(b[6]), .Y(n200) );
  INVX1 U261 ( .A(a[6]), .Y(n199) );
  OAI21X1 U262 ( .A(b[5]), .B(a[5]), .C(n205), .Y(n10) );
  NAND2X1 U263 ( .A(b[5]), .B(a[5]), .Y(n205) );
  INVX1 U264 ( .A(n265), .Y(n260) );
  AOI21X1 U265 ( .A(n14), .B(n13), .C(n5), .Y(n265) );
  INVX1 U266 ( .A(n263), .Y(n5) );
  AOI22X1 U267 ( .A(a[3]), .B(b[3]), .C(n217), .D(n16), .Y(n13) );
  INVX1 U268 ( .A(n266), .Y(n217) );
  AOI22X1 U269 ( .A(b[2]), .B(a[2]), .C(n44), .D(n41), .Y(n266) );
  OAI21X1 U270 ( .A(n116), .B(n190), .C(n188), .Y(n44) );
  NAND2X1 U271 ( .A(a[1]), .B(b[1]), .Y(n188) );
  NAND2X1 U272 ( .A(b[0]), .B(a[0]), .Y(n190) );
  NAND3X1 U273 ( .A(n41), .B(n16), .C(n43), .Y(n14) );
  NOR2X1 U274 ( .A(n189), .B(n116), .Y(n43) );
  XNOR2X1 U275 ( .A(a[1]), .B(b[1]), .Y(n116) );
  NAND2X1 U276 ( .A(cin), .B(n218), .Y(n189) );
  XOR2X1 U277 ( .A(a[0]), .B(b[0]), .Y(n218) );
  XOR2X1 U278 ( .A(a[3]), .B(b[3]), .Y(n16) );
  XOR2X1 U279 ( .A(a[2]), .B(b[2]), .Y(n41) );
  OAI21X1 U280 ( .A(n267), .B(n268), .C(n269), .Y(n212) );
  NAND3X1 U281 ( .A(a[6]), .B(n263), .C(b[6]), .Y(n269) );
  XNOR2X1 U282 ( .A(a[7]), .B(n267), .Y(n263) );
  INVX1 U283 ( .A(a[7]), .Y(n268) );
  INVX1 U284 ( .A(b[7]), .Y(n267) );
  XNOR2X1 U285 ( .A(a[13]), .B(n251), .Y(n136) );
  INVX1 U286 ( .A(b[13]), .Y(n251) );
  INVX1 U287 ( .A(n173), .Y(n160) );
  XOR2X1 U288 ( .A(a[12]), .B(b[12]), .Y(n173) );
  XOR2X1 U289 ( .A(a[14]), .B(b[14]), .Y(n130) );
  XNOR2X1 U290 ( .A(a[15]), .B(b[15]), .Y(n150) );
  INVX1 U291 ( .A(n95), .Y(n100) );
  NAND2X1 U292 ( .A(n108), .B(n87), .Y(n95) );
  XNOR2X1 U293 ( .A(a[21]), .B(n83), .Y(n87) );
  INVX1 U294 ( .A(b[21]), .Y(n83) );
  XOR2X1 U295 ( .A(a[20]), .B(b[20]), .Y(n108) );
  XOR2X1 U296 ( .A(a[24]), .B(b[24]), .Y(n66) );
  XOR2X1 U297 ( .A(a[28]), .B(b[28]), .Y(n33) );
  AOI21X1 U298 ( .A(b[29]), .B(a[29]), .C(n270), .Y(n30) );
  INVX1 U299 ( .A(n271), .Y(n270) );
  NAND3X1 U300 ( .A(b[28]), .B(n22), .C(a[28]), .Y(n271) );
  INVX1 U301 ( .A(n29), .Y(n22) );
  XNOR2X1 U302 ( .A(a[29]), .B(b[29]), .Y(n29) );
  INVX1 U303 ( .A(a[31]), .Y(n220) );
  INVX1 U304 ( .A(b[31]), .Y(n219) );
endmodule


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


module fft_axi_manager_DW01_inc_0_DW01_inc_1 ( A, SUM );
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


module fft_axi_manager_DW01_inc_1_DW01_inc_2 ( A, SUM );
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


module fft_axi_manager_DW01_inc_2_DW01_inc_3 ( A, SUM );
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


module fft_axi_manager_DW01_add_2 ( A, B, CI, SUM, CO );
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


module fft_axi_manager ( clk, n_rst, fft_man_awready, fft_man_awaddr, 
        fft_man_awlen, fft_man_awvalid, fft_man_wready, fft_man_wdata, 
        fft_man_wstrb, fft_man_wlast, fft_man_wvalid, fft_man_bresp, 
        fft_man_bvalid, fft_man_bready, fft_man_arready, fft_man_araddr, 
        fft_man_arlen, fft_man_arvalid, fft_man_rlast, fft_man_rvalid, 
        fft_man_rdata, fft_man_rready, fft_man_rresp, .config_reg({
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
        load_size, frame_size, windowing );
  output [31:0] fft_man_awaddr;
  output [9:0] fft_man_awlen;
  output [31:0] fft_man_wdata;
  output [1:0] fft_man_wstrb;
  output [31:0] fft_man_araddr;
  output [9:0] fft_man_arlen;
  input [31:0] fft_man_rdata;
  input [31:0] data_out;
  output [31:0] data_in;
  output [9:0] frame_size;
  output [31:0] windowing;
  input clk, n_rst, fft_man_awready, fft_man_wready, fft_man_bresp,
         fft_man_bvalid, fft_man_arready, fft_man_rlast, fft_man_rvalid,
         fft_man_rresp, \config_reg[7][31] , \config_reg[7][30] ,
         \config_reg[7][29] , \config_reg[7][28] , \config_reg[7][27] ,
         \config_reg[7][26] , \config_reg[7][25] , \config_reg[7][24] ,
         \config_reg[7][23] , \config_reg[7][22] , \config_reg[7][21] ,
         \config_reg[7][20] , \config_reg[7][19] , \config_reg[7][18] ,
         \config_reg[7][17] , \config_reg[7][16] , \config_reg[7][15] ,
         \config_reg[7][14] , \config_reg[7][13] , \config_reg[7][12] ,
         \config_reg[7][11] , \config_reg[7][10] , \config_reg[7][9] ,
         \config_reg[7][8] , \config_reg[7][7] , \config_reg[7][6] ,
         \config_reg[7][5] , \config_reg[7][4] , \config_reg[7][3] ,
         \config_reg[7][2] , \config_reg[7][1] , \config_reg[7][0] ,
         \config_reg[6][31] , \config_reg[6][30] , \config_reg[6][29] ,
         \config_reg[6][28] , \config_reg[6][27] , \config_reg[6][26] ,
         \config_reg[6][25] , \config_reg[6][24] , \config_reg[6][23] ,
         \config_reg[6][22] , \config_reg[6][21] , \config_reg[6][20] ,
         \config_reg[6][19] , \config_reg[6][18] , \config_reg[6][17] ,
         \config_reg[6][16] , \config_reg[6][15] , \config_reg[6][14] ,
         \config_reg[6][13] , \config_reg[6][12] , \config_reg[6][11] ,
         \config_reg[6][10] , \config_reg[6][9] , \config_reg[6][8] ,
         \config_reg[6][7] , \config_reg[6][6] , \config_reg[6][5] ,
         \config_reg[6][4] , \config_reg[6][3] , \config_reg[6][2] ,
         \config_reg[6][1] , \config_reg[6][0] , \config_reg[5][31] ,
         \config_reg[5][30] , \config_reg[5][29] , \config_reg[5][28] ,
         \config_reg[5][27] , \config_reg[5][26] , \config_reg[5][25] ,
         \config_reg[5][24] , \config_reg[5][23] , \config_reg[5][22] ,
         \config_reg[5][21] , \config_reg[5][20] , \config_reg[5][19] ,
         \config_reg[5][18] , \config_reg[5][17] , \config_reg[5][16] ,
         \config_reg[5][15] , \config_reg[5][14] , \config_reg[5][13] ,
         \config_reg[5][12] , \config_reg[5][11] , \config_reg[5][10] ,
         \config_reg[5][9] , \config_reg[5][8] , \config_reg[5][7] ,
         \config_reg[5][6] , \config_reg[5][5] , \config_reg[5][4] ,
         \config_reg[5][3] , \config_reg[5][2] , \config_reg[5][1] ,
         \config_reg[5][0] , \config_reg[4][31] , \config_reg[4][30] ,
         \config_reg[4][29] , \config_reg[4][28] , \config_reg[4][27] ,
         \config_reg[4][26] , \config_reg[4][25] , \config_reg[4][24] ,
         \config_reg[4][23] , \config_reg[4][22] , \config_reg[4][21] ,
         \config_reg[4][20] , \config_reg[4][19] , \config_reg[4][18] ,
         \config_reg[4][17] , \config_reg[4][16] , \config_reg[4][15] ,
         \config_reg[4][14] , \config_reg[4][13] , \config_reg[4][12] ,
         \config_reg[4][11] , \config_reg[4][10] , \config_reg[4][9] ,
         \config_reg[4][8] , \config_reg[4][7] , \config_reg[4][6] ,
         \config_reg[4][5] , \config_reg[4][4] , \config_reg[4][3] ,
         \config_reg[4][2] , \config_reg[4][1] , \config_reg[4][0] ,
         \config_reg[3][31] , \config_reg[3][30] , \config_reg[3][29] ,
         \config_reg[3][28] , \config_reg[3][27] , \config_reg[3][26] ,
         \config_reg[3][25] , \config_reg[3][24] , \config_reg[3][23] ,
         \config_reg[3][22] , \config_reg[3][21] , \config_reg[3][20] ,
         \config_reg[3][19] , \config_reg[3][18] , \config_reg[3][17] ,
         \config_reg[3][16] , \config_reg[3][15] , \config_reg[3][14] ,
         \config_reg[3][13] , \config_reg[3][12] , \config_reg[3][11] ,
         \config_reg[3][10] , \config_reg[3][9] , \config_reg[3][8] ,
         \config_reg[3][7] , \config_reg[3][6] , \config_reg[3][5] ,
         \config_reg[3][4] , \config_reg[3][3] , \config_reg[3][2] ,
         \config_reg[3][1] , \config_reg[3][0] , \config_reg[2][31] ,
         \config_reg[2][30] , \config_reg[2][29] , \config_reg[2][28] ,
         \config_reg[2][27] , \config_reg[2][26] , \config_reg[2][25] ,
         \config_reg[2][24] , \config_reg[2][23] , \config_reg[2][22] ,
         \config_reg[2][21] , \config_reg[2][20] , \config_reg[2][19] ,
         \config_reg[2][18] , \config_reg[2][17] , \config_reg[2][16] ,
         \config_reg[2][15] , \config_reg[2][14] , \config_reg[2][13] ,
         \config_reg[2][12] , \config_reg[2][11] , \config_reg[2][10] ,
         \config_reg[2][9] , \config_reg[2][8] , \config_reg[2][7] ,
         \config_reg[2][6] , \config_reg[2][5] , \config_reg[2][4] ,
         \config_reg[2][3] , \config_reg[2][2] , \config_reg[2][1] ,
         \config_reg[2][0] , \config_reg[1][31] , \config_reg[1][30] ,
         \config_reg[1][29] , \config_reg[1][28] , \config_reg[1][27] ,
         \config_reg[1][26] , \config_reg[1][25] , \config_reg[1][24] ,
         \config_reg[1][23] , \config_reg[1][22] , \config_reg[1][21] ,
         \config_reg[1][20] , \config_reg[1][19] , \config_reg[1][18] ,
         \config_reg[1][17] , \config_reg[1][16] , \config_reg[1][15] ,
         \config_reg[1][14] , \config_reg[1][13] , \config_reg[1][12] ,
         \config_reg[1][11] , \config_reg[1][10] , \config_reg[1][9] ,
         \config_reg[1][8] , \config_reg[1][7] , \config_reg[1][6] ,
         \config_reg[1][5] , \config_reg[1][4] , \config_reg[1][3] ,
         \config_reg[1][2] , \config_reg[1][1] , \config_reg[1][0] ,
         \config_reg[0][31] , \config_reg[0][30] , \config_reg[0][29] ,
         \config_reg[0][28] , \config_reg[0][27] , \config_reg[0][26] ,
         \config_reg[0][25] , \config_reg[0][24] , \config_reg[0][23] ,
         \config_reg[0][22] , \config_reg[0][21] , \config_reg[0][20] ,
         \config_reg[0][19] , \config_reg[0][18] , \config_reg[0][17] ,
         \config_reg[0][16] , \config_reg[0][15] , \config_reg[0][14] ,
         \config_reg[0][13] , \config_reg[0][12] , \config_reg[0][11] ,
         \config_reg[0][10] , \config_reg[0][9] , \config_reg[0][8] ,
         \config_reg[0][7] , \config_reg[0][6] , \config_reg[0][5] ,
         \config_reg[0][4] , \config_reg[0][3] , \config_reg[0][2] ,
         \config_reg[0][1] , \config_reg[0][0] , out_valid;
  output fft_man_awvalid, fft_man_wlast, fft_man_wvalid, fft_man_bready,
         fft_man_arvalid, fft_man_rready, in_valid, load_size;
  wire   j_eq_k, k_gt_0, j_gt_0, N19, N20, N21, N26, N27, N28, N29, N30, N31,
         N32, N33, N34, N35, \configs[6][31] , \configs[6][30] ,
         \configs[6][29] , \configs[6][28] , \configs[6][27] ,
         \configs[6][26] , \configs[6][25] , \configs[6][24] ,
         \configs[6][23] , \configs[6][22] , \configs[6][21] ,
         \configs[6][20] , \configs[6][19] , \configs[6][18] ,
         \configs[6][17] , \configs[6][16] , \configs[6][15] ,
         \configs[6][14] , \configs[6][13] , \configs[6][12] ,
         \configs[6][11] , \configs[6][10] , \configs[6][9] , \configs[6][8] ,
         \configs[6][7] , \configs[6][6] , \configs[6][5] , \configs[6][4] ,
         \configs[6][3] , \configs[6][2] , \configs[6][1] , \configs[6][0] ,
         \configs[3][31] , \configs[3][30] , \configs[3][29] ,
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
         \configs[1][0] , \configs[0][31] , \configs[0][30] , \configs[0][29] ,
         \configs[0][28] , \configs[0][27] , \configs[0][26] ,
         \configs[0][25] , \configs[0][24] , \configs[0][23] ,
         \configs[0][22] , \configs[0][21] , \configs[0][20] ,
         \configs[0][19] , \configs[0][18] , \configs[0][17] ,
         \configs[0][16] , \configs[0][15] , \configs[0][14] ,
         \configs[0][13] , \configs[0][12] , \configs[0][11] ,
         \configs[0][10] , \configs[0][9] , \configs[0][8] , \configs[0][7] ,
         \configs[0][6] , \configs[0][5] , \configs[0][4] , \configs[0][3] ,
         \configs[0][2] , \configs[0][1] , \configs[0][0] , processing, N52,
         N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66,
         N67, N68, N69, N70, N71, N72, N73, N195, N196, N198, rcounter_last,
         N237, N238, N239, N240, N241, N242, N243, N244, N245, N246, N247,
         N248, N249, N250, N251, N252, N253, N254, N255, N256, N257, N258,
         N259, N260, N261, N262, N263, N264, N265, N266, N267, N268, N270,
         N271, N272, N273, N274, N275, N276, N277, N278, N279, N280, N281,
         N282, N283, N284, N285, N286, N287, N288, N289, N290, N291, N292,
         N293, N294, N295, N296, N297, N298, N299, N300, N301, N354, N355,
         N356, N357, N358, N359, N360, N361, N362, N363, N364, N365, N366,
         N367, N368, N369, N370, N371, N372, N373, N374, N375, N376, N377,
         N378, N379, N380, N381, N382, N383, N384, N385, out_valid_reg, N390,
         n707, n709, n711, n713, n715, n717, n719, n721, n723, n725, n727,
         n729, n731, n733, n735, n737, n739, n741, n743, n745, n747, n749,
         n751, n753, n755, n757, n759, n761, n763, n765, n767, n769, n771,
         n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232, n1233, n1234,
         n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242, n1243, n1244,
         n1245, n1246, n1247, n1248, n1249, n1250, n1251, n1252, n1253, n1254,
         n1255, n1256, n1343, n1344, n1345, n1346, n1347, n1348, n1349, n1350,
         n1351, n1352, n1353, n1376, n1379, n1380, n1381, n1382, n1383, n1384,
         n1385, n1386, n1387, n1388, n1389, n1390, n1391, n1392, n1393, n1394,
         n1395, n1396, n1397, n1398, n1399, n1400, n1401, n1402, n1403, n1404,
         n1405, n1406, n1407, n1408, n1409, n1410, n1411, n1412, n1413, n1414,
         n1415, n1416, n1417, n1418, n1419, n1420, n1421, n1422, n1423, n1424,
         n1425, n1426, n1427, n1428, n1429, n1430, n1431, n1432, n1433, n1434,
         n1435, n1436, n1437, n1438, n1439, n1440, n1441, n1442, n1443, n1444,
         n1445, n1446, n1447, n1448, n1449, n1450, n1451, n1452, n1453, n1454,
         n1457, n1458, n1459, n1460, n1461, n1462, n1463, n1464, n1465, n1466,
         n1467, n1468, n1469, n1470, n1471, n1472, n1473, n1474, n1475, n1476,
         n1477, n1478, n1479, n1480, n1481, n1482, n1483, n1484, n1485, n1486,
         n1487, n1488, n1489, n1490, n1491, n1492, n1493, n1494, n1495, n1496,
         n1497, n1498, n1499, n1500, n1501, n1502, n1503, n1504, n1505, n1506,
         n1507, n1508, n1509, n1510, n1511, n1512, n1513, n1514, n1515, n1516,
         n1517, n1518, n1519, n1520, n1521, n1522, n1523, n1524, n1525, n1526,
         n1527, n1528, n1529, n1530, n1531, n1532, n1533, n1534, n1535, n1536,
         n1537, n1538, n1539, n1540, n1541, n1542, n1543, n1544, n1545, n1546,
         n1547, n1548, n1549, n1550, n1551, n1552, n1553, n1554, n1555, n1556,
         n1557, n1558, n1559, n1560, n1561, n1562, n1563, n1564, n1565, n1566,
         n1567, n1568, n1569, n1570, n1571, n1572, n1573, n1574, n1575, n1576,
         n1577, n1578, n1579, n1580, n1581, n1582, n1583, n1584, n1585, n1586,
         n1587, n1588, n1589, n1590, n1591, n1592, n1593, n1594, n1595, n1596,
         n1597, n1598, n1599, n1600, n1601, n1602, n1603, n1604, n1605, n1606,
         n1607, n1608, n1609, n1610, n1611, n1612, n1613, n1614, n1615, n1616,
         n1617, n1618, n1619, n1620, n1621, n1622, n1623, n1624, n1625, n1626,
         n1627, n1628, n1629, n1630, n1631, n1632, n1633, n1634, n1635, n1636,
         n1637, n1638, n1639, n1640, n1641, n1642, n1643, n1644, n1645, n1646,
         n1647, n1648, n1649, n1650, n1651, n1652, n1653, n1654, n1655, n1656,
         n1657, n1658, n1659, n1660, n1661, n1662, n1663, n1664, n1665, n1666,
         n1667, n1668, n1669, n1670, n1671, n1672, n1673, n1674, n1675, n1676,
         n1677, n1678, n1679, n1680, n1681, n1682, n1683, n1684, n1685, n1686,
         n1687, n1688, n1689, n1690, n1691, n1692, n1693, n1694, n1695, n1696,
         n1697, n1698, n1699, n1700, n1701, n1702, n1703, n1704, n1705, n1706,
         n1707, n1708, n1709, n1710, n1711, n1712, n1713, n1714, n1715, n1716,
         n1717, n1718, n1719, n1720, n1721, n1722, n1723, n1724, n1725, n1726,
         n1727, n1728, n1729, n1730, n1731, n1732, n1733, n1734, n1735, n1736,
         n1737, n1738, n1739, n1740, n1741, n1742, n1743, n1744, n1745, n1746,
         n1747, n1748, n1749, n1750, n1751, n1752, n1753, n1754, n1755, n1756,
         n1757, n1758, n1759, n1760, n1761, n1762, n1763, n1764, n1765, n1766,
         n1767, n1768, n1769, n1770, n1771, n1772, n1773, n1774, n1775, n1776,
         n1777, n1778, n1779, n1780, n1781, n1782, n1783, n1784, n1785, n1786,
         n1787, n1788, n1789, n1790, n1791, n1792, n1793, n1794, n1795, n1796,
         n1797, n1798, n1799, n1800, n1801, n1802, n1803, n1804, n1805, n1806,
         n1807, n1808, n1809, n1810, n1811, n1812, n1813, n1814, n1815, n1816,
         n1817, n1818, n1819, n1820, n1821, n1822, n1823, n1824, n1825, n1826,
         n1827, n1828, n1829, n1830, n1831, n1832, n1833, n1834, n1835, n1836,
         n1837, n1838, n1839, n1840, n1841, n1842, n1843, n1844, n1845, n1846,
         n1847, n1848, n1849, n1850, n1851, n1852, n1853, n1854, n1855, n1856,
         n1857, n1858, n1859, n1860, n1861, n1862, n1863, n1864, n1865, n1866,
         n1867, n1868, n1869, n1870, n1871, n1872, n1873, n1874, n1875, n1876,
         n1877, n1878, n1879, n1880, n1881, n1882, n1883, n1884, n1885, n1886,
         n1887, n1888, n1889, n1890, n1891, n1892, n1893, n1894, n1895, n1896,
         n1897, n1898, n1899, n1900, n1901, n1902, n1903, n1904, n1905, n1906,
         n1907, n1908, n1909, n1910, n1911, n1912, n1913, n1914, n1915, n1916,
         n1917, n1918, n1919, n1920, n1921, n1922, n1923, n1924, n1925, n1926,
         n1927, n1928, n1929, n1930, n1931, n1932, n1933, n1934, n1935, n1936,
         n1937, n1938, n1939, n1940, n1941, n1942, n1943, n1944, n1945, n1946,
         n1947, n1948, n1949, n1950, n1951, n1952, n1953, n1954, n1955, n1956,
         n1957, n1958, n1959, n1960, n1961, n1962, n1963, n1964, n1965, n1966,
         n1967, n1968, n1969, n1970, n1971, n1972, n1973, n1974, n1975, n1976,
         n1977, n1978, n1979, n1980, n1981, n1982, n1983, n1984, n1985, n1986,
         n1987, n1988, n1989, n1990, n1991, n1992, n1993, n1994, n1995, n1996,
         n1997, n1998, n1999, n2000, n2001, n2002, n2003, n2004, n2005, n2006,
         n2007, n2008, n2009, n2010, n2011, n2012, n2013, n2014, n2015, n2016,
         n2017, n2018, n2019, n2020, n2021, n2022, n2023, n2024, n2025, n2026,
         n2027, n2028, n2029, n2030, n2031, n2032, n2033, n2034, n2035, n2036,
         n2037, n2038, n2039, n2040, n2041, n2042, n2043, n2044, n2045, n2046,
         n2047, n2048, n2049, n2050, n2051, n2052, n2053, n2054, n2055, n2056,
         n2057, n2058, n2059, n2060, n2061, n2062, n2063, n2064, n2065, n2066,
         n2067, n2068, n2069, n2070, n2071, n2072, n2073, n2074, n2075, n2076,
         n2077, n2078, n2079, n2080, n2081, n2082, n2083, n2084, n2085, n2086,
         n2087, n2088, n2089, n2090, n2091, n2092, n2093, n2094, n2095, n2096,
         n2097, n2098, n2099, n2100, n2101, n2102, n2103, n2104, n2105, n2106,
         n2107, n2108, n2109, n2110, n2111, n2112, n2113, n2114, n2115, n2116,
         n2117, n2118, n2119, n2120, n2121, n2122, n2123, n2124, n2125, n2126,
         n2127, n2128, n2129, n2130, n2131, n2132, n2133, n2134, n2135, n2136,
         n2137, n2138, n2139, n2140, n2141, n2142, n2143, n2144, n2145, n2146,
         n2147, n2148, n2149, n2150, n2151, n2152, n2153, n2154, n2155, n2156,
         n2157, n2158, n2159, n2160, n2161, n2162, n2163, n2164, n2165, n2166,
         n2167, n2168, n2169, n2170, n2171, n2172, n2173, n2174, n2175, n2176,
         n2177, n2178, n2179, n2180, n2181, n2182, n2183, n2184, n2185, n2186,
         n2187, n2188, n2189, n2190, n2191, n2192, n2193, n2194, n2195, n2196,
         n2197, n2198, n2199, n2200, n2201, n2202, n2203, n2204, n2205, n2206,
         n2207, n2208, n2209, n2210, n2211, n2212, n2213, n2214, n2215, n2216,
         n2217, n2218, n2219, n2220, n2221, n2222, n2223, n2224, n2225, n2226,
         n2227, n2228, n2229, n2230, n2231, n2232, n2233, n2234, n2235, n2236,
         n2237, n2238, n2239, n2240, n2241, n2242, n2243, n2244, n2245, n2246,
         n2247, n2248, n2249, n2250, n2251, n2252, n2253, n2254, n2255, n2256,
         n2257, n2258, n2259, n2260, n2261, n2262, n2263, n2264, n2265, n2266,
         n2267, n2268, n2269, n2270, n2271, n2272, n2273, n2274, n2275, n2276,
         n2277, n2278, n2279, n2280, n2281, n2282, n2283, n2284, n2285, n2286,
         n2287, n2288, n2289, n2290, n2291, n2292, n2293, n2294, n2295, n2296,
         n2297, n2298, n2299, n2300, n2301, n2302, n2303;
  wire   [10:0] j;
  wire   [10:0] k;
  wire   [1:0] wstate;
  wire   [2:0] rstate;
  wire   [31:0] r_offset;
  wire   [31:0] r_frame_size;
  wire   [31:0] next_r_offset_val;
  wire   [31:0] w_offset;
  wire   [31:0] w_frame_size;
  wire   [31:0] next_w_offset_val;
  wire   [2:0] next_rstate;
  wire   [3:0] wait_cnt;
  wire   [1:0] next_wstate;
  assign fft_man_bready = N390;

  DFFSR \data_in_reg[31]  ( .D(fft_man_rdata[31]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(data_in[31]) );
  DFFSR \data_in_reg[30]  ( .D(fft_man_rdata[30]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(data_in[30]) );
  DFFSR \data_in_reg[29]  ( .D(fft_man_rdata[29]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(data_in[29]) );
  DFFSR \data_in_reg[28]  ( .D(fft_man_rdata[28]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(data_in[28]) );
  DFFSR \data_in_reg[27]  ( .D(fft_man_rdata[27]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(data_in[27]) );
  DFFSR \data_in_reg[26]  ( .D(fft_man_rdata[26]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(data_in[26]) );
  DFFSR \data_in_reg[25]  ( .D(fft_man_rdata[25]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(data_in[25]) );
  DFFSR \data_in_reg[24]  ( .D(fft_man_rdata[24]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(data_in[24]) );
  DFFSR \data_in_reg[23]  ( .D(fft_man_rdata[23]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(data_in[23]) );
  DFFSR \data_in_reg[22]  ( .D(fft_man_rdata[22]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(data_in[22]) );
  DFFSR \data_in_reg[21]  ( .D(fft_man_rdata[21]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(data_in[21]) );
  DFFSR \data_in_reg[20]  ( .D(fft_man_rdata[20]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(data_in[20]) );
  DFFSR \data_in_reg[19]  ( .D(fft_man_rdata[19]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(data_in[19]) );
  DFFSR \data_in_reg[18]  ( .D(fft_man_rdata[18]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(data_in[18]) );
  DFFSR \data_in_reg[17]  ( .D(fft_man_rdata[17]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(data_in[17]) );
  DFFSR \data_in_reg[16]  ( .D(fft_man_rdata[16]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(data_in[16]) );
  DFFSR \data_in_reg[15]  ( .D(fft_man_rdata[15]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(data_in[15]) );
  DFFSR \data_in_reg[14]  ( .D(fft_man_rdata[14]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(data_in[14]) );
  DFFSR \data_in_reg[13]  ( .D(fft_man_rdata[13]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(data_in[13]) );
  DFFSR \data_in_reg[12]  ( .D(fft_man_rdata[12]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(data_in[12]) );
  DFFSR \data_in_reg[11]  ( .D(fft_man_rdata[11]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(data_in[11]) );
  DFFSR \data_in_reg[10]  ( .D(fft_man_rdata[10]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(data_in[10]) );
  DFFSR \data_in_reg[9]  ( .D(fft_man_rdata[9]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(data_in[9]) );
  DFFSR \data_in_reg[8]  ( .D(fft_man_rdata[8]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(data_in[8]) );
  DFFSR \data_in_reg[7]  ( .D(fft_man_rdata[7]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(data_in[7]) );
  DFFSR \data_in_reg[6]  ( .D(fft_man_rdata[6]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(data_in[6]) );
  DFFSR \data_in_reg[5]  ( .D(fft_man_rdata[5]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(data_in[5]) );
  DFFSR \data_in_reg[4]  ( .D(fft_man_rdata[4]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(data_in[4]) );
  DFFSR \data_in_reg[3]  ( .D(fft_man_rdata[3]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(data_in[3]) );
  DFFSR \data_in_reg[2]  ( .D(fft_man_rdata[2]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(data_in[2]) );
  DFFSR \data_in_reg[1]  ( .D(fft_man_rdata[1]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(data_in[1]) );
  DFFSR \data_in_reg[0]  ( .D(fft_man_rdata[0]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(data_in[0]) );
  DFFSR \data_out_reg_reg[31]  ( .D(data_out[31]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(fft_man_wdata[31]) );
  DFFSR \data_out_reg_reg[30]  ( .D(data_out[30]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(fft_man_wdata[30]) );
  DFFSR \data_out_reg_reg[29]  ( .D(data_out[29]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(fft_man_wdata[29]) );
  DFFSR \data_out_reg_reg[28]  ( .D(data_out[28]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(fft_man_wdata[28]) );
  DFFSR \data_out_reg_reg[27]  ( .D(data_out[27]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(fft_man_wdata[27]) );
  DFFSR \data_out_reg_reg[26]  ( .D(data_out[26]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(fft_man_wdata[26]) );
  DFFSR \data_out_reg_reg[25]  ( .D(data_out[25]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(fft_man_wdata[25]) );
  DFFSR \data_out_reg_reg[24]  ( .D(data_out[24]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(fft_man_wdata[24]) );
  DFFSR \data_out_reg_reg[23]  ( .D(data_out[23]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(fft_man_wdata[23]) );
  DFFSR \data_out_reg_reg[22]  ( .D(data_out[22]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(fft_man_wdata[22]) );
  DFFSR \data_out_reg_reg[21]  ( .D(data_out[21]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(fft_man_wdata[21]) );
  DFFSR \data_out_reg_reg[20]  ( .D(data_out[20]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(fft_man_wdata[20]) );
  DFFSR \data_out_reg_reg[19]  ( .D(data_out[19]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(fft_man_wdata[19]) );
  DFFSR \data_out_reg_reg[18]  ( .D(data_out[18]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(fft_man_wdata[18]) );
  DFFSR \data_out_reg_reg[17]  ( .D(data_out[17]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(fft_man_wdata[17]) );
  DFFSR \data_out_reg_reg[16]  ( .D(data_out[16]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(fft_man_wdata[16]) );
  DFFSR \data_out_reg_reg[15]  ( .D(data_out[15]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(fft_man_wdata[15]) );
  DFFSR \data_out_reg_reg[14]  ( .D(data_out[14]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(fft_man_wdata[14]) );
  DFFSR \data_out_reg_reg[13]  ( .D(data_out[13]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(fft_man_wdata[13]) );
  DFFSR \data_out_reg_reg[12]  ( .D(data_out[12]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(fft_man_wdata[12]) );
  DFFSR \data_out_reg_reg[11]  ( .D(data_out[11]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(fft_man_wdata[11]) );
  DFFSR \data_out_reg_reg[10]  ( .D(data_out[10]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(fft_man_wdata[10]) );
  DFFSR \data_out_reg_reg[9]  ( .D(data_out[9]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(fft_man_wdata[9]) );
  DFFSR \data_out_reg_reg[8]  ( .D(data_out[8]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(fft_man_wdata[8]) );
  DFFSR \data_out_reg_reg[7]  ( .D(data_out[7]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(fft_man_wdata[7]) );
  DFFSR \data_out_reg_reg[6]  ( .D(data_out[6]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(fft_man_wdata[6]) );
  DFFSR \data_out_reg_reg[5]  ( .D(data_out[5]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(fft_man_wdata[5]) );
  DFFSR \data_out_reg_reg[4]  ( .D(data_out[4]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(fft_man_wdata[4]) );
  DFFSR \data_out_reg_reg[3]  ( .D(data_out[3]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(fft_man_wdata[3]) );
  DFFSR \data_out_reg_reg[2]  ( .D(data_out[2]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(fft_man_wdata[2]) );
  DFFSR \data_out_reg_reg[1]  ( .D(data_out[1]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(fft_man_wdata[1]) );
  DFFSR \data_out_reg_reg[0]  ( .D(data_out[0]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(fft_man_wdata[0]) );
  DFFSR out_valid_reg_reg ( .D(out_valid), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        out_valid_reg) );
  DFFSR \wstate_reg[0]  ( .D(next_wstate[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(wstate[0]) );
  DFFSR \wstate_reg[1]  ( .D(next_wstate[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(wstate[1]) );
  DFFSR \k_reg[10]  ( .D(n1454), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[10]) );
  DFFSR processing_reg ( .D(n1432), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        processing) );
  DFFSR \r_frame_size_reg[1]  ( .D(n2272), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[1]) );
  DFFSR \r_frame_size_reg[2]  ( .D(n2273), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[2]) );
  DFFSR \r_frame_size_reg[3]  ( .D(n2274), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[3]) );
  DFFSR \r_frame_size_reg[4]  ( .D(n2275), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[4]) );
  DFFSR \r_frame_size_reg[5]  ( .D(n2276), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[5]) );
  DFFSR \r_frame_size_reg[6]  ( .D(n2277), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[6]) );
  DFFSR \r_frame_size_reg[7]  ( .D(n2278), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[7]) );
  DFFSR \r_frame_size_reg[8]  ( .D(n2279), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[8]) );
  DFFSR \r_frame_size_reg[9]  ( .D(n2280), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[9]) );
  DFFSR \r_frame_size_reg[10]  ( .D(n2281), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(r_frame_size[10]) );
  DFFSR \w_frame_size_reg[0]  ( .D(n2282), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[0]) );
  DFFSR \w_frame_size_reg[1]  ( .D(n2283), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[1]) );
  DFFSR \w_frame_size_reg[2]  ( .D(n2284), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[2]) );
  DFFSR \w_frame_size_reg[3]  ( .D(n2285), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[3]) );
  DFFSR \w_frame_size_reg[4]  ( .D(n2286), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[4]) );
  DFFSR \w_frame_size_reg[5]  ( .D(n2287), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[5]) );
  DFFSR \w_frame_size_reg[6]  ( .D(n2288), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[6]) );
  DFFSR \w_frame_size_reg[7]  ( .D(n2289), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[7]) );
  DFFSR \w_frame_size_reg[8]  ( .D(n2290), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[8]) );
  DFFSR \w_frame_size_reg[9]  ( .D(n2291), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[9]) );
  DFFSR \w_frame_size_reg[10]  ( .D(n2292), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(w_frame_size[10]) );
  DFFSR \r_frame_size_reg[0]  ( .D(n2293), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[0]) );
  DFFSR \configs_reg[1][19]  ( .D(n2252), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][19] ) );
  DFFSR \configs_reg[1][18]  ( .D(n2253), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][18] ) );
  DFFSR \configs_reg[1][17]  ( .D(n2254), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][17] ) );
  DFFSR \configs_reg[1][16]  ( .D(n2255), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][16] ) );
  DFFSR \configs_reg[1][15]  ( .D(n2256), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][15] ) );
  DFFSR \configs_reg[1][14]  ( .D(n2257), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][14] ) );
  DFFSR \configs_reg[1][13]  ( .D(n2258), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][13] ) );
  DFFSR \configs_reg[1][12]  ( .D(n2259), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][12] ) );
  DFFSR \configs_reg[1][11]  ( .D(n2260), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][11] ) );
  DFFSR \configs_reg[1][10]  ( .D(n2261), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][10] ) );
  DFFSR \configs_reg[1][9]  ( .D(n2262), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][9] ) );
  DFFSR \configs_reg[1][8]  ( .D(n2263), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][8] ) );
  DFFSR \configs_reg[1][7]  ( .D(n2264), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][7] ) );
  DFFSR \configs_reg[1][6]  ( .D(n2265), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][6] ) );
  DFFSR \configs_reg[1][5]  ( .D(n2266), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][5] ) );
  DFFSR \configs_reg[1][4]  ( .D(n2267), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][4] ) );
  DFFSR \configs_reg[1][3]  ( .D(n2268), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][3] ) );
  DFFSR \configs_reg[1][2]  ( .D(n2269), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][2] ) );
  DFFSR \configs_reg[1][1]  ( .D(n2270), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][1] ) );
  DFFSR \configs_reg[1][0]  ( .D(n2271), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][0] ) );
  DFFSR \configs_reg[0][31]  ( .D(n1411), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][31] ) );
  DFFSR \configs_reg[0][30]  ( .D(n1412), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][30] ) );
  DFFSR \configs_reg[0][29]  ( .D(n1413), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][29] ) );
  DFFSR \configs_reg[0][28]  ( .D(n1414), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][28] ) );
  DFFSR \configs_reg[0][27]  ( .D(n1415), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][27] ) );
  DFFSR \configs_reg[0][26]  ( .D(n1416), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][26] ) );
  DFFSR \configs_reg[0][25]  ( .D(n1417), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][25] ) );
  DFFSR \configs_reg[0][24]  ( .D(n1418), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][24] ) );
  DFFSR \configs_reg[0][23]  ( .D(n1419), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][23] ) );
  DFFSR \configs_reg[0][22]  ( .D(n1420), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][22] ) );
  DFFSR \configs_reg[0][21]  ( .D(n1421), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][21] ) );
  DFFSR \configs_reg[0][20]  ( .D(n1422), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][20] ) );
  DFFSR \configs_reg[0][19]  ( .D(n1423), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][19] ) );
  DFFSR \configs_reg[0][18]  ( .D(n1424), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][18] ) );
  DFFSR \configs_reg[0][17]  ( .D(n1425), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][17] ) );
  DFFSR \configs_reg[0][16]  ( .D(n1426), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][16] ) );
  DFFSR \configs_reg[0][15]  ( .D(n1427), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][15] ) );
  DFFSR \configs_reg[0][14]  ( .D(n1428), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][14] ) );
  DFFSR \configs_reg[0][13]  ( .D(n1429), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][13] ) );
  DFFSR \configs_reg[0][12]  ( .D(n1430), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][12] ) );
  DFFSR \configs_reg[0][11]  ( .D(n1431), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][11] ) );
  DFFSR \configs_reg[0][10]  ( .D(n1343), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][10] ) );
  DFFSR \configs_reg[0][9]  ( .D(n1344), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][9] ) );
  DFFSR \configs_reg[0][8]  ( .D(n1345), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][8] ) );
  DFFSR \configs_reg[0][7]  ( .D(n1346), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][7] ) );
  DFFSR \configs_reg[0][6]  ( .D(n1347), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][6] ) );
  DFFSR \configs_reg[0][5]  ( .D(n1348), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][5] ) );
  DFFSR \configs_reg[0][4]  ( .D(n1349), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][4] ) );
  DFFSR \configs_reg[0][3]  ( .D(n1350), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][3] ) );
  DFFSR \configs_reg[0][2]  ( .D(n1351), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][2] ) );
  DFFSR \configs_reg[0][1]  ( .D(n1352), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][1] ) );
  DFFSR \configs_reg[6][31]  ( .D(n1225), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][31] ) );
  DFFSR \configs_reg[6][30]  ( .D(n1226), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][30] ) );
  DFFSR \configs_reg[6][29]  ( .D(n1227), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][29] ) );
  DFFSR \configs_reg[6][28]  ( .D(n1228), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][28] ) );
  DFFSR \configs_reg[6][27]  ( .D(n1229), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][27] ) );
  DFFSR \configs_reg[6][26]  ( .D(n1230), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][26] ) );
  DFFSR \configs_reg[6][25]  ( .D(n1231), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][25] ) );
  DFFSR \configs_reg[6][24]  ( .D(n1232), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][24] ) );
  DFFSR \configs_reg[6][23]  ( .D(n1233), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][23] ) );
  DFFSR \configs_reg[6][22]  ( .D(n1234), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][22] ) );
  DFFSR \configs_reg[6][21]  ( .D(n1235), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][21] ) );
  DFFSR \configs_reg[6][20]  ( .D(n1236), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][20] ) );
  DFFSR \configs_reg[6][19]  ( .D(n1237), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][19] ) );
  DFFSR \configs_reg[6][18]  ( .D(n1238), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][18] ) );
  DFFSR \configs_reg[6][17]  ( .D(n1239), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][17] ) );
  DFFSR \configs_reg[6][16]  ( .D(n1240), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][16] ) );
  DFFSR \configs_reg[6][15]  ( .D(n1241), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][15] ) );
  DFFSR \configs_reg[6][14]  ( .D(n1242), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][14] ) );
  DFFSR \configs_reg[6][13]  ( .D(n1243), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][13] ) );
  DFFSR \configs_reg[6][12]  ( .D(n1244), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][12] ) );
  DFFSR \configs_reg[6][11]  ( .D(n1245), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][11] ) );
  DFFSR \configs_reg[6][10]  ( .D(n1246), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][10] ) );
  DFFSR \configs_reg[6][9]  ( .D(n1247), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][9] ) );
  DFFSR \configs_reg[6][8]  ( .D(n1248), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][8] ) );
  DFFSR \configs_reg[6][7]  ( .D(n1249), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][7] ) );
  DFFSR \configs_reg[6][6]  ( .D(n1250), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][6] ) );
  DFFSR \configs_reg[6][5]  ( .D(n1251), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][5] ) );
  DFFSR \configs_reg[6][4]  ( .D(n1252), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][4] ) );
  DFFSR \configs_reg[6][3]  ( .D(n1253), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][3] ) );
  DFFSR \configs_reg[6][2]  ( .D(n1254), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][2] ) );
  DFFSR \configs_reg[6][1]  ( .D(n1255), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][1] ) );
  DFFSR \configs_reg[6][0]  ( .D(n1256), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][0] ) );
  DFFSR \configs_reg[5][1]  ( .D(n2186), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_wstrb[1]) );
  DFFSR \configs_reg[5][0]  ( .D(n2187), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_wstrb[0]) );
  DFFSR \configs_reg[4][9]  ( .D(n2188), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[9]) );
  DFFSR \configs_reg[4][8]  ( .D(n2189), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[8]) );
  DFFSR \configs_reg[4][7]  ( .D(n2190), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[7]) );
  DFFSR \configs_reg[4][6]  ( .D(n2191), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[6]) );
  DFFSR \configs_reg[4][5]  ( .D(n2192), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[5]) );
  DFFSR \configs_reg[4][4]  ( .D(n2193), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[4]) );
  DFFSR \configs_reg[4][3]  ( .D(n2194), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[3]) );
  DFFSR \configs_reg[4][2]  ( .D(n2195), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[2]) );
  DFFSR \configs_reg[4][1]  ( .D(n2196), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[1]) );
  DFFSR \configs_reg[4][0]  ( .D(n2197), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[0]) );
  DFFSR \configs_reg[3][31]  ( .D(n2198), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][31] ) );
  DFFSR \configs_reg[3][30]  ( .D(n2199), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][30] ) );
  DFFSR \configs_reg[3][29]  ( .D(n2200), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][29] ) );
  DFFSR \configs_reg[3][28]  ( .D(n2201), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][28] ) );
  DFFSR \configs_reg[3][27]  ( .D(n2202), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][27] ) );
  DFFSR \configs_reg[3][26]  ( .D(n2203), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][26] ) );
  DFFSR \configs_reg[3][25]  ( .D(n2204), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][25] ) );
  DFFSR \configs_reg[3][24]  ( .D(n2205), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][24] ) );
  DFFSR \configs_reg[3][23]  ( .D(n2206), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][23] ) );
  DFFSR \configs_reg[3][22]  ( .D(n2207), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][22] ) );
  DFFSR \configs_reg[3][21]  ( .D(n2208), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][21] ) );
  DFFSR \configs_reg[3][20]  ( .D(n2209), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][20] ) );
  DFFSR \configs_reg[3][19]  ( .D(n2210), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][19] ) );
  DFFSR \configs_reg[3][18]  ( .D(n2211), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][18] ) );
  DFFSR \configs_reg[3][17]  ( .D(n2212), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][17] ) );
  DFFSR \configs_reg[3][16]  ( .D(n2213), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][16] ) );
  DFFSR \configs_reg[3][15]  ( .D(n2214), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][15] ) );
  DFFSR \configs_reg[3][14]  ( .D(n2215), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][14] ) );
  DFFSR \configs_reg[3][13]  ( .D(n2216), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][13] ) );
  DFFSR \configs_reg[3][12]  ( .D(n2217), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][12] ) );
  DFFSR \configs_reg[3][11]  ( .D(n2218), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][11] ) );
  DFFSR \configs_reg[3][10]  ( .D(n2219), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][10] ) );
  DFFSR \configs_reg[3][9]  ( .D(n2220), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][9] ) );
  DFFSR \configs_reg[3][8]  ( .D(n2221), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][8] ) );
  DFFSR \configs_reg[3][7]  ( .D(n2222), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][7] ) );
  DFFSR \configs_reg[3][6]  ( .D(n2223), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][6] ) );
  DFFSR \configs_reg[3][5]  ( .D(n2224), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][5] ) );
  DFFSR \configs_reg[3][4]  ( .D(n2225), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][4] ) );
  DFFSR \configs_reg[3][3]  ( .D(n2226), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][3] ) );
  DFFSR \configs_reg[3][2]  ( .D(n2227), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][2] ) );
  DFFSR \configs_reg[3][1]  ( .D(n2228), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][1] ) );
  DFFSR \configs_reg[3][0]  ( .D(n2229), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][0] ) );
  DFFSR \configs_reg[2][9]  ( .D(n2230), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[9]) );
  DFFSR \configs_reg[2][8]  ( .D(n2231), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[8]) );
  DFFSR \configs_reg[2][7]  ( .D(n2232), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[7]) );
  DFFSR \configs_reg[2][6]  ( .D(n2233), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[6]) );
  DFFSR \configs_reg[2][5]  ( .D(n2234), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[5]) );
  DFFSR \configs_reg[2][4]  ( .D(n2235), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[4]) );
  DFFSR \configs_reg[2][3]  ( .D(n2236), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[3]) );
  DFFSR \configs_reg[2][2]  ( .D(n2237), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[2]) );
  DFFSR \configs_reg[2][1]  ( .D(n2238), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[1]) );
  DFFSR \configs_reg[2][0]  ( .D(n2239), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[0]) );
  DFFSR \rstate_reg[0]  ( .D(next_rstate[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(rstate[0]) );
  DFFSR \rstate_reg[1]  ( .D(next_rstate[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(rstate[1]) );
  DFFSR in_valid_reg ( .D(n2185), .CLK(clk), .R(n_rst), .S(1'b1), .Q(in_valid)
         );
  DFFSR \rstate_reg[2]  ( .D(next_rstate[2]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(rstate[2]) );
  DFFSR \wait_cnt_reg[0]  ( .D(N195), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wait_cnt[0]) );
  DFFSR \wait_cnt_reg[1]  ( .D(N196), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wait_cnt[1]) );
  DFFSR \wait_cnt_reg[2]  ( .D(n1376), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wait_cnt[2]) );
  DFFSR \wait_cnt_reg[3]  ( .D(N198), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wait_cnt[3]) );
  DFFSR \configs_reg[1][31]  ( .D(n2240), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][31] ) );
  DFFSR \configs_reg[1][30]  ( .D(n2241), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][30] ) );
  DFFSR \configs_reg[1][29]  ( .D(n2242), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][29] ) );
  DFFSR \configs_reg[1][28]  ( .D(n2243), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][28] ) );
  DFFSR \configs_reg[1][27]  ( .D(n2244), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][27] ) );
  DFFSR \configs_reg[1][26]  ( .D(n2245), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][26] ) );
  DFFSR \configs_reg[1][25]  ( .D(n2246), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][25] ) );
  DFFSR \configs_reg[1][24]  ( .D(n2247), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][24] ) );
  DFFSR \configs_reg[1][23]  ( .D(n2248), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][23] ) );
  DFFSR \configs_reg[1][22]  ( .D(n2249), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][22] ) );
  DFFSR \configs_reg[1][21]  ( .D(n2250), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][21] ) );
  DFFSR \configs_reg[1][20]  ( .D(n2251), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][20] ) );
  DFFSR \configs_reg[0][0]  ( .D(n1353), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][0] ) );
  DFFSR \k_reg[9]  ( .D(n1444), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[9]) );
  DFFSR \k_reg[0]  ( .D(n1453), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[0]) );
  DFFSR \k_reg[1]  ( .D(n1452), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[1]) );
  DFFSR \k_reg[2]  ( .D(n1451), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[2]) );
  DFFSR \k_reg[3]  ( .D(n1450), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[3]) );
  DFFSR \k_reg[4]  ( .D(n1449), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[4]) );
  DFFSR \k_reg[5]  ( .D(n1448), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[5]) );
  DFFSR \k_reg[6]  ( .D(n1447), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[6]) );
  DFFSR \k_reg[7]  ( .D(n1446), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[7]) );
  DFFSR \k_reg[8]  ( .D(n1445), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[8]) );
  DFFSR j_eq_k_reg ( .D(N19), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j_eq_k) );
  DFFSR \j_reg[10]  ( .D(n1443), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[10]) );
  DFFSR \j_reg[0]  ( .D(n1442), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[0]) );
  DFFSR \j_reg[1]  ( .D(n1441), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[1]) );
  DFFSR \j_reg[2]  ( .D(n1440), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[2]) );
  DFFSR \j_reg[3]  ( .D(n1439), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[3]) );
  DFFSR \j_reg[4]  ( .D(n1438), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[4]) );
  DFFSR \j_reg[5]  ( .D(n1437), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[5]) );
  DFFSR \j_reg[6]  ( .D(n1436), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[6]) );
  DFFSR \j_reg[7]  ( .D(n1435), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[7]) );
  DFFSR \j_reg[8]  ( .D(n1434), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[8]) );
  DFFSR \j_reg[9]  ( .D(n1433), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[9]) );
  DFFSR j_gt_0_reg ( .D(N21), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j_gt_0) );
  DFFSR k_gt_0_reg ( .D(N20), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k_gt_0) );
  DFFSR \r_offset_reg[0]  ( .D(n2177), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[0]) );
  DFFSR \r_offset_reg[1]  ( .D(n2164), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[1]) );
  DFFSR \r_offset_reg[2]  ( .D(n2176), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[2]) );
  DFFSR \r_offset_reg[3]  ( .D(n2160), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[3]) );
  DFFSR \r_offset_reg[4]  ( .D(n2184), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[4]) );
  DFFSR \r_offset_reg[5]  ( .D(n2168), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[5]) );
  DFFSR \r_offset_reg[6]  ( .D(n2175), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[6]) );
  DFFSR \r_offset_reg[7]  ( .D(n2159), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[7]) );
  DFFSR \r_offset_reg[8]  ( .D(n2183), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[8]) );
  DFFSR \r_offset_reg[9]  ( .D(n2163), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[9]) );
  DFFSR \r_offset_reg[10]  ( .D(n2169), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[10]) );
  DFFSR \r_offset_reg[11]  ( .D(n2153), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[11]) );
  DFFSR \r_offset_reg[12]  ( .D(n2182), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[12]) );
  DFFSR \r_offset_reg[13]  ( .D(n2166), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[13]) );
  DFFSR \r_offset_reg[14]  ( .D(n2172), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[14]) );
  DFFSR \r_offset_reg[15]  ( .D(n2154), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[15]) );
  DFFSR \r_offset_reg[16]  ( .D(n2179), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[16]) );
  DFFSR \r_offset_reg[17]  ( .D(n2161), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[17]) );
  DFFSR \r_offset_reg[18]  ( .D(n2170), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[18]) );
  DFFSR \r_offset_reg[19]  ( .D(n2155), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[19]) );
  DFFSR \r_offset_reg[20]  ( .D(n2180), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[20]) );
  DFFSR \r_offset_reg[21]  ( .D(n2165), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[21]) );
  DFFSR \r_offset_reg[22]  ( .D(n2173), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[22]) );
  DFFSR \r_offset_reg[23]  ( .D(n2157), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[23]) );
  DFFSR \r_offset_reg[24]  ( .D(n2178), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[24]) );
  DFFSR \r_offset_reg[25]  ( .D(n2162), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[25]) );
  DFFSR \r_offset_reg[26]  ( .D(n2171), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[26]) );
  DFFSR \r_offset_reg[27]  ( .D(n2156), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[27]) );
  DFFSR \r_offset_reg[28]  ( .D(n2181), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[28]) );
  DFFSR \r_offset_reg[29]  ( .D(n2167), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[29]) );
  DFFSR \r_offset_reg[30]  ( .D(n2174), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[30]) );
  DFFSR \r_offset_reg[31]  ( .D(n2158), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[31]) );
  DFFSR \w_offset_reg[0]  ( .D(n2145), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[0]) );
  DFFSR \w_offset_reg[1]  ( .D(n2132), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[1]) );
  DFFSR \w_offset_reg[2]  ( .D(n2144), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[2]) );
  DFFSR \w_offset_reg[3]  ( .D(n2128), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[3]) );
  DFFSR \w_offset_reg[4]  ( .D(n2152), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[4]) );
  DFFSR \w_offset_reg[5]  ( .D(n2136), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[5]) );
  DFFSR \w_offset_reg[6]  ( .D(n2143), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[6]) );
  DFFSR \w_offset_reg[7]  ( .D(n2127), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[7]) );
  DFFSR \w_offset_reg[8]  ( .D(n2151), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[8]) );
  DFFSR \w_offset_reg[9]  ( .D(n2131), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[9]) );
  DFFSR \w_offset_reg[10]  ( .D(n2137), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[10]) );
  DFFSR \w_offset_reg[11]  ( .D(n2121), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[11]) );
  DFFSR \w_offset_reg[12]  ( .D(n2150), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[12]) );
  DFFSR \w_offset_reg[13]  ( .D(n2134), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[13]) );
  DFFSR \w_offset_reg[14]  ( .D(n2140), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[14]) );
  DFFSR \w_offset_reg[15]  ( .D(n2122), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[15]) );
  DFFSR \w_offset_reg[16]  ( .D(n2147), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[16]) );
  DFFSR \w_offset_reg[17]  ( .D(n2129), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[17]) );
  DFFSR \w_offset_reg[18]  ( .D(n2138), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[18]) );
  DFFSR \w_offset_reg[19]  ( .D(n2123), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[19]) );
  DFFSR \w_offset_reg[20]  ( .D(n2148), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[20]) );
  DFFSR \w_offset_reg[21]  ( .D(n2133), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[21]) );
  DFFSR \w_offset_reg[22]  ( .D(n2141), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[22]) );
  DFFSR \w_offset_reg[23]  ( .D(n2125), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[23]) );
  DFFSR \w_offset_reg[24]  ( .D(n2146), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[24]) );
  DFFSR \w_offset_reg[25]  ( .D(n2130), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[25]) );
  DFFSR \w_offset_reg[26]  ( .D(n2139), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[26]) );
  DFFSR \w_offset_reg[27]  ( .D(n2124), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[27]) );
  DFFSR \w_offset_reg[28]  ( .D(n2149), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[28]) );
  DFFSR \w_offset_reg[29]  ( .D(n2135), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[29]) );
  DFFSR \w_offset_reg[30]  ( .D(n2142), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[30]) );
  DFFSR \w_offset_reg[31]  ( .D(n2126), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[31]) );
  DFFSR \frame_size_reg[0]  ( .D(n2303), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[0]) );
  DFFSR \frame_size_reg[1]  ( .D(n2302), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[1]) );
  DFFSR \frame_size_reg[2]  ( .D(n2301), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[2]) );
  DFFSR \frame_size_reg[3]  ( .D(n2300), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[3]) );
  DFFSR \frame_size_reg[4]  ( .D(n2299), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[4]) );
  DFFSR \frame_size_reg[5]  ( .D(n2298), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[5]) );
  DFFSR \frame_size_reg[6]  ( .D(n2297), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[6]) );
  DFFSR \frame_size_reg[7]  ( .D(n2296), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[7]) );
  DFFSR \frame_size_reg[8]  ( .D(n2295), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[8]) );
  DFFSR \frame_size_reg[9]  ( .D(n2294), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        frame_size[9]) );
  DFFSR \windowing_reg[0]  ( .D(n771), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[0]) );
  DFFSR \windowing_reg[1]  ( .D(n769), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[1]) );
  DFFSR \windowing_reg[2]  ( .D(n767), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[2]) );
  DFFSR \windowing_reg[3]  ( .D(n765), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[3]) );
  DFFSR \windowing_reg[4]  ( .D(n763), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[4]) );
  DFFSR \windowing_reg[5]  ( .D(n761), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[5]) );
  DFFSR \windowing_reg[6]  ( .D(n759), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[6]) );
  DFFSR \windowing_reg[7]  ( .D(n757), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[7]) );
  DFFSR \windowing_reg[8]  ( .D(n755), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[8]) );
  DFFSR \windowing_reg[9]  ( .D(n753), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[9]) );
  DFFSR \windowing_reg[10]  ( .D(n751), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[10]) );
  DFFSR \windowing_reg[11]  ( .D(n749), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[11]) );
  DFFSR \windowing_reg[12]  ( .D(n747), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[12]) );
  DFFSR \windowing_reg[13]  ( .D(n745), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[13]) );
  DFFSR \windowing_reg[14]  ( .D(n743), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[14]) );
  DFFSR \windowing_reg[15]  ( .D(n741), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[15]) );
  DFFSR \windowing_reg[16]  ( .D(n739), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[16]) );
  DFFSR \windowing_reg[17]  ( .D(n737), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[17]) );
  DFFSR \windowing_reg[18]  ( .D(n735), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[18]) );
  DFFSR \windowing_reg[19]  ( .D(n733), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[19]) );
  DFFSR \windowing_reg[20]  ( .D(n731), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[20]) );
  DFFSR \windowing_reg[21]  ( .D(n729), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[21]) );
  DFFSR \windowing_reg[22]  ( .D(n727), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[22]) );
  DFFSR \windowing_reg[23]  ( .D(n725), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[23]) );
  DFFSR \windowing_reg[24]  ( .D(n723), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[24]) );
  DFFSR \windowing_reg[25]  ( .D(n721), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[25]) );
  DFFSR \windowing_reg[26]  ( .D(n719), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[26]) );
  DFFSR \windowing_reg[27]  ( .D(n717), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[27]) );
  DFFSR \windowing_reg[28]  ( .D(n715), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[28]) );
  DFFSR \windowing_reg[29]  ( .D(n713), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[29]) );
  DFFSR \windowing_reg[30]  ( .D(n711), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[30]) );
  DFFSR \windowing_reg[31]  ( .D(n709), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[31]) );
  DFFSR load_size_reg ( .D(n707), .CLK(clk), .R(n_rst), .S(1'b1), .Q(load_size) );
  DFFSR \fft_man_awaddr_reg[0]  ( .D(n2120), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[0]) );
  DFFSR \fft_man_awaddr_reg[31]  ( .D(n2089), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[31]) );
  DFFSR \fft_man_awaddr_reg[30]  ( .D(n2090), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[30]) );
  DFFSR \fft_man_awaddr_reg[29]  ( .D(n2091), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[29]) );
  DFFSR \fft_man_awaddr_reg[28]  ( .D(n2092), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[28]) );
  DFFSR \fft_man_awaddr_reg[27]  ( .D(n2093), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[27]) );
  DFFSR \fft_man_awaddr_reg[26]  ( .D(n2094), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[26]) );
  DFFSR \fft_man_awaddr_reg[25]  ( .D(n2095), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[25]) );
  DFFSR \fft_man_awaddr_reg[24]  ( .D(n2096), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[24]) );
  DFFSR \fft_man_awaddr_reg[23]  ( .D(n2097), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[23]) );
  DFFSR \fft_man_awaddr_reg[22]  ( .D(n2098), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[22]) );
  DFFSR \fft_man_awaddr_reg[21]  ( .D(n2099), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[21]) );
  DFFSR \fft_man_awaddr_reg[20]  ( .D(n2100), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[20]) );
  DFFSR \fft_man_awaddr_reg[19]  ( .D(n2101), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[19]) );
  DFFSR \fft_man_awaddr_reg[18]  ( .D(n2102), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[18]) );
  DFFSR \fft_man_awaddr_reg[17]  ( .D(n2103), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[17]) );
  DFFSR \fft_man_awaddr_reg[16]  ( .D(n2104), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[16]) );
  DFFSR \fft_man_awaddr_reg[15]  ( .D(n2105), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[15]) );
  DFFSR \fft_man_awaddr_reg[14]  ( .D(n2106), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[14]) );
  DFFSR \fft_man_awaddr_reg[13]  ( .D(n2107), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[13]) );
  DFFSR \fft_man_awaddr_reg[12]  ( .D(n2108), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[12]) );
  DFFSR \fft_man_awaddr_reg[11]  ( .D(n2109), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[11]) );
  DFFSR \fft_man_awaddr_reg[10]  ( .D(n2110), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[10]) );
  DFFSR \fft_man_awaddr_reg[9]  ( .D(n2111), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[9]) );
  DFFSR \fft_man_awaddr_reg[8]  ( .D(n2112), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[8]) );
  DFFSR \fft_man_awaddr_reg[7]  ( .D(n2113), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[7]) );
  DFFSR \fft_man_awaddr_reg[6]  ( .D(n2114), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[6]) );
  DFFSR \fft_man_awaddr_reg[5]  ( .D(n2115), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[5]) );
  DFFSR \fft_man_awaddr_reg[4]  ( .D(n2116), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[4]) );
  DFFSR \fft_man_awaddr_reg[3]  ( .D(n2117), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[3]) );
  DFFSR \fft_man_awaddr_reg[2]  ( .D(n2118), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[2]) );
  DFFSR \fft_man_awaddr_reg[1]  ( .D(n2119), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[1]) );
  DFFSR \fft_man_araddr_reg[0]  ( .D(n1410), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[0]) );
  DFFSR \fft_man_araddr_reg[1]  ( .D(n1409), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[1]) );
  DFFSR \fft_man_araddr_reg[2]  ( .D(n1408), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[2]) );
  DFFSR \fft_man_araddr_reg[3]  ( .D(n1407), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[3]) );
  DFFSR \fft_man_araddr_reg[4]  ( .D(n1406), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[4]) );
  DFFSR \fft_man_araddr_reg[5]  ( .D(n1405), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[5]) );
  DFFSR \fft_man_araddr_reg[6]  ( .D(n1404), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[6]) );
  DFFSR \fft_man_araddr_reg[7]  ( .D(n1403), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[7]) );
  DFFSR \fft_man_araddr_reg[8]  ( .D(n1402), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[8]) );
  DFFSR \fft_man_araddr_reg[9]  ( .D(n1401), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[9]) );
  DFFSR \fft_man_araddr_reg[10]  ( .D(n1400), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[10]) );
  DFFSR \fft_man_araddr_reg[11]  ( .D(n1399), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[11]) );
  DFFSR \fft_man_araddr_reg[12]  ( .D(n1398), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[12]) );
  DFFSR \fft_man_araddr_reg[13]  ( .D(n1397), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[13]) );
  DFFSR \fft_man_araddr_reg[14]  ( .D(n1396), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[14]) );
  DFFSR \fft_man_araddr_reg[15]  ( .D(n1395), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[15]) );
  DFFSR \fft_man_araddr_reg[16]  ( .D(n1394), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[16]) );
  DFFSR \fft_man_araddr_reg[17]  ( .D(n1393), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[17]) );
  DFFSR \fft_man_araddr_reg[18]  ( .D(n1392), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[18]) );
  DFFSR \fft_man_araddr_reg[19]  ( .D(n1391), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[19]) );
  DFFSR \fft_man_araddr_reg[20]  ( .D(n1390), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[20]) );
  DFFSR \fft_man_araddr_reg[21]  ( .D(n1389), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[21]) );
  DFFSR \fft_man_araddr_reg[22]  ( .D(n1388), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[22]) );
  DFFSR \fft_man_araddr_reg[23]  ( .D(n1387), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[23]) );
  DFFSR \fft_man_araddr_reg[24]  ( .D(n1386), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[24]) );
  DFFSR \fft_man_araddr_reg[25]  ( .D(n1385), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[25]) );
  DFFSR \fft_man_araddr_reg[26]  ( .D(n1384), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[26]) );
  DFFSR \fft_man_araddr_reg[27]  ( .D(n1383), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[27]) );
  DFFSR \fft_man_araddr_reg[28]  ( .D(n1382), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[28]) );
  DFFSR \fft_man_araddr_reg[29]  ( .D(n1381), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[29]) );
  DFFSR \fft_man_araddr_reg[30]  ( .D(n1380), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[30]) );
  DFFSR \fft_man_araddr_reg[31]  ( .D(n1379), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[31]) );
  fft_cla_1 r_adder ( .a(r_offset), .b({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, r_frame_size[10:0]}), .cin(1'b0), .sum(
        next_r_offset_val) );
  fft_cla_0 w_adder ( .a(w_offset), .b({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, w_frame_size[10:0]}), .cin(1'b0), .sum(
        next_w_offset_val) );
  fft_axi_counter_WRITE_OR_READ0 read_counter ( .clk(clk), .n_rst(n_rst), 
        .len(fft_man_arlen), .ready(fft_man_rready), .valid(fft_man_rvalid), 
        .resp(fft_man_rresp), .last(rcounter_last) );
  fft_axi_counter_WRITE_OR_READ1 write_counter ( .clk(clk), .n_rst(n_rst), 
        .len(fft_man_awlen), .ready(fft_man_wready), .valid(fft_man_wvalid), 
        .resp(1'b0), .last(fft_man_wlast) );
  fft_axi_manager_DW01_add_0 add_194 ( .A({\configs[1][31] , \configs[1][30] , 
        \configs[1][29] , \configs[1][28] , \configs[1][27] , \configs[1][26] , 
        \configs[1][25] , \configs[1][24] , \configs[1][23] , \configs[1][22] , 
        \configs[1][21] , \configs[1][20] , \configs[1][19] , \configs[1][18] , 
        \configs[1][17] , \configs[1][16] , \configs[1][15] , \configs[1][14] , 
        \configs[1][13] , \configs[1][12] , \configs[1][11] , \configs[1][10] , 
        \configs[1][9] , \configs[1][8] , \configs[1][7] , \configs[1][6] , 
        \configs[1][5] , \configs[1][4] , \configs[1][3] , \configs[1][2] , 
        \configs[1][1] , \configs[1][0] }), .B(r_offset), .CI(1'b0), .SUM({
        N301, N300, N299, N298, N297, N296, N295, N294, N293, N292, N291, N290, 
        N289, N288, N287, N286, N285, N284, N283, N282, N281, N280, N279, N278, 
        N277, N276, N275, N274, N273, N272, N271, N270}) );
  fft_axi_manager_DW01_add_1 add_191 ( .A({\configs[1][31] , \configs[1][30] , 
        \configs[1][29] , \configs[1][28] , \configs[1][27] , \configs[1][26] , 
        \configs[1][25] , \configs[1][24] , \configs[1][23] , \configs[1][22] , 
        \configs[1][21] , \configs[1][20] , \configs[1][19] , \configs[1][18] , 
        \configs[1][17] , \configs[1][16] , \configs[1][15] , \configs[1][14] , 
        \configs[1][13] , \configs[1][12] , \configs[1][11] , \configs[1][10] , 
        \configs[1][9] , \configs[1][8] , \configs[1][7] , \configs[1][6] , 
        \configs[1][5] , \configs[1][4] , \configs[1][3] , \configs[1][2] , 
        \configs[1][1] , \configs[1][0] }), .B(next_r_offset_val), .CI(1'b0), 
        .SUM({N268, N267, N266, N265, N264, N263, N262, N261, N260, N259, N258, 
        N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, N246, 
        N245, N244, N243, N242, N241, N240, N239, N238, N237}) );
  fft_axi_manager_DW01_inc_0_DW01_inc_1 add_133 ( .A({1'b0, \config_reg[2][9] , 
        \config_reg[2][8] , \config_reg[2][7] , \config_reg[2][6] , 
        \config_reg[2][5] , \config_reg[2][4] , \config_reg[2][3] , 
        \config_reg[2][2] , \config_reg[2][1] , \config_reg[2][0] }), .SUM({
        N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52}) );
  fft_axi_manager_DW01_inc_1_DW01_inc_2 add_87 ( .A(fft_man_arlen), .SUM({N35, 
        N34, N33, N32, N31, N30, N29, N28, N27, N26}) );
  fft_axi_manager_DW01_inc_2_DW01_inc_3 add_134 ( .A({1'b0, \config_reg[4][9] , 
        \config_reg[4][8] , \config_reg[4][7] , \config_reg[4][6] , 
        \config_reg[4][5] , \config_reg[4][4] , \config_reg[4][3] , 
        \config_reg[4][2] , \config_reg[4][1] , \config_reg[4][0] }), .SUM({
        N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63}) );
  fft_axi_manager_DW01_add_2 add_255 ( .A({\configs[3][31] , \configs[3][30] , 
        \configs[3][29] , \configs[3][28] , \configs[3][27] , \configs[3][26] , 
        \configs[3][25] , \configs[3][24] , \configs[3][23] , \configs[3][22] , 
        \configs[3][21] , \configs[3][20] , \configs[3][19] , \configs[3][18] , 
        \configs[3][17] , \configs[3][16] , \configs[3][15] , \configs[3][14] , 
        \configs[3][13] , \configs[3][12] , \configs[3][11] , \configs[3][10] , 
        \configs[3][9] , \configs[3][8] , \configs[3][7] , \configs[3][6] , 
        \configs[3][5] , \configs[3][4] , \configs[3][3] , \configs[3][2] , 
        \configs[3][1] , \configs[3][0] }), .B(w_offset), .CI(1'b0), .SUM({
        N385, N384, N383, N382, N381, N380, N379, N378, N377, N376, N375, N374, 
        N373, N372, N371, N370, N369, N368, N367, N366, N365, N364, N363, N362, 
        N361, N360, N359, N358, N357, N356, N355, N354}) );
  AND2X2 U1492 ( .A(\config_reg[7][0] ), .B(n1866), .Y(n1457) );
  OR2X2 U1493 ( .A(n1891), .B(n1460), .Y(n1458) );
  INVX4 U1494 ( .A(n1458), .Y(n1459) );
  INVX1 U1495 ( .A(n1503), .Y(n1460) );
  INVX8 U1496 ( .A(n1460), .Y(n1461) );
  INVX2 U1497 ( .A(n1758), .Y(n1462) );
  INVX2 U1498 ( .A(n1570), .Y(n1758) );
  INVX4 U1499 ( .A(n1954), .Y(n1891) );
  INVX2 U1500 ( .A(n1814), .Y(n1463) );
  INVX2 U1501 ( .A(n1536), .Y(n1814) );
  INVX4 U1502 ( .A(n1827), .Y(n1537) );
  INVX2 U1503 ( .A(n1772), .Y(n1464) );
  BUFX4 U1504 ( .A(n1712), .Y(n1465) );
  INVX2 U1505 ( .A(n1482), .Y(n1466) );
  INVX2 U1506 ( .A(n1481), .Y(n1469) );
  INVX2 U1507 ( .A(n1481), .Y(n1468) );
  INVX2 U1508 ( .A(n1481), .Y(n1467) );
  INVX2 U1509 ( .A(n1480), .Y(n1470) );
  INVX2 U1510 ( .A(n1478), .Y(n1476) );
  INVX2 U1511 ( .A(n1478), .Y(n1477) );
  INVX2 U1512 ( .A(n1479), .Y(n1475) );
  INVX2 U1513 ( .A(n1480), .Y(n1471) );
  INVX2 U1514 ( .A(n1479), .Y(n1474) );
  INVX2 U1515 ( .A(n1479), .Y(n1473) );
  INVX2 U1516 ( .A(n1480), .Y(n1472) );
  BUFX2 U1517 ( .A(n1457), .Y(n1482) );
  BUFX2 U1518 ( .A(n1457), .Y(n1483) );
  BUFX2 U1519 ( .A(n1457), .Y(n1484) );
  BUFX2 U1520 ( .A(n1457), .Y(n1481) );
  BUFX2 U1521 ( .A(n1485), .Y(n1478) );
  BUFX2 U1522 ( .A(n1485), .Y(n1479) );
  BUFX2 U1523 ( .A(n1485), .Y(n1480) );
  BUFX2 U1524 ( .A(n1457), .Y(n1485) );
  OAI21X1 U1525 ( .A(fft_man_bvalid), .B(n1486), .C(n1487), .Y(next_wstate[1])
         );
  AOI21X1 U1526 ( .A(fft_man_awready), .B(fft_man_awvalid), .C(n1488), .Y(
        n1487) );
  NOR2X1 U1527 ( .A(n1489), .B(n1490), .Y(next_rstate[2]) );
  OAI21X1 U1528 ( .A(n1491), .B(n1492), .C(n1493), .Y(next_rstate[1]) );
  AOI22X1 U1529 ( .A(n1494), .B(n1495), .C(fft_man_rready), .D(n1490), .Y(
        n1493) );
  INVX1 U1530 ( .A(fft_man_rresp), .Y(n1490) );
  NAND2X1 U1531 ( .A(n1496), .B(n1497), .Y(next_rstate[0]) );
  AOI22X1 U1532 ( .A(n1498), .B(rcounter_last), .C(n1494), .D(n1495), .Y(n1497) );
  NAND3X1 U1533 ( .A(wait_cnt[3]), .B(wait_cnt[0]), .C(n1499), .Y(n1495) );
  NOR2X1 U1534 ( .A(wait_cnt[2]), .B(wait_cnt[1]), .Y(n1499) );
  NOR2X1 U1535 ( .A(fft_man_rresp), .B(n1500), .Y(n1498) );
  AOI22X1 U1536 ( .A(n1501), .B(N20), .C(fft_man_arvalid), .D(n1492), .Y(n1496) );
  INVX1 U1537 ( .A(fft_man_arready), .Y(n1492) );
  INVX1 U1538 ( .A(n1502), .Y(n2089) );
  MUX2X1 U1539 ( .B(N385), .A(fft_man_awaddr[31]), .S(n1461), .Y(n1502) );
  INVX1 U1540 ( .A(n1504), .Y(n2090) );
  MUX2X1 U1541 ( .B(N384), .A(fft_man_awaddr[30]), .S(n1461), .Y(n1504) );
  INVX1 U1542 ( .A(n1505), .Y(n2091) );
  MUX2X1 U1543 ( .B(N383), .A(fft_man_awaddr[29]), .S(n1461), .Y(n1505) );
  INVX1 U1544 ( .A(n1506), .Y(n2092) );
  MUX2X1 U1545 ( .B(N382), .A(fft_man_awaddr[28]), .S(n1461), .Y(n1506) );
  INVX1 U1546 ( .A(n1507), .Y(n2093) );
  MUX2X1 U1547 ( .B(N381), .A(fft_man_awaddr[27]), .S(n1461), .Y(n1507) );
  INVX1 U1548 ( .A(n1508), .Y(n2094) );
  MUX2X1 U1549 ( .B(N380), .A(fft_man_awaddr[26]), .S(n1461), .Y(n1508) );
  INVX1 U1550 ( .A(n1509), .Y(n2095) );
  MUX2X1 U1551 ( .B(N379), .A(fft_man_awaddr[25]), .S(n1461), .Y(n1509) );
  INVX1 U1552 ( .A(n1510), .Y(n2096) );
  MUX2X1 U1553 ( .B(N378), .A(fft_man_awaddr[24]), .S(n1461), .Y(n1510) );
  INVX1 U1554 ( .A(n1511), .Y(n2097) );
  MUX2X1 U1555 ( .B(N377), .A(fft_man_awaddr[23]), .S(n1461), .Y(n1511) );
  INVX1 U1556 ( .A(n1512), .Y(n2098) );
  MUX2X1 U1557 ( .B(N376), .A(fft_man_awaddr[22]), .S(n1461), .Y(n1512) );
  INVX1 U1558 ( .A(n1513), .Y(n2099) );
  MUX2X1 U1559 ( .B(N375), .A(fft_man_awaddr[21]), .S(n1461), .Y(n1513) );
  INVX1 U1560 ( .A(n1514), .Y(n2100) );
  MUX2X1 U1561 ( .B(N374), .A(fft_man_awaddr[20]), .S(n1461), .Y(n1514) );
  INVX1 U1562 ( .A(n1515), .Y(n2101) );
  MUX2X1 U1563 ( .B(N373), .A(fft_man_awaddr[19]), .S(n1461), .Y(n1515) );
  INVX1 U1564 ( .A(n1516), .Y(n2102) );
  MUX2X1 U1565 ( .B(N372), .A(fft_man_awaddr[18]), .S(n1461), .Y(n1516) );
  INVX1 U1566 ( .A(n1517), .Y(n2103) );
  MUX2X1 U1567 ( .B(N371), .A(fft_man_awaddr[17]), .S(n1461), .Y(n1517) );
  INVX1 U1568 ( .A(n1518), .Y(n2104) );
  MUX2X1 U1569 ( .B(N370), .A(fft_man_awaddr[16]), .S(n1461), .Y(n1518) );
  INVX1 U1570 ( .A(n1519), .Y(n2105) );
  MUX2X1 U1571 ( .B(N369), .A(fft_man_awaddr[15]), .S(n1461), .Y(n1519) );
  INVX1 U1572 ( .A(n1520), .Y(n2106) );
  MUX2X1 U1573 ( .B(N368), .A(fft_man_awaddr[14]), .S(n1461), .Y(n1520) );
  INVX1 U1574 ( .A(n1521), .Y(n2107) );
  MUX2X1 U1575 ( .B(N367), .A(fft_man_awaddr[13]), .S(n1461), .Y(n1521) );
  INVX1 U1576 ( .A(n1522), .Y(n2108) );
  MUX2X1 U1577 ( .B(N366), .A(fft_man_awaddr[12]), .S(n1461), .Y(n1522) );
  INVX1 U1578 ( .A(n1523), .Y(n2109) );
  MUX2X1 U1579 ( .B(N365), .A(fft_man_awaddr[11]), .S(n1461), .Y(n1523) );
  INVX1 U1580 ( .A(n1524), .Y(n2110) );
  MUX2X1 U1581 ( .B(N364), .A(fft_man_awaddr[10]), .S(n1461), .Y(n1524) );
  INVX1 U1582 ( .A(n1525), .Y(n2111) );
  MUX2X1 U1583 ( .B(N363), .A(fft_man_awaddr[9]), .S(n1461), .Y(n1525) );
  INVX1 U1584 ( .A(n1526), .Y(n2112) );
  MUX2X1 U1585 ( .B(N362), .A(fft_man_awaddr[8]), .S(n1461), .Y(n1526) );
  INVX1 U1586 ( .A(n1527), .Y(n2113) );
  MUX2X1 U1587 ( .B(N361), .A(fft_man_awaddr[7]), .S(n1461), .Y(n1527) );
  INVX1 U1588 ( .A(n1528), .Y(n2114) );
  MUX2X1 U1589 ( .B(N360), .A(fft_man_awaddr[6]), .S(n1461), .Y(n1528) );
  INVX1 U1590 ( .A(n1529), .Y(n2115) );
  MUX2X1 U1591 ( .B(N359), .A(fft_man_awaddr[5]), .S(n1461), .Y(n1529) );
  INVX1 U1592 ( .A(n1530), .Y(n2116) );
  MUX2X1 U1593 ( .B(N358), .A(fft_man_awaddr[4]), .S(n1461), .Y(n1530) );
  INVX1 U1594 ( .A(n1531), .Y(n2117) );
  MUX2X1 U1595 ( .B(N357), .A(fft_man_awaddr[3]), .S(n1461), .Y(n1531) );
  INVX1 U1596 ( .A(n1532), .Y(n2118) );
  MUX2X1 U1597 ( .B(N356), .A(fft_man_awaddr[2]), .S(n1461), .Y(n1532) );
  INVX1 U1598 ( .A(n1533), .Y(n2119) );
  MUX2X1 U1599 ( .B(N355), .A(fft_man_awaddr[1]), .S(n1461), .Y(n1533) );
  INVX1 U1600 ( .A(n1534), .Y(n2120) );
  MUX2X1 U1601 ( .B(N354), .A(fft_man_awaddr[0]), .S(n1461), .Y(n1534) );
  INVX1 U1602 ( .A(n1535), .Y(n2121) );
  AOI22X1 U1603 ( .A(next_w_offset_val[11]), .B(n1463), .C(w_offset[11]), .D(
        n1537), .Y(n1535) );
  INVX1 U1604 ( .A(n1538), .Y(n2122) );
  AOI22X1 U1605 ( .A(next_w_offset_val[15]), .B(n1463), .C(w_offset[15]), .D(
        n1537), .Y(n1538) );
  INVX1 U1606 ( .A(n1539), .Y(n2123) );
  AOI22X1 U1607 ( .A(next_w_offset_val[19]), .B(n1463), .C(w_offset[19]), .D(
        n1537), .Y(n1539) );
  INVX1 U1608 ( .A(n1540), .Y(n2124) );
  AOI22X1 U1609 ( .A(next_w_offset_val[27]), .B(n1463), .C(w_offset[27]), .D(
        n1537), .Y(n1540) );
  INVX1 U1610 ( .A(n1541), .Y(n2125) );
  AOI22X1 U1611 ( .A(next_w_offset_val[23]), .B(n1463), .C(w_offset[23]), .D(
        n1537), .Y(n1541) );
  INVX1 U1612 ( .A(n1542), .Y(n2126) );
  AOI22X1 U1613 ( .A(next_w_offset_val[31]), .B(n1463), .C(w_offset[31]), .D(
        n1537), .Y(n1542) );
  INVX1 U1614 ( .A(n1543), .Y(n2127) );
  AOI22X1 U1615 ( .A(next_w_offset_val[7]), .B(n1463), .C(w_offset[7]), .D(
        n1537), .Y(n1543) );
  INVX1 U1616 ( .A(n1544), .Y(n2128) );
  AOI22X1 U1617 ( .A(next_w_offset_val[3]), .B(n1463), .C(w_offset[3]), .D(
        n1537), .Y(n1544) );
  INVX1 U1618 ( .A(n1545), .Y(n2129) );
  AOI22X1 U1619 ( .A(next_w_offset_val[17]), .B(n1463), .C(w_offset[17]), .D(
        n1537), .Y(n1545) );
  INVX1 U1620 ( .A(n1546), .Y(n2130) );
  AOI22X1 U1621 ( .A(next_w_offset_val[25]), .B(n1463), .C(w_offset[25]), .D(
        n1537), .Y(n1546) );
  INVX1 U1622 ( .A(n1547), .Y(n2131) );
  AOI22X1 U1623 ( .A(next_w_offset_val[9]), .B(n1463), .C(w_offset[9]), .D(
        n1537), .Y(n1547) );
  INVX1 U1624 ( .A(n1548), .Y(n2132) );
  AOI22X1 U1625 ( .A(next_w_offset_val[1]), .B(n1463), .C(w_offset[1]), .D(
        n1537), .Y(n1548) );
  INVX1 U1626 ( .A(n1549), .Y(n2133) );
  AOI22X1 U1627 ( .A(next_w_offset_val[21]), .B(n1463), .C(w_offset[21]), .D(
        n1537), .Y(n1549) );
  INVX1 U1628 ( .A(n1550), .Y(n2134) );
  AOI22X1 U1629 ( .A(next_w_offset_val[13]), .B(n1463), .C(w_offset[13]), .D(
        n1537), .Y(n1550) );
  INVX1 U1630 ( .A(n1551), .Y(n2135) );
  AOI22X1 U1631 ( .A(next_w_offset_val[29]), .B(n1463), .C(w_offset[29]), .D(
        n1537), .Y(n1551) );
  INVX1 U1632 ( .A(n1552), .Y(n2136) );
  AOI22X1 U1633 ( .A(next_w_offset_val[5]), .B(n1463), .C(w_offset[5]), .D(
        n1537), .Y(n1552) );
  INVX1 U1634 ( .A(n1553), .Y(n2137) );
  AOI22X1 U1635 ( .A(next_w_offset_val[10]), .B(n1463), .C(w_offset[10]), .D(
        n1537), .Y(n1553) );
  INVX1 U1636 ( .A(n1554), .Y(n2138) );
  AOI22X1 U1637 ( .A(next_w_offset_val[18]), .B(n1463), .C(w_offset[18]), .D(
        n1537), .Y(n1554) );
  INVX1 U1638 ( .A(n1555), .Y(n2139) );
  AOI22X1 U1639 ( .A(next_w_offset_val[26]), .B(n1463), .C(w_offset[26]), .D(
        n1537), .Y(n1555) );
  INVX1 U1640 ( .A(n1556), .Y(n2140) );
  AOI22X1 U1641 ( .A(next_w_offset_val[14]), .B(n1463), .C(w_offset[14]), .D(
        n1537), .Y(n1556) );
  INVX1 U1642 ( .A(n1557), .Y(n2141) );
  AOI22X1 U1643 ( .A(next_w_offset_val[22]), .B(n1463), .C(w_offset[22]), .D(
        n1537), .Y(n1557) );
  INVX1 U1644 ( .A(n1558), .Y(n2142) );
  AOI22X1 U1645 ( .A(next_w_offset_val[30]), .B(n1463), .C(w_offset[30]), .D(
        n1537), .Y(n1558) );
  INVX1 U1646 ( .A(n1559), .Y(n2143) );
  AOI22X1 U1647 ( .A(next_w_offset_val[6]), .B(n1463), .C(w_offset[6]), .D(
        n1537), .Y(n1559) );
  INVX1 U1648 ( .A(n1560), .Y(n2144) );
  AOI22X1 U1649 ( .A(next_w_offset_val[2]), .B(n1463), .C(w_offset[2]), .D(
        n1537), .Y(n1560) );
  INVX1 U1650 ( .A(n1561), .Y(n2145) );
  AOI22X1 U1651 ( .A(next_w_offset_val[0]), .B(n1536), .C(w_offset[0]), .D(
        n1537), .Y(n1561) );
  INVX1 U1652 ( .A(n1562), .Y(n2146) );
  AOI22X1 U1653 ( .A(next_w_offset_val[24]), .B(n1536), .C(w_offset[24]), .D(
        n1537), .Y(n1562) );
  INVX1 U1654 ( .A(n1563), .Y(n2147) );
  AOI22X1 U1655 ( .A(next_w_offset_val[16]), .B(n1536), .C(w_offset[16]), .D(
        n1537), .Y(n1563) );
  INVX1 U1656 ( .A(n1564), .Y(n2148) );
  AOI22X1 U1657 ( .A(next_w_offset_val[20]), .B(n1536), .C(w_offset[20]), .D(
        n1537), .Y(n1564) );
  INVX1 U1658 ( .A(n1565), .Y(n2149) );
  AOI22X1 U1659 ( .A(next_w_offset_val[28]), .B(n1536), .C(w_offset[28]), .D(
        n1537), .Y(n1565) );
  INVX1 U1660 ( .A(n1566), .Y(n2150) );
  AOI22X1 U1661 ( .A(next_w_offset_val[12]), .B(n1536), .C(w_offset[12]), .D(
        n1537), .Y(n1566) );
  INVX1 U1662 ( .A(n1567), .Y(n2151) );
  AOI22X1 U1663 ( .A(next_w_offset_val[8]), .B(n1536), .C(w_offset[8]), .D(
        n1537), .Y(n1567) );
  INVX1 U1664 ( .A(n1568), .Y(n2152) );
  AOI22X1 U1665 ( .A(next_w_offset_val[4]), .B(n1536), .C(w_offset[4]), .D(
        n1537), .Y(n1568) );
  INVX1 U1666 ( .A(n1569), .Y(n2153) );
  AOI22X1 U1667 ( .A(next_r_offset_val[11]), .B(n1462), .C(r_offset[11]), .D(
        n1464), .Y(n1569) );
  INVX1 U1668 ( .A(n1572), .Y(n2154) );
  AOI22X1 U1669 ( .A(next_r_offset_val[15]), .B(n1462), .C(r_offset[15]), .D(
        n1464), .Y(n1572) );
  INVX1 U1670 ( .A(n1573), .Y(n2155) );
  AOI22X1 U1671 ( .A(next_r_offset_val[19]), .B(n1462), .C(r_offset[19]), .D(
        n1464), .Y(n1573) );
  INVX1 U1672 ( .A(n1574), .Y(n2156) );
  AOI22X1 U1673 ( .A(next_r_offset_val[27]), .B(n1462), .C(r_offset[27]), .D(
        n1464), .Y(n1574) );
  INVX1 U1674 ( .A(n1575), .Y(n2157) );
  AOI22X1 U1675 ( .A(next_r_offset_val[23]), .B(n1462), .C(r_offset[23]), .D(
        n1464), .Y(n1575) );
  INVX1 U1676 ( .A(n1576), .Y(n2158) );
  AOI22X1 U1677 ( .A(next_r_offset_val[31]), .B(n1462), .C(r_offset[31]), .D(
        n1464), .Y(n1576) );
  INVX1 U1678 ( .A(n1577), .Y(n2159) );
  AOI22X1 U1679 ( .A(next_r_offset_val[7]), .B(n1462), .C(r_offset[7]), .D(
        n1464), .Y(n1577) );
  INVX1 U1680 ( .A(n1578), .Y(n2160) );
  AOI22X1 U1681 ( .A(next_r_offset_val[3]), .B(n1462), .C(r_offset[3]), .D(
        n1464), .Y(n1578) );
  INVX1 U1682 ( .A(n1579), .Y(n2161) );
  AOI22X1 U1683 ( .A(next_r_offset_val[17]), .B(n1462), .C(r_offset[17]), .D(
        n1464), .Y(n1579) );
  INVX1 U1684 ( .A(n1580), .Y(n2162) );
  AOI22X1 U1685 ( .A(next_r_offset_val[25]), .B(n1462), .C(r_offset[25]), .D(
        n1464), .Y(n1580) );
  INVX1 U1686 ( .A(n1581), .Y(n2163) );
  AOI22X1 U1687 ( .A(next_r_offset_val[9]), .B(n1462), .C(r_offset[9]), .D(
        n1464), .Y(n1581) );
  INVX1 U1688 ( .A(n1582), .Y(n2164) );
  AOI22X1 U1689 ( .A(next_r_offset_val[1]), .B(n1462), .C(r_offset[1]), .D(
        n1464), .Y(n1582) );
  INVX1 U1690 ( .A(n1583), .Y(n2165) );
  AOI22X1 U1691 ( .A(next_r_offset_val[21]), .B(n1462), .C(r_offset[21]), .D(
        n1464), .Y(n1583) );
  INVX1 U1692 ( .A(n1584), .Y(n2166) );
  AOI22X1 U1693 ( .A(next_r_offset_val[13]), .B(n1462), .C(r_offset[13]), .D(
        n1464), .Y(n1584) );
  INVX1 U1694 ( .A(n1585), .Y(n2167) );
  AOI22X1 U1695 ( .A(next_r_offset_val[29]), .B(n1462), .C(r_offset[29]), .D(
        n1464), .Y(n1585) );
  INVX1 U1696 ( .A(n1586), .Y(n2168) );
  AOI22X1 U1697 ( .A(next_r_offset_val[5]), .B(n1462), .C(r_offset[5]), .D(
        n1464), .Y(n1586) );
  INVX1 U1698 ( .A(n1587), .Y(n2169) );
  AOI22X1 U1699 ( .A(next_r_offset_val[10]), .B(n1462), .C(r_offset[10]), .D(
        n1464), .Y(n1587) );
  INVX1 U1700 ( .A(n1588), .Y(n2170) );
  AOI22X1 U1701 ( .A(next_r_offset_val[18]), .B(n1462), .C(r_offset[18]), .D(
        n1464), .Y(n1588) );
  INVX1 U1702 ( .A(n1589), .Y(n2171) );
  AOI22X1 U1703 ( .A(next_r_offset_val[26]), .B(n1462), .C(r_offset[26]), .D(
        n1464), .Y(n1589) );
  INVX1 U1704 ( .A(n1590), .Y(n2172) );
  AOI22X1 U1705 ( .A(next_r_offset_val[14]), .B(n1462), .C(r_offset[14]), .D(
        n1464), .Y(n1590) );
  INVX1 U1706 ( .A(n1591), .Y(n2173) );
  AOI22X1 U1707 ( .A(next_r_offset_val[22]), .B(n1462), .C(r_offset[22]), .D(
        n1464), .Y(n1591) );
  INVX1 U1708 ( .A(n1592), .Y(n2174) );
  AOI22X1 U1709 ( .A(next_r_offset_val[30]), .B(n1462), .C(r_offset[30]), .D(
        n1464), .Y(n1592) );
  INVX1 U1710 ( .A(n1593), .Y(n2175) );
  AOI22X1 U1711 ( .A(next_r_offset_val[6]), .B(n1462), .C(r_offset[6]), .D(
        n1571), .Y(n1593) );
  INVX1 U1712 ( .A(n1594), .Y(n2176) );
  AOI22X1 U1713 ( .A(next_r_offset_val[2]), .B(n1462), .C(r_offset[2]), .D(
        n1571), .Y(n1594) );
  INVX1 U1714 ( .A(n1595), .Y(n2177) );
  AOI22X1 U1715 ( .A(next_r_offset_val[0]), .B(n1570), .C(r_offset[0]), .D(
        n1571), .Y(n1595) );
  INVX1 U1716 ( .A(n1596), .Y(n2178) );
  AOI22X1 U1717 ( .A(next_r_offset_val[24]), .B(n1570), .C(r_offset[24]), .D(
        n1571), .Y(n1596) );
  INVX1 U1718 ( .A(n1597), .Y(n2179) );
  AOI22X1 U1719 ( .A(next_r_offset_val[16]), .B(n1570), .C(r_offset[16]), .D(
        n1571), .Y(n1597) );
  INVX1 U1720 ( .A(n1598), .Y(n2180) );
  AOI22X1 U1721 ( .A(next_r_offset_val[20]), .B(n1570), .C(r_offset[20]), .D(
        n1571), .Y(n1598) );
  INVX1 U1722 ( .A(n1599), .Y(n2181) );
  AOI22X1 U1723 ( .A(next_r_offset_val[28]), .B(n1570), .C(r_offset[28]), .D(
        n1571), .Y(n1599) );
  INVX1 U1724 ( .A(n1600), .Y(n2182) );
  AOI22X1 U1725 ( .A(next_r_offset_val[12]), .B(n1570), .C(r_offset[12]), .D(
        n1571), .Y(n1600) );
  INVX1 U1726 ( .A(n1601), .Y(n2183) );
  AOI22X1 U1727 ( .A(next_r_offset_val[8]), .B(n1570), .C(r_offset[8]), .D(
        n1571), .Y(n1601) );
  INVX1 U1728 ( .A(n1602), .Y(n2184) );
  AOI22X1 U1729 ( .A(next_r_offset_val[4]), .B(n1570), .C(r_offset[4]), .D(
        n1571), .Y(n1602) );
  INVX1 U1730 ( .A(n1500), .Y(n2185) );
  NAND2X1 U1731 ( .A(fft_man_rvalid), .B(fft_man_rready), .Y(n1500) );
  INVX1 U1732 ( .A(n1603), .Y(n2186) );
  MUX2X1 U1733 ( .B(\config_reg[5][1] ), .A(fft_man_wstrb[1]), .S(n1472), .Y(
        n1603) );
  INVX1 U1734 ( .A(n1604), .Y(n2187) );
  MUX2X1 U1735 ( .B(\config_reg[5][0] ), .A(fft_man_wstrb[0]), .S(n1466), .Y(
        n1604) );
  INVX1 U1736 ( .A(n1605), .Y(n2188) );
  MUX2X1 U1737 ( .B(\config_reg[4][9] ), .A(fft_man_awlen[9]), .S(n1466), .Y(
        n1605) );
  INVX1 U1738 ( .A(n1606), .Y(n2189) );
  MUX2X1 U1739 ( .B(\config_reg[4][8] ), .A(fft_man_awlen[8]), .S(n1466), .Y(
        n1606) );
  INVX1 U1740 ( .A(n1607), .Y(n2190) );
  MUX2X1 U1741 ( .B(\config_reg[4][7] ), .A(fft_man_awlen[7]), .S(n1466), .Y(
        n1607) );
  INVX1 U1742 ( .A(n1608), .Y(n2191) );
  MUX2X1 U1743 ( .B(\config_reg[4][6] ), .A(fft_man_awlen[6]), .S(n1466), .Y(
        n1608) );
  INVX1 U1744 ( .A(n1609), .Y(n2192) );
  MUX2X1 U1745 ( .B(\config_reg[4][5] ), .A(fft_man_awlen[5]), .S(n1466), .Y(
        n1609) );
  INVX1 U1746 ( .A(n1610), .Y(n2193) );
  MUX2X1 U1747 ( .B(\config_reg[4][4] ), .A(fft_man_awlen[4]), .S(n1466), .Y(
        n1610) );
  INVX1 U1748 ( .A(n1611), .Y(n2194) );
  MUX2X1 U1749 ( .B(\config_reg[4][3] ), .A(fft_man_awlen[3]), .S(n1466), .Y(
        n1611) );
  INVX1 U1750 ( .A(n1612), .Y(n2195) );
  MUX2X1 U1751 ( .B(\config_reg[4][2] ), .A(fft_man_awlen[2]), .S(n1466), .Y(
        n1612) );
  INVX1 U1752 ( .A(n1613), .Y(n2196) );
  MUX2X1 U1753 ( .B(\config_reg[4][1] ), .A(fft_man_awlen[1]), .S(n1466), .Y(
        n1613) );
  INVX1 U1754 ( .A(n1614), .Y(n2197) );
  MUX2X1 U1755 ( .B(\config_reg[4][0] ), .A(fft_man_awlen[0]), .S(n1466), .Y(
        n1614) );
  INVX1 U1756 ( .A(n1615), .Y(n2198) );
  MUX2X1 U1757 ( .B(\config_reg[3][31] ), .A(\configs[3][31] ), .S(n1466), .Y(
        n1615) );
  INVX1 U1758 ( .A(n1616), .Y(n2199) );
  MUX2X1 U1759 ( .B(\config_reg[3][30] ), .A(\configs[3][30] ), .S(n1467), .Y(
        n1616) );
  INVX1 U1760 ( .A(n1617), .Y(n2200) );
  MUX2X1 U1761 ( .B(\config_reg[3][29] ), .A(\configs[3][29] ), .S(n1467), .Y(
        n1617) );
  INVX1 U1762 ( .A(n1618), .Y(n2201) );
  MUX2X1 U1763 ( .B(\config_reg[3][28] ), .A(\configs[3][28] ), .S(n1467), .Y(
        n1618) );
  INVX1 U1764 ( .A(n1619), .Y(n2202) );
  MUX2X1 U1765 ( .B(\config_reg[3][27] ), .A(\configs[3][27] ), .S(n1467), .Y(
        n1619) );
  INVX1 U1766 ( .A(n1620), .Y(n2203) );
  MUX2X1 U1767 ( .B(\config_reg[3][26] ), .A(\configs[3][26] ), .S(n1467), .Y(
        n1620) );
  INVX1 U1768 ( .A(n1621), .Y(n2204) );
  MUX2X1 U1769 ( .B(\config_reg[3][25] ), .A(\configs[3][25] ), .S(n1467), .Y(
        n1621) );
  INVX1 U1770 ( .A(n1622), .Y(n2205) );
  MUX2X1 U1771 ( .B(\config_reg[3][24] ), .A(\configs[3][24] ), .S(n1467), .Y(
        n1622) );
  INVX1 U1772 ( .A(n1623), .Y(n2206) );
  MUX2X1 U1773 ( .B(\config_reg[3][23] ), .A(\configs[3][23] ), .S(n1467), .Y(
        n1623) );
  INVX1 U1774 ( .A(n1624), .Y(n2207) );
  MUX2X1 U1775 ( .B(\config_reg[3][22] ), .A(\configs[3][22] ), .S(n1467), .Y(
        n1624) );
  INVX1 U1776 ( .A(n1625), .Y(n2208) );
  MUX2X1 U1777 ( .B(\config_reg[3][21] ), .A(\configs[3][21] ), .S(n1467), .Y(
        n1625) );
  INVX1 U1778 ( .A(n1626), .Y(n2209) );
  MUX2X1 U1779 ( .B(\config_reg[3][20] ), .A(\configs[3][20] ), .S(n1467), .Y(
        n1626) );
  INVX1 U1780 ( .A(n1627), .Y(n2210) );
  MUX2X1 U1781 ( .B(\config_reg[3][19] ), .A(\configs[3][19] ), .S(n1467), .Y(
        n1627) );
  INVX1 U1782 ( .A(n1628), .Y(n2211) );
  MUX2X1 U1783 ( .B(\config_reg[3][18] ), .A(\configs[3][18] ), .S(n1467), .Y(
        n1628) );
  INVX1 U1784 ( .A(n1629), .Y(n2212) );
  MUX2X1 U1785 ( .B(\config_reg[3][17] ), .A(\configs[3][17] ), .S(n1468), .Y(
        n1629) );
  INVX1 U1786 ( .A(n1630), .Y(n2213) );
  MUX2X1 U1787 ( .B(\config_reg[3][16] ), .A(\configs[3][16] ), .S(n1468), .Y(
        n1630) );
  INVX1 U1788 ( .A(n1631), .Y(n2214) );
  MUX2X1 U1789 ( .B(\config_reg[3][15] ), .A(\configs[3][15] ), .S(n1468), .Y(
        n1631) );
  INVX1 U1790 ( .A(n1632), .Y(n2215) );
  MUX2X1 U1791 ( .B(\config_reg[3][14] ), .A(\configs[3][14] ), .S(n1468), .Y(
        n1632) );
  INVX1 U1792 ( .A(n1633), .Y(n2216) );
  MUX2X1 U1793 ( .B(\config_reg[3][13] ), .A(\configs[3][13] ), .S(n1468), .Y(
        n1633) );
  INVX1 U1794 ( .A(n1634), .Y(n2217) );
  MUX2X1 U1795 ( .B(\config_reg[3][12] ), .A(\configs[3][12] ), .S(n1468), .Y(
        n1634) );
  INVX1 U1796 ( .A(n1635), .Y(n2218) );
  MUX2X1 U1797 ( .B(\config_reg[3][11] ), .A(\configs[3][11] ), .S(n1468), .Y(
        n1635) );
  INVX1 U1798 ( .A(n1636), .Y(n2219) );
  MUX2X1 U1799 ( .B(\config_reg[3][10] ), .A(\configs[3][10] ), .S(n1468), .Y(
        n1636) );
  INVX1 U1800 ( .A(n1637), .Y(n2220) );
  MUX2X1 U1801 ( .B(\config_reg[3][9] ), .A(\configs[3][9] ), .S(n1468), .Y(
        n1637) );
  INVX1 U1802 ( .A(n1638), .Y(n2221) );
  MUX2X1 U1803 ( .B(\config_reg[3][8] ), .A(\configs[3][8] ), .S(n1468), .Y(
        n1638) );
  INVX1 U1804 ( .A(n1639), .Y(n2222) );
  MUX2X1 U1805 ( .B(\config_reg[3][7] ), .A(\configs[3][7] ), .S(n1468), .Y(
        n1639) );
  INVX1 U1806 ( .A(n1640), .Y(n2223) );
  MUX2X1 U1807 ( .B(\config_reg[3][6] ), .A(\configs[3][6] ), .S(n1468), .Y(
        n1640) );
  INVX1 U1808 ( .A(n1641), .Y(n2224) );
  MUX2X1 U1809 ( .B(\config_reg[3][5] ), .A(\configs[3][5] ), .S(n1468), .Y(
        n1641) );
  INVX1 U1810 ( .A(n1642), .Y(n2225) );
  MUX2X1 U1811 ( .B(\config_reg[3][4] ), .A(\configs[3][4] ), .S(n1469), .Y(
        n1642) );
  INVX1 U1812 ( .A(n1643), .Y(n2226) );
  MUX2X1 U1813 ( .B(\config_reg[3][3] ), .A(\configs[3][3] ), .S(n1469), .Y(
        n1643) );
  INVX1 U1814 ( .A(n1644), .Y(n2227) );
  MUX2X1 U1815 ( .B(\config_reg[3][2] ), .A(\configs[3][2] ), .S(n1469), .Y(
        n1644) );
  INVX1 U1816 ( .A(n1645), .Y(n2228) );
  MUX2X1 U1817 ( .B(\config_reg[3][1] ), .A(\configs[3][1] ), .S(n1469), .Y(
        n1645) );
  INVX1 U1818 ( .A(n1646), .Y(n2229) );
  MUX2X1 U1819 ( .B(\config_reg[3][0] ), .A(\configs[3][0] ), .S(n1469), .Y(
        n1646) );
  INVX1 U1820 ( .A(n1647), .Y(n2230) );
  MUX2X1 U1821 ( .B(\config_reg[2][9] ), .A(fft_man_arlen[9]), .S(n1469), .Y(
        n1647) );
  INVX1 U1822 ( .A(n1648), .Y(n2231) );
  MUX2X1 U1823 ( .B(\config_reg[2][8] ), .A(fft_man_arlen[8]), .S(n1469), .Y(
        n1648) );
  INVX1 U1824 ( .A(n1649), .Y(n2232) );
  MUX2X1 U1825 ( .B(\config_reg[2][7] ), .A(fft_man_arlen[7]), .S(n1469), .Y(
        n1649) );
  INVX1 U1826 ( .A(n1650), .Y(n2233) );
  MUX2X1 U1827 ( .B(\config_reg[2][6] ), .A(fft_man_arlen[6]), .S(n1469), .Y(
        n1650) );
  INVX1 U1828 ( .A(n1651), .Y(n2234) );
  MUX2X1 U1829 ( .B(\config_reg[2][5] ), .A(fft_man_arlen[5]), .S(n1469), .Y(
        n1651) );
  INVX1 U1830 ( .A(n1652), .Y(n2235) );
  MUX2X1 U1831 ( .B(\config_reg[2][4] ), .A(fft_man_arlen[4]), .S(n1469), .Y(
        n1652) );
  INVX1 U1832 ( .A(n1653), .Y(n2236) );
  MUX2X1 U1833 ( .B(\config_reg[2][3] ), .A(fft_man_arlen[3]), .S(n1469), .Y(
        n1653) );
  INVX1 U1834 ( .A(n1654), .Y(n2237) );
  MUX2X1 U1835 ( .B(\config_reg[2][2] ), .A(fft_man_arlen[2]), .S(n1469), .Y(
        n1654) );
  INVX1 U1836 ( .A(n1655), .Y(n2238) );
  MUX2X1 U1837 ( .B(\config_reg[2][1] ), .A(fft_man_arlen[1]), .S(n1470), .Y(
        n1655) );
  INVX1 U1838 ( .A(n1656), .Y(n2239) );
  MUX2X1 U1839 ( .B(\config_reg[2][0] ), .A(fft_man_arlen[0]), .S(n1470), .Y(
        n1656) );
  INVX1 U1840 ( .A(n1657), .Y(n2240) );
  MUX2X1 U1841 ( .B(\config_reg[1][31] ), .A(\configs[1][31] ), .S(n1470), .Y(
        n1657) );
  INVX1 U1842 ( .A(n1658), .Y(n2241) );
  MUX2X1 U1843 ( .B(\config_reg[1][30] ), .A(\configs[1][30] ), .S(n1470), .Y(
        n1658) );
  INVX1 U1844 ( .A(n1659), .Y(n2242) );
  MUX2X1 U1845 ( .B(\config_reg[1][29] ), .A(\configs[1][29] ), .S(n1470), .Y(
        n1659) );
  INVX1 U1846 ( .A(n1660), .Y(n2243) );
  MUX2X1 U1847 ( .B(\config_reg[1][28] ), .A(\configs[1][28] ), .S(n1470), .Y(
        n1660) );
  INVX1 U1848 ( .A(n1661), .Y(n2244) );
  MUX2X1 U1849 ( .B(\config_reg[1][27] ), .A(\configs[1][27] ), .S(n1470), .Y(
        n1661) );
  INVX1 U1850 ( .A(n1662), .Y(n2245) );
  MUX2X1 U1851 ( .B(\config_reg[1][26] ), .A(\configs[1][26] ), .S(n1470), .Y(
        n1662) );
  INVX1 U1852 ( .A(n1663), .Y(n2246) );
  MUX2X1 U1853 ( .B(\config_reg[1][25] ), .A(\configs[1][25] ), .S(n1470), .Y(
        n1663) );
  INVX1 U1854 ( .A(n1664), .Y(n2247) );
  MUX2X1 U1855 ( .B(\config_reg[1][24] ), .A(\configs[1][24] ), .S(n1470), .Y(
        n1664) );
  INVX1 U1856 ( .A(n1665), .Y(n2248) );
  MUX2X1 U1857 ( .B(\config_reg[1][23] ), .A(\configs[1][23] ), .S(n1470), .Y(
        n1665) );
  INVX1 U1858 ( .A(n1666), .Y(n2249) );
  MUX2X1 U1859 ( .B(\config_reg[1][22] ), .A(\configs[1][22] ), .S(n1470), .Y(
        n1666) );
  INVX1 U1860 ( .A(n1667), .Y(n2250) );
  MUX2X1 U1861 ( .B(\config_reg[1][21] ), .A(\configs[1][21] ), .S(n1470), .Y(
        n1667) );
  INVX1 U1862 ( .A(n1668), .Y(n2251) );
  MUX2X1 U1863 ( .B(\config_reg[1][20] ), .A(\configs[1][20] ), .S(n1471), .Y(
        n1668) );
  INVX1 U1864 ( .A(n1669), .Y(n2252) );
  MUX2X1 U1865 ( .B(\config_reg[1][19] ), .A(\configs[1][19] ), .S(n1471), .Y(
        n1669) );
  INVX1 U1866 ( .A(n1670), .Y(n2253) );
  MUX2X1 U1867 ( .B(\config_reg[1][18] ), .A(\configs[1][18] ), .S(n1471), .Y(
        n1670) );
  INVX1 U1868 ( .A(n1671), .Y(n2254) );
  MUX2X1 U1869 ( .B(\config_reg[1][17] ), .A(\configs[1][17] ), .S(n1471), .Y(
        n1671) );
  INVX1 U1870 ( .A(n1672), .Y(n2255) );
  MUX2X1 U1871 ( .B(\config_reg[1][16] ), .A(\configs[1][16] ), .S(n1471), .Y(
        n1672) );
  INVX1 U1872 ( .A(n1673), .Y(n2256) );
  MUX2X1 U1873 ( .B(\config_reg[1][15] ), .A(\configs[1][15] ), .S(n1471), .Y(
        n1673) );
  INVX1 U1874 ( .A(n1674), .Y(n2257) );
  MUX2X1 U1875 ( .B(\config_reg[1][14] ), .A(\configs[1][14] ), .S(n1471), .Y(
        n1674) );
  INVX1 U1876 ( .A(n1675), .Y(n2258) );
  MUX2X1 U1877 ( .B(\config_reg[1][13] ), .A(\configs[1][13] ), .S(n1471), .Y(
        n1675) );
  INVX1 U1878 ( .A(n1676), .Y(n2259) );
  MUX2X1 U1879 ( .B(\config_reg[1][12] ), .A(\configs[1][12] ), .S(n1471), .Y(
        n1676) );
  INVX1 U1880 ( .A(n1677), .Y(n2260) );
  MUX2X1 U1881 ( .B(\config_reg[1][11] ), .A(\configs[1][11] ), .S(n1471), .Y(
        n1677) );
  INVX1 U1882 ( .A(n1678), .Y(n2261) );
  MUX2X1 U1883 ( .B(\config_reg[1][10] ), .A(\configs[1][10] ), .S(n1471), .Y(
        n1678) );
  INVX1 U1884 ( .A(n1679), .Y(n2262) );
  MUX2X1 U1885 ( .B(\config_reg[1][9] ), .A(\configs[1][9] ), .S(n1471), .Y(
        n1679) );
  INVX1 U1886 ( .A(n1680), .Y(n2263) );
  MUX2X1 U1887 ( .B(\config_reg[1][8] ), .A(\configs[1][8] ), .S(n1471), .Y(
        n1680) );
  INVX1 U1888 ( .A(n1681), .Y(n2264) );
  MUX2X1 U1889 ( .B(\config_reg[1][7] ), .A(\configs[1][7] ), .S(n1472), .Y(
        n1681) );
  INVX1 U1890 ( .A(n1682), .Y(n2265) );
  MUX2X1 U1891 ( .B(\config_reg[1][6] ), .A(\configs[1][6] ), .S(n1472), .Y(
        n1682) );
  INVX1 U1892 ( .A(n1683), .Y(n2266) );
  MUX2X1 U1893 ( .B(\config_reg[1][5] ), .A(\configs[1][5] ), .S(n1472), .Y(
        n1683) );
  INVX1 U1894 ( .A(n1684), .Y(n2267) );
  MUX2X1 U1895 ( .B(\config_reg[1][4] ), .A(\configs[1][4] ), .S(n1472), .Y(
        n1684) );
  INVX1 U1896 ( .A(n1685), .Y(n2268) );
  MUX2X1 U1897 ( .B(\config_reg[1][3] ), .A(\configs[1][3] ), .S(n1472), .Y(
        n1685) );
  INVX1 U1898 ( .A(n1686), .Y(n2269) );
  MUX2X1 U1899 ( .B(\config_reg[1][2] ), .A(\configs[1][2] ), .S(n1472), .Y(
        n1686) );
  INVX1 U1900 ( .A(n1687), .Y(n2270) );
  MUX2X1 U1901 ( .B(\config_reg[1][1] ), .A(\configs[1][1] ), .S(n1472), .Y(
        n1687) );
  INVX1 U1902 ( .A(n1688), .Y(n2271) );
  MUX2X1 U1903 ( .B(\config_reg[1][0] ), .A(\configs[1][0] ), .S(n1472), .Y(
        n1688) );
  INVX1 U1904 ( .A(n1689), .Y(n2272) );
  MUX2X1 U1905 ( .B(N53), .A(r_frame_size[1]), .S(n1472), .Y(n1689) );
  INVX1 U1906 ( .A(n1690), .Y(n2273) );
  MUX2X1 U1907 ( .B(N54), .A(r_frame_size[2]), .S(n1472), .Y(n1690) );
  INVX1 U1908 ( .A(n1691), .Y(n2274) );
  MUX2X1 U1909 ( .B(N55), .A(r_frame_size[3]), .S(n1472), .Y(n1691) );
  INVX1 U1910 ( .A(n1692), .Y(n2275) );
  MUX2X1 U1911 ( .B(N56), .A(r_frame_size[4]), .S(n1472), .Y(n1692) );
  INVX1 U1912 ( .A(n1693), .Y(n2276) );
  MUX2X1 U1913 ( .B(N57), .A(r_frame_size[5]), .S(n1473), .Y(n1693) );
  INVX1 U1914 ( .A(n1694), .Y(n2277) );
  MUX2X1 U1915 ( .B(N58), .A(r_frame_size[6]), .S(n1473), .Y(n1694) );
  INVX1 U1916 ( .A(n1695), .Y(n2278) );
  MUX2X1 U1917 ( .B(N59), .A(r_frame_size[7]), .S(n1473), .Y(n1695) );
  INVX1 U1918 ( .A(n1696), .Y(n2279) );
  MUX2X1 U1919 ( .B(N60), .A(r_frame_size[8]), .S(n1473), .Y(n1696) );
  INVX1 U1920 ( .A(n1697), .Y(n2280) );
  MUX2X1 U1921 ( .B(N61), .A(r_frame_size[9]), .S(n1473), .Y(n1697) );
  INVX1 U1922 ( .A(n1698), .Y(n2281) );
  MUX2X1 U1923 ( .B(N62), .A(r_frame_size[10]), .S(n1473), .Y(n1698) );
  INVX1 U1924 ( .A(n1699), .Y(n2282) );
  MUX2X1 U1925 ( .B(N63), .A(w_frame_size[0]), .S(n1473), .Y(n1699) );
  INVX1 U1926 ( .A(n1700), .Y(n2283) );
  MUX2X1 U1927 ( .B(N64), .A(w_frame_size[1]), .S(n1473), .Y(n1700) );
  INVX1 U1928 ( .A(n1701), .Y(n2284) );
  MUX2X1 U1929 ( .B(N65), .A(w_frame_size[2]), .S(n1473), .Y(n1701) );
  INVX1 U1930 ( .A(n1702), .Y(n2285) );
  MUX2X1 U1931 ( .B(N66), .A(w_frame_size[3]), .S(n1473), .Y(n1702) );
  INVX1 U1932 ( .A(n1703), .Y(n2286) );
  MUX2X1 U1933 ( .B(N67), .A(w_frame_size[4]), .S(n1473), .Y(n1703) );
  INVX1 U1934 ( .A(n1704), .Y(n2287) );
  MUX2X1 U1935 ( .B(N68), .A(w_frame_size[5]), .S(n1473), .Y(n1704) );
  INVX1 U1936 ( .A(n1705), .Y(n2288) );
  MUX2X1 U1937 ( .B(N69), .A(w_frame_size[6]), .S(n1473), .Y(n1705) );
  INVX1 U1938 ( .A(n1706), .Y(n2289) );
  MUX2X1 U1939 ( .B(N70), .A(w_frame_size[7]), .S(n1474), .Y(n1706) );
  INVX1 U1940 ( .A(n1707), .Y(n2290) );
  MUX2X1 U1941 ( .B(N71), .A(w_frame_size[8]), .S(n1474), .Y(n1707) );
  INVX1 U1942 ( .A(n1708), .Y(n2291) );
  MUX2X1 U1943 ( .B(N72), .A(w_frame_size[9]), .S(n1474), .Y(n1708) );
  INVX1 U1944 ( .A(n1709), .Y(n2292) );
  MUX2X1 U1945 ( .B(N73), .A(w_frame_size[10]), .S(n1474), .Y(n1709) );
  INVX1 U1946 ( .A(n1710), .Y(n2293) );
  MUX2X1 U1947 ( .B(N52), .A(r_frame_size[0]), .S(n1474), .Y(n1710) );
  INVX1 U1948 ( .A(n1711), .Y(n2294) );
  MUX2X1 U1949 ( .B(N35), .A(frame_size[9]), .S(n1465), .Y(n1711) );
  INVX1 U1950 ( .A(n1713), .Y(n2295) );
  MUX2X1 U1951 ( .B(N34), .A(frame_size[8]), .S(n1465), .Y(n1713) );
  INVX1 U1952 ( .A(n1714), .Y(n2296) );
  MUX2X1 U1953 ( .B(N33), .A(frame_size[7]), .S(n1465), .Y(n1714) );
  INVX1 U1954 ( .A(n1715), .Y(n2297) );
  MUX2X1 U1955 ( .B(N32), .A(frame_size[6]), .S(n1465), .Y(n1715) );
  INVX1 U1956 ( .A(n1716), .Y(n2298) );
  MUX2X1 U1957 ( .B(N31), .A(frame_size[5]), .S(n1465), .Y(n1716) );
  INVX1 U1958 ( .A(n1717), .Y(n2299) );
  MUX2X1 U1959 ( .B(N30), .A(frame_size[4]), .S(n1465), .Y(n1717) );
  INVX1 U1960 ( .A(n1718), .Y(n2300) );
  MUX2X1 U1961 ( .B(N29), .A(frame_size[3]), .S(n1465), .Y(n1718) );
  INVX1 U1962 ( .A(n1719), .Y(n2301) );
  MUX2X1 U1963 ( .B(N28), .A(frame_size[2]), .S(n1465), .Y(n1719) );
  INVX1 U1964 ( .A(n1720), .Y(n2302) );
  MUX2X1 U1965 ( .B(N27), .A(frame_size[1]), .S(n1465), .Y(n1720) );
  INVX1 U1966 ( .A(n1721), .Y(n2303) );
  MUX2X1 U1967 ( .B(N26), .A(frame_size[0]), .S(n1465), .Y(n1721) );
  INVX1 U1968 ( .A(n1489), .Y(fft_man_rready) );
  NAND3X1 U1969 ( .A(n1722), .B(n1723), .C(rstate[1]), .Y(n1489) );
  INVX1 U1970 ( .A(rstate[0]), .Y(n1722) );
  INVX1 U1971 ( .A(n1491), .Y(fft_man_arvalid) );
  NAND3X1 U1972 ( .A(n1724), .B(n1723), .C(rstate[0]), .Y(n1491) );
  INVX1 U1973 ( .A(rstate[1]), .Y(n1724) );
  INVX1 U1974 ( .A(n1725), .Y(n771) );
  MUX2X1 U1975 ( .B(\configs[6][0] ), .A(windowing[0]), .S(n1465), .Y(n1725)
         );
  INVX1 U1976 ( .A(n1726), .Y(n769) );
  MUX2X1 U1977 ( .B(\configs[6][1] ), .A(windowing[1]), .S(n1465), .Y(n1726)
         );
  INVX1 U1978 ( .A(n1727), .Y(n767) );
  MUX2X1 U1979 ( .B(\configs[6][2] ), .A(windowing[2]), .S(n1465), .Y(n1727)
         );
  INVX1 U1980 ( .A(n1728), .Y(n765) );
  MUX2X1 U1981 ( .B(\configs[6][3] ), .A(windowing[3]), .S(n1465), .Y(n1728)
         );
  INVX1 U1982 ( .A(n1729), .Y(n763) );
  MUX2X1 U1983 ( .B(\configs[6][4] ), .A(windowing[4]), .S(n1465), .Y(n1729)
         );
  INVX1 U1984 ( .A(n1730), .Y(n761) );
  MUX2X1 U1985 ( .B(\configs[6][5] ), .A(windowing[5]), .S(n1465), .Y(n1730)
         );
  INVX1 U1986 ( .A(n1731), .Y(n759) );
  MUX2X1 U1987 ( .B(\configs[6][6] ), .A(windowing[6]), .S(n1465), .Y(n1731)
         );
  INVX1 U1988 ( .A(n1732), .Y(n757) );
  MUX2X1 U1989 ( .B(\configs[6][7] ), .A(windowing[7]), .S(n1465), .Y(n1732)
         );
  INVX1 U1990 ( .A(n1733), .Y(n755) );
  MUX2X1 U1991 ( .B(\configs[6][8] ), .A(windowing[8]), .S(n1465), .Y(n1733)
         );
  INVX1 U1992 ( .A(n1734), .Y(n753) );
  MUX2X1 U1993 ( .B(\configs[6][9] ), .A(windowing[9]), .S(n1465), .Y(n1734)
         );
  INVX1 U1994 ( .A(n1735), .Y(n751) );
  MUX2X1 U1995 ( .B(\configs[6][10] ), .A(windowing[10]), .S(n1465), .Y(n1735)
         );
  INVX1 U1996 ( .A(n1736), .Y(n749) );
  MUX2X1 U1997 ( .B(\configs[6][11] ), .A(windowing[11]), .S(n1465), .Y(n1736)
         );
  INVX1 U1998 ( .A(n1737), .Y(n747) );
  MUX2X1 U1999 ( .B(\configs[6][12] ), .A(windowing[12]), .S(n1465), .Y(n1737)
         );
  INVX1 U2000 ( .A(n1738), .Y(n745) );
  MUX2X1 U2001 ( .B(\configs[6][13] ), .A(windowing[13]), .S(n1465), .Y(n1738)
         );
  INVX1 U2002 ( .A(n1739), .Y(n743) );
  MUX2X1 U2003 ( .B(\configs[6][14] ), .A(windowing[14]), .S(n1465), .Y(n1739)
         );
  INVX1 U2004 ( .A(n1740), .Y(n741) );
  MUX2X1 U2005 ( .B(\configs[6][15] ), .A(windowing[15]), .S(n1465), .Y(n1740)
         );
  INVX1 U2006 ( .A(n1741), .Y(n739) );
  MUX2X1 U2007 ( .B(\configs[6][16] ), .A(windowing[16]), .S(n1465), .Y(n1741)
         );
  INVX1 U2008 ( .A(n1742), .Y(n737) );
  MUX2X1 U2009 ( .B(\configs[6][17] ), .A(windowing[17]), .S(n1465), .Y(n1742)
         );
  INVX1 U2010 ( .A(n1743), .Y(n735) );
  MUX2X1 U2011 ( .B(\configs[6][18] ), .A(windowing[18]), .S(n1465), .Y(n1743)
         );
  INVX1 U2012 ( .A(n1744), .Y(n733) );
  MUX2X1 U2013 ( .B(\configs[6][19] ), .A(windowing[19]), .S(n1465), .Y(n1744)
         );
  INVX1 U2014 ( .A(n1745), .Y(n731) );
  MUX2X1 U2015 ( .B(\configs[6][20] ), .A(windowing[20]), .S(n1465), .Y(n1745)
         );
  INVX1 U2016 ( .A(n1746), .Y(n729) );
  MUX2X1 U2017 ( .B(\configs[6][21] ), .A(windowing[21]), .S(n1465), .Y(n1746)
         );
  INVX1 U2018 ( .A(n1747), .Y(n727) );
  MUX2X1 U2019 ( .B(\configs[6][22] ), .A(windowing[22]), .S(n1465), .Y(n1747)
         );
  INVX1 U2020 ( .A(n1748), .Y(n725) );
  MUX2X1 U2021 ( .B(\configs[6][23] ), .A(windowing[23]), .S(n1465), .Y(n1748)
         );
  INVX1 U2022 ( .A(n1749), .Y(n723) );
  MUX2X1 U2023 ( .B(\configs[6][24] ), .A(windowing[24]), .S(n1465), .Y(n1749)
         );
  INVX1 U2024 ( .A(n1750), .Y(n721) );
  MUX2X1 U2025 ( .B(\configs[6][25] ), .A(windowing[25]), .S(n1465), .Y(n1750)
         );
  INVX1 U2026 ( .A(n1751), .Y(n719) );
  MUX2X1 U2027 ( .B(\configs[6][26] ), .A(windowing[26]), .S(n1465), .Y(n1751)
         );
  INVX1 U2028 ( .A(n1752), .Y(n717) );
  MUX2X1 U2029 ( .B(\configs[6][27] ), .A(windowing[27]), .S(n1465), .Y(n1752)
         );
  INVX1 U2030 ( .A(n1753), .Y(n715) );
  MUX2X1 U2031 ( .B(\configs[6][28] ), .A(windowing[28]), .S(n1465), .Y(n1753)
         );
  INVX1 U2032 ( .A(n1754), .Y(n713) );
  MUX2X1 U2033 ( .B(\configs[6][29] ), .A(windowing[29]), .S(n1465), .Y(n1754)
         );
  INVX1 U2034 ( .A(n1755), .Y(n711) );
  MUX2X1 U2035 ( .B(\configs[6][30] ), .A(windowing[30]), .S(n1465), .Y(n1755)
         );
  INVX1 U2036 ( .A(n1756), .Y(n709) );
  MUX2X1 U2037 ( .B(\configs[6][31] ), .A(windowing[31]), .S(n1465), .Y(n1756)
         );
  NAND2X1 U2038 ( .A(n1465), .B(n1757), .Y(n707) );
  INVX1 U2039 ( .A(load_size), .Y(n1757) );
  OAI21X1 U2040 ( .A(N20), .B(n1758), .C(n1759), .Y(n1454) );
  AOI21X1 U2041 ( .A(k[10]), .B(n1760), .C(n1761), .Y(n1759) );
  OAI21X1 U2042 ( .A(n1758), .B(n1762), .C(n1763), .Y(n1760) );
  INVX1 U2043 ( .A(n1764), .Y(n1763) );
  NAND2X1 U2044 ( .A(n1765), .B(n1766), .Y(n1453) );
  MUX2X1 U2045 ( .B(n1464), .A(n1462), .S(n1767), .Y(n1765) );
  OAI21X1 U2046 ( .A(n1768), .B(n1758), .C(n1769), .Y(n1452) );
  AOI21X1 U2047 ( .A(k[1]), .B(n1770), .C(n1771), .Y(n1769) );
  OAI21X1 U2048 ( .A(n1758), .B(n1767), .C(n1772), .Y(n1770) );
  INVX1 U2049 ( .A(k[0]), .Y(n1767) );
  NAND2X1 U2050 ( .A(n1773), .B(n1774), .Y(n1451) );
  MUX2X1 U2051 ( .B(n1775), .A(n1776), .S(n1777), .Y(n1773) );
  NOR2X1 U2052 ( .A(n1768), .B(n1758), .Y(n1776) );
  INVX1 U2053 ( .A(n1778), .Y(n1768) );
  OAI21X1 U2054 ( .A(n1779), .B(n1758), .C(n1780), .Y(n1450) );
  AOI21X1 U2055 ( .A(k[3]), .B(n1781), .C(n1782), .Y(n1780) );
  OAI21X1 U2056 ( .A(n1758), .B(n1777), .C(n1783), .Y(n1781) );
  INVX1 U2057 ( .A(n1775), .Y(n1783) );
  OAI21X1 U2058 ( .A(n1778), .B(n1758), .C(n1772), .Y(n1775) );
  NAND2X1 U2059 ( .A(n1784), .B(n1785), .Y(n1449) );
  MUX2X1 U2060 ( .B(n1786), .A(n1787), .S(n1788), .Y(n1784) );
  NOR2X1 U2061 ( .A(n1779), .B(n1758), .Y(n1787) );
  OAI21X1 U2062 ( .A(n1789), .B(n1758), .C(n1790), .Y(n1448) );
  AOI21X1 U2063 ( .A(k[5]), .B(n1791), .C(n1792), .Y(n1790) );
  OAI21X1 U2064 ( .A(n1758), .B(n1788), .C(n1793), .Y(n1791) );
  INVX1 U2065 ( .A(n1786), .Y(n1793) );
  OAI21X1 U2066 ( .A(n1794), .B(n1758), .C(n1772), .Y(n1786) );
  NAND2X1 U2067 ( .A(n1795), .B(n1796), .Y(n1447) );
  MUX2X1 U2068 ( .B(n1797), .A(n1798), .S(n1799), .Y(n1795) );
  NOR2X1 U2069 ( .A(n1789), .B(n1758), .Y(n1798) );
  OAI21X1 U2070 ( .A(n1800), .B(n1758), .C(n1801), .Y(n1446) );
  AOI21X1 U2071 ( .A(k[7]), .B(n1802), .C(n1803), .Y(n1801) );
  OAI21X1 U2072 ( .A(n1758), .B(n1799), .C(n1804), .Y(n1802) );
  INVX1 U2073 ( .A(n1797), .Y(n1804) );
  OAI21X1 U2074 ( .A(n1805), .B(n1758), .C(n1772), .Y(n1797) );
  INVX1 U2075 ( .A(n1571), .Y(n1772) );
  OAI21X1 U2076 ( .A(n1806), .B(n1807), .C(n1808), .Y(n1445) );
  NOR2X1 U2077 ( .A(n1809), .B(n1810), .Y(n1808) );
  NAND2X1 U2078 ( .A(n1811), .B(n1812), .Y(n1444) );
  MUX2X1 U2079 ( .B(n1764), .A(n1810), .S(n1762), .Y(n1811) );
  NOR3X1 U2080 ( .A(n1800), .B(k[8]), .C(n1758), .Y(n1810) );
  OAI21X1 U2081 ( .A(n1758), .B(n1807), .C(n1806), .Y(n1764) );
  AOI21X1 U2082 ( .A(n1800), .B(n1570), .C(n1464), .Y(n1806) );
  NOR2X1 U2083 ( .A(n1813), .B(n1464), .Y(n1570) );
  AOI21X1 U2084 ( .A(n1501), .B(k_gt_0), .C(n1484), .Y(n1571) );
  OAI21X1 U2085 ( .A(N21), .B(n1814), .C(n1815), .Y(n1443) );
  AOI21X1 U2086 ( .A(j[10]), .B(n1816), .C(n1761), .Y(n1815) );
  INVX1 U2087 ( .A(n1817), .Y(n1761) );
  OAI21X1 U2088 ( .A(n1814), .B(n1818), .C(n1819), .Y(n1816) );
  INVX1 U2089 ( .A(n1820), .Y(n1819) );
  NAND2X1 U2090 ( .A(n1821), .B(n1766), .Y(n1442) );
  MUX2X1 U2091 ( .B(n1537), .A(n1463), .S(n1822), .Y(n1821) );
  OAI21X1 U2092 ( .A(n1814), .B(n1823), .C(n1824), .Y(n1441) );
  AOI21X1 U2093 ( .A(j[1]), .B(n1825), .C(n1771), .Y(n1824) );
  INVX1 U2094 ( .A(n1826), .Y(n1771) );
  OAI21X1 U2095 ( .A(n1814), .B(n1822), .C(n1827), .Y(n1825) );
  INVX1 U2096 ( .A(j[0]), .Y(n1822) );
  NAND2X1 U2097 ( .A(n1828), .B(n1774), .Y(n1440) );
  MUX2X1 U2098 ( .B(n1829), .A(n1830), .S(n1831), .Y(n1828) );
  NOR2X1 U2099 ( .A(n1814), .B(n1823), .Y(n1830) );
  INVX1 U2100 ( .A(n1832), .Y(n1823) );
  OAI21X1 U2101 ( .A(n1814), .B(n1833), .C(n1834), .Y(n1439) );
  AOI21X1 U2102 ( .A(j[3]), .B(n1835), .C(n1782), .Y(n1834) );
  INVX1 U2103 ( .A(n1836), .Y(n1782) );
  OAI21X1 U2104 ( .A(n1814), .B(n1831), .C(n1837), .Y(n1835) );
  INVX1 U2105 ( .A(n1829), .Y(n1837) );
  OAI21X1 U2106 ( .A(n1832), .B(n1814), .C(n1827), .Y(n1829) );
  NAND2X1 U2107 ( .A(n1838), .B(n1785), .Y(n1438) );
  MUX2X1 U2108 ( .B(n1839), .A(n1840), .S(n1841), .Y(n1838) );
  NOR2X1 U2109 ( .A(n1814), .B(n1833), .Y(n1840) );
  OAI21X1 U2110 ( .A(n1814), .B(n1842), .C(n1843), .Y(n1437) );
  AOI21X1 U2111 ( .A(j[5]), .B(n1844), .C(n1792), .Y(n1843) );
  INVX1 U2112 ( .A(n1845), .Y(n1792) );
  OAI21X1 U2113 ( .A(n1814), .B(n1841), .C(n1846), .Y(n1844) );
  INVX1 U2114 ( .A(n1839), .Y(n1846) );
  OAI21X1 U2115 ( .A(n1847), .B(n1814), .C(n1827), .Y(n1839) );
  NAND2X1 U2116 ( .A(n1848), .B(n1796), .Y(n1436) );
  MUX2X1 U2117 ( .B(n1849), .A(n1850), .S(n1851), .Y(n1848) );
  NOR2X1 U2118 ( .A(n1814), .B(n1842), .Y(n1850) );
  OAI21X1 U2119 ( .A(n1814), .B(n1852), .C(n1853), .Y(n1435) );
  AOI21X1 U2120 ( .A(j[7]), .B(n1854), .C(n1803), .Y(n1853) );
  INVX1 U2121 ( .A(n1855), .Y(n1803) );
  OAI21X1 U2122 ( .A(n1814), .B(n1851), .C(n1856), .Y(n1854) );
  INVX1 U2123 ( .A(n1849), .Y(n1856) );
  OAI21X1 U2124 ( .A(n1857), .B(n1814), .C(n1827), .Y(n1849) );
  OAI21X1 U2125 ( .A(n1858), .B(n1859), .C(n1860), .Y(n1434) );
  NOR2X1 U2126 ( .A(n1809), .B(n1861), .Y(n1860) );
  INVX1 U2127 ( .A(n1862), .Y(n1809) );
  NAND2X1 U2128 ( .A(n1863), .B(n1812), .Y(n1433) );
  MUX2X1 U2129 ( .B(n1820), .A(n1861), .S(n1818), .Y(n1863) );
  NOR3X1 U2130 ( .A(n1814), .B(j[8]), .C(n1852), .Y(n1861) );
  OAI21X1 U2131 ( .A(n1814), .B(n1859), .C(n1858), .Y(n1820) );
  AOI21X1 U2132 ( .A(n1852), .B(n1536), .C(n1537), .Y(n1858) );
  NOR2X1 U2133 ( .A(n1813), .B(n1537), .Y(n1536) );
  NAND2X1 U2134 ( .A(n1472), .B(n1864), .Y(n1827) );
  XNOR2X1 U2135 ( .A(n1865), .B(n1866), .Y(n1432) );
  OAI21X1 U2136 ( .A(n1813), .B(n1867), .C(n1471), .Y(n1865) );
  OR2X1 U2137 ( .A(N20), .B(N21), .Y(n1867) );
  INVX1 U2138 ( .A(n1501), .Y(n1813) );
  INVX1 U2139 ( .A(n1868), .Y(n1431) );
  MUX2X1 U2140 ( .B(\config_reg[0][11] ), .A(\configs[0][11] ), .S(n1474), .Y(
        n1868) );
  INVX1 U2141 ( .A(n1869), .Y(n1430) );
  MUX2X1 U2142 ( .B(\config_reg[0][12] ), .A(\configs[0][12] ), .S(n1474), .Y(
        n1869) );
  INVX1 U2143 ( .A(n1870), .Y(n1429) );
  MUX2X1 U2144 ( .B(\config_reg[0][13] ), .A(\configs[0][13] ), .S(n1474), .Y(
        n1870) );
  INVX1 U2145 ( .A(n1871), .Y(n1428) );
  MUX2X1 U2146 ( .B(\config_reg[0][14] ), .A(\configs[0][14] ), .S(n1474), .Y(
        n1871) );
  INVX1 U2147 ( .A(n1872), .Y(n1427) );
  MUX2X1 U2148 ( .B(\config_reg[0][15] ), .A(\configs[0][15] ), .S(n1474), .Y(
        n1872) );
  INVX1 U2149 ( .A(n1873), .Y(n1426) );
  MUX2X1 U2150 ( .B(\config_reg[0][16] ), .A(\configs[0][16] ), .S(n1474), .Y(
        n1873) );
  INVX1 U2151 ( .A(n1874), .Y(n1425) );
  MUX2X1 U2152 ( .B(\config_reg[0][17] ), .A(\configs[0][17] ), .S(n1474), .Y(
        n1874) );
  INVX1 U2153 ( .A(n1875), .Y(n1424) );
  MUX2X1 U2154 ( .B(\config_reg[0][18] ), .A(\configs[0][18] ), .S(n1474), .Y(
        n1875) );
  INVX1 U2155 ( .A(n1876), .Y(n1423) );
  MUX2X1 U2156 ( .B(\config_reg[0][19] ), .A(\configs[0][19] ), .S(n1475), .Y(
        n1876) );
  INVX1 U2157 ( .A(n1877), .Y(n1422) );
  MUX2X1 U2158 ( .B(\config_reg[0][20] ), .A(\configs[0][20] ), .S(n1475), .Y(
        n1877) );
  INVX1 U2159 ( .A(n1878), .Y(n1421) );
  MUX2X1 U2160 ( .B(\config_reg[0][21] ), .A(\configs[0][21] ), .S(n1475), .Y(
        n1878) );
  INVX1 U2161 ( .A(n1879), .Y(n1420) );
  MUX2X1 U2162 ( .B(\config_reg[0][22] ), .A(\configs[0][22] ), .S(n1475), .Y(
        n1879) );
  INVX1 U2163 ( .A(n1880), .Y(n1419) );
  MUX2X1 U2164 ( .B(\config_reg[0][23] ), .A(\configs[0][23] ), .S(n1475), .Y(
        n1880) );
  INVX1 U2165 ( .A(n1881), .Y(n1418) );
  MUX2X1 U2166 ( .B(\config_reg[0][24] ), .A(\configs[0][24] ), .S(n1475), .Y(
        n1881) );
  INVX1 U2167 ( .A(n1882), .Y(n1417) );
  MUX2X1 U2168 ( .B(\config_reg[0][25] ), .A(\configs[0][25] ), .S(n1475), .Y(
        n1882) );
  INVX1 U2169 ( .A(n1883), .Y(n1416) );
  MUX2X1 U2170 ( .B(\config_reg[0][26] ), .A(\configs[0][26] ), .S(n1475), .Y(
        n1883) );
  INVX1 U2171 ( .A(n1884), .Y(n1415) );
  MUX2X1 U2172 ( .B(\config_reg[0][27] ), .A(\configs[0][27] ), .S(n1475), .Y(
        n1884) );
  INVX1 U2173 ( .A(n1885), .Y(n1414) );
  MUX2X1 U2174 ( .B(\config_reg[0][28] ), .A(\configs[0][28] ), .S(n1475), .Y(
        n1885) );
  INVX1 U2175 ( .A(n1886), .Y(n1413) );
  MUX2X1 U2176 ( .B(\config_reg[0][29] ), .A(\configs[0][29] ), .S(n1475), .Y(
        n1886) );
  INVX1 U2177 ( .A(n1887), .Y(n1412) );
  MUX2X1 U2178 ( .B(\config_reg[0][30] ), .A(\configs[0][30] ), .S(n1475), .Y(
        n1887) );
  INVX1 U2179 ( .A(n1888), .Y(n1411) );
  MUX2X1 U2180 ( .B(\config_reg[0][31] ), .A(\configs[0][31] ), .S(n1475), .Y(
        n1888) );
  OAI21X1 U2181 ( .A(n1461), .B(n1889), .C(n1890), .Y(n1410) );
  AOI22X1 U2182 ( .A(fft_man_araddr[0]), .B(n1459), .C(N270), .D(n1891), .Y(
        n1890) );
  INVX1 U2183 ( .A(N237), .Y(n1889) );
  OAI21X1 U2184 ( .A(n1461), .B(n1892), .C(n1893), .Y(n1409) );
  AOI22X1 U2185 ( .A(fft_man_araddr[1]), .B(n1459), .C(N271), .D(n1891), .Y(
        n1893) );
  INVX1 U2186 ( .A(N238), .Y(n1892) );
  OAI21X1 U2187 ( .A(n1461), .B(n1894), .C(n1895), .Y(n1408) );
  AOI22X1 U2188 ( .A(fft_man_araddr[2]), .B(n1459), .C(N272), .D(n1891), .Y(
        n1895) );
  INVX1 U2189 ( .A(N239), .Y(n1894) );
  OAI21X1 U2190 ( .A(n1461), .B(n1896), .C(n1897), .Y(n1407) );
  AOI22X1 U2191 ( .A(fft_man_araddr[3]), .B(n1459), .C(N273), .D(n1891), .Y(
        n1897) );
  INVX1 U2192 ( .A(N240), .Y(n1896) );
  OAI21X1 U2193 ( .A(n1461), .B(n1898), .C(n1899), .Y(n1406) );
  AOI22X1 U2194 ( .A(fft_man_araddr[4]), .B(n1459), .C(N274), .D(n1891), .Y(
        n1899) );
  INVX1 U2195 ( .A(N241), .Y(n1898) );
  OAI21X1 U2196 ( .A(n1461), .B(n1900), .C(n1901), .Y(n1405) );
  AOI22X1 U2197 ( .A(fft_man_araddr[5]), .B(n1459), .C(N275), .D(n1891), .Y(
        n1901) );
  INVX1 U2198 ( .A(N242), .Y(n1900) );
  OAI21X1 U2199 ( .A(n1461), .B(n1902), .C(n1903), .Y(n1404) );
  AOI22X1 U2200 ( .A(fft_man_araddr[6]), .B(n1459), .C(N276), .D(n1891), .Y(
        n1903) );
  INVX1 U2201 ( .A(N243), .Y(n1902) );
  OAI21X1 U2202 ( .A(n1461), .B(n1904), .C(n1905), .Y(n1403) );
  AOI22X1 U2203 ( .A(fft_man_araddr[7]), .B(n1459), .C(N277), .D(n1891), .Y(
        n1905) );
  INVX1 U2204 ( .A(N244), .Y(n1904) );
  OAI21X1 U2205 ( .A(n1461), .B(n1906), .C(n1907), .Y(n1402) );
  AOI22X1 U2206 ( .A(fft_man_araddr[8]), .B(n1459), .C(N278), .D(n1891), .Y(
        n1907) );
  INVX1 U2207 ( .A(N245), .Y(n1906) );
  OAI21X1 U2208 ( .A(n1461), .B(n1908), .C(n1909), .Y(n1401) );
  AOI22X1 U2209 ( .A(fft_man_araddr[9]), .B(n1459), .C(N279), .D(n1891), .Y(
        n1909) );
  INVX1 U2210 ( .A(N246), .Y(n1908) );
  OAI21X1 U2211 ( .A(n1461), .B(n1910), .C(n1911), .Y(n1400) );
  AOI22X1 U2212 ( .A(fft_man_araddr[10]), .B(n1459), .C(N280), .D(n1891), .Y(
        n1911) );
  INVX1 U2213 ( .A(N247), .Y(n1910) );
  OAI21X1 U2214 ( .A(n1461), .B(n1912), .C(n1913), .Y(n1399) );
  AOI22X1 U2215 ( .A(fft_man_araddr[11]), .B(n1459), .C(N281), .D(n1891), .Y(
        n1913) );
  INVX1 U2216 ( .A(N248), .Y(n1912) );
  OAI21X1 U2217 ( .A(n1461), .B(n1914), .C(n1915), .Y(n1398) );
  AOI22X1 U2218 ( .A(fft_man_araddr[12]), .B(n1459), .C(N282), .D(n1891), .Y(
        n1915) );
  INVX1 U2219 ( .A(N249), .Y(n1914) );
  OAI21X1 U2220 ( .A(n1461), .B(n1916), .C(n1917), .Y(n1397) );
  AOI22X1 U2221 ( .A(fft_man_araddr[13]), .B(n1459), .C(N283), .D(n1891), .Y(
        n1917) );
  INVX1 U2222 ( .A(N250), .Y(n1916) );
  OAI21X1 U2223 ( .A(n1461), .B(n1918), .C(n1919), .Y(n1396) );
  AOI22X1 U2224 ( .A(fft_man_araddr[14]), .B(n1459), .C(N284), .D(n1891), .Y(
        n1919) );
  INVX1 U2225 ( .A(N251), .Y(n1918) );
  OAI21X1 U2226 ( .A(n1461), .B(n1920), .C(n1921), .Y(n1395) );
  AOI22X1 U2227 ( .A(fft_man_araddr[15]), .B(n1459), .C(N285), .D(n1891), .Y(
        n1921) );
  INVX1 U2228 ( .A(N252), .Y(n1920) );
  OAI21X1 U2229 ( .A(n1461), .B(n1922), .C(n1923), .Y(n1394) );
  AOI22X1 U2230 ( .A(fft_man_araddr[16]), .B(n1459), .C(N286), .D(n1891), .Y(
        n1923) );
  INVX1 U2231 ( .A(N253), .Y(n1922) );
  OAI21X1 U2232 ( .A(n1461), .B(n1924), .C(n1925), .Y(n1393) );
  AOI22X1 U2233 ( .A(fft_man_araddr[17]), .B(n1459), .C(N287), .D(n1891), .Y(
        n1925) );
  INVX1 U2234 ( .A(N254), .Y(n1924) );
  OAI21X1 U2235 ( .A(n1461), .B(n1926), .C(n1927), .Y(n1392) );
  AOI22X1 U2236 ( .A(fft_man_araddr[18]), .B(n1459), .C(N288), .D(n1891), .Y(
        n1927) );
  INVX1 U2237 ( .A(N255), .Y(n1926) );
  OAI21X1 U2238 ( .A(n1461), .B(n1928), .C(n1929), .Y(n1391) );
  AOI22X1 U2239 ( .A(fft_man_araddr[19]), .B(n1459), .C(N289), .D(n1891), .Y(
        n1929) );
  INVX1 U2240 ( .A(N256), .Y(n1928) );
  OAI21X1 U2241 ( .A(n1461), .B(n1930), .C(n1931), .Y(n1390) );
  AOI22X1 U2242 ( .A(fft_man_araddr[20]), .B(n1459), .C(N290), .D(n1891), .Y(
        n1931) );
  INVX1 U2243 ( .A(N257), .Y(n1930) );
  OAI21X1 U2244 ( .A(n1461), .B(n1932), .C(n1933), .Y(n1389) );
  AOI22X1 U2245 ( .A(fft_man_araddr[21]), .B(n1459), .C(N291), .D(n1891), .Y(
        n1933) );
  INVX1 U2246 ( .A(N258), .Y(n1932) );
  OAI21X1 U2247 ( .A(n1461), .B(n1934), .C(n1935), .Y(n1388) );
  AOI22X1 U2248 ( .A(fft_man_araddr[22]), .B(n1459), .C(N292), .D(n1891), .Y(
        n1935) );
  INVX1 U2249 ( .A(N259), .Y(n1934) );
  OAI21X1 U2250 ( .A(n1461), .B(n1936), .C(n1937), .Y(n1387) );
  AOI22X1 U2251 ( .A(fft_man_araddr[23]), .B(n1459), .C(N293), .D(n1891), .Y(
        n1937) );
  INVX1 U2252 ( .A(N260), .Y(n1936) );
  OAI21X1 U2253 ( .A(n1461), .B(n1938), .C(n1939), .Y(n1386) );
  AOI22X1 U2254 ( .A(fft_man_araddr[24]), .B(n1459), .C(N294), .D(n1891), .Y(
        n1939) );
  INVX1 U2255 ( .A(N261), .Y(n1938) );
  OAI21X1 U2256 ( .A(n1461), .B(n1940), .C(n1941), .Y(n1385) );
  AOI22X1 U2257 ( .A(fft_man_araddr[25]), .B(n1459), .C(N295), .D(n1891), .Y(
        n1941) );
  INVX1 U2258 ( .A(N262), .Y(n1940) );
  OAI21X1 U2259 ( .A(n1461), .B(n1942), .C(n1943), .Y(n1384) );
  AOI22X1 U2260 ( .A(fft_man_araddr[26]), .B(n1459), .C(N296), .D(n1891), .Y(
        n1943) );
  INVX1 U2261 ( .A(N263), .Y(n1942) );
  OAI21X1 U2262 ( .A(n1461), .B(n1944), .C(n1945), .Y(n1383) );
  AOI22X1 U2263 ( .A(fft_man_araddr[27]), .B(n1459), .C(N297), .D(n1891), .Y(
        n1945) );
  INVX1 U2264 ( .A(N264), .Y(n1944) );
  OAI21X1 U2265 ( .A(n1461), .B(n1946), .C(n1947), .Y(n1382) );
  AOI22X1 U2266 ( .A(fft_man_araddr[28]), .B(n1459), .C(N298), .D(n1891), .Y(
        n1947) );
  INVX1 U2267 ( .A(N265), .Y(n1946) );
  OAI21X1 U2268 ( .A(n1461), .B(n1948), .C(n1949), .Y(n1381) );
  AOI22X1 U2269 ( .A(fft_man_araddr[29]), .B(n1459), .C(N299), .D(n1891), .Y(
        n1949) );
  INVX1 U2270 ( .A(N266), .Y(n1948) );
  OAI21X1 U2271 ( .A(n1461), .B(n1950), .C(n1951), .Y(n1380) );
  AOI22X1 U2272 ( .A(fft_man_araddr[30]), .B(n1459), .C(N300), .D(n1891), .Y(
        n1951) );
  INVX1 U2273 ( .A(N267), .Y(n1950) );
  OAI21X1 U2274 ( .A(n1461), .B(n1952), .C(n1953), .Y(n1379) );
  AOI22X1 U2275 ( .A(fft_man_araddr[31]), .B(n1459), .C(N301), .D(n1891), .Y(
        n1953) );
  NAND3X1 U2276 ( .A(n1955), .B(n1956), .C(n1957), .Y(n1954) );
  NOR2X1 U2277 ( .A(n1958), .B(n1959), .Y(n1957) );
  NAND3X1 U2278 ( .A(n1960), .B(n1961), .C(n1962), .Y(n1959) );
  NOR2X1 U2279 ( .A(n1460), .B(n1963), .Y(n1962) );
  AOI22X1 U2280 ( .A(n1964), .B(n1965), .C(n1966), .D(n1967), .Y(n1963) );
  NOR2X1 U2281 ( .A(n1968), .B(n1969), .Y(n1967) );
  NAND3X1 U2282 ( .A(n1970), .B(n1971), .C(n1972), .Y(n1969) );
  XNOR2X1 U2283 ( .A(\configs[0][5] ), .B(k[5]), .Y(n1972) );
  XNOR2X1 U2284 ( .A(\configs[0][10] ), .B(k[10]), .Y(n1971) );
  XNOR2X1 U2285 ( .A(\configs[0][4] ), .B(k[4]), .Y(n1970) );
  NAND3X1 U2286 ( .A(n1973), .B(n1974), .C(n1975), .Y(n1968) );
  XNOR2X1 U2287 ( .A(\configs[0][8] ), .B(k[8]), .Y(n1975) );
  XNOR2X1 U2288 ( .A(\configs[0][9] ), .B(k[9]), .Y(n1974) );
  XNOR2X1 U2289 ( .A(\configs[0][0] ), .B(k[0]), .Y(n1973) );
  NOR2X1 U2290 ( .A(n1976), .B(n1977), .Y(n1966) );
  NAND2X1 U2291 ( .A(n1978), .B(n1979), .Y(n1977) );
  XNOR2X1 U2292 ( .A(\configs[0][3] ), .B(k[3]), .Y(n1979) );
  XNOR2X1 U2293 ( .A(\configs[0][7] ), .B(k[7]), .Y(n1978) );
  NAND3X1 U2294 ( .A(n1980), .B(n1981), .C(n1982), .Y(n1976) );
  XNOR2X1 U2295 ( .A(\configs[0][6] ), .B(k[6]), .Y(n1982) );
  XNOR2X1 U2296 ( .A(\configs[0][1] ), .B(k[1]), .Y(n1981) );
  XNOR2X1 U2297 ( .A(\configs[0][2] ), .B(k[2]), .Y(n1980) );
  NOR2X1 U2298 ( .A(n1983), .B(n1984), .Y(n1965) );
  NAND3X1 U2299 ( .A(n1985), .B(n1986), .C(n1987), .Y(n1984) );
  XNOR2X1 U2300 ( .A(\configs[0][5] ), .B(j[5]), .Y(n1987) );
  XNOR2X1 U2301 ( .A(\configs[0][10] ), .B(j[10]), .Y(n1986) );
  XNOR2X1 U2302 ( .A(\configs[0][4] ), .B(j[4]), .Y(n1985) );
  NAND3X1 U2303 ( .A(n1988), .B(n1989), .C(n1990), .Y(n1983) );
  XNOR2X1 U2304 ( .A(\configs[0][8] ), .B(j[8]), .Y(n1990) );
  XNOR2X1 U2305 ( .A(\configs[0][9] ), .B(j[9]), .Y(n1989) );
  XNOR2X1 U2306 ( .A(\configs[0][0] ), .B(j[0]), .Y(n1988) );
  NOR2X1 U2307 ( .A(n1991), .B(n1992), .Y(n1964) );
  NAND2X1 U2308 ( .A(n1993), .B(n1994), .Y(n1992) );
  XNOR2X1 U2309 ( .A(\configs[0][3] ), .B(j[3]), .Y(n1994) );
  XNOR2X1 U2310 ( .A(\configs[0][7] ), .B(j[7]), .Y(n1993) );
  NAND3X1 U2311 ( .A(n1995), .B(n1996), .C(n1997), .Y(n1991) );
  XNOR2X1 U2312 ( .A(\configs[0][6] ), .B(j[6]), .Y(n1997) );
  XNOR2X1 U2313 ( .A(\configs[0][1] ), .B(j[1]), .Y(n1996) );
  XNOR2X1 U2314 ( .A(\configs[0][2] ), .B(j[2]), .Y(n1995) );
  INVX1 U2315 ( .A(\configs[0][11] ), .Y(n1961) );
  NOR2X1 U2316 ( .A(\configs[0][13] ), .B(\configs[0][12] ), .Y(n1960) );
  NAND2X1 U2317 ( .A(n1998), .B(n1999), .Y(n1958) );
  NOR3X1 U2318 ( .A(\configs[0][15] ), .B(\configs[0][16] ), .C(
        \configs[0][14] ), .Y(n1999) );
  NOR3X1 U2319 ( .A(\configs[0][18] ), .B(\configs[0][19] ), .C(
        \configs[0][17] ), .Y(n1998) );
  AND2X1 U2320 ( .A(n2000), .B(n2001), .Y(n1956) );
  NOR3X1 U2321 ( .A(\configs[0][27] ), .B(\configs[0][28] ), .C(
        \configs[0][26] ), .Y(n2001) );
  NOR3X1 U2322 ( .A(\configs[0][30] ), .B(\configs[0][31] ), .C(
        \configs[0][29] ), .Y(n2000) );
  AND2X1 U2323 ( .A(n2002), .B(n2003), .Y(n1955) );
  NOR3X1 U2324 ( .A(\configs[0][21] ), .B(\configs[0][22] ), .C(
        \configs[0][20] ), .Y(n2003) );
  NOR3X1 U2325 ( .A(\configs[0][24] ), .B(\configs[0][25] ), .C(
        \configs[0][23] ), .Y(n2002) );
  INVX1 U2326 ( .A(N268), .Y(n1952) );
  NAND3X1 U2327 ( .A(n2004), .B(n1486), .C(next_wstate[0]), .Y(n1503) );
  NAND3X1 U2328 ( .A(n2005), .B(n1864), .C(n2006), .Y(next_wstate[0]) );
  AOI22X1 U2329 ( .A(N390), .B(n2007), .C(fft_man_awvalid), .D(n2008), .Y(
        n2006) );
  INVX1 U2330 ( .A(fft_man_awready), .Y(n2008) );
  INVX1 U2331 ( .A(fft_man_bvalid), .Y(n2007) );
  NAND3X1 U2332 ( .A(j_eq_k), .B(n1501), .C(j_gt_0), .Y(n1864) );
  NOR2X1 U2333 ( .A(n1866), .B(n1465), .Y(n1501) );
  NAND3X1 U2334 ( .A(n2009), .B(n1723), .C(n2010), .Y(n1712) );
  NOR2X1 U2335 ( .A(rstate[1]), .B(rstate[0]), .Y(n2010) );
  NOR2X1 U2336 ( .A(wstate[1]), .B(wstate[0]), .Y(n2009) );
  NAND3X1 U2337 ( .A(fft_man_wlast), .B(n1488), .C(fft_man_wready), .Y(n2005)
         );
  INVX1 U2338 ( .A(n2011), .Y(n1376) );
  MUX2X1 U2339 ( .B(n2012), .A(n2013), .S(n2014), .Y(n2011) );
  OAI21X1 U2340 ( .A(n1482), .B(n2015), .C(n1766), .Y(n1353) );
  NAND2X1 U2341 ( .A(\config_reg[0][0] ), .B(n1482), .Y(n1766) );
  INVX1 U2342 ( .A(\configs[0][0] ), .Y(n2015) );
  OAI21X1 U2343 ( .A(n1483), .B(n2016), .C(n1826), .Y(n1352) );
  NAND2X1 U2344 ( .A(\config_reg[0][1] ), .B(n1483), .Y(n1826) );
  INVX1 U2345 ( .A(\configs[0][1] ), .Y(n2016) );
  OAI21X1 U2346 ( .A(n1483), .B(n2017), .C(n1774), .Y(n1351) );
  NAND2X1 U2347 ( .A(\config_reg[0][2] ), .B(n1484), .Y(n1774) );
  INVX1 U2348 ( .A(\configs[0][2] ), .Y(n2017) );
  OAI21X1 U2349 ( .A(n1483), .B(n2018), .C(n1836), .Y(n1350) );
  NAND2X1 U2350 ( .A(\config_reg[0][3] ), .B(n1484), .Y(n1836) );
  INVX1 U2351 ( .A(\configs[0][3] ), .Y(n2018) );
  OAI21X1 U2352 ( .A(n1484), .B(n2019), .C(n1785), .Y(n1349) );
  NAND2X1 U2353 ( .A(\config_reg[0][4] ), .B(n1484), .Y(n1785) );
  INVX1 U2354 ( .A(\configs[0][4] ), .Y(n2019) );
  OAI21X1 U2355 ( .A(n1483), .B(n2020), .C(n1845), .Y(n1348) );
  NAND2X1 U2356 ( .A(\config_reg[0][5] ), .B(n1484), .Y(n1845) );
  INVX1 U2357 ( .A(\configs[0][5] ), .Y(n2020) );
  OAI21X1 U2358 ( .A(n1483), .B(n2021), .C(n1796), .Y(n1347) );
  NAND2X1 U2359 ( .A(\config_reg[0][6] ), .B(n1484), .Y(n1796) );
  INVX1 U2360 ( .A(\configs[0][6] ), .Y(n2021) );
  OAI21X1 U2361 ( .A(n1483), .B(n2022), .C(n1855), .Y(n1346) );
  NAND2X1 U2362 ( .A(\config_reg[0][7] ), .B(n1484), .Y(n1855) );
  INVX1 U2363 ( .A(\configs[0][7] ), .Y(n2022) );
  OAI21X1 U2364 ( .A(n1482), .B(n2023), .C(n1862), .Y(n1345) );
  NAND2X1 U2365 ( .A(\config_reg[0][8] ), .B(n1485), .Y(n1862) );
  INVX1 U2366 ( .A(\configs[0][8] ), .Y(n2023) );
  OAI21X1 U2367 ( .A(n1482), .B(n2024), .C(n1812), .Y(n1344) );
  NAND2X1 U2368 ( .A(\config_reg[0][9] ), .B(n1485), .Y(n1812) );
  INVX1 U2369 ( .A(\configs[0][9] ), .Y(n2024) );
  OAI21X1 U2370 ( .A(n1482), .B(n2025), .C(n1817), .Y(n1343) );
  NAND2X1 U2371 ( .A(\config_reg[0][10] ), .B(n1484), .Y(n1817) );
  INVX1 U2372 ( .A(\configs[0][10] ), .Y(n2025) );
  INVX1 U2373 ( .A(n2026), .Y(n1256) );
  MUX2X1 U2374 ( .B(\config_reg[6][0] ), .A(\configs[6][0] ), .S(n1476), .Y(
        n2026) );
  INVX1 U2375 ( .A(n2027), .Y(n1255) );
  MUX2X1 U2376 ( .B(\config_reg[6][1] ), .A(\configs[6][1] ), .S(n1476), .Y(
        n2027) );
  INVX1 U2377 ( .A(n2028), .Y(n1254) );
  MUX2X1 U2378 ( .B(\config_reg[6][2] ), .A(\configs[6][2] ), .S(n1476), .Y(
        n2028) );
  INVX1 U2379 ( .A(n2029), .Y(n1253) );
  MUX2X1 U2380 ( .B(\config_reg[6][3] ), .A(\configs[6][3] ), .S(n1476), .Y(
        n2029) );
  INVX1 U2381 ( .A(n2030), .Y(n1252) );
  MUX2X1 U2382 ( .B(\config_reg[6][4] ), .A(\configs[6][4] ), .S(n1476), .Y(
        n2030) );
  INVX1 U2383 ( .A(n2031), .Y(n1251) );
  MUX2X1 U2384 ( .B(\config_reg[6][5] ), .A(\configs[6][5] ), .S(n1476), .Y(
        n2031) );
  INVX1 U2385 ( .A(n2032), .Y(n1250) );
  MUX2X1 U2386 ( .B(\config_reg[6][6] ), .A(\configs[6][6] ), .S(n1476), .Y(
        n2032) );
  INVX1 U2387 ( .A(n2033), .Y(n1249) );
  MUX2X1 U2388 ( .B(\config_reg[6][7] ), .A(\configs[6][7] ), .S(n1476), .Y(
        n2033) );
  INVX1 U2389 ( .A(n2034), .Y(n1248) );
  MUX2X1 U2390 ( .B(\config_reg[6][8] ), .A(\configs[6][8] ), .S(n1476), .Y(
        n2034) );
  INVX1 U2391 ( .A(n2035), .Y(n1247) );
  MUX2X1 U2392 ( .B(\config_reg[6][9] ), .A(\configs[6][9] ), .S(n1476), .Y(
        n2035) );
  INVX1 U2393 ( .A(n2036), .Y(n1246) );
  MUX2X1 U2394 ( .B(\config_reg[6][10] ), .A(\configs[6][10] ), .S(n1476), .Y(
        n2036) );
  INVX1 U2395 ( .A(n2037), .Y(n1245) );
  MUX2X1 U2396 ( .B(\config_reg[6][11] ), .A(\configs[6][11] ), .S(n1476), .Y(
        n2037) );
  INVX1 U2397 ( .A(n2038), .Y(n1244) );
  MUX2X1 U2398 ( .B(\config_reg[6][12] ), .A(\configs[6][12] ), .S(n1476), .Y(
        n2038) );
  INVX1 U2399 ( .A(n2039), .Y(n1243) );
  MUX2X1 U2400 ( .B(\config_reg[6][13] ), .A(\configs[6][13] ), .S(n1477), .Y(
        n2039) );
  INVX1 U2401 ( .A(n2040), .Y(n1242) );
  MUX2X1 U2402 ( .B(\config_reg[6][14] ), .A(\configs[6][14] ), .S(n1477), .Y(
        n2040) );
  INVX1 U2403 ( .A(n2041), .Y(n1241) );
  MUX2X1 U2404 ( .B(\config_reg[6][15] ), .A(\configs[6][15] ), .S(n1477), .Y(
        n2041) );
  INVX1 U2405 ( .A(n2042), .Y(n1240) );
  MUX2X1 U2406 ( .B(\config_reg[6][16] ), .A(\configs[6][16] ), .S(n1477), .Y(
        n2042) );
  INVX1 U2407 ( .A(n2043), .Y(n1239) );
  MUX2X1 U2408 ( .B(\config_reg[6][17] ), .A(\configs[6][17] ), .S(n1477), .Y(
        n2043) );
  INVX1 U2409 ( .A(n2044), .Y(n1238) );
  MUX2X1 U2410 ( .B(\config_reg[6][18] ), .A(\configs[6][18] ), .S(n1477), .Y(
        n2044) );
  INVX1 U2411 ( .A(n2045), .Y(n1237) );
  MUX2X1 U2412 ( .B(\config_reg[6][19] ), .A(\configs[6][19] ), .S(n1477), .Y(
        n2045) );
  INVX1 U2413 ( .A(n2046), .Y(n1236) );
  MUX2X1 U2414 ( .B(\config_reg[6][20] ), .A(\configs[6][20] ), .S(n1477), .Y(
        n2046) );
  INVX1 U2415 ( .A(n2047), .Y(n1235) );
  MUX2X1 U2416 ( .B(\config_reg[6][21] ), .A(\configs[6][21] ), .S(n1477), .Y(
        n2047) );
  INVX1 U2417 ( .A(n2048), .Y(n1234) );
  MUX2X1 U2418 ( .B(\config_reg[6][22] ), .A(\configs[6][22] ), .S(n1477), .Y(
        n2048) );
  INVX1 U2419 ( .A(n2049), .Y(n1233) );
  MUX2X1 U2420 ( .B(\config_reg[6][23] ), .A(\configs[6][23] ), .S(n1477), .Y(
        n2049) );
  INVX1 U2421 ( .A(n2050), .Y(n1232) );
  MUX2X1 U2422 ( .B(\config_reg[6][24] ), .A(\configs[6][24] ), .S(n1477), .Y(
        n2050) );
  INVX1 U2423 ( .A(n2051), .Y(n1231) );
  MUX2X1 U2424 ( .B(\config_reg[6][25] ), .A(\configs[6][25] ), .S(n1477), .Y(
        n2051) );
  INVX1 U2425 ( .A(n2052), .Y(n1230) );
  MUX2X1 U2426 ( .B(\config_reg[6][26] ), .A(\configs[6][26] ), .S(n1470), .Y(
        n2052) );
  INVX1 U2427 ( .A(n2053), .Y(n1229) );
  MUX2X1 U2428 ( .B(\config_reg[6][27] ), .A(\configs[6][27] ), .S(n1467), .Y(
        n2053) );
  INVX1 U2429 ( .A(n2054), .Y(n1228) );
  MUX2X1 U2430 ( .B(\config_reg[6][28] ), .A(\configs[6][28] ), .S(n1468), .Y(
        n2054) );
  INVX1 U2431 ( .A(n2055), .Y(n1227) );
  MUX2X1 U2432 ( .B(\config_reg[6][29] ), .A(\configs[6][29] ), .S(n1469), .Y(
        n2055) );
  INVX1 U2433 ( .A(n2056), .Y(n1226) );
  MUX2X1 U2434 ( .B(\config_reg[6][30] ), .A(\configs[6][30] ), .S(n1466), .Y(
        n2056) );
  INVX1 U2435 ( .A(n2057), .Y(n1225) );
  MUX2X1 U2436 ( .B(\config_reg[6][31] ), .A(\configs[6][31] ), .S(n1466), .Y(
        n2057) );
  INVX1 U2437 ( .A(processing), .Y(n1866) );
  AND2X1 U2438 ( .A(out_valid_reg), .B(n1488), .Y(fft_man_wvalid) );
  NOR2X1 U2439 ( .A(n1486), .B(wstate[0]), .Y(n1488) );
  NOR2X1 U2440 ( .A(n2004), .B(wstate[1]), .Y(fft_man_awvalid) );
  NOR2X1 U2441 ( .A(n2004), .B(n1486), .Y(N390) );
  INVX1 U2442 ( .A(wstate[1]), .Y(n1486) );
  INVX1 U2443 ( .A(wstate[0]), .Y(n2004) );
  NAND3X1 U2444 ( .A(n1859), .B(n1818), .C(n2058), .Y(N21) );
  NOR2X1 U2445 ( .A(j[10]), .B(n1852), .Y(n2058) );
  NAND3X1 U2446 ( .A(n1851), .B(n2059), .C(n1857), .Y(n1852) );
  INVX1 U2447 ( .A(n1842), .Y(n1857) );
  NAND3X1 U2448 ( .A(n1841), .B(n2060), .C(n1847), .Y(n1842) );
  INVX1 U2449 ( .A(n1833), .Y(n1847) );
  NAND3X1 U2450 ( .A(n1831), .B(n2061), .C(n1832), .Y(n1833) );
  NOR2X1 U2451 ( .A(j[0]), .B(j[1]), .Y(n1832) );
  INVX1 U2452 ( .A(j[3]), .Y(n2061) );
  INVX1 U2453 ( .A(j[2]), .Y(n1831) );
  INVX1 U2454 ( .A(j[5]), .Y(n2060) );
  INVX1 U2455 ( .A(j[4]), .Y(n1841) );
  INVX1 U2456 ( .A(j[7]), .Y(n2059) );
  INVX1 U2457 ( .A(j[6]), .Y(n1851) );
  INVX1 U2458 ( .A(j[9]), .Y(n1818) );
  INVX1 U2459 ( .A(j[8]), .Y(n1859) );
  NAND3X1 U2460 ( .A(n1807), .B(n1762), .C(n2062), .Y(N20) );
  NOR2X1 U2461 ( .A(k[10]), .B(n1800), .Y(n2062) );
  NAND3X1 U2462 ( .A(n1799), .B(n2063), .C(n1805), .Y(n1800) );
  INVX1 U2463 ( .A(n1789), .Y(n1805) );
  NAND3X1 U2464 ( .A(n1788), .B(n2064), .C(n1794), .Y(n1789) );
  INVX1 U2465 ( .A(n1779), .Y(n1794) );
  NAND3X1 U2466 ( .A(n1777), .B(n2065), .C(n1778), .Y(n1779) );
  NOR2X1 U2467 ( .A(k[0]), .B(k[1]), .Y(n1778) );
  INVX1 U2468 ( .A(k[3]), .Y(n2065) );
  INVX1 U2469 ( .A(k[2]), .Y(n1777) );
  INVX1 U2470 ( .A(k[5]), .Y(n2064) );
  INVX1 U2471 ( .A(k[4]), .Y(n1788) );
  INVX1 U2472 ( .A(k[6]), .Y(n1799) );
  MUX2X1 U2473 ( .B(n2066), .A(n2067), .S(wait_cnt[3]), .Y(N198) );
  AOI21X1 U2474 ( .A(n1494), .B(n2014), .C(n2012), .Y(n2067) );
  OAI21X1 U2475 ( .A(wait_cnt[1]), .B(n2068), .C(n2069), .Y(n2012) );
  INVX1 U2476 ( .A(wait_cnt[2]), .Y(n2014) );
  NAND2X1 U2477 ( .A(n2013), .B(wait_cnt[2]), .Y(n2066) );
  INVX1 U2478 ( .A(n2070), .Y(n2013) );
  NAND3X1 U2479 ( .A(n1494), .B(wait_cnt[0]), .C(wait_cnt[1]), .Y(n2070) );
  MUX2X1 U2480 ( .B(n2071), .A(n2069), .S(wait_cnt[1]), .Y(N196) );
  INVX1 U2481 ( .A(N195), .Y(n2069) );
  NAND2X1 U2482 ( .A(n1494), .B(wait_cnt[0]), .Y(n2071) );
  INVX1 U2483 ( .A(n2068), .Y(n1494) );
  NOR2X1 U2484 ( .A(n2068), .B(wait_cnt[0]), .Y(N195) );
  NAND3X1 U2485 ( .A(rstate[1]), .B(n1723), .C(rstate[0]), .Y(n2068) );
  INVX1 U2486 ( .A(rstate[2]), .Y(n1723) );
  NOR2X1 U2487 ( .A(n2072), .B(n2073), .Y(N19) );
  NAND3X1 U2488 ( .A(n2074), .B(n2075), .C(n2076), .Y(n2073) );
  NOR2X1 U2489 ( .A(n2077), .B(n2078), .Y(n2076) );
  XNOR2X1 U2490 ( .A(n1762), .B(j[9]), .Y(n2078) );
  INVX1 U2491 ( .A(k[9]), .Y(n1762) );
  XNOR2X1 U2492 ( .A(n1807), .B(j[8]), .Y(n2077) );
  INVX1 U2493 ( .A(k[8]), .Y(n1807) );
  XNOR2X1 U2494 ( .A(j[6]), .B(k[6]), .Y(n2075) );
  NOR2X1 U2495 ( .A(n2079), .B(n2080), .Y(n2074) );
  XOR2X1 U2496 ( .A(k[10]), .B(j[10]), .Y(n2080) );
  XNOR2X1 U2497 ( .A(n2063), .B(j[7]), .Y(n2079) );
  INVX1 U2498 ( .A(k[7]), .Y(n2063) );
  OR2X1 U2499 ( .A(n2081), .B(n2082), .Y(n2072) );
  NAND3X1 U2500 ( .A(n2083), .B(n2084), .C(n2085), .Y(n2082) );
  XNOR2X1 U2501 ( .A(j[4]), .B(k[4]), .Y(n2085) );
  XNOR2X1 U2502 ( .A(j[5]), .B(k[5]), .Y(n2084) );
  XNOR2X1 U2503 ( .A(j[3]), .B(k[3]), .Y(n2083) );
  NAND3X1 U2504 ( .A(n2086), .B(n2087), .C(n2088), .Y(n2081) );
  XNOR2X1 U2505 ( .A(j[1]), .B(k[1]), .Y(n2088) );
  XNOR2X1 U2506 ( .A(j[2]), .B(k[2]), .Y(n2087) );
  XNOR2X1 U2507 ( .A(j[0]), .B(k[0]), .Y(n2086) );
endmodule

