/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4
// Date      : Wed Apr 22 03:23:53 2026
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
  wire   j_eq_k, k_gt_0, j_gt_0, N15, N16, N17, N22, N23, N24, N25, N26, N27,
         N28, N29, N30, N31, \configs[6][31] , \configs[6][30] ,
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
         \configs[0][2] , \configs[0][1] , \configs[0][0] , processing, N48,
         N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62,
         N63, N64, N65, N66, N67, N68, N69, rcounter_last, N209, N210, N211,
         N212, N213, N214, N215, N216, N217, N218, N219, N220, N221, N222,
         N223, N224, N225, N226, N227, N228, N229, N230, N231, N232, N233,
         N234, N235, N236, N237, N238, N239, N240, N242, N243, N244, N245,
         N246, N247, N248, N249, N250, N251, N252, N253, N254, N255, N256,
         N257, N258, N259, N260, N261, N262, N263, N264, N265, N266, N267,
         N268, N269, N270, N271, N272, N273, N324, N325, N326, N327, N328,
         N329, N330, N331, N332, N333, N334, N335, N336, N337, N338, N339,
         N340, N341, N342, N343, N344, N345, N346, N347, N348, N349, N350,
         N351, N352, N353, N354, N355, N359, n687, n689, n691, n693, n695,
         n697, n699, n701, n703, n705, n707, n709, n711, n713, n715, n717,
         n719, n721, n723, n725, n727, n729, n731, n733, n735, n737, n739,
         n741, n743, n745, n747, n749, n751, n1134, n1135, n1136, n1137, n1138,
         n1139, n1140, n1141, n1142, n1143, n1144, n1145, n1146, n1147, n1148,
         n1149, n1150, n1151, n1152, n1153, n1154, n1155, n1156, n1157, n1158,
         n1159, n1160, n1161, n1162, n1163, n1164, n1165, n1252, n1253, n1254,
         n1255, n1256, n1257, n1258, n1259, n1260, n1261, n1262, n1285, n1286,
         n1287, n1288, n1289, n1290, n1291, n1292, n1293, n1294, n1295, n1296,
         n1297, n1298, n1299, n1300, n1301, n1302, n1303, n1304, n1305, n1306,
         n1307, n1308, n1309, n1310, n1311, n1312, n1313, n1314, n1315, n1316,
         n1317, n1318, n1319, n1320, n1321, n1322, n1323, n1324, n1325, n1326,
         n1327, n1328, n1329, n1330, n1331, n1332, n1333, n1334, n1335, n1336,
         n1337, n1338, n1339, n1340, n1341, n1342, n1343, n1344, n1345, n1346,
         n1347, n1348, n1349, n1350, n1351, n1352, n1353, n1354, n1355, n1356,
         n1357, n1358, n1359, n1360, n1364, n1365, n1366, n1367, n1368, n1369,
         n1370, n1371, n1372, n1373, n1374, n1375, n1376, n1377, n1378, n1379,
         n1380, n1381, n1382, n1383, n1384, n1385, n1386, n1387, n1388, n1389,
         n1390, n1391, n1392, n1393, n1394, n1395, n1396, n1397, n1398, n1399,
         n1400, n1401, n1402, n1403, n1404, n1405, n1406, n1407, n1408, n1409,
         n1410, n1411, n1412, n1413, n1414, n1415, n1416, n1417, n1418, n1419,
         n1420, n1421, n1422, n1423, n1424, n1425, n1426, n1427, n1428, n1429,
         n1430, n1431, n1432, n1433, n1434, n1435, n1436, n1437, n1438, n1439,
         n1440, n1441, n1442, n1443, n1444, n1445, n1446, n1447, n1448, n1449,
         n1450, n1451, n1452, n1453, n1454, n1455, n1456, n1457, n1458, n1459,
         n1460, n1461, n1462, n1463, n1464, n1465, n1466, n1467, n1468, n1469,
         n1470, n1471, n1472, n1473, n1474, n1475, n1476, n1477, n1478, n1479,
         n1480, n1481, n1482, n1483, n1484, n1485, n1486, n1487, n1488, n1489,
         n1490, n1491, n1492, n1493, n1494, n1495, n1496, n1497, n1498, n1499,
         n1500, n1501, n1502, n1503, n1504, n1505, n1506, n1507, n1508, n1509,
         n1510, n1511, n1512, n1513, n1514, n1515, n1516, n1517, n1518, n1519,
         n1520, n1521, n1522, n1523, n1524, n1525, n1526, n1527, n1528, n1529,
         n1530, n1531, n1532, n1533, n1534, n1535, n1536, n1537, n1538, n1539,
         n1540, n1541, n1542, n1543, n1544, n1545, n1546, n1547, n1548, n1549,
         n1550, n1551, n1552, n1553, n1554, n1555, n1556, n1557, n1558, n1559,
         n1560, n1561, n1562, n1563, n1564, n1565, n1566, n1567, n1568, n1569,
         n1570, n1571, n1572, n1573, n1574, n1575, n1576, n1577, n1578, n1579,
         n1580, n1581, n1582, n1583, n1584, n1585, n1586, n1587, n1588, n1589,
         n1590, n1591, n1592, n1593, n1594, n1595, n1596, n1597, n1598, n1599,
         n1600, n1601, n1602, n1603, n1604, n1605, n1606, n1607, n1608, n1609,
         n1610, n1611, n1612, n1613, n1614, n1615, n1616, n1617, n1618, n1619,
         n1620, n1621, n1622, n1623, n1624, n1625, n1626, n1627, n1628, n1629,
         n1630, n1631, n1632, n1633, n1634, n1635, n1636, n1637, n1638, n1639,
         n1640, n1641, n1642, n1643, n1644, n1645, n1646, n1647, n1648, n1649,
         n1650, n1651, n1652, n1653, n1654, n1655, n1656, n1657, n1658, n1659,
         n1660, n1661, n1662, n1663, n1664, n1665, n1666, n1667, n1668, n1669,
         n1670, n1671, n1672, n1673, n1674, n1675, n1676, n1677, n1678, n1679,
         n1680, n1681, n1682, n1683, n1684, n1685, n1686, n1687, n1688, n1689,
         n1690, n1691, n1692, n1693, n1694, n1695, n1696, n1697, n1698, n1699,
         n1700, n1701, n1702, n1703, n1704, n1705, n1706, n1707, n1708, n1709,
         n1710, n1711, n1712, n1713, n1714, n1715, n1716, n1717, n1718, n1719,
         n1720, n1721, n1722, n1723, n1724, n1725, n1726, n1727, n1728, n1729,
         n1730, n1731, n1732, n1733, n1734, n1735, n1736, n1737, n1738, n1739,
         n1740, n1741, n1742, n1743, n1744, n1745, n1746, n1747, n1748, n1749,
         n1750, n1751, n1752, n1753, n1754, n1755, n1756, n1757, n1758, n1759,
         n1760, n1761, n1762, n1763, n1764, n1765, n1766, n1767, n1768, n1769,
         n1770, n1771, n1772, n1773, n1774, n1775, n1776, n1777, n1778, n1779,
         n1780, n1781, n1782, n1783, n1784, n1785, n1786, n1787, n1788, n1789,
         n1790, n1791, n1792, n1793, n1794, n1795, n1796, n1797, n1798, n1799,
         n1800, n1801, n1802, n1803, n1804, n1805, n1806, n1807, n1808, n1809,
         n1810, n1811, n1812, n1813, n1814, n1815, n1816, n1817, n1818, n1819,
         n1820, n1821, n1822, n1823, n1824, n1825, n1826, n1827, n1828, n1829,
         n1830, n1831, n1832, n1833, n1834, n1835, n1836, n1837, n1838, n1839,
         n1840, n1841, n1842, n1843, n1844, n1845, n1846, n1847, n1848, n1849,
         n1850, n1851, n1852, n1853, n1854, n1855, n1856, n1857, n1858, n1859,
         n1860, n1861, n1862, n1863, n1864, n1865, n1866, n1867, n1868, n1869,
         n1870, n1871, n1872, n1873, n1874, n1875, n1876, n1877, n1878, n1879,
         n1880, n1881, n1882, n1883, n1884, n1885, n1886, n1887, n1888, n1889,
         n1890, n1891, n1892, n1893, n1894, n1895, n1896, n1897, n1898, n1899,
         n1900, n1901, n1902, n1903, n1904, n1905, n1906, n1907, n1908, n1909,
         n1910, n1911, n1912, n1913, n1914, n1915, n1916, n1917, n1918, n1919,
         n1920, n1921, n1922, n1923, n1924, n1925, n1926, n1927, n1928, n1929,
         n1930, n1931, n1932, n1933, n1934, n1935, n1936, n1937, n1938, n1939,
         n1940, n1941, n1942, n1943, n1944, n1945, n1946, n1947, n1948, n1949,
         n1950, n1951, n1952, n1953, n1954, n1955, n1956, n1957, n1958, n1959,
         n1960, n1961, n1962, n1963, n1964, n1965, n1966, n1967, n1968, n1969,
         n1970, n1971, n1972, n1973, n1974, n1975, n1976, n1977, n1978, n1979,
         n1980, n1981, n1982, n1983, n1984, n1985, n1986, n1987, n1988, n1989,
         n1990, n1991, n1992, n1993, n1994, n1995, n1996, n1997, n1998, n1999,
         n2000, n2001, n2002, n2003, n2004, n2005, n2006, n2007, n2008, n2009,
         n2010, n2011, n2012, n2013, n2014, n2015, n2016, n2017, n2018, n2019,
         n2020, n2021, n2022, n2023, n2024, n2025, n2026, n2027, n2028, n2029,
         n2030, n2031, n2032, n2033, n2034, n2035, n2036, n2037, n2038, n2039,
         n2040, n2041, n2042, n2043, n2044, n2045, n2046, n2047, n2048, n2049,
         n2050, n2051, n2052, n2053, n2054, n2055, n2056, n2057, n2058, n2059,
         n2060, n2061, n2062, n2063, n2064, n2065, n2066, n2067, n2068, n2069,
         n2070, n2071, n2072, n2073, n2074, n2075, n2076, n2077, n2078, n2079,
         n2080, n2081, n2082, n2083, n2084, n2085, n2086, n2087, n2088, n2089,
         n2090, n2091, n2092, n2093, n2094, n2095, n2096, n2097, n2098, n2099,
         n2100, n2101, n2102, n2103, n2104, n2105, n2106, n2107, n2108, n2109,
         n2110, n2111, n2112, n2113, n2114, n2115, n2116, n2117, n2118, n2119,
         n2120, n2121, n2122, n2123, n2124, n2125, n2126, n2127, n2128, n2129,
         n2130, n2131, n2132, n2133, n2134, n2135, n2136, n2137, n2138, n2139,
         n2140, n2141, n2142, n2143, n2144, n2145, n2146, n2147, n2148, n2149,
         n2150, n2151, n2152, n2153, n2154, n2155, n2156, n2157, n2158, n2159,
         n2160, n2161, n2162, n2163, n2164, n2165, n2166, n2167, n2168, n2169,
         n2170, n2171, n2172, n2173, n2174, n2175, n2176, n2177, n2178, n2179,
         n2180, n2181, n2182, n2183, n2184, n2185, n2186, n2187, n2188, n2189,
         n2190, n2191, n2192;
  wire   [10:0] j;
  wire   [10:0] k;
  wire   [1:0] wstate;
  wire   [1:0] rstate;
  wire   [31:0] r_offset;
  wire   [31:0] r_frame_size;
  wire   [31:0] next_r_offset_val;
  wire   [31:0] w_offset;
  wire   [31:0] w_frame_size;
  wire   [31:0] next_w_offset_val;
  wire   [1:0] next_rstate;
  wire   [1:0] next_wstate;
  assign fft_man_wdata[31] = data_out[31];
  assign fft_man_wdata[30] = data_out[30];
  assign fft_man_wdata[29] = data_out[29];
  assign fft_man_wdata[28] = data_out[28];
  assign fft_man_wdata[27] = data_out[27];
  assign fft_man_wdata[26] = data_out[26];
  assign fft_man_wdata[25] = data_out[25];
  assign fft_man_wdata[24] = data_out[24];
  assign fft_man_wdata[23] = data_out[23];
  assign fft_man_wdata[22] = data_out[22];
  assign fft_man_wdata[21] = data_out[21];
  assign fft_man_wdata[20] = data_out[20];
  assign fft_man_wdata[19] = data_out[19];
  assign fft_man_wdata[18] = data_out[18];
  assign fft_man_wdata[17] = data_out[17];
  assign fft_man_wdata[16] = data_out[16];
  assign fft_man_wdata[15] = data_out[15];
  assign fft_man_wdata[14] = data_out[14];
  assign fft_man_wdata[13] = data_out[13];
  assign fft_man_wdata[12] = data_out[12];
  assign fft_man_wdata[11] = data_out[11];
  assign fft_man_wdata[10] = data_out[10];
  assign fft_man_wdata[9] = data_out[9];
  assign fft_man_wdata[8] = data_out[8];
  assign fft_man_wdata[7] = data_out[7];
  assign fft_man_wdata[6] = data_out[6];
  assign fft_man_wdata[5] = data_out[5];
  assign fft_man_wdata[4] = data_out[4];
  assign fft_man_wdata[3] = data_out[3];
  assign fft_man_wdata[2] = data_out[2];
  assign fft_man_wdata[1] = data_out[1];
  assign fft_man_wdata[0] = data_out[0];
  assign data_in[31] = fft_man_rdata[31];
  assign data_in[30] = fft_man_rdata[30];
  assign data_in[29] = fft_man_rdata[29];
  assign data_in[28] = fft_man_rdata[28];
  assign data_in[27] = fft_man_rdata[27];
  assign data_in[26] = fft_man_rdata[26];
  assign data_in[25] = fft_man_rdata[25];
  assign data_in[24] = fft_man_rdata[24];
  assign data_in[23] = fft_man_rdata[23];
  assign data_in[22] = fft_man_rdata[22];
  assign data_in[21] = fft_man_rdata[21];
  assign data_in[20] = fft_man_rdata[20];
  assign data_in[19] = fft_man_rdata[19];
  assign data_in[18] = fft_man_rdata[18];
  assign data_in[17] = fft_man_rdata[17];
  assign data_in[16] = fft_man_rdata[16];
  assign data_in[15] = fft_man_rdata[15];
  assign data_in[14] = fft_man_rdata[14];
  assign data_in[13] = fft_man_rdata[13];
  assign data_in[12] = fft_man_rdata[12];
  assign data_in[11] = fft_man_rdata[11];
  assign data_in[10] = fft_man_rdata[10];
  assign data_in[9] = fft_man_rdata[9];
  assign data_in[8] = fft_man_rdata[8];
  assign data_in[7] = fft_man_rdata[7];
  assign data_in[6] = fft_man_rdata[6];
  assign data_in[5] = fft_man_rdata[5];
  assign data_in[4] = fft_man_rdata[4];
  assign data_in[3] = fft_man_rdata[3];
  assign data_in[2] = fft_man_rdata[2];
  assign data_in[1] = fft_man_rdata[1];
  assign data_in[0] = fft_man_rdata[0];
  assign fft_man_bready = N359;

  DFFSR \wstate_reg[0]  ( .D(next_wstate[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(wstate[0]) );
  DFFSR \wstate_reg[1]  ( .D(next_wstate[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(wstate[1]) );
  DFFSR \k_reg[10]  ( .D(n1360), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[10]) );
  DFFSR processing_reg ( .D(n1338), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        processing) );
  DFFSR \r_frame_size_reg[1]  ( .D(n2161), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[1]) );
  DFFSR \r_frame_size_reg[2]  ( .D(n2162), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[2]) );
  DFFSR \r_frame_size_reg[3]  ( .D(n2163), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[3]) );
  DFFSR \r_frame_size_reg[4]  ( .D(n2164), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[4]) );
  DFFSR \r_frame_size_reg[5]  ( .D(n2165), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[5]) );
  DFFSR \r_frame_size_reg[6]  ( .D(n2166), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[6]) );
  DFFSR \r_frame_size_reg[7]  ( .D(n2167), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[7]) );
  DFFSR \r_frame_size_reg[8]  ( .D(n2168), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[8]) );
  DFFSR \r_frame_size_reg[9]  ( .D(n2169), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[9]) );
  DFFSR \r_frame_size_reg[10]  ( .D(n2170), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(r_frame_size[10]) );
  DFFSR \w_frame_size_reg[0]  ( .D(n2171), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[0]) );
  DFFSR \w_frame_size_reg[1]  ( .D(n2172), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[1]) );
  DFFSR \w_frame_size_reg[2]  ( .D(n2173), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[2]) );
  DFFSR \w_frame_size_reg[3]  ( .D(n2174), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[3]) );
  DFFSR \w_frame_size_reg[4]  ( .D(n2175), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[4]) );
  DFFSR \w_frame_size_reg[5]  ( .D(n2176), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[5]) );
  DFFSR \w_frame_size_reg[6]  ( .D(n2177), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[6]) );
  DFFSR \w_frame_size_reg[7]  ( .D(n2178), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[7]) );
  DFFSR \w_frame_size_reg[8]  ( .D(n2179), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[8]) );
  DFFSR \w_frame_size_reg[9]  ( .D(n2180), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[9]) );
  DFFSR \w_frame_size_reg[10]  ( .D(n2181), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(w_frame_size[10]) );
  DFFSR \r_frame_size_reg[0]  ( .D(n2182), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[0]) );
  DFFSR \configs_reg[1][19]  ( .D(n2141), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][19] ) );
  DFFSR \configs_reg[1][18]  ( .D(n2142), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][18] ) );
  DFFSR \configs_reg[1][17]  ( .D(n2143), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][17] ) );
  DFFSR \configs_reg[1][16]  ( .D(n2144), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][16] ) );
  DFFSR \configs_reg[1][15]  ( .D(n2145), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][15] ) );
  DFFSR \configs_reg[1][14]  ( .D(n2146), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][14] ) );
  DFFSR \configs_reg[1][13]  ( .D(n2147), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][13] ) );
  DFFSR \configs_reg[1][12]  ( .D(n2148), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][12] ) );
  DFFSR \configs_reg[1][11]  ( .D(n2149), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][11] ) );
  DFFSR \configs_reg[1][10]  ( .D(n2150), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][10] ) );
  DFFSR \configs_reg[1][9]  ( .D(n2151), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][9] ) );
  DFFSR \configs_reg[1][8]  ( .D(n2152), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][8] ) );
  DFFSR \configs_reg[1][7]  ( .D(n2153), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][7] ) );
  DFFSR \configs_reg[1][6]  ( .D(n2154), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][6] ) );
  DFFSR \configs_reg[1][5]  ( .D(n2155), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][5] ) );
  DFFSR \configs_reg[1][4]  ( .D(n2156), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][4] ) );
  DFFSR \configs_reg[1][3]  ( .D(n2157), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][3] ) );
  DFFSR \configs_reg[1][2]  ( .D(n2158), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][2] ) );
  DFFSR \configs_reg[1][1]  ( .D(n2159), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][1] ) );
  DFFSR \configs_reg[1][0]  ( .D(n2160), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][0] ) );
  DFFSR \configs_reg[0][31]  ( .D(n1317), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][31] ) );
  DFFSR \configs_reg[0][30]  ( .D(n1318), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][30] ) );
  DFFSR \configs_reg[0][29]  ( .D(n1319), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][29] ) );
  DFFSR \configs_reg[0][28]  ( .D(n1320), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][28] ) );
  DFFSR \configs_reg[0][27]  ( .D(n1321), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][27] ) );
  DFFSR \configs_reg[0][26]  ( .D(n1322), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][26] ) );
  DFFSR \configs_reg[0][25]  ( .D(n1323), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][25] ) );
  DFFSR \configs_reg[0][24]  ( .D(n1324), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][24] ) );
  DFFSR \configs_reg[0][23]  ( .D(n1325), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][23] ) );
  DFFSR \configs_reg[0][22]  ( .D(n1326), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][22] ) );
  DFFSR \configs_reg[0][21]  ( .D(n1327), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][21] ) );
  DFFSR \configs_reg[0][20]  ( .D(n1328), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][20] ) );
  DFFSR \configs_reg[0][19]  ( .D(n1329), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][19] ) );
  DFFSR \configs_reg[0][18]  ( .D(n1330), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][18] ) );
  DFFSR \configs_reg[0][17]  ( .D(n1331), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][17] ) );
  DFFSR \configs_reg[0][16]  ( .D(n1332), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][16] ) );
  DFFSR \configs_reg[0][15]  ( .D(n1333), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][15] ) );
  DFFSR \configs_reg[0][14]  ( .D(n1334), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][14] ) );
  DFFSR \configs_reg[0][13]  ( .D(n1335), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][13] ) );
  DFFSR \configs_reg[0][12]  ( .D(n1336), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][12] ) );
  DFFSR \configs_reg[0][11]  ( .D(n1337), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][11] ) );
  DFFSR \configs_reg[0][10]  ( .D(n1252), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][10] ) );
  DFFSR \configs_reg[0][9]  ( .D(n1253), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][9] ) );
  DFFSR \configs_reg[0][8]  ( .D(n1254), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][8] ) );
  DFFSR \configs_reg[0][7]  ( .D(n1255), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][7] ) );
  DFFSR \configs_reg[0][6]  ( .D(n1256), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][6] ) );
  DFFSR \configs_reg[0][5]  ( .D(n1257), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][5] ) );
  DFFSR \configs_reg[0][4]  ( .D(n1258), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][4] ) );
  DFFSR \configs_reg[0][3]  ( .D(n1259), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][3] ) );
  DFFSR \configs_reg[0][2]  ( .D(n1260), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][2] ) );
  DFFSR \configs_reg[0][1]  ( .D(n1261), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][1] ) );
  DFFSR \configs_reg[6][31]  ( .D(n1134), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][31] ) );
  DFFSR \configs_reg[6][30]  ( .D(n1135), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][30] ) );
  DFFSR \configs_reg[6][29]  ( .D(n1136), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][29] ) );
  DFFSR \configs_reg[6][28]  ( .D(n1137), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][28] ) );
  DFFSR \configs_reg[6][27]  ( .D(n1138), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][27] ) );
  DFFSR \configs_reg[6][26]  ( .D(n1139), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][26] ) );
  DFFSR \configs_reg[6][25]  ( .D(n1140), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][25] ) );
  DFFSR \configs_reg[6][24]  ( .D(n1141), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][24] ) );
  DFFSR \configs_reg[6][23]  ( .D(n1142), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][23] ) );
  DFFSR \configs_reg[6][22]  ( .D(n1143), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][22] ) );
  DFFSR \configs_reg[6][21]  ( .D(n1144), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][21] ) );
  DFFSR \configs_reg[6][20]  ( .D(n1145), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][20] ) );
  DFFSR \configs_reg[6][19]  ( .D(n1146), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][19] ) );
  DFFSR \configs_reg[6][18]  ( .D(n1147), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][18] ) );
  DFFSR \configs_reg[6][17]  ( .D(n1148), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][17] ) );
  DFFSR \configs_reg[6][16]  ( .D(n1149), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][16] ) );
  DFFSR \configs_reg[6][15]  ( .D(n1150), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][15] ) );
  DFFSR \configs_reg[6][14]  ( .D(n1151), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][14] ) );
  DFFSR \configs_reg[6][13]  ( .D(n1152), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][13] ) );
  DFFSR \configs_reg[6][12]  ( .D(n1153), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][12] ) );
  DFFSR \configs_reg[6][11]  ( .D(n1154), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][11] ) );
  DFFSR \configs_reg[6][10]  ( .D(n1155), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][10] ) );
  DFFSR \configs_reg[6][9]  ( .D(n1156), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][9] ) );
  DFFSR \configs_reg[6][8]  ( .D(n1157), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][8] ) );
  DFFSR \configs_reg[6][7]  ( .D(n1158), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][7] ) );
  DFFSR \configs_reg[6][6]  ( .D(n1159), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][6] ) );
  DFFSR \configs_reg[6][5]  ( .D(n1160), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][5] ) );
  DFFSR \configs_reg[6][4]  ( .D(n1161), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][4] ) );
  DFFSR \configs_reg[6][3]  ( .D(n1162), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][3] ) );
  DFFSR \configs_reg[6][2]  ( .D(n1163), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][2] ) );
  DFFSR \configs_reg[6][1]  ( .D(n1164), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][1] ) );
  DFFSR \configs_reg[6][0]  ( .D(n1165), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[6][0] ) );
  DFFSR \configs_reg[5][1]  ( .D(n2075), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_wstrb[1]) );
  DFFSR \configs_reg[5][0]  ( .D(n2076), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_wstrb[0]) );
  DFFSR \configs_reg[4][9]  ( .D(n2077), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[9]) );
  DFFSR \configs_reg[4][8]  ( .D(n2078), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[8]) );
  DFFSR \configs_reg[4][7]  ( .D(n2079), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[7]) );
  DFFSR \configs_reg[4][6]  ( .D(n2080), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[6]) );
  DFFSR \configs_reg[4][5]  ( .D(n2081), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[5]) );
  DFFSR \configs_reg[4][4]  ( .D(n2082), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[4]) );
  DFFSR \configs_reg[4][3]  ( .D(n2083), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[3]) );
  DFFSR \configs_reg[4][2]  ( .D(n2084), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[2]) );
  DFFSR \configs_reg[4][1]  ( .D(n2085), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[1]) );
  DFFSR \configs_reg[4][0]  ( .D(n2086), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[0]) );
  DFFSR \configs_reg[3][31]  ( .D(n2087), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][31] ) );
  DFFSR \configs_reg[3][30]  ( .D(n2088), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][30] ) );
  DFFSR \configs_reg[3][29]  ( .D(n2089), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][29] ) );
  DFFSR \configs_reg[3][28]  ( .D(n2090), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][28] ) );
  DFFSR \configs_reg[3][27]  ( .D(n2091), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][27] ) );
  DFFSR \configs_reg[3][26]  ( .D(n2092), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][26] ) );
  DFFSR \configs_reg[3][25]  ( .D(n2093), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][25] ) );
  DFFSR \configs_reg[3][24]  ( .D(n2094), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][24] ) );
  DFFSR \configs_reg[3][23]  ( .D(n2095), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][23] ) );
  DFFSR \configs_reg[3][22]  ( .D(n2096), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][22] ) );
  DFFSR \configs_reg[3][21]  ( .D(n2097), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][21] ) );
  DFFSR \configs_reg[3][20]  ( .D(n2098), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][20] ) );
  DFFSR \configs_reg[3][19]  ( .D(n2099), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][19] ) );
  DFFSR \configs_reg[3][18]  ( .D(n2100), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][18] ) );
  DFFSR \configs_reg[3][17]  ( .D(n2101), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][17] ) );
  DFFSR \configs_reg[3][16]  ( .D(n2102), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][16] ) );
  DFFSR \configs_reg[3][15]  ( .D(n2103), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][15] ) );
  DFFSR \configs_reg[3][14]  ( .D(n2104), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][14] ) );
  DFFSR \configs_reg[3][13]  ( .D(n2105), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][13] ) );
  DFFSR \configs_reg[3][12]  ( .D(n2106), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][12] ) );
  DFFSR \configs_reg[3][11]  ( .D(n2107), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][11] ) );
  DFFSR \configs_reg[3][10]  ( .D(n2108), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][10] ) );
  DFFSR \configs_reg[3][9]  ( .D(n2109), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][9] ) );
  DFFSR \configs_reg[3][8]  ( .D(n2110), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][8] ) );
  DFFSR \configs_reg[3][7]  ( .D(n2111), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][7] ) );
  DFFSR \configs_reg[3][6]  ( .D(n2112), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][6] ) );
  DFFSR \configs_reg[3][5]  ( .D(n2113), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][5] ) );
  DFFSR \configs_reg[3][4]  ( .D(n2114), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][4] ) );
  DFFSR \configs_reg[3][3]  ( .D(n2115), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][3] ) );
  DFFSR \configs_reg[3][2]  ( .D(n2116), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][2] ) );
  DFFSR \configs_reg[3][1]  ( .D(n2117), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][1] ) );
  DFFSR \configs_reg[3][0]  ( .D(n2118), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][0] ) );
  DFFSR \configs_reg[2][9]  ( .D(n2119), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[9]) );
  DFFSR \configs_reg[2][8]  ( .D(n2120), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[8]) );
  DFFSR \configs_reg[2][7]  ( .D(n2121), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[7]) );
  DFFSR \configs_reg[2][6]  ( .D(n2122), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[6]) );
  DFFSR \configs_reg[2][5]  ( .D(n2123), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[5]) );
  DFFSR \configs_reg[2][4]  ( .D(n2124), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[4]) );
  DFFSR \configs_reg[2][3]  ( .D(n2125), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[3]) );
  DFFSR \configs_reg[2][2]  ( .D(n2126), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[2]) );
  DFFSR \configs_reg[2][1]  ( .D(n2127), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[1]) );
  DFFSR \configs_reg[2][0]  ( .D(n2128), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[0]) );
  DFFSR \rstate_reg[1]  ( .D(next_rstate[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(rstate[1]) );
  DFFSR \rstate_reg[0]  ( .D(next_rstate[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(rstate[0]) );
  DFFSR \configs_reg[1][31]  ( .D(n2129), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][31] ) );
  DFFSR \configs_reg[1][30]  ( .D(n2130), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][30] ) );
  DFFSR \configs_reg[1][29]  ( .D(n2131), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][29] ) );
  DFFSR \configs_reg[1][28]  ( .D(n2132), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][28] ) );
  DFFSR \configs_reg[1][27]  ( .D(n2133), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][27] ) );
  DFFSR \configs_reg[1][26]  ( .D(n2134), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][26] ) );
  DFFSR \configs_reg[1][25]  ( .D(n2135), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][25] ) );
  DFFSR \configs_reg[1][24]  ( .D(n2136), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][24] ) );
  DFFSR \configs_reg[1][23]  ( .D(n2137), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][23] ) );
  DFFSR \configs_reg[1][22]  ( .D(n2138), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][22] ) );
  DFFSR \configs_reg[1][21]  ( .D(n2139), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][21] ) );
  DFFSR \configs_reg[1][20]  ( .D(n2140), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][20] ) );
  DFFSR \configs_reg[0][0]  ( .D(n1262), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][0] ) );
  DFFSR \k_reg[9]  ( .D(n1350), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[9]) );
  DFFSR \k_reg[0]  ( .D(n1359), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[0]) );
  DFFSR \k_reg[1]  ( .D(n1358), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[1]) );
  DFFSR \k_reg[2]  ( .D(n1357), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[2]) );
  DFFSR \k_reg[3]  ( .D(n1356), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[3]) );
  DFFSR \k_reg[4]  ( .D(n1355), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[4]) );
  DFFSR \k_reg[5]  ( .D(n1354), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[5]) );
  DFFSR \k_reg[6]  ( .D(n1353), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[6]) );
  DFFSR \k_reg[7]  ( .D(n1352), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[7]) );
  DFFSR \k_reg[8]  ( .D(n1351), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[8]) );
  DFFSR j_eq_k_reg ( .D(N15), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j_eq_k) );
  DFFSR \j_reg[10]  ( .D(n1349), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[10]) );
  DFFSR \j_reg[0]  ( .D(n1348), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[0]) );
  DFFSR \j_reg[1]  ( .D(n1347), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[1]) );
  DFFSR \j_reg[2]  ( .D(n1346), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[2]) );
  DFFSR \j_reg[3]  ( .D(n1345), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[3]) );
  DFFSR \j_reg[4]  ( .D(n1344), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[4]) );
  DFFSR \j_reg[5]  ( .D(n1343), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[5]) );
  DFFSR \j_reg[6]  ( .D(n1342), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[6]) );
  DFFSR \j_reg[7]  ( .D(n1341), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[7]) );
  DFFSR \j_reg[8]  ( .D(n1340), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[8]) );
  DFFSR \j_reg[9]  ( .D(n1339), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[9]) );
  DFFSR j_gt_0_reg ( .D(N17), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j_gt_0) );
  DFFSR k_gt_0_reg ( .D(N16), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k_gt_0) );
  DFFSR \r_offset_reg[0]  ( .D(n2067), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[0]) );
  DFFSR \r_offset_reg[1]  ( .D(n2054), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[1]) );
  DFFSR \r_offset_reg[2]  ( .D(n2066), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[2]) );
  DFFSR \r_offset_reg[3]  ( .D(n2050), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[3]) );
  DFFSR \r_offset_reg[4]  ( .D(n2074), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[4]) );
  DFFSR \r_offset_reg[5]  ( .D(n2058), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[5]) );
  DFFSR \r_offset_reg[6]  ( .D(n2065), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[6]) );
  DFFSR \r_offset_reg[7]  ( .D(n2049), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[7]) );
  DFFSR \r_offset_reg[8]  ( .D(n2073), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[8]) );
  DFFSR \r_offset_reg[9]  ( .D(n2053), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[9]) );
  DFFSR \r_offset_reg[10]  ( .D(n2059), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[10]) );
  DFFSR \r_offset_reg[11]  ( .D(n2043), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[11]) );
  DFFSR \r_offset_reg[12]  ( .D(n2072), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[12]) );
  DFFSR \r_offset_reg[13]  ( .D(n2056), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[13]) );
  DFFSR \r_offset_reg[14]  ( .D(n2062), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[14]) );
  DFFSR \r_offset_reg[15]  ( .D(n2044), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[15]) );
  DFFSR \r_offset_reg[16]  ( .D(n2069), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[16]) );
  DFFSR \r_offset_reg[17]  ( .D(n2051), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[17]) );
  DFFSR \r_offset_reg[18]  ( .D(n2060), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[18]) );
  DFFSR \r_offset_reg[19]  ( .D(n2045), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[19]) );
  DFFSR \r_offset_reg[20]  ( .D(n2070), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[20]) );
  DFFSR \r_offset_reg[21]  ( .D(n2055), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[21]) );
  DFFSR \r_offset_reg[22]  ( .D(n2063), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[22]) );
  DFFSR \r_offset_reg[23]  ( .D(n2047), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[23]) );
  DFFSR \r_offset_reg[24]  ( .D(n2068), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[24]) );
  DFFSR \r_offset_reg[25]  ( .D(n2052), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[25]) );
  DFFSR \r_offset_reg[26]  ( .D(n2061), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[26]) );
  DFFSR \r_offset_reg[27]  ( .D(n2046), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[27]) );
  DFFSR \r_offset_reg[28]  ( .D(n2071), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[28]) );
  DFFSR \r_offset_reg[29]  ( .D(n2057), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[29]) );
  DFFSR \r_offset_reg[30]  ( .D(n2064), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[30]) );
  DFFSR \r_offset_reg[31]  ( .D(n2048), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[31]) );
  DFFSR \w_offset_reg[0]  ( .D(n2035), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[0]) );
  DFFSR \w_offset_reg[1]  ( .D(n2022), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[1]) );
  DFFSR \w_offset_reg[2]  ( .D(n2034), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[2]) );
  DFFSR \w_offset_reg[3]  ( .D(n2018), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[3]) );
  DFFSR \w_offset_reg[4]  ( .D(n2042), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[4]) );
  DFFSR \w_offset_reg[5]  ( .D(n2026), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[5]) );
  DFFSR \w_offset_reg[6]  ( .D(n2033), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[6]) );
  DFFSR \w_offset_reg[7]  ( .D(n2017), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[7]) );
  DFFSR \w_offset_reg[8]  ( .D(n2041), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[8]) );
  DFFSR \w_offset_reg[9]  ( .D(n2021), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[9]) );
  DFFSR \w_offset_reg[10]  ( .D(n2027), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[10]) );
  DFFSR \w_offset_reg[11]  ( .D(n2011), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[11]) );
  DFFSR \w_offset_reg[12]  ( .D(n2040), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[12]) );
  DFFSR \w_offset_reg[13]  ( .D(n2024), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[13]) );
  DFFSR \w_offset_reg[14]  ( .D(n2030), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[14]) );
  DFFSR \w_offset_reg[15]  ( .D(n2012), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[15]) );
  DFFSR \w_offset_reg[16]  ( .D(n2037), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[16]) );
  DFFSR \w_offset_reg[17]  ( .D(n2019), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[17]) );
  DFFSR \w_offset_reg[18]  ( .D(n2028), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[18]) );
  DFFSR \w_offset_reg[19]  ( .D(n2013), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[19]) );
  DFFSR \w_offset_reg[20]  ( .D(n2038), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[20]) );
  DFFSR \w_offset_reg[21]  ( .D(n2023), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[21]) );
  DFFSR \w_offset_reg[22]  ( .D(n2031), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[22]) );
  DFFSR \w_offset_reg[23]  ( .D(n2015), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[23]) );
  DFFSR \w_offset_reg[24]  ( .D(n2036), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[24]) );
  DFFSR \w_offset_reg[25]  ( .D(n2020), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[25]) );
  DFFSR \w_offset_reg[26]  ( .D(n2029), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[26]) );
  DFFSR \w_offset_reg[27]  ( .D(n2014), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[27]) );
  DFFSR \w_offset_reg[28]  ( .D(n2039), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[28]) );
  DFFSR \w_offset_reg[29]  ( .D(n2025), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[29]) );
  DFFSR \w_offset_reg[30]  ( .D(n2032), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[30]) );
  DFFSR \w_offset_reg[31]  ( .D(n2016), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[31]) );
  DFFSR \frame_size_reg[0]  ( .D(n2192), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[0]) );
  DFFSR \frame_size_reg[1]  ( .D(n2191), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[1]) );
  DFFSR \frame_size_reg[2]  ( .D(n2190), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[2]) );
  DFFSR \frame_size_reg[3]  ( .D(n2189), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[3]) );
  DFFSR \frame_size_reg[4]  ( .D(n2188), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[4]) );
  DFFSR \frame_size_reg[5]  ( .D(n2187), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[5]) );
  DFFSR \frame_size_reg[6]  ( .D(n2186), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[6]) );
  DFFSR \frame_size_reg[7]  ( .D(n2185), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[7]) );
  DFFSR \frame_size_reg[8]  ( .D(n2184), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[8]) );
  DFFSR \frame_size_reg[9]  ( .D(n2183), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        frame_size[9]) );
  DFFSR \windowing_reg[0]  ( .D(n751), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[0]) );
  DFFSR \windowing_reg[1]  ( .D(n749), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[1]) );
  DFFSR \windowing_reg[2]  ( .D(n747), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[2]) );
  DFFSR \windowing_reg[3]  ( .D(n745), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[3]) );
  DFFSR \windowing_reg[4]  ( .D(n743), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[4]) );
  DFFSR \windowing_reg[5]  ( .D(n741), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[5]) );
  DFFSR \windowing_reg[6]  ( .D(n739), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[6]) );
  DFFSR \windowing_reg[7]  ( .D(n737), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[7]) );
  DFFSR \windowing_reg[8]  ( .D(n735), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[8]) );
  DFFSR \windowing_reg[9]  ( .D(n733), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[9]) );
  DFFSR \windowing_reg[10]  ( .D(n731), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[10]) );
  DFFSR \windowing_reg[11]  ( .D(n729), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[11]) );
  DFFSR \windowing_reg[12]  ( .D(n727), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[12]) );
  DFFSR \windowing_reg[13]  ( .D(n725), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[13]) );
  DFFSR \windowing_reg[14]  ( .D(n723), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[14]) );
  DFFSR \windowing_reg[15]  ( .D(n721), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[15]) );
  DFFSR \windowing_reg[16]  ( .D(n719), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[16]) );
  DFFSR \windowing_reg[17]  ( .D(n717), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[17]) );
  DFFSR \windowing_reg[18]  ( .D(n715), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[18]) );
  DFFSR \windowing_reg[19]  ( .D(n713), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[19]) );
  DFFSR \windowing_reg[20]  ( .D(n711), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[20]) );
  DFFSR \windowing_reg[21]  ( .D(n709), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[21]) );
  DFFSR \windowing_reg[22]  ( .D(n707), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[22]) );
  DFFSR \windowing_reg[23]  ( .D(n705), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[23]) );
  DFFSR \windowing_reg[24]  ( .D(n703), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[24]) );
  DFFSR \windowing_reg[25]  ( .D(n701), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[25]) );
  DFFSR \windowing_reg[26]  ( .D(n699), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[26]) );
  DFFSR \windowing_reg[27]  ( .D(n697), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[27]) );
  DFFSR \windowing_reg[28]  ( .D(n695), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[28]) );
  DFFSR \windowing_reg[29]  ( .D(n693), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[29]) );
  DFFSR \windowing_reg[30]  ( .D(n691), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[30]) );
  DFFSR \windowing_reg[31]  ( .D(n689), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        windowing[31]) );
  DFFSR load_size_reg ( .D(n687), .CLK(clk), .R(n_rst), .S(1'b1), .Q(load_size) );
  DFFSR \fft_man_araddr_reg[0]  ( .D(n1316), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[0]) );
  DFFSR \fft_man_araddr_reg[31]  ( .D(n1315), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[31]) );
  DFFSR \fft_man_araddr_reg[30]  ( .D(n1314), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[30]) );
  DFFSR \fft_man_araddr_reg[29]  ( .D(n1313), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[29]) );
  DFFSR \fft_man_araddr_reg[28]  ( .D(n1312), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[28]) );
  DFFSR \fft_man_araddr_reg[27]  ( .D(n1311), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[27]) );
  DFFSR \fft_man_araddr_reg[26]  ( .D(n1310), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[26]) );
  DFFSR \fft_man_araddr_reg[25]  ( .D(n1309), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[25]) );
  DFFSR \fft_man_araddr_reg[24]  ( .D(n1308), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[24]) );
  DFFSR \fft_man_araddr_reg[23]  ( .D(n1307), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[23]) );
  DFFSR \fft_man_araddr_reg[22]  ( .D(n1306), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[22]) );
  DFFSR \fft_man_araddr_reg[21]  ( .D(n1305), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[21]) );
  DFFSR \fft_man_araddr_reg[20]  ( .D(n1304), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[20]) );
  DFFSR \fft_man_araddr_reg[19]  ( .D(n1303), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[19]) );
  DFFSR \fft_man_araddr_reg[18]  ( .D(n1302), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[18]) );
  DFFSR \fft_man_araddr_reg[17]  ( .D(n1301), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[17]) );
  DFFSR \fft_man_araddr_reg[16]  ( .D(n1300), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[16]) );
  DFFSR \fft_man_araddr_reg[15]  ( .D(n1299), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[15]) );
  DFFSR \fft_man_araddr_reg[14]  ( .D(n1298), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[14]) );
  DFFSR \fft_man_araddr_reg[13]  ( .D(n1297), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[13]) );
  DFFSR \fft_man_araddr_reg[12]  ( .D(n1296), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[12]) );
  DFFSR \fft_man_araddr_reg[11]  ( .D(n1295), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[11]) );
  DFFSR \fft_man_araddr_reg[10]  ( .D(n1294), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[10]) );
  DFFSR \fft_man_araddr_reg[9]  ( .D(n1293), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[9]) );
  DFFSR \fft_man_araddr_reg[8]  ( .D(n1292), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[8]) );
  DFFSR \fft_man_araddr_reg[7]  ( .D(n1291), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[7]) );
  DFFSR \fft_man_araddr_reg[6]  ( .D(n1290), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[6]) );
  DFFSR \fft_man_araddr_reg[5]  ( .D(n1289), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[5]) );
  DFFSR \fft_man_araddr_reg[4]  ( .D(n1288), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[4]) );
  DFFSR \fft_man_araddr_reg[3]  ( .D(n1287), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[3]) );
  DFFSR \fft_man_araddr_reg[2]  ( .D(n1286), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[2]) );
  DFFSR \fft_man_araddr_reg[1]  ( .D(n1285), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[1]) );
  DFFSR \fft_man_awaddr_reg[31]  ( .D(n1979), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[31]) );
  DFFSR \fft_man_awaddr_reg[30]  ( .D(n1980), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[30]) );
  DFFSR \fft_man_awaddr_reg[29]  ( .D(n1981), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[29]) );
  DFFSR \fft_man_awaddr_reg[28]  ( .D(n1982), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[28]) );
  DFFSR \fft_man_awaddr_reg[27]  ( .D(n1983), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[27]) );
  DFFSR \fft_man_awaddr_reg[26]  ( .D(n1984), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[26]) );
  DFFSR \fft_man_awaddr_reg[25]  ( .D(n1985), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[25]) );
  DFFSR \fft_man_awaddr_reg[24]  ( .D(n1986), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[24]) );
  DFFSR \fft_man_awaddr_reg[23]  ( .D(n1987), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[23]) );
  DFFSR \fft_man_awaddr_reg[22]  ( .D(n1988), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[22]) );
  DFFSR \fft_man_awaddr_reg[21]  ( .D(n1989), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[21]) );
  DFFSR \fft_man_awaddr_reg[20]  ( .D(n1990), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[20]) );
  DFFSR \fft_man_awaddr_reg[19]  ( .D(n1991), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[19]) );
  DFFSR \fft_man_awaddr_reg[18]  ( .D(n1992), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[18]) );
  DFFSR \fft_man_awaddr_reg[17]  ( .D(n1993), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[17]) );
  DFFSR \fft_man_awaddr_reg[16]  ( .D(n1994), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[16]) );
  DFFSR \fft_man_awaddr_reg[15]  ( .D(n1995), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[15]) );
  DFFSR \fft_man_awaddr_reg[14]  ( .D(n1996), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[14]) );
  DFFSR \fft_man_awaddr_reg[13]  ( .D(n1997), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[13]) );
  DFFSR \fft_man_awaddr_reg[12]  ( .D(n1998), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[12]) );
  DFFSR \fft_man_awaddr_reg[11]  ( .D(n1999), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[11]) );
  DFFSR \fft_man_awaddr_reg[10]  ( .D(n2000), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[10]) );
  DFFSR \fft_man_awaddr_reg[9]  ( .D(n2001), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[9]) );
  DFFSR \fft_man_awaddr_reg[8]  ( .D(n2002), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[8]) );
  DFFSR \fft_man_awaddr_reg[7]  ( .D(n2003), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[7]) );
  DFFSR \fft_man_awaddr_reg[6]  ( .D(n2004), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[6]) );
  DFFSR \fft_man_awaddr_reg[5]  ( .D(n2005), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[5]) );
  DFFSR \fft_man_awaddr_reg[4]  ( .D(n2006), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[4]) );
  DFFSR \fft_man_awaddr_reg[3]  ( .D(n2007), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[3]) );
  DFFSR \fft_man_awaddr_reg[2]  ( .D(n2008), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[2]) );
  DFFSR \fft_man_awaddr_reg[1]  ( .D(n2009), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[1]) );
  DFFSR \fft_man_awaddr_reg[0]  ( .D(n2010), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[0]) );
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
  fft_axi_manager_DW01_add_0 add_234 ( .A({\configs[3][31] , \configs[3][30] , 
        \configs[3][29] , \configs[3][28] , \configs[3][27] , \configs[3][26] , 
        \configs[3][25] , \configs[3][24] , \configs[3][23] , \configs[3][22] , 
        \configs[3][21] , \configs[3][20] , \configs[3][19] , \configs[3][18] , 
        \configs[3][17] , \configs[3][16] , \configs[3][15] , \configs[3][14] , 
        \configs[3][13] , \configs[3][12] , \configs[3][11] , \configs[3][10] , 
        \configs[3][9] , \configs[3][8] , \configs[3][7] , \configs[3][6] , 
        \configs[3][5] , \configs[3][4] , \configs[3][3] , \configs[3][2] , 
        \configs[3][1] , \configs[3][0] }), .B(w_offset), .CI(1'b0), .SUM({
        N355, N354, N353, N352, N351, N350, N349, N348, N347, N346, N345, N344, 
        N343, N342, N341, N340, N339, N338, N337, N336, N335, N334, N333, N332, 
        N331, N330, N329, N328, N327, N326, N325, N324}) );
  fft_axi_manager_DW01_add_1 add_180 ( .A({\configs[1][31] , \configs[1][30] , 
        \configs[1][29] , \configs[1][28] , \configs[1][27] , \configs[1][26] , 
        \configs[1][25] , \configs[1][24] , \configs[1][23] , \configs[1][22] , 
        \configs[1][21] , \configs[1][20] , \configs[1][19] , \configs[1][18] , 
        \configs[1][17] , \configs[1][16] , \configs[1][15] , \configs[1][14] , 
        \configs[1][13] , \configs[1][12] , \configs[1][11] , \configs[1][10] , 
        \configs[1][9] , \configs[1][8] , \configs[1][7] , \configs[1][6] , 
        \configs[1][5] , \configs[1][4] , \configs[1][3] , \configs[1][2] , 
        \configs[1][1] , \configs[1][0] }), .B(r_offset), .CI(1'b0), .SUM({
        N273, N272, N271, N270, N269, N268, N267, N266, N265, N264, N263, N262, 
        N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, 
        N249, N248, N247, N246, N245, N244, N243, N242}) );
  fft_axi_manager_DW01_inc_0 add_131 ( .A({1'b0, \config_reg[2][9] , 
        \config_reg[2][8] , \config_reg[2][7] , \config_reg[2][6] , 
        \config_reg[2][5] , \config_reg[2][4] , \config_reg[2][3] , 
        \config_reg[2][2] , \config_reg[2][1] , \config_reg[2][0] }), .SUM({
        N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48}) );
  fft_axi_manager_DW01_inc_1 add_85 ( .A(fft_man_arlen), .SUM({N31, N30, N29, 
        N28, N27, N26, N25, N24, N23, N22}) );
  fft_axi_manager_DW01_inc_2 add_132 ( .A({1'b0, \config_reg[4][9] , 
        \config_reg[4][8] , \config_reg[4][7] , \config_reg[4][6] , 
        \config_reg[4][5] , \config_reg[4][4] , \config_reg[4][3] , 
        \config_reg[4][2] , \config_reg[4][1] , \config_reg[4][0] }), .SUM({
        N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59}) );
  fft_axi_manager_DW01_add_2 add_177 ( .A({\configs[1][31] , \configs[1][30] , 
        \configs[1][29] , \configs[1][28] , \configs[1][27] , \configs[1][26] , 
        \configs[1][25] , \configs[1][24] , \configs[1][23] , \configs[1][22] , 
        \configs[1][21] , \configs[1][20] , \configs[1][19] , \configs[1][18] , 
        \configs[1][17] , \configs[1][16] , \configs[1][15] , \configs[1][14] , 
        \configs[1][13] , \configs[1][12] , \configs[1][11] , \configs[1][10] , 
        \configs[1][9] , \configs[1][8] , \configs[1][7] , \configs[1][6] , 
        \configs[1][5] , \configs[1][4] , \configs[1][3] , \configs[1][2] , 
        \configs[1][1] , \configs[1][0] }), .B(next_r_offset_val), .CI(1'b0), 
        .SUM({N240, N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, 
        N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, 
        N217, N216, N215, N214, N213, N212, N211, N210, N209}) );
  AND2X2 U1396 ( .A(\config_reg[7][0] ), .B(n1765), .Y(n1364) );
  OR2X2 U1397 ( .A(n1790), .B(n1367), .Y(n1365) );
  INVX4 U1398 ( .A(n1365), .Y(n1366) );
  INVX1 U1399 ( .A(n1405), .Y(n1367) );
  INVX8 U1400 ( .A(n1367), .Y(n1368) );
  INVX2 U1401 ( .A(n1657), .Y(n1369) );
  INVX2 U1402 ( .A(n1452), .Y(n1657) );
  INVX4 U1403 ( .A(n1853), .Y(n1790) );
  INVX2 U1404 ( .A(n1713), .Y(n1370) );
  INVX2 U1405 ( .A(n1418), .Y(n1713) );
  INVX4 U1406 ( .A(n1726), .Y(n1419) );
  INVX2 U1407 ( .A(n1671), .Y(n1371) );
  BUFX4 U1408 ( .A(n1594), .Y(n1372) );
  INVX2 U1409 ( .A(n1389), .Y(n1373) );
  INVX2 U1410 ( .A(n1388), .Y(n1376) );
  INVX2 U1411 ( .A(n1388), .Y(n1375) );
  INVX2 U1412 ( .A(n1388), .Y(n1374) );
  INVX2 U1413 ( .A(n1387), .Y(n1377) );
  INVX2 U1414 ( .A(n1385), .Y(n1383) );
  INVX2 U1415 ( .A(n1385), .Y(n1384) );
  INVX2 U1416 ( .A(n1386), .Y(n1382) );
  INVX2 U1417 ( .A(n1387), .Y(n1378) );
  INVX2 U1418 ( .A(n1386), .Y(n1381) );
  INVX2 U1419 ( .A(n1386), .Y(n1380) );
  INVX2 U1420 ( .A(n1387), .Y(n1379) );
  BUFX2 U1421 ( .A(n1364), .Y(n1389) );
  BUFX2 U1422 ( .A(n1364), .Y(n1390) );
  BUFX2 U1423 ( .A(n1364), .Y(n1391) );
  BUFX2 U1424 ( .A(n1364), .Y(n1388) );
  BUFX2 U1425 ( .A(n1392), .Y(n1385) );
  BUFX2 U1426 ( .A(n1392), .Y(n1386) );
  BUFX2 U1427 ( .A(n1392), .Y(n1387) );
  BUFX2 U1428 ( .A(n1364), .Y(n1392) );
  OAI21X1 U1429 ( .A(fft_man_bvalid), .B(n1393), .C(n1394), .Y(next_wstate[1])
         );
  AOI21X1 U1430 ( .A(fft_man_awready), .B(fft_man_awvalid), .C(n1395), .Y(
        n1394) );
  OAI21X1 U1431 ( .A(n1396), .B(n1397), .C(n1398), .Y(next_rstate[1]) );
  NAND2X1 U1432 ( .A(fft_man_rready), .B(n1399), .Y(n1398) );
  NAND3X1 U1433 ( .A(fft_man_rvalid), .B(n1400), .C(rcounter_last), .Y(n1399)
         );
  INVX1 U1434 ( .A(fft_man_arvalid), .Y(n1396) );
  OAI21X1 U1435 ( .A(n1401), .B(n1400), .C(n1402), .Y(next_rstate[0]) );
  AOI22X1 U1436 ( .A(n1403), .B(N16), .C(fft_man_arvalid), .D(n1397), .Y(n1402) );
  INVX1 U1437 ( .A(fft_man_arready), .Y(n1397) );
  INVX1 U1438 ( .A(fft_man_rresp), .Y(n1400) );
  INVX1 U1439 ( .A(fft_man_rready), .Y(n1401) );
  INVX1 U1440 ( .A(n1404), .Y(n1999) );
  MUX2X1 U1441 ( .B(N335), .A(fft_man_awaddr[11]), .S(n1368), .Y(n1404) );
  INVX1 U1442 ( .A(n1406), .Y(n2000) );
  MUX2X1 U1443 ( .B(N334), .A(fft_man_awaddr[10]), .S(n1368), .Y(n1406) );
  INVX1 U1444 ( .A(n1407), .Y(n2001) );
  MUX2X1 U1445 ( .B(N333), .A(fft_man_awaddr[9]), .S(n1368), .Y(n1407) );
  INVX1 U1446 ( .A(n1408), .Y(n2002) );
  MUX2X1 U1447 ( .B(N332), .A(fft_man_awaddr[8]), .S(n1368), .Y(n1408) );
  INVX1 U1448 ( .A(n1409), .Y(n2003) );
  MUX2X1 U1449 ( .B(N331), .A(fft_man_awaddr[7]), .S(n1368), .Y(n1409) );
  INVX1 U1450 ( .A(n1410), .Y(n2004) );
  MUX2X1 U1451 ( .B(N330), .A(fft_man_awaddr[6]), .S(n1368), .Y(n1410) );
  INVX1 U1452 ( .A(n1411), .Y(n2005) );
  MUX2X1 U1453 ( .B(N329), .A(fft_man_awaddr[5]), .S(n1368), .Y(n1411) );
  INVX1 U1454 ( .A(n1412), .Y(n2006) );
  MUX2X1 U1455 ( .B(N328), .A(fft_man_awaddr[4]), .S(n1368), .Y(n1412) );
  INVX1 U1456 ( .A(n1413), .Y(n2007) );
  MUX2X1 U1457 ( .B(N327), .A(fft_man_awaddr[3]), .S(n1368), .Y(n1413) );
  INVX1 U1458 ( .A(n1414), .Y(n2008) );
  MUX2X1 U1459 ( .B(N326), .A(fft_man_awaddr[2]), .S(n1368), .Y(n1414) );
  INVX1 U1460 ( .A(n1415), .Y(n2009) );
  MUX2X1 U1461 ( .B(N325), .A(fft_man_awaddr[1]), .S(n1368), .Y(n1415) );
  INVX1 U1462 ( .A(n1416), .Y(n2010) );
  MUX2X1 U1463 ( .B(N324), .A(fft_man_awaddr[0]), .S(n1368), .Y(n1416) );
  INVX1 U1464 ( .A(n1417), .Y(n2011) );
  AOI22X1 U1465 ( .A(next_w_offset_val[11]), .B(n1370), .C(w_offset[11]), .D(
        n1419), .Y(n1417) );
  INVX1 U1466 ( .A(n1420), .Y(n2012) );
  AOI22X1 U1467 ( .A(next_w_offset_val[15]), .B(n1370), .C(w_offset[15]), .D(
        n1419), .Y(n1420) );
  INVX1 U1468 ( .A(n1421), .Y(n2013) );
  AOI22X1 U1469 ( .A(next_w_offset_val[19]), .B(n1370), .C(w_offset[19]), .D(
        n1419), .Y(n1421) );
  INVX1 U1470 ( .A(n1422), .Y(n2014) );
  AOI22X1 U1471 ( .A(next_w_offset_val[27]), .B(n1370), .C(w_offset[27]), .D(
        n1419), .Y(n1422) );
  INVX1 U1472 ( .A(n1423), .Y(n2015) );
  AOI22X1 U1473 ( .A(next_w_offset_val[23]), .B(n1370), .C(w_offset[23]), .D(
        n1419), .Y(n1423) );
  INVX1 U1474 ( .A(n1424), .Y(n2016) );
  AOI22X1 U1475 ( .A(next_w_offset_val[31]), .B(n1370), .C(w_offset[31]), .D(
        n1419), .Y(n1424) );
  INVX1 U1476 ( .A(n1425), .Y(n2017) );
  AOI22X1 U1477 ( .A(next_w_offset_val[7]), .B(n1370), .C(w_offset[7]), .D(
        n1419), .Y(n1425) );
  INVX1 U1478 ( .A(n1426), .Y(n2018) );
  AOI22X1 U1479 ( .A(next_w_offset_val[3]), .B(n1370), .C(w_offset[3]), .D(
        n1419), .Y(n1426) );
  INVX1 U1480 ( .A(n1427), .Y(n2019) );
  AOI22X1 U1481 ( .A(next_w_offset_val[17]), .B(n1370), .C(w_offset[17]), .D(
        n1419), .Y(n1427) );
  INVX1 U1482 ( .A(n1428), .Y(n2020) );
  AOI22X1 U1483 ( .A(next_w_offset_val[25]), .B(n1370), .C(w_offset[25]), .D(
        n1419), .Y(n1428) );
  INVX1 U1484 ( .A(n1429), .Y(n2021) );
  AOI22X1 U1485 ( .A(next_w_offset_val[9]), .B(n1370), .C(w_offset[9]), .D(
        n1419), .Y(n1429) );
  INVX1 U1486 ( .A(n1430), .Y(n2022) );
  AOI22X1 U1487 ( .A(next_w_offset_val[1]), .B(n1370), .C(w_offset[1]), .D(
        n1419), .Y(n1430) );
  INVX1 U1488 ( .A(n1431), .Y(n2023) );
  AOI22X1 U1489 ( .A(next_w_offset_val[21]), .B(n1370), .C(w_offset[21]), .D(
        n1419), .Y(n1431) );
  INVX1 U1490 ( .A(n1432), .Y(n2024) );
  AOI22X1 U1491 ( .A(next_w_offset_val[13]), .B(n1370), .C(w_offset[13]), .D(
        n1419), .Y(n1432) );
  INVX1 U1492 ( .A(n1433), .Y(n2025) );
  AOI22X1 U1493 ( .A(next_w_offset_val[29]), .B(n1370), .C(w_offset[29]), .D(
        n1419), .Y(n1433) );
  INVX1 U1494 ( .A(n1434), .Y(n2026) );
  AOI22X1 U1495 ( .A(next_w_offset_val[5]), .B(n1370), .C(w_offset[5]), .D(
        n1419), .Y(n1434) );
  INVX1 U1496 ( .A(n1435), .Y(n2027) );
  AOI22X1 U1497 ( .A(next_w_offset_val[10]), .B(n1370), .C(w_offset[10]), .D(
        n1419), .Y(n1435) );
  INVX1 U1498 ( .A(n1436), .Y(n2028) );
  AOI22X1 U1499 ( .A(next_w_offset_val[18]), .B(n1370), .C(w_offset[18]), .D(
        n1419), .Y(n1436) );
  INVX1 U1500 ( .A(n1437), .Y(n2029) );
  AOI22X1 U1501 ( .A(next_w_offset_val[26]), .B(n1370), .C(w_offset[26]), .D(
        n1419), .Y(n1437) );
  INVX1 U1502 ( .A(n1438), .Y(n2030) );
  AOI22X1 U1503 ( .A(next_w_offset_val[14]), .B(n1370), .C(w_offset[14]), .D(
        n1419), .Y(n1438) );
  INVX1 U1504 ( .A(n1439), .Y(n2031) );
  AOI22X1 U1505 ( .A(next_w_offset_val[22]), .B(n1370), .C(w_offset[22]), .D(
        n1419), .Y(n1439) );
  INVX1 U1506 ( .A(n1440), .Y(n2032) );
  AOI22X1 U1507 ( .A(next_w_offset_val[30]), .B(n1370), .C(w_offset[30]), .D(
        n1419), .Y(n1440) );
  INVX1 U1508 ( .A(n1441), .Y(n2033) );
  AOI22X1 U1509 ( .A(next_w_offset_val[6]), .B(n1370), .C(w_offset[6]), .D(
        n1419), .Y(n1441) );
  INVX1 U1510 ( .A(n1442), .Y(n2034) );
  AOI22X1 U1511 ( .A(next_w_offset_val[2]), .B(n1370), .C(w_offset[2]), .D(
        n1419), .Y(n1442) );
  INVX1 U1512 ( .A(n1443), .Y(n2035) );
  AOI22X1 U1513 ( .A(next_w_offset_val[0]), .B(n1418), .C(w_offset[0]), .D(
        n1419), .Y(n1443) );
  INVX1 U1514 ( .A(n1444), .Y(n2036) );
  AOI22X1 U1515 ( .A(next_w_offset_val[24]), .B(n1418), .C(w_offset[24]), .D(
        n1419), .Y(n1444) );
  INVX1 U1516 ( .A(n1445), .Y(n2037) );
  AOI22X1 U1517 ( .A(next_w_offset_val[16]), .B(n1418), .C(w_offset[16]), .D(
        n1419), .Y(n1445) );
  INVX1 U1518 ( .A(n1446), .Y(n2038) );
  AOI22X1 U1519 ( .A(next_w_offset_val[20]), .B(n1418), .C(w_offset[20]), .D(
        n1419), .Y(n1446) );
  INVX1 U1520 ( .A(n1447), .Y(n2039) );
  AOI22X1 U1521 ( .A(next_w_offset_val[28]), .B(n1418), .C(w_offset[28]), .D(
        n1419), .Y(n1447) );
  INVX1 U1522 ( .A(n1448), .Y(n2040) );
  AOI22X1 U1523 ( .A(next_w_offset_val[12]), .B(n1418), .C(w_offset[12]), .D(
        n1419), .Y(n1448) );
  INVX1 U1524 ( .A(n1449), .Y(n2041) );
  AOI22X1 U1525 ( .A(next_w_offset_val[8]), .B(n1418), .C(w_offset[8]), .D(
        n1419), .Y(n1449) );
  INVX1 U1526 ( .A(n1450), .Y(n2042) );
  AOI22X1 U1527 ( .A(next_w_offset_val[4]), .B(n1418), .C(w_offset[4]), .D(
        n1419), .Y(n1450) );
  INVX1 U1528 ( .A(n1451), .Y(n2043) );
  AOI22X1 U1529 ( .A(next_r_offset_val[11]), .B(n1369), .C(r_offset[11]), .D(
        n1371), .Y(n1451) );
  INVX1 U1530 ( .A(n1454), .Y(n2044) );
  AOI22X1 U1531 ( .A(next_r_offset_val[15]), .B(n1369), .C(r_offset[15]), .D(
        n1371), .Y(n1454) );
  INVX1 U1532 ( .A(n1455), .Y(n2045) );
  AOI22X1 U1533 ( .A(next_r_offset_val[19]), .B(n1369), .C(r_offset[19]), .D(
        n1371), .Y(n1455) );
  INVX1 U1534 ( .A(n1456), .Y(n2046) );
  AOI22X1 U1535 ( .A(next_r_offset_val[27]), .B(n1369), .C(r_offset[27]), .D(
        n1371), .Y(n1456) );
  INVX1 U1536 ( .A(n1457), .Y(n2047) );
  AOI22X1 U1537 ( .A(next_r_offset_val[23]), .B(n1369), .C(r_offset[23]), .D(
        n1371), .Y(n1457) );
  INVX1 U1538 ( .A(n1458), .Y(n2048) );
  AOI22X1 U1539 ( .A(next_r_offset_val[31]), .B(n1369), .C(r_offset[31]), .D(
        n1371), .Y(n1458) );
  INVX1 U1540 ( .A(n1459), .Y(n2049) );
  AOI22X1 U1541 ( .A(next_r_offset_val[7]), .B(n1369), .C(r_offset[7]), .D(
        n1371), .Y(n1459) );
  INVX1 U1542 ( .A(n1460), .Y(n2050) );
  AOI22X1 U1543 ( .A(next_r_offset_val[3]), .B(n1369), .C(r_offset[3]), .D(
        n1371), .Y(n1460) );
  INVX1 U1544 ( .A(n1461), .Y(n2051) );
  AOI22X1 U1545 ( .A(next_r_offset_val[17]), .B(n1369), .C(r_offset[17]), .D(
        n1371), .Y(n1461) );
  INVX1 U1546 ( .A(n1462), .Y(n2052) );
  AOI22X1 U1547 ( .A(next_r_offset_val[25]), .B(n1369), .C(r_offset[25]), .D(
        n1371), .Y(n1462) );
  INVX1 U1548 ( .A(n1463), .Y(n2053) );
  AOI22X1 U1549 ( .A(next_r_offset_val[9]), .B(n1369), .C(r_offset[9]), .D(
        n1371), .Y(n1463) );
  INVX1 U1550 ( .A(n1464), .Y(n2054) );
  AOI22X1 U1551 ( .A(next_r_offset_val[1]), .B(n1369), .C(r_offset[1]), .D(
        n1371), .Y(n1464) );
  INVX1 U1552 ( .A(n1465), .Y(n2055) );
  AOI22X1 U1553 ( .A(next_r_offset_val[21]), .B(n1369), .C(r_offset[21]), .D(
        n1371), .Y(n1465) );
  INVX1 U1554 ( .A(n1466), .Y(n2056) );
  AOI22X1 U1555 ( .A(next_r_offset_val[13]), .B(n1369), .C(r_offset[13]), .D(
        n1371), .Y(n1466) );
  INVX1 U1556 ( .A(n1467), .Y(n2057) );
  AOI22X1 U1557 ( .A(next_r_offset_val[29]), .B(n1369), .C(r_offset[29]), .D(
        n1371), .Y(n1467) );
  INVX1 U1558 ( .A(n1468), .Y(n2058) );
  AOI22X1 U1559 ( .A(next_r_offset_val[5]), .B(n1369), .C(r_offset[5]), .D(
        n1371), .Y(n1468) );
  INVX1 U1560 ( .A(n1469), .Y(n2059) );
  AOI22X1 U1561 ( .A(next_r_offset_val[10]), .B(n1369), .C(r_offset[10]), .D(
        n1371), .Y(n1469) );
  INVX1 U1562 ( .A(n1470), .Y(n2060) );
  AOI22X1 U1563 ( .A(next_r_offset_val[18]), .B(n1369), .C(r_offset[18]), .D(
        n1371), .Y(n1470) );
  INVX1 U1564 ( .A(n1471), .Y(n2061) );
  AOI22X1 U1565 ( .A(next_r_offset_val[26]), .B(n1369), .C(r_offset[26]), .D(
        n1371), .Y(n1471) );
  INVX1 U1566 ( .A(n1472), .Y(n2062) );
  AOI22X1 U1567 ( .A(next_r_offset_val[14]), .B(n1369), .C(r_offset[14]), .D(
        n1371), .Y(n1472) );
  INVX1 U1568 ( .A(n1473), .Y(n2063) );
  AOI22X1 U1569 ( .A(next_r_offset_val[22]), .B(n1369), .C(r_offset[22]), .D(
        n1371), .Y(n1473) );
  INVX1 U1570 ( .A(n1474), .Y(n2064) );
  AOI22X1 U1571 ( .A(next_r_offset_val[30]), .B(n1369), .C(r_offset[30]), .D(
        n1371), .Y(n1474) );
  INVX1 U1572 ( .A(n1475), .Y(n2065) );
  AOI22X1 U1573 ( .A(next_r_offset_val[6]), .B(n1369), .C(r_offset[6]), .D(
        n1453), .Y(n1475) );
  INVX1 U1574 ( .A(n1476), .Y(n2066) );
  AOI22X1 U1575 ( .A(next_r_offset_val[2]), .B(n1369), .C(r_offset[2]), .D(
        n1453), .Y(n1476) );
  INVX1 U1576 ( .A(n1477), .Y(n2067) );
  AOI22X1 U1577 ( .A(next_r_offset_val[0]), .B(n1452), .C(r_offset[0]), .D(
        n1453), .Y(n1477) );
  INVX1 U1578 ( .A(n1478), .Y(n2068) );
  AOI22X1 U1579 ( .A(next_r_offset_val[24]), .B(n1452), .C(r_offset[24]), .D(
        n1453), .Y(n1478) );
  INVX1 U1580 ( .A(n1479), .Y(n2069) );
  AOI22X1 U1581 ( .A(next_r_offset_val[16]), .B(n1452), .C(r_offset[16]), .D(
        n1453), .Y(n1479) );
  INVX1 U1582 ( .A(n1480), .Y(n2070) );
  AOI22X1 U1583 ( .A(next_r_offset_val[20]), .B(n1452), .C(r_offset[20]), .D(
        n1453), .Y(n1480) );
  INVX1 U1584 ( .A(n1481), .Y(n2071) );
  AOI22X1 U1585 ( .A(next_r_offset_val[28]), .B(n1452), .C(r_offset[28]), .D(
        n1453), .Y(n1481) );
  INVX1 U1586 ( .A(n1482), .Y(n2072) );
  AOI22X1 U1587 ( .A(next_r_offset_val[12]), .B(n1452), .C(r_offset[12]), .D(
        n1453), .Y(n1482) );
  INVX1 U1588 ( .A(n1483), .Y(n2073) );
  AOI22X1 U1589 ( .A(next_r_offset_val[8]), .B(n1452), .C(r_offset[8]), .D(
        n1453), .Y(n1483) );
  INVX1 U1590 ( .A(n1484), .Y(n2074) );
  AOI22X1 U1591 ( .A(next_r_offset_val[4]), .B(n1452), .C(r_offset[4]), .D(
        n1453), .Y(n1484) );
  INVX1 U1592 ( .A(n1485), .Y(n2075) );
  MUX2X1 U1593 ( .B(\config_reg[5][1] ), .A(fft_man_wstrb[1]), .S(n1379), .Y(
        n1485) );
  INVX1 U1594 ( .A(n1486), .Y(n2076) );
  MUX2X1 U1595 ( .B(\config_reg[5][0] ), .A(fft_man_wstrb[0]), .S(n1373), .Y(
        n1486) );
  INVX1 U1596 ( .A(n1487), .Y(n2077) );
  MUX2X1 U1597 ( .B(\config_reg[4][9] ), .A(fft_man_awlen[9]), .S(n1373), .Y(
        n1487) );
  INVX1 U1598 ( .A(n1488), .Y(n2078) );
  MUX2X1 U1599 ( .B(\config_reg[4][8] ), .A(fft_man_awlen[8]), .S(n1373), .Y(
        n1488) );
  INVX1 U1600 ( .A(n1489), .Y(n2079) );
  MUX2X1 U1601 ( .B(\config_reg[4][7] ), .A(fft_man_awlen[7]), .S(n1373), .Y(
        n1489) );
  INVX1 U1602 ( .A(n1490), .Y(n2080) );
  MUX2X1 U1603 ( .B(\config_reg[4][6] ), .A(fft_man_awlen[6]), .S(n1373), .Y(
        n1490) );
  INVX1 U1604 ( .A(n1491), .Y(n2081) );
  MUX2X1 U1605 ( .B(\config_reg[4][5] ), .A(fft_man_awlen[5]), .S(n1373), .Y(
        n1491) );
  INVX1 U1606 ( .A(n1492), .Y(n2082) );
  MUX2X1 U1607 ( .B(\config_reg[4][4] ), .A(fft_man_awlen[4]), .S(n1373), .Y(
        n1492) );
  INVX1 U1608 ( .A(n1493), .Y(n2083) );
  MUX2X1 U1609 ( .B(\config_reg[4][3] ), .A(fft_man_awlen[3]), .S(n1373), .Y(
        n1493) );
  INVX1 U1610 ( .A(n1494), .Y(n2084) );
  MUX2X1 U1611 ( .B(\config_reg[4][2] ), .A(fft_man_awlen[2]), .S(n1373), .Y(
        n1494) );
  INVX1 U1612 ( .A(n1495), .Y(n2085) );
  MUX2X1 U1613 ( .B(\config_reg[4][1] ), .A(fft_man_awlen[1]), .S(n1373), .Y(
        n1495) );
  INVX1 U1614 ( .A(n1496), .Y(n2086) );
  MUX2X1 U1615 ( .B(\config_reg[4][0] ), .A(fft_man_awlen[0]), .S(n1373), .Y(
        n1496) );
  INVX1 U1616 ( .A(n1497), .Y(n2087) );
  MUX2X1 U1617 ( .B(\config_reg[3][31] ), .A(\configs[3][31] ), .S(n1373), .Y(
        n1497) );
  INVX1 U1618 ( .A(n1498), .Y(n2088) );
  MUX2X1 U1619 ( .B(\config_reg[3][30] ), .A(\configs[3][30] ), .S(n1374), .Y(
        n1498) );
  INVX1 U1620 ( .A(n1499), .Y(n2089) );
  MUX2X1 U1621 ( .B(\config_reg[3][29] ), .A(\configs[3][29] ), .S(n1374), .Y(
        n1499) );
  INVX1 U1622 ( .A(n1500), .Y(n2090) );
  MUX2X1 U1623 ( .B(\config_reg[3][28] ), .A(\configs[3][28] ), .S(n1374), .Y(
        n1500) );
  INVX1 U1624 ( .A(n1501), .Y(n2091) );
  MUX2X1 U1625 ( .B(\config_reg[3][27] ), .A(\configs[3][27] ), .S(n1374), .Y(
        n1501) );
  INVX1 U1626 ( .A(n1502), .Y(n2092) );
  MUX2X1 U1627 ( .B(\config_reg[3][26] ), .A(\configs[3][26] ), .S(n1374), .Y(
        n1502) );
  INVX1 U1628 ( .A(n1503), .Y(n2093) );
  MUX2X1 U1629 ( .B(\config_reg[3][25] ), .A(\configs[3][25] ), .S(n1374), .Y(
        n1503) );
  INVX1 U1630 ( .A(n1504), .Y(n2094) );
  MUX2X1 U1631 ( .B(\config_reg[3][24] ), .A(\configs[3][24] ), .S(n1374), .Y(
        n1504) );
  INVX1 U1632 ( .A(n1505), .Y(n2095) );
  MUX2X1 U1633 ( .B(\config_reg[3][23] ), .A(\configs[3][23] ), .S(n1374), .Y(
        n1505) );
  INVX1 U1634 ( .A(n1506), .Y(n2096) );
  MUX2X1 U1635 ( .B(\config_reg[3][22] ), .A(\configs[3][22] ), .S(n1374), .Y(
        n1506) );
  INVX1 U1636 ( .A(n1507), .Y(n2097) );
  MUX2X1 U1637 ( .B(\config_reg[3][21] ), .A(\configs[3][21] ), .S(n1374), .Y(
        n1507) );
  INVX1 U1638 ( .A(n1508), .Y(n2098) );
  MUX2X1 U1639 ( .B(\config_reg[3][20] ), .A(\configs[3][20] ), .S(n1374), .Y(
        n1508) );
  INVX1 U1640 ( .A(n1509), .Y(n2099) );
  MUX2X1 U1641 ( .B(\config_reg[3][19] ), .A(\configs[3][19] ), .S(n1374), .Y(
        n1509) );
  INVX1 U1642 ( .A(n1510), .Y(n2100) );
  MUX2X1 U1643 ( .B(\config_reg[3][18] ), .A(\configs[3][18] ), .S(n1374), .Y(
        n1510) );
  INVX1 U1644 ( .A(n1511), .Y(n2101) );
  MUX2X1 U1645 ( .B(\config_reg[3][17] ), .A(\configs[3][17] ), .S(n1375), .Y(
        n1511) );
  INVX1 U1646 ( .A(n1512), .Y(n2102) );
  MUX2X1 U1647 ( .B(\config_reg[3][16] ), .A(\configs[3][16] ), .S(n1375), .Y(
        n1512) );
  INVX1 U1648 ( .A(n1513), .Y(n2103) );
  MUX2X1 U1649 ( .B(\config_reg[3][15] ), .A(\configs[3][15] ), .S(n1375), .Y(
        n1513) );
  INVX1 U1650 ( .A(n1514), .Y(n2104) );
  MUX2X1 U1651 ( .B(\config_reg[3][14] ), .A(\configs[3][14] ), .S(n1375), .Y(
        n1514) );
  INVX1 U1652 ( .A(n1515), .Y(n2105) );
  MUX2X1 U1653 ( .B(\config_reg[3][13] ), .A(\configs[3][13] ), .S(n1375), .Y(
        n1515) );
  INVX1 U1654 ( .A(n1516), .Y(n2106) );
  MUX2X1 U1655 ( .B(\config_reg[3][12] ), .A(\configs[3][12] ), .S(n1375), .Y(
        n1516) );
  INVX1 U1656 ( .A(n1517), .Y(n2107) );
  MUX2X1 U1657 ( .B(\config_reg[3][11] ), .A(\configs[3][11] ), .S(n1375), .Y(
        n1517) );
  INVX1 U1658 ( .A(n1518), .Y(n2108) );
  MUX2X1 U1659 ( .B(\config_reg[3][10] ), .A(\configs[3][10] ), .S(n1375), .Y(
        n1518) );
  INVX1 U1660 ( .A(n1519), .Y(n2109) );
  MUX2X1 U1661 ( .B(\config_reg[3][9] ), .A(\configs[3][9] ), .S(n1375), .Y(
        n1519) );
  INVX1 U1662 ( .A(n1520), .Y(n2110) );
  MUX2X1 U1663 ( .B(\config_reg[3][8] ), .A(\configs[3][8] ), .S(n1375), .Y(
        n1520) );
  INVX1 U1664 ( .A(n1521), .Y(n2111) );
  MUX2X1 U1665 ( .B(\config_reg[3][7] ), .A(\configs[3][7] ), .S(n1375), .Y(
        n1521) );
  INVX1 U1666 ( .A(n1522), .Y(n2112) );
  MUX2X1 U1667 ( .B(\config_reg[3][6] ), .A(\configs[3][6] ), .S(n1375), .Y(
        n1522) );
  INVX1 U1668 ( .A(n1523), .Y(n2113) );
  MUX2X1 U1669 ( .B(\config_reg[3][5] ), .A(\configs[3][5] ), .S(n1375), .Y(
        n1523) );
  INVX1 U1670 ( .A(n1524), .Y(n2114) );
  MUX2X1 U1671 ( .B(\config_reg[3][4] ), .A(\configs[3][4] ), .S(n1376), .Y(
        n1524) );
  INVX1 U1672 ( .A(n1525), .Y(n2115) );
  MUX2X1 U1673 ( .B(\config_reg[3][3] ), .A(\configs[3][3] ), .S(n1376), .Y(
        n1525) );
  INVX1 U1674 ( .A(n1526), .Y(n2116) );
  MUX2X1 U1675 ( .B(\config_reg[3][2] ), .A(\configs[3][2] ), .S(n1376), .Y(
        n1526) );
  INVX1 U1676 ( .A(n1527), .Y(n2117) );
  MUX2X1 U1677 ( .B(\config_reg[3][1] ), .A(\configs[3][1] ), .S(n1376), .Y(
        n1527) );
  INVX1 U1678 ( .A(n1528), .Y(n2118) );
  MUX2X1 U1679 ( .B(\config_reg[3][0] ), .A(\configs[3][0] ), .S(n1376), .Y(
        n1528) );
  INVX1 U1680 ( .A(n1529), .Y(n2119) );
  MUX2X1 U1681 ( .B(\config_reg[2][9] ), .A(fft_man_arlen[9]), .S(n1376), .Y(
        n1529) );
  INVX1 U1682 ( .A(n1530), .Y(n2120) );
  MUX2X1 U1683 ( .B(\config_reg[2][8] ), .A(fft_man_arlen[8]), .S(n1376), .Y(
        n1530) );
  INVX1 U1684 ( .A(n1531), .Y(n2121) );
  MUX2X1 U1685 ( .B(\config_reg[2][7] ), .A(fft_man_arlen[7]), .S(n1376), .Y(
        n1531) );
  INVX1 U1686 ( .A(n1532), .Y(n2122) );
  MUX2X1 U1687 ( .B(\config_reg[2][6] ), .A(fft_man_arlen[6]), .S(n1376), .Y(
        n1532) );
  INVX1 U1688 ( .A(n1533), .Y(n2123) );
  MUX2X1 U1689 ( .B(\config_reg[2][5] ), .A(fft_man_arlen[5]), .S(n1376), .Y(
        n1533) );
  INVX1 U1690 ( .A(n1534), .Y(n2124) );
  MUX2X1 U1691 ( .B(\config_reg[2][4] ), .A(fft_man_arlen[4]), .S(n1376), .Y(
        n1534) );
  INVX1 U1692 ( .A(n1535), .Y(n2125) );
  MUX2X1 U1693 ( .B(\config_reg[2][3] ), .A(fft_man_arlen[3]), .S(n1376), .Y(
        n1535) );
  INVX1 U1694 ( .A(n1536), .Y(n2126) );
  MUX2X1 U1695 ( .B(\config_reg[2][2] ), .A(fft_man_arlen[2]), .S(n1376), .Y(
        n1536) );
  INVX1 U1696 ( .A(n1537), .Y(n2127) );
  MUX2X1 U1697 ( .B(\config_reg[2][1] ), .A(fft_man_arlen[1]), .S(n1377), .Y(
        n1537) );
  INVX1 U1698 ( .A(n1538), .Y(n2128) );
  MUX2X1 U1699 ( .B(\config_reg[2][0] ), .A(fft_man_arlen[0]), .S(n1377), .Y(
        n1538) );
  INVX1 U1700 ( .A(n1539), .Y(n2129) );
  MUX2X1 U1701 ( .B(\config_reg[1][31] ), .A(\configs[1][31] ), .S(n1377), .Y(
        n1539) );
  INVX1 U1702 ( .A(n1540), .Y(n2130) );
  MUX2X1 U1703 ( .B(\config_reg[1][30] ), .A(\configs[1][30] ), .S(n1377), .Y(
        n1540) );
  INVX1 U1704 ( .A(n1541), .Y(n2131) );
  MUX2X1 U1705 ( .B(\config_reg[1][29] ), .A(\configs[1][29] ), .S(n1377), .Y(
        n1541) );
  INVX1 U1706 ( .A(n1542), .Y(n2132) );
  MUX2X1 U1707 ( .B(\config_reg[1][28] ), .A(\configs[1][28] ), .S(n1377), .Y(
        n1542) );
  INVX1 U1708 ( .A(n1543), .Y(n2133) );
  MUX2X1 U1709 ( .B(\config_reg[1][27] ), .A(\configs[1][27] ), .S(n1377), .Y(
        n1543) );
  INVX1 U1710 ( .A(n1544), .Y(n2134) );
  MUX2X1 U1711 ( .B(\config_reg[1][26] ), .A(\configs[1][26] ), .S(n1377), .Y(
        n1544) );
  INVX1 U1712 ( .A(n1545), .Y(n2135) );
  MUX2X1 U1713 ( .B(\config_reg[1][25] ), .A(\configs[1][25] ), .S(n1377), .Y(
        n1545) );
  INVX1 U1714 ( .A(n1546), .Y(n2136) );
  MUX2X1 U1715 ( .B(\config_reg[1][24] ), .A(\configs[1][24] ), .S(n1377), .Y(
        n1546) );
  INVX1 U1716 ( .A(n1547), .Y(n2137) );
  MUX2X1 U1717 ( .B(\config_reg[1][23] ), .A(\configs[1][23] ), .S(n1377), .Y(
        n1547) );
  INVX1 U1718 ( .A(n1548), .Y(n2138) );
  MUX2X1 U1719 ( .B(\config_reg[1][22] ), .A(\configs[1][22] ), .S(n1377), .Y(
        n1548) );
  INVX1 U1720 ( .A(n1549), .Y(n2139) );
  MUX2X1 U1721 ( .B(\config_reg[1][21] ), .A(\configs[1][21] ), .S(n1377), .Y(
        n1549) );
  INVX1 U1722 ( .A(n1550), .Y(n2140) );
  MUX2X1 U1723 ( .B(\config_reg[1][20] ), .A(\configs[1][20] ), .S(n1378), .Y(
        n1550) );
  INVX1 U1724 ( .A(n1551), .Y(n2141) );
  MUX2X1 U1725 ( .B(\config_reg[1][19] ), .A(\configs[1][19] ), .S(n1378), .Y(
        n1551) );
  INVX1 U1726 ( .A(n1552), .Y(n2142) );
  MUX2X1 U1727 ( .B(\config_reg[1][18] ), .A(\configs[1][18] ), .S(n1378), .Y(
        n1552) );
  INVX1 U1728 ( .A(n1553), .Y(n2143) );
  MUX2X1 U1729 ( .B(\config_reg[1][17] ), .A(\configs[1][17] ), .S(n1378), .Y(
        n1553) );
  INVX1 U1730 ( .A(n1554), .Y(n2144) );
  MUX2X1 U1731 ( .B(\config_reg[1][16] ), .A(\configs[1][16] ), .S(n1378), .Y(
        n1554) );
  INVX1 U1732 ( .A(n1555), .Y(n2145) );
  MUX2X1 U1733 ( .B(\config_reg[1][15] ), .A(\configs[1][15] ), .S(n1378), .Y(
        n1555) );
  INVX1 U1734 ( .A(n1556), .Y(n2146) );
  MUX2X1 U1735 ( .B(\config_reg[1][14] ), .A(\configs[1][14] ), .S(n1378), .Y(
        n1556) );
  INVX1 U1736 ( .A(n1557), .Y(n2147) );
  MUX2X1 U1737 ( .B(\config_reg[1][13] ), .A(\configs[1][13] ), .S(n1378), .Y(
        n1557) );
  INVX1 U1738 ( .A(n1558), .Y(n2148) );
  MUX2X1 U1739 ( .B(\config_reg[1][12] ), .A(\configs[1][12] ), .S(n1378), .Y(
        n1558) );
  INVX1 U1740 ( .A(n1559), .Y(n2149) );
  MUX2X1 U1741 ( .B(\config_reg[1][11] ), .A(\configs[1][11] ), .S(n1378), .Y(
        n1559) );
  INVX1 U1742 ( .A(n1560), .Y(n2150) );
  MUX2X1 U1743 ( .B(\config_reg[1][10] ), .A(\configs[1][10] ), .S(n1378), .Y(
        n1560) );
  INVX1 U1744 ( .A(n1561), .Y(n2151) );
  MUX2X1 U1745 ( .B(\config_reg[1][9] ), .A(\configs[1][9] ), .S(n1378), .Y(
        n1561) );
  INVX1 U1746 ( .A(n1562), .Y(n2152) );
  MUX2X1 U1747 ( .B(\config_reg[1][8] ), .A(\configs[1][8] ), .S(n1378), .Y(
        n1562) );
  INVX1 U1748 ( .A(n1563), .Y(n2153) );
  MUX2X1 U1749 ( .B(\config_reg[1][7] ), .A(\configs[1][7] ), .S(n1379), .Y(
        n1563) );
  INVX1 U1750 ( .A(n1564), .Y(n2154) );
  MUX2X1 U1751 ( .B(\config_reg[1][6] ), .A(\configs[1][6] ), .S(n1379), .Y(
        n1564) );
  INVX1 U1752 ( .A(n1565), .Y(n2155) );
  MUX2X1 U1753 ( .B(\config_reg[1][5] ), .A(\configs[1][5] ), .S(n1379), .Y(
        n1565) );
  INVX1 U1754 ( .A(n1566), .Y(n2156) );
  MUX2X1 U1755 ( .B(\config_reg[1][4] ), .A(\configs[1][4] ), .S(n1379), .Y(
        n1566) );
  INVX1 U1756 ( .A(n1567), .Y(n2157) );
  MUX2X1 U1757 ( .B(\config_reg[1][3] ), .A(\configs[1][3] ), .S(n1379), .Y(
        n1567) );
  INVX1 U1758 ( .A(n1568), .Y(n2158) );
  MUX2X1 U1759 ( .B(\config_reg[1][2] ), .A(\configs[1][2] ), .S(n1379), .Y(
        n1568) );
  INVX1 U1760 ( .A(n1569), .Y(n2159) );
  MUX2X1 U1761 ( .B(\config_reg[1][1] ), .A(\configs[1][1] ), .S(n1379), .Y(
        n1569) );
  INVX1 U1762 ( .A(n1570), .Y(n2160) );
  MUX2X1 U1763 ( .B(\config_reg[1][0] ), .A(\configs[1][0] ), .S(n1379), .Y(
        n1570) );
  INVX1 U1764 ( .A(n1571), .Y(n2161) );
  MUX2X1 U1765 ( .B(N49), .A(r_frame_size[1]), .S(n1379), .Y(n1571) );
  INVX1 U1766 ( .A(n1572), .Y(n2162) );
  MUX2X1 U1767 ( .B(N50), .A(r_frame_size[2]), .S(n1379), .Y(n1572) );
  INVX1 U1768 ( .A(n1573), .Y(n2163) );
  MUX2X1 U1769 ( .B(N51), .A(r_frame_size[3]), .S(n1379), .Y(n1573) );
  INVX1 U1770 ( .A(n1574), .Y(n2164) );
  MUX2X1 U1771 ( .B(N52), .A(r_frame_size[4]), .S(n1379), .Y(n1574) );
  INVX1 U1772 ( .A(n1575), .Y(n2165) );
  MUX2X1 U1773 ( .B(N53), .A(r_frame_size[5]), .S(n1380), .Y(n1575) );
  INVX1 U1774 ( .A(n1576), .Y(n2166) );
  MUX2X1 U1775 ( .B(N54), .A(r_frame_size[6]), .S(n1380), .Y(n1576) );
  INVX1 U1776 ( .A(n1577), .Y(n2167) );
  MUX2X1 U1777 ( .B(N55), .A(r_frame_size[7]), .S(n1380), .Y(n1577) );
  INVX1 U1778 ( .A(n1578), .Y(n2168) );
  MUX2X1 U1779 ( .B(N56), .A(r_frame_size[8]), .S(n1380), .Y(n1578) );
  INVX1 U1780 ( .A(n1579), .Y(n2169) );
  MUX2X1 U1781 ( .B(N57), .A(r_frame_size[9]), .S(n1380), .Y(n1579) );
  INVX1 U1782 ( .A(n1580), .Y(n2170) );
  MUX2X1 U1783 ( .B(N58), .A(r_frame_size[10]), .S(n1380), .Y(n1580) );
  INVX1 U1784 ( .A(n1581), .Y(n2171) );
  MUX2X1 U1785 ( .B(N59), .A(w_frame_size[0]), .S(n1380), .Y(n1581) );
  INVX1 U1786 ( .A(n1582), .Y(n2172) );
  MUX2X1 U1787 ( .B(N60), .A(w_frame_size[1]), .S(n1380), .Y(n1582) );
  INVX1 U1788 ( .A(n1583), .Y(n2173) );
  MUX2X1 U1789 ( .B(N61), .A(w_frame_size[2]), .S(n1380), .Y(n1583) );
  INVX1 U1790 ( .A(n1584), .Y(n2174) );
  MUX2X1 U1791 ( .B(N62), .A(w_frame_size[3]), .S(n1380), .Y(n1584) );
  INVX1 U1792 ( .A(n1585), .Y(n2175) );
  MUX2X1 U1793 ( .B(N63), .A(w_frame_size[4]), .S(n1380), .Y(n1585) );
  INVX1 U1794 ( .A(n1586), .Y(n2176) );
  MUX2X1 U1795 ( .B(N64), .A(w_frame_size[5]), .S(n1380), .Y(n1586) );
  INVX1 U1796 ( .A(n1587), .Y(n2177) );
  MUX2X1 U1797 ( .B(N65), .A(w_frame_size[6]), .S(n1380), .Y(n1587) );
  INVX1 U1798 ( .A(n1588), .Y(n2178) );
  MUX2X1 U1799 ( .B(N66), .A(w_frame_size[7]), .S(n1381), .Y(n1588) );
  INVX1 U1800 ( .A(n1589), .Y(n2179) );
  MUX2X1 U1801 ( .B(N67), .A(w_frame_size[8]), .S(n1381), .Y(n1589) );
  INVX1 U1802 ( .A(n1590), .Y(n2180) );
  MUX2X1 U1803 ( .B(N68), .A(w_frame_size[9]), .S(n1381), .Y(n1590) );
  INVX1 U1804 ( .A(n1591), .Y(n2181) );
  MUX2X1 U1805 ( .B(N69), .A(w_frame_size[10]), .S(n1381), .Y(n1591) );
  INVX1 U1806 ( .A(n1592), .Y(n2182) );
  MUX2X1 U1807 ( .B(N48), .A(r_frame_size[0]), .S(n1381), .Y(n1592) );
  INVX1 U1808 ( .A(n1593), .Y(n2183) );
  MUX2X1 U1809 ( .B(N31), .A(frame_size[9]), .S(n1372), .Y(n1593) );
  INVX1 U1810 ( .A(n1595), .Y(n2184) );
  MUX2X1 U1811 ( .B(N30), .A(frame_size[8]), .S(n1372), .Y(n1595) );
  INVX1 U1812 ( .A(n1596), .Y(n2185) );
  MUX2X1 U1813 ( .B(N29), .A(frame_size[7]), .S(n1372), .Y(n1596) );
  INVX1 U1814 ( .A(n1597), .Y(n2186) );
  MUX2X1 U1815 ( .B(N28), .A(frame_size[6]), .S(n1372), .Y(n1597) );
  INVX1 U1816 ( .A(n1598), .Y(n2187) );
  MUX2X1 U1817 ( .B(N27), .A(frame_size[5]), .S(n1372), .Y(n1598) );
  INVX1 U1818 ( .A(n1599), .Y(n2188) );
  MUX2X1 U1819 ( .B(N26), .A(frame_size[4]), .S(n1372), .Y(n1599) );
  INVX1 U1820 ( .A(n1600), .Y(n2189) );
  MUX2X1 U1821 ( .B(N25), .A(frame_size[3]), .S(n1372), .Y(n1600) );
  INVX1 U1822 ( .A(n1601), .Y(n2190) );
  MUX2X1 U1823 ( .B(N24), .A(frame_size[2]), .S(n1372), .Y(n1601) );
  INVX1 U1824 ( .A(n1602), .Y(n2191) );
  MUX2X1 U1825 ( .B(N23), .A(frame_size[1]), .S(n1372), .Y(n1602) );
  INVX1 U1826 ( .A(n1603), .Y(n2192) );
  MUX2X1 U1827 ( .B(N22), .A(frame_size[0]), .S(n1372), .Y(n1603) );
  INVX1 U1828 ( .A(n1604), .Y(n1979) );
  MUX2X1 U1829 ( .B(N355), .A(fft_man_awaddr[31]), .S(n1368), .Y(n1604) );
  INVX1 U1830 ( .A(n1605), .Y(n1980) );
  MUX2X1 U1831 ( .B(N354), .A(fft_man_awaddr[30]), .S(n1368), .Y(n1605) );
  INVX1 U1832 ( .A(n1606), .Y(n1981) );
  MUX2X1 U1833 ( .B(N353), .A(fft_man_awaddr[29]), .S(n1368), .Y(n1606) );
  INVX1 U1834 ( .A(n1607), .Y(n1982) );
  MUX2X1 U1835 ( .B(N352), .A(fft_man_awaddr[28]), .S(n1368), .Y(n1607) );
  INVX1 U1836 ( .A(n1608), .Y(n1983) );
  MUX2X1 U1837 ( .B(N351), .A(fft_man_awaddr[27]), .S(n1368), .Y(n1608) );
  INVX1 U1838 ( .A(n1609), .Y(n1984) );
  MUX2X1 U1839 ( .B(N350), .A(fft_man_awaddr[26]), .S(n1368), .Y(n1609) );
  INVX1 U1840 ( .A(n1610), .Y(n1985) );
  MUX2X1 U1841 ( .B(N349), .A(fft_man_awaddr[25]), .S(n1368), .Y(n1610) );
  INVX1 U1842 ( .A(n1611), .Y(n1986) );
  MUX2X1 U1843 ( .B(N348), .A(fft_man_awaddr[24]), .S(n1368), .Y(n1611) );
  INVX1 U1844 ( .A(n1612), .Y(n1987) );
  MUX2X1 U1845 ( .B(N347), .A(fft_man_awaddr[23]), .S(n1368), .Y(n1612) );
  INVX1 U1846 ( .A(n1613), .Y(n1988) );
  MUX2X1 U1847 ( .B(N346), .A(fft_man_awaddr[22]), .S(n1368), .Y(n1613) );
  INVX1 U1848 ( .A(n1614), .Y(n1989) );
  MUX2X1 U1849 ( .B(N345), .A(fft_man_awaddr[21]), .S(n1368), .Y(n1614) );
  INVX1 U1850 ( .A(n1615), .Y(n1990) );
  MUX2X1 U1851 ( .B(N344), .A(fft_man_awaddr[20]), .S(n1368), .Y(n1615) );
  INVX1 U1852 ( .A(n1616), .Y(n1991) );
  MUX2X1 U1853 ( .B(N343), .A(fft_man_awaddr[19]), .S(n1368), .Y(n1616) );
  INVX1 U1854 ( .A(n1617), .Y(n1992) );
  MUX2X1 U1855 ( .B(N342), .A(fft_man_awaddr[18]), .S(n1368), .Y(n1617) );
  INVX1 U1856 ( .A(n1618), .Y(n1993) );
  MUX2X1 U1857 ( .B(N341), .A(fft_man_awaddr[17]), .S(n1368), .Y(n1618) );
  INVX1 U1858 ( .A(n1619), .Y(n1994) );
  MUX2X1 U1859 ( .B(N340), .A(fft_man_awaddr[16]), .S(n1368), .Y(n1619) );
  INVX1 U1860 ( .A(n1620), .Y(n1995) );
  MUX2X1 U1861 ( .B(N339), .A(fft_man_awaddr[15]), .S(n1368), .Y(n1620) );
  INVX1 U1862 ( .A(n1621), .Y(n1996) );
  MUX2X1 U1863 ( .B(N338), .A(fft_man_awaddr[14]), .S(n1368), .Y(n1621) );
  INVX1 U1864 ( .A(n1622), .Y(n1997) );
  MUX2X1 U1865 ( .B(N337), .A(fft_man_awaddr[13]), .S(n1368), .Y(n1622) );
  INVX1 U1866 ( .A(n1623), .Y(n1998) );
  MUX2X1 U1867 ( .B(N336), .A(fft_man_awaddr[12]), .S(n1368), .Y(n1623) );
  INVX1 U1868 ( .A(n1624), .Y(n751) );
  MUX2X1 U1869 ( .B(\configs[6][0] ), .A(windowing[0]), .S(n1372), .Y(n1624)
         );
  INVX1 U1870 ( .A(n1625), .Y(n749) );
  MUX2X1 U1871 ( .B(\configs[6][1] ), .A(windowing[1]), .S(n1372), .Y(n1625)
         );
  INVX1 U1872 ( .A(n1626), .Y(n747) );
  MUX2X1 U1873 ( .B(\configs[6][2] ), .A(windowing[2]), .S(n1372), .Y(n1626)
         );
  INVX1 U1874 ( .A(n1627), .Y(n745) );
  MUX2X1 U1875 ( .B(\configs[6][3] ), .A(windowing[3]), .S(n1372), .Y(n1627)
         );
  INVX1 U1876 ( .A(n1628), .Y(n743) );
  MUX2X1 U1877 ( .B(\configs[6][4] ), .A(windowing[4]), .S(n1372), .Y(n1628)
         );
  INVX1 U1878 ( .A(n1629), .Y(n741) );
  MUX2X1 U1879 ( .B(\configs[6][5] ), .A(windowing[5]), .S(n1372), .Y(n1629)
         );
  INVX1 U1880 ( .A(n1630), .Y(n739) );
  MUX2X1 U1881 ( .B(\configs[6][6] ), .A(windowing[6]), .S(n1372), .Y(n1630)
         );
  INVX1 U1882 ( .A(n1631), .Y(n737) );
  MUX2X1 U1883 ( .B(\configs[6][7] ), .A(windowing[7]), .S(n1372), .Y(n1631)
         );
  INVX1 U1884 ( .A(n1632), .Y(n735) );
  MUX2X1 U1885 ( .B(\configs[6][8] ), .A(windowing[8]), .S(n1372), .Y(n1632)
         );
  INVX1 U1886 ( .A(n1633), .Y(n733) );
  MUX2X1 U1887 ( .B(\configs[6][9] ), .A(windowing[9]), .S(n1372), .Y(n1633)
         );
  INVX1 U1888 ( .A(n1634), .Y(n731) );
  MUX2X1 U1889 ( .B(\configs[6][10] ), .A(windowing[10]), .S(n1372), .Y(n1634)
         );
  INVX1 U1890 ( .A(n1635), .Y(n729) );
  MUX2X1 U1891 ( .B(\configs[6][11] ), .A(windowing[11]), .S(n1372), .Y(n1635)
         );
  INVX1 U1892 ( .A(n1636), .Y(n727) );
  MUX2X1 U1893 ( .B(\configs[6][12] ), .A(windowing[12]), .S(n1372), .Y(n1636)
         );
  INVX1 U1894 ( .A(n1637), .Y(n725) );
  MUX2X1 U1895 ( .B(\configs[6][13] ), .A(windowing[13]), .S(n1372), .Y(n1637)
         );
  INVX1 U1896 ( .A(n1638), .Y(n723) );
  MUX2X1 U1897 ( .B(\configs[6][14] ), .A(windowing[14]), .S(n1372), .Y(n1638)
         );
  INVX1 U1898 ( .A(n1639), .Y(n721) );
  MUX2X1 U1899 ( .B(\configs[6][15] ), .A(windowing[15]), .S(n1372), .Y(n1639)
         );
  INVX1 U1900 ( .A(n1640), .Y(n719) );
  MUX2X1 U1901 ( .B(\configs[6][16] ), .A(windowing[16]), .S(n1372), .Y(n1640)
         );
  INVX1 U1902 ( .A(n1641), .Y(n717) );
  MUX2X1 U1903 ( .B(\configs[6][17] ), .A(windowing[17]), .S(n1372), .Y(n1641)
         );
  INVX1 U1904 ( .A(n1642), .Y(n715) );
  MUX2X1 U1905 ( .B(\configs[6][18] ), .A(windowing[18]), .S(n1372), .Y(n1642)
         );
  INVX1 U1906 ( .A(n1643), .Y(n713) );
  MUX2X1 U1907 ( .B(\configs[6][19] ), .A(windowing[19]), .S(n1372), .Y(n1643)
         );
  INVX1 U1908 ( .A(n1644), .Y(n711) );
  MUX2X1 U1909 ( .B(\configs[6][20] ), .A(windowing[20]), .S(n1372), .Y(n1644)
         );
  INVX1 U1910 ( .A(n1645), .Y(n709) );
  MUX2X1 U1911 ( .B(\configs[6][21] ), .A(windowing[21]), .S(n1372), .Y(n1645)
         );
  INVX1 U1912 ( .A(n1646), .Y(n707) );
  MUX2X1 U1913 ( .B(\configs[6][22] ), .A(windowing[22]), .S(n1372), .Y(n1646)
         );
  INVX1 U1914 ( .A(n1647), .Y(n705) );
  MUX2X1 U1915 ( .B(\configs[6][23] ), .A(windowing[23]), .S(n1372), .Y(n1647)
         );
  INVX1 U1916 ( .A(n1648), .Y(n703) );
  MUX2X1 U1917 ( .B(\configs[6][24] ), .A(windowing[24]), .S(n1372), .Y(n1648)
         );
  INVX1 U1918 ( .A(n1649), .Y(n701) );
  MUX2X1 U1919 ( .B(\configs[6][25] ), .A(windowing[25]), .S(n1372), .Y(n1649)
         );
  INVX1 U1920 ( .A(n1650), .Y(n699) );
  MUX2X1 U1921 ( .B(\configs[6][26] ), .A(windowing[26]), .S(n1372), .Y(n1650)
         );
  INVX1 U1922 ( .A(n1651), .Y(n697) );
  MUX2X1 U1923 ( .B(\configs[6][27] ), .A(windowing[27]), .S(n1372), .Y(n1651)
         );
  INVX1 U1924 ( .A(n1652), .Y(n695) );
  MUX2X1 U1925 ( .B(\configs[6][28] ), .A(windowing[28]), .S(n1372), .Y(n1652)
         );
  INVX1 U1926 ( .A(n1653), .Y(n693) );
  MUX2X1 U1927 ( .B(\configs[6][29] ), .A(windowing[29]), .S(n1372), .Y(n1653)
         );
  INVX1 U1928 ( .A(n1654), .Y(n691) );
  MUX2X1 U1929 ( .B(\configs[6][30] ), .A(windowing[30]), .S(n1372), .Y(n1654)
         );
  INVX1 U1930 ( .A(n1655), .Y(n689) );
  MUX2X1 U1931 ( .B(\configs[6][31] ), .A(windowing[31]), .S(n1372), .Y(n1655)
         );
  NAND2X1 U1932 ( .A(n1372), .B(n1656), .Y(n687) );
  INVX1 U1933 ( .A(load_size), .Y(n1656) );
  OAI21X1 U1934 ( .A(N16), .B(n1657), .C(n1658), .Y(n1360) );
  AOI21X1 U1935 ( .A(k[10]), .B(n1659), .C(n1660), .Y(n1658) );
  OAI21X1 U1936 ( .A(n1657), .B(n1661), .C(n1662), .Y(n1659) );
  INVX1 U1937 ( .A(n1663), .Y(n1662) );
  NAND2X1 U1938 ( .A(n1664), .B(n1665), .Y(n1359) );
  MUX2X1 U1939 ( .B(n1371), .A(n1369), .S(n1666), .Y(n1664) );
  OAI21X1 U1940 ( .A(n1667), .B(n1657), .C(n1668), .Y(n1358) );
  AOI21X1 U1941 ( .A(k[1]), .B(n1669), .C(n1670), .Y(n1668) );
  OAI21X1 U1942 ( .A(n1657), .B(n1666), .C(n1671), .Y(n1669) );
  INVX1 U1943 ( .A(k[0]), .Y(n1666) );
  NAND2X1 U1944 ( .A(n1672), .B(n1673), .Y(n1357) );
  MUX2X1 U1945 ( .B(n1674), .A(n1675), .S(n1676), .Y(n1672) );
  NOR2X1 U1946 ( .A(n1667), .B(n1657), .Y(n1675) );
  INVX1 U1947 ( .A(n1677), .Y(n1667) );
  OAI21X1 U1948 ( .A(n1678), .B(n1657), .C(n1679), .Y(n1356) );
  AOI21X1 U1949 ( .A(k[3]), .B(n1680), .C(n1681), .Y(n1679) );
  OAI21X1 U1950 ( .A(n1657), .B(n1676), .C(n1682), .Y(n1680) );
  INVX1 U1951 ( .A(n1674), .Y(n1682) );
  OAI21X1 U1952 ( .A(n1677), .B(n1657), .C(n1671), .Y(n1674) );
  NAND2X1 U1953 ( .A(n1683), .B(n1684), .Y(n1355) );
  MUX2X1 U1954 ( .B(n1685), .A(n1686), .S(n1687), .Y(n1683) );
  NOR2X1 U1955 ( .A(n1678), .B(n1657), .Y(n1686) );
  OAI21X1 U1956 ( .A(n1688), .B(n1657), .C(n1689), .Y(n1354) );
  AOI21X1 U1957 ( .A(k[5]), .B(n1690), .C(n1691), .Y(n1689) );
  OAI21X1 U1958 ( .A(n1657), .B(n1687), .C(n1692), .Y(n1690) );
  INVX1 U1959 ( .A(n1685), .Y(n1692) );
  OAI21X1 U1960 ( .A(n1693), .B(n1657), .C(n1671), .Y(n1685) );
  NAND2X1 U1961 ( .A(n1694), .B(n1695), .Y(n1353) );
  MUX2X1 U1962 ( .B(n1696), .A(n1697), .S(n1698), .Y(n1694) );
  NOR2X1 U1963 ( .A(n1688), .B(n1657), .Y(n1697) );
  OAI21X1 U1964 ( .A(n1699), .B(n1657), .C(n1700), .Y(n1352) );
  AOI21X1 U1965 ( .A(k[7]), .B(n1701), .C(n1702), .Y(n1700) );
  OAI21X1 U1966 ( .A(n1657), .B(n1698), .C(n1703), .Y(n1701) );
  INVX1 U1967 ( .A(n1696), .Y(n1703) );
  OAI21X1 U1968 ( .A(n1704), .B(n1657), .C(n1671), .Y(n1696) );
  INVX1 U1969 ( .A(n1453), .Y(n1671) );
  OAI21X1 U1970 ( .A(n1705), .B(n1706), .C(n1707), .Y(n1351) );
  NOR2X1 U1971 ( .A(n1708), .B(n1709), .Y(n1707) );
  NAND2X1 U1972 ( .A(n1710), .B(n1711), .Y(n1350) );
  MUX2X1 U1973 ( .B(n1663), .A(n1709), .S(n1661), .Y(n1710) );
  NOR3X1 U1974 ( .A(n1699), .B(k[8]), .C(n1657), .Y(n1709) );
  OAI21X1 U1975 ( .A(n1657), .B(n1706), .C(n1705), .Y(n1663) );
  AOI21X1 U1976 ( .A(n1699), .B(n1452), .C(n1371), .Y(n1705) );
  NOR2X1 U1977 ( .A(n1712), .B(n1371), .Y(n1452) );
  AOI21X1 U1978 ( .A(n1403), .B(k_gt_0), .C(n1391), .Y(n1453) );
  OAI21X1 U1979 ( .A(N17), .B(n1713), .C(n1714), .Y(n1349) );
  AOI21X1 U1980 ( .A(j[10]), .B(n1715), .C(n1660), .Y(n1714) );
  INVX1 U1981 ( .A(n1716), .Y(n1660) );
  OAI21X1 U1982 ( .A(n1713), .B(n1717), .C(n1718), .Y(n1715) );
  INVX1 U1983 ( .A(n1719), .Y(n1718) );
  NAND2X1 U1984 ( .A(n1720), .B(n1665), .Y(n1348) );
  MUX2X1 U1985 ( .B(n1419), .A(n1370), .S(n1721), .Y(n1720) );
  OAI21X1 U1986 ( .A(n1713), .B(n1722), .C(n1723), .Y(n1347) );
  AOI21X1 U1987 ( .A(j[1]), .B(n1724), .C(n1670), .Y(n1723) );
  INVX1 U1988 ( .A(n1725), .Y(n1670) );
  OAI21X1 U1989 ( .A(n1713), .B(n1721), .C(n1726), .Y(n1724) );
  INVX1 U1990 ( .A(j[0]), .Y(n1721) );
  NAND2X1 U1991 ( .A(n1727), .B(n1673), .Y(n1346) );
  MUX2X1 U1992 ( .B(n1728), .A(n1729), .S(n1730), .Y(n1727) );
  NOR2X1 U1993 ( .A(n1713), .B(n1722), .Y(n1729) );
  INVX1 U1994 ( .A(n1731), .Y(n1722) );
  OAI21X1 U1995 ( .A(n1713), .B(n1732), .C(n1733), .Y(n1345) );
  AOI21X1 U1996 ( .A(j[3]), .B(n1734), .C(n1681), .Y(n1733) );
  INVX1 U1997 ( .A(n1735), .Y(n1681) );
  OAI21X1 U1998 ( .A(n1713), .B(n1730), .C(n1736), .Y(n1734) );
  INVX1 U1999 ( .A(n1728), .Y(n1736) );
  OAI21X1 U2000 ( .A(n1731), .B(n1713), .C(n1726), .Y(n1728) );
  NAND2X1 U2001 ( .A(n1737), .B(n1684), .Y(n1344) );
  MUX2X1 U2002 ( .B(n1738), .A(n1739), .S(n1740), .Y(n1737) );
  NOR2X1 U2003 ( .A(n1713), .B(n1732), .Y(n1739) );
  OAI21X1 U2004 ( .A(n1713), .B(n1741), .C(n1742), .Y(n1343) );
  AOI21X1 U2005 ( .A(j[5]), .B(n1743), .C(n1691), .Y(n1742) );
  INVX1 U2006 ( .A(n1744), .Y(n1691) );
  OAI21X1 U2007 ( .A(n1713), .B(n1740), .C(n1745), .Y(n1743) );
  INVX1 U2008 ( .A(n1738), .Y(n1745) );
  OAI21X1 U2009 ( .A(n1746), .B(n1713), .C(n1726), .Y(n1738) );
  NAND2X1 U2010 ( .A(n1747), .B(n1695), .Y(n1342) );
  MUX2X1 U2011 ( .B(n1748), .A(n1749), .S(n1750), .Y(n1747) );
  NOR2X1 U2012 ( .A(n1713), .B(n1741), .Y(n1749) );
  OAI21X1 U2013 ( .A(n1713), .B(n1751), .C(n1752), .Y(n1341) );
  AOI21X1 U2014 ( .A(j[7]), .B(n1753), .C(n1702), .Y(n1752) );
  INVX1 U2015 ( .A(n1754), .Y(n1702) );
  OAI21X1 U2016 ( .A(n1713), .B(n1750), .C(n1755), .Y(n1753) );
  INVX1 U2017 ( .A(n1748), .Y(n1755) );
  OAI21X1 U2018 ( .A(n1756), .B(n1713), .C(n1726), .Y(n1748) );
  OAI21X1 U2019 ( .A(n1757), .B(n1758), .C(n1759), .Y(n1340) );
  NOR2X1 U2020 ( .A(n1708), .B(n1760), .Y(n1759) );
  INVX1 U2021 ( .A(n1761), .Y(n1708) );
  NAND2X1 U2022 ( .A(n1762), .B(n1711), .Y(n1339) );
  MUX2X1 U2023 ( .B(n1719), .A(n1760), .S(n1717), .Y(n1762) );
  NOR3X1 U2024 ( .A(n1713), .B(j[8]), .C(n1751), .Y(n1760) );
  OAI21X1 U2025 ( .A(n1713), .B(n1758), .C(n1757), .Y(n1719) );
  AOI21X1 U2026 ( .A(n1751), .B(n1418), .C(n1419), .Y(n1757) );
  NOR2X1 U2027 ( .A(n1712), .B(n1419), .Y(n1418) );
  NAND2X1 U2028 ( .A(n1379), .B(n1763), .Y(n1726) );
  XNOR2X1 U2029 ( .A(n1764), .B(n1765), .Y(n1338) );
  OAI21X1 U2030 ( .A(n1712), .B(n1766), .C(n1378), .Y(n1764) );
  OR2X1 U2031 ( .A(N16), .B(N17), .Y(n1766) );
  INVX1 U2032 ( .A(n1403), .Y(n1712) );
  INVX1 U2033 ( .A(n1767), .Y(n1337) );
  MUX2X1 U2034 ( .B(\config_reg[0][11] ), .A(\configs[0][11] ), .S(n1381), .Y(
        n1767) );
  INVX1 U2035 ( .A(n1768), .Y(n1336) );
  MUX2X1 U2036 ( .B(\config_reg[0][12] ), .A(\configs[0][12] ), .S(n1381), .Y(
        n1768) );
  INVX1 U2037 ( .A(n1769), .Y(n1335) );
  MUX2X1 U2038 ( .B(\config_reg[0][13] ), .A(\configs[0][13] ), .S(n1381), .Y(
        n1769) );
  INVX1 U2039 ( .A(n1770), .Y(n1334) );
  MUX2X1 U2040 ( .B(\config_reg[0][14] ), .A(\configs[0][14] ), .S(n1381), .Y(
        n1770) );
  INVX1 U2041 ( .A(n1771), .Y(n1333) );
  MUX2X1 U2042 ( .B(\config_reg[0][15] ), .A(\configs[0][15] ), .S(n1381), .Y(
        n1771) );
  INVX1 U2043 ( .A(n1772), .Y(n1332) );
  MUX2X1 U2044 ( .B(\config_reg[0][16] ), .A(\configs[0][16] ), .S(n1381), .Y(
        n1772) );
  INVX1 U2045 ( .A(n1773), .Y(n1331) );
  MUX2X1 U2046 ( .B(\config_reg[0][17] ), .A(\configs[0][17] ), .S(n1381), .Y(
        n1773) );
  INVX1 U2047 ( .A(n1774), .Y(n1330) );
  MUX2X1 U2048 ( .B(\config_reg[0][18] ), .A(\configs[0][18] ), .S(n1381), .Y(
        n1774) );
  INVX1 U2049 ( .A(n1775), .Y(n1329) );
  MUX2X1 U2050 ( .B(\config_reg[0][19] ), .A(\configs[0][19] ), .S(n1382), .Y(
        n1775) );
  INVX1 U2051 ( .A(n1776), .Y(n1328) );
  MUX2X1 U2052 ( .B(\config_reg[0][20] ), .A(\configs[0][20] ), .S(n1382), .Y(
        n1776) );
  INVX1 U2053 ( .A(n1777), .Y(n1327) );
  MUX2X1 U2054 ( .B(\config_reg[0][21] ), .A(\configs[0][21] ), .S(n1382), .Y(
        n1777) );
  INVX1 U2055 ( .A(n1778), .Y(n1326) );
  MUX2X1 U2056 ( .B(\config_reg[0][22] ), .A(\configs[0][22] ), .S(n1382), .Y(
        n1778) );
  INVX1 U2057 ( .A(n1779), .Y(n1325) );
  MUX2X1 U2058 ( .B(\config_reg[0][23] ), .A(\configs[0][23] ), .S(n1382), .Y(
        n1779) );
  INVX1 U2059 ( .A(n1780), .Y(n1324) );
  MUX2X1 U2060 ( .B(\config_reg[0][24] ), .A(\configs[0][24] ), .S(n1382), .Y(
        n1780) );
  INVX1 U2061 ( .A(n1781), .Y(n1323) );
  MUX2X1 U2062 ( .B(\config_reg[0][25] ), .A(\configs[0][25] ), .S(n1382), .Y(
        n1781) );
  INVX1 U2063 ( .A(n1782), .Y(n1322) );
  MUX2X1 U2064 ( .B(\config_reg[0][26] ), .A(\configs[0][26] ), .S(n1382), .Y(
        n1782) );
  INVX1 U2065 ( .A(n1783), .Y(n1321) );
  MUX2X1 U2066 ( .B(\config_reg[0][27] ), .A(\configs[0][27] ), .S(n1382), .Y(
        n1783) );
  INVX1 U2067 ( .A(n1784), .Y(n1320) );
  MUX2X1 U2068 ( .B(\config_reg[0][28] ), .A(\configs[0][28] ), .S(n1382), .Y(
        n1784) );
  INVX1 U2069 ( .A(n1785), .Y(n1319) );
  MUX2X1 U2070 ( .B(\config_reg[0][29] ), .A(\configs[0][29] ), .S(n1382), .Y(
        n1785) );
  INVX1 U2071 ( .A(n1786), .Y(n1318) );
  MUX2X1 U2072 ( .B(\config_reg[0][30] ), .A(\configs[0][30] ), .S(n1382), .Y(
        n1786) );
  INVX1 U2073 ( .A(n1787), .Y(n1317) );
  MUX2X1 U2074 ( .B(\config_reg[0][31] ), .A(\configs[0][31] ), .S(n1382), .Y(
        n1787) );
  OAI21X1 U2075 ( .A(n1368), .B(n1788), .C(n1789), .Y(n1316) );
  AOI22X1 U2076 ( .A(fft_man_araddr[0]), .B(n1366), .C(N242), .D(n1790), .Y(
        n1789) );
  INVX1 U2077 ( .A(N209), .Y(n1788) );
  OAI21X1 U2078 ( .A(n1368), .B(n1791), .C(n1792), .Y(n1315) );
  AOI22X1 U2079 ( .A(fft_man_araddr[31]), .B(n1366), .C(N273), .D(n1790), .Y(
        n1792) );
  INVX1 U2080 ( .A(N240), .Y(n1791) );
  OAI21X1 U2081 ( .A(n1368), .B(n1793), .C(n1794), .Y(n1314) );
  AOI22X1 U2082 ( .A(fft_man_araddr[30]), .B(n1366), .C(N272), .D(n1790), .Y(
        n1794) );
  INVX1 U2083 ( .A(N239), .Y(n1793) );
  OAI21X1 U2084 ( .A(n1368), .B(n1795), .C(n1796), .Y(n1313) );
  AOI22X1 U2085 ( .A(fft_man_araddr[29]), .B(n1366), .C(N271), .D(n1790), .Y(
        n1796) );
  INVX1 U2086 ( .A(N238), .Y(n1795) );
  OAI21X1 U2087 ( .A(n1368), .B(n1797), .C(n1798), .Y(n1312) );
  AOI22X1 U2088 ( .A(fft_man_araddr[28]), .B(n1366), .C(N270), .D(n1790), .Y(
        n1798) );
  INVX1 U2089 ( .A(N237), .Y(n1797) );
  OAI21X1 U2090 ( .A(n1368), .B(n1799), .C(n1800), .Y(n1311) );
  AOI22X1 U2091 ( .A(fft_man_araddr[27]), .B(n1366), .C(N269), .D(n1790), .Y(
        n1800) );
  INVX1 U2092 ( .A(N236), .Y(n1799) );
  OAI21X1 U2093 ( .A(n1368), .B(n1801), .C(n1802), .Y(n1310) );
  AOI22X1 U2094 ( .A(fft_man_araddr[26]), .B(n1366), .C(N268), .D(n1790), .Y(
        n1802) );
  INVX1 U2095 ( .A(N235), .Y(n1801) );
  OAI21X1 U2096 ( .A(n1368), .B(n1803), .C(n1804), .Y(n1309) );
  AOI22X1 U2097 ( .A(fft_man_araddr[25]), .B(n1366), .C(N267), .D(n1790), .Y(
        n1804) );
  INVX1 U2098 ( .A(N234), .Y(n1803) );
  OAI21X1 U2099 ( .A(n1368), .B(n1805), .C(n1806), .Y(n1308) );
  AOI22X1 U2100 ( .A(fft_man_araddr[24]), .B(n1366), .C(N266), .D(n1790), .Y(
        n1806) );
  INVX1 U2101 ( .A(N233), .Y(n1805) );
  OAI21X1 U2102 ( .A(n1368), .B(n1807), .C(n1808), .Y(n1307) );
  AOI22X1 U2103 ( .A(fft_man_araddr[23]), .B(n1366), .C(N265), .D(n1790), .Y(
        n1808) );
  INVX1 U2104 ( .A(N232), .Y(n1807) );
  OAI21X1 U2105 ( .A(n1368), .B(n1809), .C(n1810), .Y(n1306) );
  AOI22X1 U2106 ( .A(fft_man_araddr[22]), .B(n1366), .C(N264), .D(n1790), .Y(
        n1810) );
  INVX1 U2107 ( .A(N231), .Y(n1809) );
  OAI21X1 U2108 ( .A(n1368), .B(n1811), .C(n1812), .Y(n1305) );
  AOI22X1 U2109 ( .A(fft_man_araddr[21]), .B(n1366), .C(N263), .D(n1790), .Y(
        n1812) );
  INVX1 U2110 ( .A(N230), .Y(n1811) );
  OAI21X1 U2111 ( .A(n1368), .B(n1813), .C(n1814), .Y(n1304) );
  AOI22X1 U2112 ( .A(fft_man_araddr[20]), .B(n1366), .C(N262), .D(n1790), .Y(
        n1814) );
  INVX1 U2113 ( .A(N229), .Y(n1813) );
  OAI21X1 U2114 ( .A(n1368), .B(n1815), .C(n1816), .Y(n1303) );
  AOI22X1 U2115 ( .A(fft_man_araddr[19]), .B(n1366), .C(N261), .D(n1790), .Y(
        n1816) );
  INVX1 U2116 ( .A(N228), .Y(n1815) );
  OAI21X1 U2117 ( .A(n1368), .B(n1817), .C(n1818), .Y(n1302) );
  AOI22X1 U2118 ( .A(fft_man_araddr[18]), .B(n1366), .C(N260), .D(n1790), .Y(
        n1818) );
  INVX1 U2119 ( .A(N227), .Y(n1817) );
  OAI21X1 U2120 ( .A(n1368), .B(n1819), .C(n1820), .Y(n1301) );
  AOI22X1 U2121 ( .A(fft_man_araddr[17]), .B(n1366), .C(N259), .D(n1790), .Y(
        n1820) );
  INVX1 U2122 ( .A(N226), .Y(n1819) );
  OAI21X1 U2123 ( .A(n1368), .B(n1821), .C(n1822), .Y(n1300) );
  AOI22X1 U2124 ( .A(fft_man_araddr[16]), .B(n1366), .C(N258), .D(n1790), .Y(
        n1822) );
  INVX1 U2125 ( .A(N225), .Y(n1821) );
  OAI21X1 U2126 ( .A(n1368), .B(n1823), .C(n1824), .Y(n1299) );
  AOI22X1 U2127 ( .A(fft_man_araddr[15]), .B(n1366), .C(N257), .D(n1790), .Y(
        n1824) );
  INVX1 U2128 ( .A(N224), .Y(n1823) );
  OAI21X1 U2129 ( .A(n1368), .B(n1825), .C(n1826), .Y(n1298) );
  AOI22X1 U2130 ( .A(fft_man_araddr[14]), .B(n1366), .C(N256), .D(n1790), .Y(
        n1826) );
  INVX1 U2131 ( .A(N223), .Y(n1825) );
  OAI21X1 U2132 ( .A(n1368), .B(n1827), .C(n1828), .Y(n1297) );
  AOI22X1 U2133 ( .A(fft_man_araddr[13]), .B(n1366), .C(N255), .D(n1790), .Y(
        n1828) );
  INVX1 U2134 ( .A(N222), .Y(n1827) );
  OAI21X1 U2135 ( .A(n1368), .B(n1829), .C(n1830), .Y(n1296) );
  AOI22X1 U2136 ( .A(fft_man_araddr[12]), .B(n1366), .C(N254), .D(n1790), .Y(
        n1830) );
  INVX1 U2137 ( .A(N221), .Y(n1829) );
  OAI21X1 U2138 ( .A(n1368), .B(n1831), .C(n1832), .Y(n1295) );
  AOI22X1 U2139 ( .A(fft_man_araddr[11]), .B(n1366), .C(N253), .D(n1790), .Y(
        n1832) );
  INVX1 U2140 ( .A(N220), .Y(n1831) );
  OAI21X1 U2141 ( .A(n1368), .B(n1833), .C(n1834), .Y(n1294) );
  AOI22X1 U2142 ( .A(fft_man_araddr[10]), .B(n1366), .C(N252), .D(n1790), .Y(
        n1834) );
  INVX1 U2143 ( .A(N219), .Y(n1833) );
  OAI21X1 U2144 ( .A(n1368), .B(n1835), .C(n1836), .Y(n1293) );
  AOI22X1 U2145 ( .A(fft_man_araddr[9]), .B(n1366), .C(N251), .D(n1790), .Y(
        n1836) );
  INVX1 U2146 ( .A(N218), .Y(n1835) );
  OAI21X1 U2147 ( .A(n1368), .B(n1837), .C(n1838), .Y(n1292) );
  AOI22X1 U2148 ( .A(fft_man_araddr[8]), .B(n1366), .C(N250), .D(n1790), .Y(
        n1838) );
  INVX1 U2149 ( .A(N217), .Y(n1837) );
  OAI21X1 U2150 ( .A(n1368), .B(n1839), .C(n1840), .Y(n1291) );
  AOI22X1 U2151 ( .A(fft_man_araddr[7]), .B(n1366), .C(N249), .D(n1790), .Y(
        n1840) );
  INVX1 U2152 ( .A(N216), .Y(n1839) );
  OAI21X1 U2153 ( .A(n1368), .B(n1841), .C(n1842), .Y(n1290) );
  AOI22X1 U2154 ( .A(fft_man_araddr[6]), .B(n1366), .C(N248), .D(n1790), .Y(
        n1842) );
  INVX1 U2155 ( .A(N215), .Y(n1841) );
  OAI21X1 U2156 ( .A(n1368), .B(n1843), .C(n1844), .Y(n1289) );
  AOI22X1 U2157 ( .A(fft_man_araddr[5]), .B(n1366), .C(N247), .D(n1790), .Y(
        n1844) );
  INVX1 U2158 ( .A(N214), .Y(n1843) );
  OAI21X1 U2159 ( .A(n1368), .B(n1845), .C(n1846), .Y(n1288) );
  AOI22X1 U2160 ( .A(fft_man_araddr[4]), .B(n1366), .C(N246), .D(n1790), .Y(
        n1846) );
  INVX1 U2161 ( .A(N213), .Y(n1845) );
  OAI21X1 U2162 ( .A(n1368), .B(n1847), .C(n1848), .Y(n1287) );
  AOI22X1 U2163 ( .A(fft_man_araddr[3]), .B(n1366), .C(N245), .D(n1790), .Y(
        n1848) );
  INVX1 U2164 ( .A(N212), .Y(n1847) );
  OAI21X1 U2165 ( .A(n1368), .B(n1849), .C(n1850), .Y(n1286) );
  AOI22X1 U2166 ( .A(fft_man_araddr[2]), .B(n1366), .C(N244), .D(n1790), .Y(
        n1850) );
  INVX1 U2167 ( .A(N211), .Y(n1849) );
  OAI21X1 U2168 ( .A(n1368), .B(n1851), .C(n1852), .Y(n1285) );
  AOI22X1 U2169 ( .A(fft_man_araddr[1]), .B(n1366), .C(N243), .D(n1790), .Y(
        n1852) );
  NAND3X1 U2170 ( .A(n1854), .B(n1855), .C(n1856), .Y(n1853) );
  NOR2X1 U2171 ( .A(n1857), .B(n1858), .Y(n1856) );
  NAND3X1 U2172 ( .A(n1859), .B(n1860), .C(n1861), .Y(n1858) );
  NOR2X1 U2173 ( .A(n1367), .B(n1862), .Y(n1861) );
  AOI22X1 U2174 ( .A(n1863), .B(n1864), .C(n1865), .D(n1866), .Y(n1862) );
  NOR2X1 U2175 ( .A(n1867), .B(n1868), .Y(n1866) );
  NAND3X1 U2176 ( .A(n1869), .B(n1870), .C(n1871), .Y(n1868) );
  XNOR2X1 U2177 ( .A(\configs[0][5] ), .B(k[5]), .Y(n1871) );
  XNOR2X1 U2178 ( .A(\configs[0][10] ), .B(k[10]), .Y(n1870) );
  XNOR2X1 U2179 ( .A(\configs[0][4] ), .B(k[4]), .Y(n1869) );
  NAND3X1 U2180 ( .A(n1872), .B(n1873), .C(n1874), .Y(n1867) );
  XNOR2X1 U2181 ( .A(\configs[0][8] ), .B(k[8]), .Y(n1874) );
  XNOR2X1 U2182 ( .A(\configs[0][9] ), .B(k[9]), .Y(n1873) );
  XNOR2X1 U2183 ( .A(\configs[0][0] ), .B(k[0]), .Y(n1872) );
  NOR2X1 U2184 ( .A(n1875), .B(n1876), .Y(n1865) );
  NAND2X1 U2185 ( .A(n1877), .B(n1878), .Y(n1876) );
  XNOR2X1 U2186 ( .A(\configs[0][3] ), .B(k[3]), .Y(n1878) );
  XNOR2X1 U2187 ( .A(\configs[0][7] ), .B(k[7]), .Y(n1877) );
  NAND3X1 U2188 ( .A(n1879), .B(n1880), .C(n1881), .Y(n1875) );
  XNOR2X1 U2189 ( .A(\configs[0][6] ), .B(k[6]), .Y(n1881) );
  XNOR2X1 U2190 ( .A(\configs[0][1] ), .B(k[1]), .Y(n1880) );
  XNOR2X1 U2191 ( .A(\configs[0][2] ), .B(k[2]), .Y(n1879) );
  NOR2X1 U2192 ( .A(n1882), .B(n1883), .Y(n1864) );
  NAND3X1 U2193 ( .A(n1884), .B(n1885), .C(n1886), .Y(n1883) );
  XNOR2X1 U2194 ( .A(\configs[0][5] ), .B(j[5]), .Y(n1886) );
  XNOR2X1 U2195 ( .A(\configs[0][10] ), .B(j[10]), .Y(n1885) );
  XNOR2X1 U2196 ( .A(\configs[0][4] ), .B(j[4]), .Y(n1884) );
  NAND3X1 U2197 ( .A(n1887), .B(n1888), .C(n1889), .Y(n1882) );
  XNOR2X1 U2198 ( .A(\configs[0][8] ), .B(j[8]), .Y(n1889) );
  XNOR2X1 U2199 ( .A(\configs[0][9] ), .B(j[9]), .Y(n1888) );
  XNOR2X1 U2200 ( .A(\configs[0][0] ), .B(j[0]), .Y(n1887) );
  NOR2X1 U2201 ( .A(n1890), .B(n1891), .Y(n1863) );
  NAND2X1 U2202 ( .A(n1892), .B(n1893), .Y(n1891) );
  XNOR2X1 U2203 ( .A(\configs[0][3] ), .B(j[3]), .Y(n1893) );
  XNOR2X1 U2204 ( .A(\configs[0][7] ), .B(j[7]), .Y(n1892) );
  NAND3X1 U2205 ( .A(n1894), .B(n1895), .C(n1896), .Y(n1890) );
  XNOR2X1 U2206 ( .A(\configs[0][6] ), .B(j[6]), .Y(n1896) );
  XNOR2X1 U2207 ( .A(\configs[0][1] ), .B(j[1]), .Y(n1895) );
  XNOR2X1 U2208 ( .A(\configs[0][2] ), .B(j[2]), .Y(n1894) );
  INVX1 U2209 ( .A(\configs[0][11] ), .Y(n1860) );
  NOR2X1 U2210 ( .A(\configs[0][13] ), .B(\configs[0][12] ), .Y(n1859) );
  NAND2X1 U2211 ( .A(n1897), .B(n1898), .Y(n1857) );
  NOR3X1 U2212 ( .A(\configs[0][15] ), .B(\configs[0][16] ), .C(
        \configs[0][14] ), .Y(n1898) );
  NOR3X1 U2213 ( .A(\configs[0][18] ), .B(\configs[0][19] ), .C(
        \configs[0][17] ), .Y(n1897) );
  AND2X1 U2214 ( .A(n1899), .B(n1900), .Y(n1855) );
  NOR3X1 U2215 ( .A(\configs[0][27] ), .B(\configs[0][28] ), .C(
        \configs[0][26] ), .Y(n1900) );
  NOR3X1 U2216 ( .A(\configs[0][30] ), .B(\configs[0][31] ), .C(
        \configs[0][29] ), .Y(n1899) );
  AND2X1 U2217 ( .A(n1901), .B(n1902), .Y(n1854) );
  NOR3X1 U2218 ( .A(\configs[0][21] ), .B(\configs[0][22] ), .C(
        \configs[0][20] ), .Y(n1902) );
  NOR3X1 U2219 ( .A(\configs[0][24] ), .B(\configs[0][25] ), .C(
        \configs[0][23] ), .Y(n1901) );
  INVX1 U2220 ( .A(N210), .Y(n1851) );
  NAND3X1 U2221 ( .A(n1903), .B(n1393), .C(next_wstate[0]), .Y(n1405) );
  NAND3X1 U2222 ( .A(n1904), .B(n1763), .C(n1905), .Y(next_wstate[0]) );
  AOI22X1 U2223 ( .A(N359), .B(n1906), .C(fft_man_awvalid), .D(n1907), .Y(
        n1905) );
  INVX1 U2224 ( .A(fft_man_awready), .Y(n1907) );
  INVX1 U2225 ( .A(fft_man_bvalid), .Y(n1906) );
  NAND3X1 U2226 ( .A(j_eq_k), .B(n1403), .C(j_gt_0), .Y(n1763) );
  NOR2X1 U2227 ( .A(n1765), .B(n1372), .Y(n1403) );
  NAND3X1 U2228 ( .A(n1908), .B(n1909), .C(n1910), .Y(n1594) );
  NOR2X1 U2229 ( .A(wstate[1]), .B(wstate[0]), .Y(n1910) );
  NAND3X1 U2230 ( .A(fft_man_wlast), .B(n1395), .C(fft_man_wready), .Y(n1904)
         );
  OAI21X1 U2231 ( .A(n1389), .B(n1911), .C(n1665), .Y(n1262) );
  NAND2X1 U2232 ( .A(\config_reg[0][0] ), .B(n1389), .Y(n1665) );
  INVX1 U2233 ( .A(\configs[0][0] ), .Y(n1911) );
  OAI21X1 U2234 ( .A(n1390), .B(n1912), .C(n1725), .Y(n1261) );
  NAND2X1 U2235 ( .A(\config_reg[0][1] ), .B(n1390), .Y(n1725) );
  INVX1 U2236 ( .A(\configs[0][1] ), .Y(n1912) );
  OAI21X1 U2237 ( .A(n1390), .B(n1913), .C(n1673), .Y(n1260) );
  NAND2X1 U2238 ( .A(\config_reg[0][2] ), .B(n1391), .Y(n1673) );
  INVX1 U2239 ( .A(\configs[0][2] ), .Y(n1913) );
  OAI21X1 U2240 ( .A(n1390), .B(n1914), .C(n1735), .Y(n1259) );
  NAND2X1 U2241 ( .A(\config_reg[0][3] ), .B(n1391), .Y(n1735) );
  INVX1 U2242 ( .A(\configs[0][3] ), .Y(n1914) );
  OAI21X1 U2243 ( .A(n1391), .B(n1915), .C(n1684), .Y(n1258) );
  NAND2X1 U2244 ( .A(\config_reg[0][4] ), .B(n1391), .Y(n1684) );
  INVX1 U2245 ( .A(\configs[0][4] ), .Y(n1915) );
  OAI21X1 U2246 ( .A(n1390), .B(n1916), .C(n1744), .Y(n1257) );
  NAND2X1 U2247 ( .A(\config_reg[0][5] ), .B(n1391), .Y(n1744) );
  INVX1 U2248 ( .A(\configs[0][5] ), .Y(n1916) );
  OAI21X1 U2249 ( .A(n1390), .B(n1917), .C(n1695), .Y(n1256) );
  NAND2X1 U2250 ( .A(\config_reg[0][6] ), .B(n1391), .Y(n1695) );
  INVX1 U2251 ( .A(\configs[0][6] ), .Y(n1917) );
  OAI21X1 U2252 ( .A(n1390), .B(n1918), .C(n1754), .Y(n1255) );
  NAND2X1 U2253 ( .A(\config_reg[0][7] ), .B(n1391), .Y(n1754) );
  INVX1 U2254 ( .A(\configs[0][7] ), .Y(n1918) );
  OAI21X1 U2255 ( .A(n1389), .B(n1919), .C(n1761), .Y(n1254) );
  NAND2X1 U2256 ( .A(\config_reg[0][8] ), .B(n1392), .Y(n1761) );
  INVX1 U2257 ( .A(\configs[0][8] ), .Y(n1919) );
  OAI21X1 U2258 ( .A(n1389), .B(n1920), .C(n1711), .Y(n1253) );
  NAND2X1 U2259 ( .A(\config_reg[0][9] ), .B(n1392), .Y(n1711) );
  INVX1 U2260 ( .A(\configs[0][9] ), .Y(n1920) );
  OAI21X1 U2261 ( .A(n1389), .B(n1921), .C(n1716), .Y(n1252) );
  NAND2X1 U2262 ( .A(\config_reg[0][10] ), .B(n1391), .Y(n1716) );
  INVX1 U2263 ( .A(\configs[0][10] ), .Y(n1921) );
  INVX1 U2264 ( .A(n1922), .Y(n1165) );
  MUX2X1 U2265 ( .B(\config_reg[6][0] ), .A(\configs[6][0] ), .S(n1383), .Y(
        n1922) );
  INVX1 U2266 ( .A(n1923), .Y(n1164) );
  MUX2X1 U2267 ( .B(\config_reg[6][1] ), .A(\configs[6][1] ), .S(n1383), .Y(
        n1923) );
  INVX1 U2268 ( .A(n1924), .Y(n1163) );
  MUX2X1 U2269 ( .B(\config_reg[6][2] ), .A(\configs[6][2] ), .S(n1383), .Y(
        n1924) );
  INVX1 U2270 ( .A(n1925), .Y(n1162) );
  MUX2X1 U2271 ( .B(\config_reg[6][3] ), .A(\configs[6][3] ), .S(n1383), .Y(
        n1925) );
  INVX1 U2272 ( .A(n1926), .Y(n1161) );
  MUX2X1 U2273 ( .B(\config_reg[6][4] ), .A(\configs[6][4] ), .S(n1383), .Y(
        n1926) );
  INVX1 U2274 ( .A(n1927), .Y(n1160) );
  MUX2X1 U2275 ( .B(\config_reg[6][5] ), .A(\configs[6][5] ), .S(n1383), .Y(
        n1927) );
  INVX1 U2276 ( .A(n1928), .Y(n1159) );
  MUX2X1 U2277 ( .B(\config_reg[6][6] ), .A(\configs[6][6] ), .S(n1383), .Y(
        n1928) );
  INVX1 U2278 ( .A(n1929), .Y(n1158) );
  MUX2X1 U2279 ( .B(\config_reg[6][7] ), .A(\configs[6][7] ), .S(n1383), .Y(
        n1929) );
  INVX1 U2280 ( .A(n1930), .Y(n1157) );
  MUX2X1 U2281 ( .B(\config_reg[6][8] ), .A(\configs[6][8] ), .S(n1383), .Y(
        n1930) );
  INVX1 U2282 ( .A(n1931), .Y(n1156) );
  MUX2X1 U2283 ( .B(\config_reg[6][9] ), .A(\configs[6][9] ), .S(n1383), .Y(
        n1931) );
  INVX1 U2284 ( .A(n1932), .Y(n1155) );
  MUX2X1 U2285 ( .B(\config_reg[6][10] ), .A(\configs[6][10] ), .S(n1383), .Y(
        n1932) );
  INVX1 U2286 ( .A(n1933), .Y(n1154) );
  MUX2X1 U2287 ( .B(\config_reg[6][11] ), .A(\configs[6][11] ), .S(n1383), .Y(
        n1933) );
  INVX1 U2288 ( .A(n1934), .Y(n1153) );
  MUX2X1 U2289 ( .B(\config_reg[6][12] ), .A(\configs[6][12] ), .S(n1383), .Y(
        n1934) );
  INVX1 U2290 ( .A(n1935), .Y(n1152) );
  MUX2X1 U2291 ( .B(\config_reg[6][13] ), .A(\configs[6][13] ), .S(n1384), .Y(
        n1935) );
  INVX1 U2292 ( .A(n1936), .Y(n1151) );
  MUX2X1 U2293 ( .B(\config_reg[6][14] ), .A(\configs[6][14] ), .S(n1384), .Y(
        n1936) );
  INVX1 U2294 ( .A(n1937), .Y(n1150) );
  MUX2X1 U2295 ( .B(\config_reg[6][15] ), .A(\configs[6][15] ), .S(n1384), .Y(
        n1937) );
  INVX1 U2296 ( .A(n1938), .Y(n1149) );
  MUX2X1 U2297 ( .B(\config_reg[6][16] ), .A(\configs[6][16] ), .S(n1384), .Y(
        n1938) );
  INVX1 U2298 ( .A(n1939), .Y(n1148) );
  MUX2X1 U2299 ( .B(\config_reg[6][17] ), .A(\configs[6][17] ), .S(n1384), .Y(
        n1939) );
  INVX1 U2300 ( .A(n1940), .Y(n1147) );
  MUX2X1 U2301 ( .B(\config_reg[6][18] ), .A(\configs[6][18] ), .S(n1384), .Y(
        n1940) );
  INVX1 U2302 ( .A(n1941), .Y(n1146) );
  MUX2X1 U2303 ( .B(\config_reg[6][19] ), .A(\configs[6][19] ), .S(n1384), .Y(
        n1941) );
  INVX1 U2304 ( .A(n1942), .Y(n1145) );
  MUX2X1 U2305 ( .B(\config_reg[6][20] ), .A(\configs[6][20] ), .S(n1384), .Y(
        n1942) );
  INVX1 U2306 ( .A(n1943), .Y(n1144) );
  MUX2X1 U2307 ( .B(\config_reg[6][21] ), .A(\configs[6][21] ), .S(n1384), .Y(
        n1943) );
  INVX1 U2308 ( .A(n1944), .Y(n1143) );
  MUX2X1 U2309 ( .B(\config_reg[6][22] ), .A(\configs[6][22] ), .S(n1384), .Y(
        n1944) );
  INVX1 U2310 ( .A(n1945), .Y(n1142) );
  MUX2X1 U2311 ( .B(\config_reg[6][23] ), .A(\configs[6][23] ), .S(n1384), .Y(
        n1945) );
  INVX1 U2312 ( .A(n1946), .Y(n1141) );
  MUX2X1 U2313 ( .B(\config_reg[6][24] ), .A(\configs[6][24] ), .S(n1384), .Y(
        n1946) );
  INVX1 U2314 ( .A(n1947), .Y(n1140) );
  MUX2X1 U2315 ( .B(\config_reg[6][25] ), .A(\configs[6][25] ), .S(n1384), .Y(
        n1947) );
  INVX1 U2316 ( .A(n1948), .Y(n1139) );
  MUX2X1 U2317 ( .B(\config_reg[6][26] ), .A(\configs[6][26] ), .S(n1377), .Y(
        n1948) );
  INVX1 U2318 ( .A(n1949), .Y(n1138) );
  MUX2X1 U2319 ( .B(\config_reg[6][27] ), .A(\configs[6][27] ), .S(n1374), .Y(
        n1949) );
  INVX1 U2320 ( .A(n1950), .Y(n1137) );
  MUX2X1 U2321 ( .B(\config_reg[6][28] ), .A(\configs[6][28] ), .S(n1375), .Y(
        n1950) );
  INVX1 U2322 ( .A(n1951), .Y(n1136) );
  MUX2X1 U2323 ( .B(\config_reg[6][29] ), .A(\configs[6][29] ), .S(n1376), .Y(
        n1951) );
  INVX1 U2324 ( .A(n1952), .Y(n1135) );
  MUX2X1 U2325 ( .B(\config_reg[6][30] ), .A(\configs[6][30] ), .S(n1373), .Y(
        n1952) );
  INVX1 U2326 ( .A(n1953), .Y(n1134) );
  MUX2X1 U2327 ( .B(\config_reg[6][31] ), .A(\configs[6][31] ), .S(n1373), .Y(
        n1953) );
  INVX1 U2328 ( .A(processing), .Y(n1765) );
  AND2X1 U2329 ( .A(fft_man_rvalid), .B(fft_man_rready), .Y(in_valid) );
  AND2X1 U2330 ( .A(out_valid), .B(n1395), .Y(fft_man_wvalid) );
  NOR2X1 U2331 ( .A(n1393), .B(wstate[0]), .Y(n1395) );
  NOR2X1 U2332 ( .A(n1909), .B(rstate[0]), .Y(fft_man_rready) );
  INVX1 U2333 ( .A(rstate[1]), .Y(n1909) );
  NOR2X1 U2334 ( .A(n1903), .B(wstate[1]), .Y(fft_man_awvalid) );
  NOR2X1 U2335 ( .A(n1908), .B(rstate[1]), .Y(fft_man_arvalid) );
  INVX1 U2336 ( .A(rstate[0]), .Y(n1908) );
  NOR2X1 U2337 ( .A(n1903), .B(n1393), .Y(N359) );
  INVX1 U2338 ( .A(wstate[1]), .Y(n1393) );
  INVX1 U2339 ( .A(wstate[0]), .Y(n1903) );
  NAND3X1 U2340 ( .A(n1758), .B(n1717), .C(n1954), .Y(N17) );
  NOR2X1 U2341 ( .A(j[10]), .B(n1751), .Y(n1954) );
  NAND3X1 U2342 ( .A(n1750), .B(n1955), .C(n1756), .Y(n1751) );
  INVX1 U2343 ( .A(n1741), .Y(n1756) );
  NAND3X1 U2344 ( .A(n1740), .B(n1956), .C(n1746), .Y(n1741) );
  INVX1 U2345 ( .A(n1732), .Y(n1746) );
  NAND3X1 U2346 ( .A(n1730), .B(n1957), .C(n1731), .Y(n1732) );
  NOR2X1 U2347 ( .A(j[0]), .B(j[1]), .Y(n1731) );
  INVX1 U2348 ( .A(j[3]), .Y(n1957) );
  INVX1 U2349 ( .A(j[2]), .Y(n1730) );
  INVX1 U2350 ( .A(j[5]), .Y(n1956) );
  INVX1 U2351 ( .A(j[4]), .Y(n1740) );
  INVX1 U2352 ( .A(j[7]), .Y(n1955) );
  INVX1 U2353 ( .A(j[6]), .Y(n1750) );
  INVX1 U2354 ( .A(j[9]), .Y(n1717) );
  INVX1 U2355 ( .A(j[8]), .Y(n1758) );
  NAND3X1 U2356 ( .A(n1706), .B(n1661), .C(n1958), .Y(N16) );
  NOR2X1 U2357 ( .A(k[10]), .B(n1699), .Y(n1958) );
  NAND3X1 U2358 ( .A(n1698), .B(n1959), .C(n1704), .Y(n1699) );
  INVX1 U2359 ( .A(n1688), .Y(n1704) );
  NAND3X1 U2360 ( .A(n1687), .B(n1960), .C(n1693), .Y(n1688) );
  INVX1 U2361 ( .A(n1678), .Y(n1693) );
  NAND3X1 U2362 ( .A(n1676), .B(n1961), .C(n1677), .Y(n1678) );
  NOR2X1 U2363 ( .A(k[0]), .B(k[1]), .Y(n1677) );
  INVX1 U2364 ( .A(k[3]), .Y(n1961) );
  INVX1 U2365 ( .A(k[2]), .Y(n1676) );
  INVX1 U2366 ( .A(k[5]), .Y(n1960) );
  INVX1 U2367 ( .A(k[4]), .Y(n1687) );
  INVX1 U2368 ( .A(k[6]), .Y(n1698) );
  NOR2X1 U2369 ( .A(n1962), .B(n1963), .Y(N15) );
  NAND3X1 U2370 ( .A(n1964), .B(n1965), .C(n1966), .Y(n1963) );
  NOR2X1 U2371 ( .A(n1967), .B(n1968), .Y(n1966) );
  XNOR2X1 U2372 ( .A(n1661), .B(j[9]), .Y(n1968) );
  INVX1 U2373 ( .A(k[9]), .Y(n1661) );
  XNOR2X1 U2374 ( .A(n1706), .B(j[8]), .Y(n1967) );
  INVX1 U2375 ( .A(k[8]), .Y(n1706) );
  XNOR2X1 U2376 ( .A(j[6]), .B(k[6]), .Y(n1965) );
  NOR2X1 U2377 ( .A(n1969), .B(n1970), .Y(n1964) );
  XOR2X1 U2378 ( .A(k[10]), .B(j[10]), .Y(n1970) );
  XNOR2X1 U2379 ( .A(n1959), .B(j[7]), .Y(n1969) );
  INVX1 U2380 ( .A(k[7]), .Y(n1959) );
  OR2X1 U2381 ( .A(n1971), .B(n1972), .Y(n1962) );
  NAND3X1 U2382 ( .A(n1973), .B(n1974), .C(n1975), .Y(n1972) );
  XNOR2X1 U2383 ( .A(j[4]), .B(k[4]), .Y(n1975) );
  XNOR2X1 U2384 ( .A(j[5]), .B(k[5]), .Y(n1974) );
  XNOR2X1 U2385 ( .A(j[3]), .B(k[3]), .Y(n1973) );
  NAND3X1 U2386 ( .A(n1976), .B(n1977), .C(n1978), .Y(n1971) );
  XNOR2X1 U2387 ( .A(j[1]), .B(k[1]), .Y(n1978) );
  XNOR2X1 U2388 ( .A(j[2]), .B(k[2]), .Y(n1977) );
  XNOR2X1 U2389 ( .A(j[0]), .B(k[0]), .Y(n1976) );
endmodule

