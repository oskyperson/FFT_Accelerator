/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4
// Date      : Tue Apr 21 17:39:06 2026
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


module fft_axi_counter_WRITE_OR_READ0_1_DW01_inc_0_DW01_inc_8 ( A, SUM );
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


module fft_axi_counter_WRITE_OR_READ0_1 ( clk, n_rst, len, ready, valid, resp, 
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
         n73, n74;
  tri   clk;
  tri   n_rst;

  DFFSR \i_reg[0]  ( .D(n65), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[0]) );
  DFFSR \i_reg[1]  ( .D(n74), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[1]) );
  DFFSR \i_reg[2]  ( .D(n73), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[2]) );
  DFFSR \i_reg[3]  ( .D(n72), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[3]) );
  DFFSR \i_reg[4]  ( .D(n71), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[4]) );
  DFFSR \i_reg[5]  ( .D(n70), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[5]) );
  DFFSR \i_reg[6]  ( .D(n69), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[6]) );
  DFFSR \i_reg[7]  ( .D(n68), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[7]) );
  DFFSR \i_reg[8]  ( .D(n67), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[8]) );
  DFFSR \i_reg[9]  ( .D(n66), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[9]) );
  fft_axi_counter_WRITE_OR_READ0_1_DW01_inc_0_DW01_inc_8 r376 ( .A(i), .SUM({
        N16, N15, N14, N13, N12, N11, N10, N9, N8, N7}) );
  OAI21X1 U7 ( .A(n1), .B(n2), .C(n3), .Y(n65) );
  NAND2X1 U8 ( .A(N7), .B(n4), .Y(n3) );
  OAI21X1 U15 ( .A(n1), .B(n5), .C(n6), .Y(n66) );
  NAND2X1 U16 ( .A(N16), .B(n4), .Y(n6) );
  OAI21X1 U17 ( .A(n1), .B(n17), .C(n18), .Y(n67) );
  NAND2X1 U18 ( .A(N15), .B(n4), .Y(n18) );
  OAI21X1 U19 ( .A(n1), .B(n19), .C(n20), .Y(n68) );
  NAND2X1 U20 ( .A(N14), .B(n4), .Y(n20) );
  INVX1 U21 ( .A(i[7]), .Y(n19) );
  OAI21X1 U22 ( .A(n1), .B(n21), .C(n22), .Y(n69) );
  NAND2X1 U23 ( .A(N13), .B(n4), .Y(n22) );
  OAI21X1 U24 ( .A(n1), .B(n23), .C(n24), .Y(n70) );
  NAND2X1 U25 ( .A(N12), .B(n4), .Y(n24) );
  OAI21X1 U26 ( .A(n1), .B(n25), .C(n26), .Y(n71) );
  NAND2X1 U27 ( .A(N11), .B(n4), .Y(n26) );
  OAI21X1 U28 ( .A(n1), .B(n27), .C(n28), .Y(n72) );
  NAND2X1 U29 ( .A(N10), .B(n4), .Y(n28) );
  OAI21X1 U30 ( .A(n1), .B(n29), .C(n30), .Y(n73) );
  NAND2X1 U31 ( .A(N9), .B(n4), .Y(n30) );
  OAI21X1 U32 ( .A(n1), .B(n31), .C(n32), .Y(n74) );
  NAND2X1 U33 ( .A(N8), .B(n4), .Y(n32) );
  AND2X1 U34 ( .A(n1), .B(n33), .Y(n4) );
  INVX1 U35 ( .A(n34), .Y(n1) );
  NOR2X1 U36 ( .A(n34), .B(n33), .Y(last) );
  OAI21X1 U37 ( .A(n35), .B(n36), .C(n37), .Y(n33) );
  AOI22X1 U38 ( .A(n38), .B(len[8]), .C(len[9]), .D(n5), .Y(n37) );
  NOR2X1 U39 ( .A(i[8]), .B(n39), .Y(n38) );
  OAI21X1 U40 ( .A(n40), .B(n41), .C(n42), .Y(n36) );
  INVX1 U41 ( .A(n39), .Y(n42) );
  NOR2X1 U42 ( .A(n5), .B(len[9]), .Y(n39) );
  INVX1 U43 ( .A(i[9]), .Y(n5) );
  OAI22X1 U44 ( .A(n43), .B(n44), .C(n45), .D(n46), .Y(n41) );
  OAI21X1 U45 ( .A(len[5]), .B(n23), .C(n47), .Y(n46) );
  INVX1 U46 ( .A(n43), .Y(n47) );
  OAI21X1 U47 ( .A(len[4]), .B(n25), .C(n48), .Y(n45) );
  OAI21X1 U48 ( .A(n49), .B(n50), .C(n51), .Y(n48) );
  AOI22X1 U49 ( .A(n52), .B(len[2]), .C(len[3]), .D(n27), .Y(n51) );
  NOR2X1 U50 ( .A(i[2]), .B(n53), .Y(n52) );
  OAI22X1 U51 ( .A(len[2]), .B(n29), .C(n54), .D(n31), .Y(n50) );
  INVX1 U52 ( .A(i[1]), .Y(n31) );
  INVX1 U53 ( .A(n55), .Y(n54) );
  INVX1 U54 ( .A(i[2]), .Y(n29) );
  OAI21X1 U55 ( .A(len[1]), .B(n56), .C(n57), .Y(n49) );
  INVX1 U56 ( .A(n53), .Y(n57) );
  NOR2X1 U57 ( .A(n27), .B(len[3]), .Y(n53) );
  INVX1 U58 ( .A(i[3]), .Y(n27) );
  NOR2X1 U59 ( .A(i[1]), .B(n55), .Y(n56) );
  NAND2X1 U60 ( .A(len[0]), .B(n2), .Y(n55) );
  INVX1 U61 ( .A(i[0]), .Y(n2) );
  OAI21X1 U62 ( .A(n58), .B(n23), .C(n59), .Y(n44) );
  OAI21X1 U63 ( .A(i[5]), .B(n60), .C(n61), .Y(n59) );
  INVX1 U64 ( .A(len[5]), .Y(n61) );
  INVX1 U65 ( .A(i[5]), .Y(n23) );
  INVX1 U66 ( .A(n60), .Y(n58) );
  NAND2X1 U67 ( .A(len[4]), .B(n25), .Y(n60) );
  INVX1 U68 ( .A(i[4]), .Y(n25) );
  OAI21X1 U69 ( .A(len[6]), .B(n21), .C(n62), .Y(n43) );
  OAI21X1 U70 ( .A(i[7]), .B(n63), .C(n64), .Y(n40) );
  NAND3X1 U71 ( .A(n62), .B(n21), .C(len[6]), .Y(n64) );
  INVX1 U72 ( .A(i[6]), .Y(n21) );
  NAND2X1 U73 ( .A(i[7]), .B(n63), .Y(n62) );
  INVX1 U74 ( .A(len[7]), .Y(n63) );
  NOR2X1 U75 ( .A(len[8]), .B(n17), .Y(n35) );
  INVX1 U76 ( .A(i[8]), .Y(n17) );
  AOI21X1 U77 ( .A(valid), .B(ready), .C(resp), .Y(n34) );
endmodule


module fft_axi_counter_WRITE_OR_READ1_1_DW01_inc_0_DW01_inc_7 ( A, SUM );
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


module fft_axi_counter_WRITE_OR_READ1_1 ( clk, n_rst, len, ready, valid, resp, 
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
         n73, n74;
  tri   clk;
  tri   n_rst;

  DFFSR \i_reg[0]  ( .D(n65), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[0]) );
  DFFSR \i_reg[1]  ( .D(n74), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[1]) );
  DFFSR \i_reg[2]  ( .D(n73), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[2]) );
  DFFSR \i_reg[3]  ( .D(n72), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[3]) );
  DFFSR \i_reg[4]  ( .D(n71), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[4]) );
  DFFSR \i_reg[5]  ( .D(n70), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[5]) );
  DFFSR \i_reg[6]  ( .D(n69), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[6]) );
  DFFSR \i_reg[7]  ( .D(n68), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[7]) );
  DFFSR \i_reg[8]  ( .D(n67), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[8]) );
  DFFSR \i_reg[9]  ( .D(n66), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[9]) );
  fft_axi_counter_WRITE_OR_READ1_1_DW01_inc_0_DW01_inc_7 r376 ( .A(i), .SUM({
        N16, N15, N14, N13, N12, N11, N10, N9, N8, N7}) );
  OAI21X1 U7 ( .A(n1), .B(n2), .C(n3), .Y(n65) );
  NAND2X1 U8 ( .A(N7), .B(n4), .Y(n3) );
  OAI21X1 U15 ( .A(n1), .B(n5), .C(n6), .Y(n66) );
  NAND2X1 U16 ( .A(N16), .B(n4), .Y(n6) );
  OAI21X1 U17 ( .A(n1), .B(n17), .C(n18), .Y(n67) );
  NAND2X1 U18 ( .A(N15), .B(n4), .Y(n18) );
  OAI21X1 U19 ( .A(n1), .B(n19), .C(n20), .Y(n68) );
  NAND2X1 U20 ( .A(N14), .B(n4), .Y(n20) );
  INVX1 U21 ( .A(i[7]), .Y(n19) );
  OAI21X1 U22 ( .A(n1), .B(n21), .C(n22), .Y(n69) );
  NAND2X1 U23 ( .A(N13), .B(n4), .Y(n22) );
  OAI21X1 U24 ( .A(n1), .B(n23), .C(n24), .Y(n70) );
  NAND2X1 U25 ( .A(N12), .B(n4), .Y(n24) );
  OAI21X1 U26 ( .A(n1), .B(n25), .C(n26), .Y(n71) );
  NAND2X1 U27 ( .A(N11), .B(n4), .Y(n26) );
  OAI21X1 U28 ( .A(n1), .B(n27), .C(n28), .Y(n72) );
  NAND2X1 U29 ( .A(N10), .B(n4), .Y(n28) );
  OAI21X1 U30 ( .A(n1), .B(n29), .C(n30), .Y(n73) );
  NAND2X1 U31 ( .A(N9), .B(n4), .Y(n30) );
  OAI21X1 U32 ( .A(n1), .B(n31), .C(n32), .Y(n74) );
  NAND2X1 U33 ( .A(N8), .B(n4), .Y(n32) );
  AND2X1 U34 ( .A(n1), .B(n33), .Y(n4) );
  INVX1 U35 ( .A(n34), .Y(n1) );
  NOR2X1 U36 ( .A(n34), .B(n33), .Y(last) );
  OAI21X1 U37 ( .A(n35), .B(n36), .C(n37), .Y(n33) );
  AOI22X1 U38 ( .A(n38), .B(len[8]), .C(len[9]), .D(n5), .Y(n37) );
  NOR2X1 U39 ( .A(i[8]), .B(n39), .Y(n38) );
  OAI21X1 U40 ( .A(n40), .B(n41), .C(n42), .Y(n36) );
  INVX1 U41 ( .A(n39), .Y(n42) );
  NOR2X1 U42 ( .A(n5), .B(len[9]), .Y(n39) );
  INVX1 U43 ( .A(i[9]), .Y(n5) );
  OAI22X1 U44 ( .A(n43), .B(n44), .C(n45), .D(n46), .Y(n41) );
  OAI21X1 U45 ( .A(len[5]), .B(n23), .C(n47), .Y(n46) );
  INVX1 U46 ( .A(n43), .Y(n47) );
  OAI21X1 U47 ( .A(len[4]), .B(n25), .C(n48), .Y(n45) );
  OAI21X1 U48 ( .A(n49), .B(n50), .C(n51), .Y(n48) );
  AOI22X1 U49 ( .A(n52), .B(len[2]), .C(len[3]), .D(n27), .Y(n51) );
  NOR2X1 U50 ( .A(i[2]), .B(n53), .Y(n52) );
  OAI22X1 U51 ( .A(len[2]), .B(n29), .C(n54), .D(n31), .Y(n50) );
  INVX1 U52 ( .A(i[1]), .Y(n31) );
  INVX1 U53 ( .A(n55), .Y(n54) );
  INVX1 U54 ( .A(i[2]), .Y(n29) );
  OAI21X1 U55 ( .A(len[1]), .B(n56), .C(n57), .Y(n49) );
  INVX1 U56 ( .A(n53), .Y(n57) );
  NOR2X1 U57 ( .A(n27), .B(len[3]), .Y(n53) );
  INVX1 U58 ( .A(i[3]), .Y(n27) );
  NOR2X1 U59 ( .A(i[1]), .B(n55), .Y(n56) );
  NAND2X1 U60 ( .A(len[0]), .B(n2), .Y(n55) );
  INVX1 U61 ( .A(i[0]), .Y(n2) );
  OAI21X1 U62 ( .A(n58), .B(n23), .C(n59), .Y(n44) );
  OAI21X1 U63 ( .A(i[5]), .B(n60), .C(n61), .Y(n59) );
  INVX1 U64 ( .A(len[5]), .Y(n61) );
  INVX1 U65 ( .A(i[5]), .Y(n23) );
  INVX1 U66 ( .A(n60), .Y(n58) );
  NAND2X1 U67 ( .A(len[4]), .B(n25), .Y(n60) );
  INVX1 U68 ( .A(i[4]), .Y(n25) );
  OAI21X1 U69 ( .A(len[6]), .B(n21), .C(n62), .Y(n43) );
  OAI21X1 U70 ( .A(i[7]), .B(n63), .C(n64), .Y(n40) );
  NAND3X1 U71 ( .A(n62), .B(n21), .C(len[6]), .Y(n64) );
  INVX1 U72 ( .A(i[6]), .Y(n21) );
  NAND2X1 U73 ( .A(i[7]), .B(n63), .Y(n62) );
  INVX1 U74 ( .A(len[7]), .Y(n63) );
  NOR2X1 U75 ( .A(len[8]), .B(n17), .Y(n35) );
  INVX1 U76 ( .A(i[8]), .Y(n17) );
  AOI21X1 U77 ( .A(valid), .B(ready), .C(resp), .Y(n34) );
endmodule


module fft_axi_manager_DW01_add_0_DW01_add_2 ( A, B, CI, SUM, CO );
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


module fft_axi_manager_DW01_inc_0_DW01_inc_4 ( A, SUM );
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


module fft_axi_manager_DW01_inc_1_DW01_inc_5 ( A, SUM );
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


module fft_axi_manager_DW01_inc_2_DW01_inc_6 ( A, SUM );
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


module fft_axi_manager_DW01_add_1_DW01_add_3 ( A, B, CI, SUM, CO );
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
        load_size, frame_size );
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
  wire   j_eq_k, k_gt_0, j_gt_0, N17, N18, N19, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, \configs[3][31] , \configs[3][30] ,
         \configs[3][29] , \configs[3][28] , \configs[3][27] ,
         \configs[3][26] , \configs[3][25] , \configs[3][24] ,
         \configs[3][23] , \configs[3][22] , \configs[3][21] ,
         \configs[3][20] , \configs[3][19] , \configs[3][18] ,
         \configs[3][17] , \configs[3][16] , \configs[3][15] ,
         \configs[3][14] , \configs[3][13] , \configs[3][12] ,
         \configs[3][11] , \configs[3][10] , \configs[3][9] , \configs[3][8] ,
         \configs[3][7] , \configs[3][6] , \configs[3][5] , \configs[3][4] ,
         \configs[3][3] , \configs[3][2] , \configs[3][1] , \configs[3][0] ,
         \configs[1][31] , \configs[1][30] , \configs[1][29] ,
         \configs[1][28] , \configs[1][27] , \configs[1][26] ,
         \configs[1][25] , \configs[1][24] , \configs[1][23] ,
         \configs[1][22] , \configs[1][21] , \configs[1][20] ,
         \configs[1][19] , \configs[1][18] , \configs[1][17] ,
         \configs[1][16] , \configs[1][15] , \configs[1][14] ,
         \configs[1][13] , \configs[1][12] , \configs[1][11] ,
         \configs[1][10] , \configs[1][9] , \configs[1][8] , \configs[1][7] ,
         \configs[1][6] , \configs[1][5] , \configs[1][4] , \configs[1][3] ,
         \configs[1][2] , \configs[1][1] , \configs[1][0] , \configs[0][10] ,
         \configs[0][9] , \configs[0][8] , \configs[0][7] , \configs[0][6] ,
         \configs[0][5] , \configs[0][4] , \configs[0][3] , \configs[0][2] ,
         \configs[0][1] , \configs[0][0] , processing, N49, N50, N51, N52, N53,
         N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67,
         N68, N69, N70, rcounter_last, N213, N214, N215, N216, N217, N218,
         N219, N220, N221, N222, N223, N224, N225, N226, N227, N228, N229,
         N230, N231, N232, N233, N234, N235, N236, N237, N238, N239, N240,
         N241, N242, N243, N244, N260, N261, N262, N263, N264, N265, N266,
         N267, N268, N269, N270, N271, N272, N273, N274, N275, N276, N277,
         N278, N279, N280, N281, N282, N283, N284, N285, N286, N287, N288,
         N289, N290, N291, N295, n437, n940, n941, n942, n943, n944, n945,
         n946, n947, n948, n949, n950, n951, n952, n953, n954, n955, n956,
         n957, n958, n959, n960, n961, n962, n963, n964, n965, n966, n967,
         n968, n969, n970, n971, n972, n973, n1, n2, n3, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n439, n441,
         n443, n445, n447, n449, n451, n453, n455, n457, n703, n704, n705,
         n706, n707, n708, n709, n710, n711, n712, n713, n714, n715, n716,
         n717, n718, n719, n720, n721, n722, n723, n724, n725, n726, n727,
         n728, n729, n730, n731, n732, n733, n734, n735, n736, n737, n738,
         n739, n740, n741, n742, n743, n744, n745, n746, n747, n748, n749,
         n750, n751, n752, n753, n754, n755, n756, n757, n758, n759, n760,
         n761, n762, n763, n764, n765, n766, n767, n768, n769, n770, n771,
         n772, n773, n774, n775, n776, n777, n778, n779, n780, n781, n782,
         n783, n784, n785, n786, n787, n788, n789, n790, n791, n792, n793,
         n794, n795, n796, n797, n798, n799, n800, n801, n802, n803, n804,
         n805, n806, n807, n808, n809, n810, n811, n812, n813, n814, n815,
         n816, n817, n818, n819, n820, n821, n822, n823, n824, n825, n826,
         n827, n828, n829, n830, n831, n832, n833, n834, n835, n836, n837,
         n838, n839, n840, n841, n842, n843, n844, n845, n846, n847, n848,
         n849, n850, n851, n852, n853, n854, n855, n856, n857, n858, n859,
         n860, n861, n862, n863, n864, n865, n866, n867, n868, n869, n870,
         n871, n872, n873, n874, n875, n876, n877, n878, n879, n880, n881,
         n882, n883, n884, n885, n886, n887, n888, n889, n890, n891, n892,
         n893, n894, n895, n896, n897, n898, n899, n900, n901, n902, n903,
         n904, n905, n906, n907, n908, n909, n910, n911, n912, n913, n914,
         n915, n916, n917, n918, n919, n920, n921, n922, n923, n924, n925,
         n926, n927, n928, n929, n930, n931, n932, n933, n934, n935, n936,
         n937, n938, n939, n974, n975, n976, n977, n978, n979, n980, n981,
         n982, n983, n984, n985, n986, n987, n988, n989, n990, n991, n992,
         n993, n994, n995, n996, n997, n998, n999, n1000, n1001, n1002, n1003,
         n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013,
         n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023,
         n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033,
         n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043,
         n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053,
         n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063,
         n1064;
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
  tri   clk;
  tri   n_rst;
  tri   [31:0] data_out;
  tri   out_valid;
  tri   [31:0] fft_man_rdata;
  tri   in_valid;
  tri   load_size;
  tri   [9:0] frame_size;
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
  assign fft_man_bready = N295;

  DFFSR \wstate_reg[0]  ( .D(next_wstate[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(wstate[0]) );
  DFFSR \wstate_reg[1]  ( .D(next_wstate[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(wstate[1]) );
  DFFSR \k_reg[10]  ( .D(n973), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[10]) );
  DFFSR processing_reg ( .D(n951), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        processing) );
  DFFSR \r_frame_size_reg[1]  ( .D(n1001), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[1]) );
  DFFSR \r_frame_size_reg[2]  ( .D(n1002), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[2]) );
  DFFSR \r_frame_size_reg[3]  ( .D(n1003), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[3]) );
  DFFSR \r_frame_size_reg[4]  ( .D(n1004), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[4]) );
  DFFSR \r_frame_size_reg[5]  ( .D(n1005), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[5]) );
  DFFSR \r_frame_size_reg[6]  ( .D(n1006), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[6]) );
  DFFSR \r_frame_size_reg[7]  ( .D(n1007), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[7]) );
  DFFSR \r_frame_size_reg[8]  ( .D(n1008), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[8]) );
  DFFSR \r_frame_size_reg[9]  ( .D(n1009), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[9]) );
  DFFSR \r_frame_size_reg[10]  ( .D(n1010), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(r_frame_size[10]) );
  DFFSR \w_frame_size_reg[0]  ( .D(n1011), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[0]) );
  DFFSR \w_frame_size_reg[1]  ( .D(n1012), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[1]) );
  DFFSR \w_frame_size_reg[2]  ( .D(n1013), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[2]) );
  DFFSR \w_frame_size_reg[3]  ( .D(n1014), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[3]) );
  DFFSR \w_frame_size_reg[4]  ( .D(n1015), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[4]) );
  DFFSR \w_frame_size_reg[5]  ( .D(n1016), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[5]) );
  DFFSR \w_frame_size_reg[6]  ( .D(n1017), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[6]) );
  DFFSR \w_frame_size_reg[7]  ( .D(n1018), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[7]) );
  DFFSR \w_frame_size_reg[8]  ( .D(n1019), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[8]) );
  DFFSR \w_frame_size_reg[9]  ( .D(n1020), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[9]) );
  DFFSR \w_frame_size_reg[10]  ( .D(n1021), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(w_frame_size[10]) );
  DFFSR \r_frame_size_reg[0]  ( .D(n1022), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[0]) );
  DFFSR \configs_reg[5][1]  ( .D(n881), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_wstrb[1]) );
  DFFSR \configs_reg[5][0]  ( .D(n882), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_wstrb[0]) );
  DFFSR \configs_reg[4][9]  ( .D(n883), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[9]) );
  DFFSR \configs_reg[4][8]  ( .D(n884), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[8]) );
  DFFSR \configs_reg[4][7]  ( .D(n885), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[7]) );
  DFFSR \configs_reg[4][6]  ( .D(n886), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[6]) );
  DFFSR \configs_reg[4][5]  ( .D(n887), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[5]) );
  DFFSR \configs_reg[4][4]  ( .D(n888), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[4]) );
  DFFSR \configs_reg[4][3]  ( .D(n889), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[3]) );
  DFFSR \configs_reg[4][2]  ( .D(n890), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[2]) );
  DFFSR \configs_reg[4][1]  ( .D(n891), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[1]) );
  DFFSR \configs_reg[4][0]  ( .D(n892), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[0]) );
  DFFSR \configs_reg[3][31]  ( .D(n893), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][31] ) );
  DFFSR \configs_reg[3][30]  ( .D(n894), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][30] ) );
  DFFSR \configs_reg[3][29]  ( .D(n895), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][29] ) );
  DFFSR \configs_reg[3][28]  ( .D(n896), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][28] ) );
  DFFSR \configs_reg[3][27]  ( .D(n897), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][27] ) );
  DFFSR \configs_reg[3][26]  ( .D(n898), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][26] ) );
  DFFSR \configs_reg[3][25]  ( .D(n899), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][25] ) );
  DFFSR \configs_reg[3][24]  ( .D(n900), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][24] ) );
  DFFSR \configs_reg[3][23]  ( .D(n901), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][23] ) );
  DFFSR \configs_reg[3][22]  ( .D(n902), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][22] ) );
  DFFSR \configs_reg[3][21]  ( .D(n903), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][21] ) );
  DFFSR \configs_reg[3][20]  ( .D(n904), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][20] ) );
  DFFSR \configs_reg[3][19]  ( .D(n905), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][19] ) );
  DFFSR \configs_reg[3][18]  ( .D(n906), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][18] ) );
  DFFSR \configs_reg[3][17]  ( .D(n907), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][17] ) );
  DFFSR \configs_reg[3][16]  ( .D(n908), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][16] ) );
  DFFSR \configs_reg[3][15]  ( .D(n909), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][15] ) );
  DFFSR \configs_reg[3][14]  ( .D(n910), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][14] ) );
  DFFSR \configs_reg[3][13]  ( .D(n911), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][13] ) );
  DFFSR \configs_reg[3][12]  ( .D(n912), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][12] ) );
  DFFSR \configs_reg[3][11]  ( .D(n913), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][11] ) );
  DFFSR \configs_reg[3][10]  ( .D(n914), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][10] ) );
  DFFSR \configs_reg[3][9]  ( .D(n915), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][9] ) );
  DFFSR \configs_reg[3][8]  ( .D(n916), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][8] ) );
  DFFSR \configs_reg[3][7]  ( .D(n917), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][7] ) );
  DFFSR \configs_reg[3][6]  ( .D(n918), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][6] ) );
  DFFSR \configs_reg[3][5]  ( .D(n919), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][5] ) );
  DFFSR \configs_reg[3][4]  ( .D(n920), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][4] ) );
  DFFSR \configs_reg[3][3]  ( .D(n921), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][3] ) );
  DFFSR \configs_reg[3][2]  ( .D(n922), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][2] ) );
  DFFSR \configs_reg[3][1]  ( .D(n923), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][1] ) );
  DFFSR \configs_reg[3][0]  ( .D(n924), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][0] ) );
  DFFSR \configs_reg[2][9]  ( .D(n925), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[9]) );
  DFFSR \configs_reg[2][8]  ( .D(n926), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[8]) );
  DFFSR \configs_reg[2][7]  ( .D(n927), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[7]) );
  DFFSR \configs_reg[2][6]  ( .D(n928), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[6]) );
  DFFSR \configs_reg[2][5]  ( .D(n929), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[5]) );
  DFFSR \configs_reg[2][4]  ( .D(n930), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[4]) );
  DFFSR \configs_reg[2][3]  ( .D(n931), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[3]) );
  DFFSR \configs_reg[2][2]  ( .D(n932), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[2]) );
  DFFSR \configs_reg[2][1]  ( .D(n933), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[1]) );
  DFFSR \configs_reg[2][0]  ( .D(n934), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[0]) );
  DFFSR \rstate_reg[1]  ( .D(next_rstate[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(rstate[1]) );
  DFFSR \rstate_reg[0]  ( .D(next_rstate[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(rstate[0]) );
  DFFSR \configs_reg[1][31]  ( .D(n935), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][31] ) );
  DFFSR \configs_reg[1][30]  ( .D(n936), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][30] ) );
  DFFSR \configs_reg[1][29]  ( .D(n937), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][29] ) );
  DFFSR \configs_reg[1][28]  ( .D(n938), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][28] ) );
  DFFSR \configs_reg[1][27]  ( .D(n939), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][27] ) );
  DFFSR \configs_reg[1][26]  ( .D(n974), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][26] ) );
  DFFSR \configs_reg[1][25]  ( .D(n975), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][25] ) );
  DFFSR \configs_reg[1][24]  ( .D(n976), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][24] ) );
  DFFSR \configs_reg[1][23]  ( .D(n977), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][23] ) );
  DFFSR \configs_reg[1][22]  ( .D(n978), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][22] ) );
  DFFSR \configs_reg[1][21]  ( .D(n979), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][21] ) );
  DFFSR \configs_reg[1][20]  ( .D(n980), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][20] ) );
  DFFSR \configs_reg[1][19]  ( .D(n981), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][19] ) );
  DFFSR \configs_reg[1][18]  ( .D(n982), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][18] ) );
  DFFSR \configs_reg[1][17]  ( .D(n983), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][17] ) );
  DFFSR \configs_reg[1][16]  ( .D(n984), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][16] ) );
  DFFSR \configs_reg[1][15]  ( .D(n985), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][15] ) );
  DFFSR \configs_reg[1][14]  ( .D(n986), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][14] ) );
  DFFSR \configs_reg[1][13]  ( .D(n987), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][13] ) );
  DFFSR \configs_reg[1][12]  ( .D(n988), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][12] ) );
  DFFSR \configs_reg[1][11]  ( .D(n989), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][11] ) );
  DFFSR \configs_reg[1][10]  ( .D(n990), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][10] ) );
  DFFSR \configs_reg[1][9]  ( .D(n991), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][9] ) );
  DFFSR \configs_reg[1][8]  ( .D(n992), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][8] ) );
  DFFSR \configs_reg[1][7]  ( .D(n993), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][7] ) );
  DFFSR \configs_reg[1][6]  ( .D(n994), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][6] ) );
  DFFSR \configs_reg[1][5]  ( .D(n995), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][5] ) );
  DFFSR \configs_reg[1][4]  ( .D(n996), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][4] ) );
  DFFSR \configs_reg[1][3]  ( .D(n997), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][3] ) );
  DFFSR \configs_reg[1][2]  ( .D(n998), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][2] ) );
  DFFSR \configs_reg[1][1]  ( .D(n999), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][1] ) );
  DFFSR \configs_reg[1][0]  ( .D(n1000), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][0] ) );
  DFFSR \configs_reg[0][9]  ( .D(n941), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][9] ) );
  DFFSR \configs_reg[0][8]  ( .D(n942), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][8] ) );
  DFFSR \configs_reg[0][7]  ( .D(n943), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][7] ) );
  DFFSR \configs_reg[0][6]  ( .D(n944), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][6] ) );
  DFFSR \configs_reg[0][5]  ( .D(n945), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][5] ) );
  DFFSR \configs_reg[0][4]  ( .D(n946), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][4] ) );
  DFFSR \configs_reg[0][3]  ( .D(n947), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][3] ) );
  DFFSR \configs_reg[0][2]  ( .D(n948), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][2] ) );
  DFFSR \configs_reg[0][1]  ( .D(n949), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][1] ) );
  DFFSR \configs_reg[0][0]  ( .D(n950), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][0] ) );
  DFFSR \k_reg[0]  ( .D(n972), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[0]) );
  DFFSR k_gt_0_reg ( .D(N18), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k_gt_0) );
  DFFSR \k_reg[1]  ( .D(n971), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[1]) );
  DFFSR \k_reg[2]  ( .D(n970), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[2]) );
  DFFSR \k_reg[3]  ( .D(n969), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[3]) );
  DFFSR \k_reg[4]  ( .D(n968), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[4]) );
  DFFSR \k_reg[5]  ( .D(n967), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[5]) );
  DFFSR \k_reg[6]  ( .D(n966), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[6]) );
  DFFSR \k_reg[7]  ( .D(n965), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[7]) );
  DFFSR \k_reg[8]  ( .D(n964), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[8]) );
  DFFSR \k_reg[9]  ( .D(n963), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[9]) );
  DFFSR \configs_reg[0][10]  ( .D(n940), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[0][10] ) );
  DFFSR \j_reg[10]  ( .D(n962), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[10]) );
  DFFSR j_gt_0_reg ( .D(N19), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j_gt_0) );
  DFFSR \j_reg[0]  ( .D(n961), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[0]) );
  DFFSR \j_reg[1]  ( .D(n960), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[1]) );
  DFFSR \j_reg[2]  ( .D(n959), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[2]) );
  DFFSR \j_reg[3]  ( .D(n958), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[3]) );
  DFFSR \j_reg[4]  ( .D(n957), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[4]) );
  DFFSR \j_reg[5]  ( .D(n956), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[5]) );
  DFFSR \j_reg[6]  ( .D(n955), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[6]) );
  DFFSR \j_reg[7]  ( .D(n954), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[7]) );
  DFFSR \j_reg[8]  ( .D(n953), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[8]) );
  DFFSR \j_reg[9]  ( .D(n952), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j[9]) );
  DFFSR j_eq_k_reg ( .D(N17), .CLK(clk), .R(n_rst), .S(1'b1), .Q(j_eq_k) );
  DFFSR \r_offset_reg[0]  ( .D(n1024), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[0]) );
  DFFSR \r_offset_reg[1]  ( .D(n1023), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[1]) );
  DFFSR \r_offset_reg[2]  ( .D(n1025), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[2]) );
  DFFSR \r_offset_reg[3]  ( .D(n1026), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[3]) );
  DFFSR \r_offset_reg[4]  ( .D(n1027), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[4]) );
  DFFSR \r_offset_reg[5]  ( .D(n1028), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[5]) );
  DFFSR \r_offset_reg[6]  ( .D(n1029), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[6]) );
  DFFSR \r_offset_reg[7]  ( .D(n1030), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[7]) );
  DFFSR \r_offset_reg[8]  ( .D(n1031), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[8]) );
  DFFSR \r_offset_reg[9]  ( .D(n1032), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[9]) );
  DFFSR \r_offset_reg[10]  ( .D(n1033), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[10]) );
  DFFSR \r_offset_reg[11]  ( .D(n1034), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[11]) );
  DFFSR \r_offset_reg[12]  ( .D(n1035), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[12]) );
  DFFSR \r_offset_reg[13]  ( .D(n1036), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[13]) );
  DFFSR \r_offset_reg[14]  ( .D(n1037), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[14]) );
  DFFSR \r_offset_reg[15]  ( .D(n1038), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[15]) );
  DFFSR \r_offset_reg[16]  ( .D(n1039), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[16]) );
  DFFSR \r_offset_reg[17]  ( .D(n1040), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[17]) );
  DFFSR \r_offset_reg[18]  ( .D(n1041), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[18]) );
  DFFSR \r_offset_reg[19]  ( .D(n1042), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[19]) );
  DFFSR \r_offset_reg[20]  ( .D(n1043), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[20]) );
  DFFSR \r_offset_reg[21]  ( .D(n1044), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[21]) );
  DFFSR \r_offset_reg[22]  ( .D(n1045), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[22]) );
  DFFSR \r_offset_reg[23]  ( .D(n1046), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[23]) );
  DFFSR \r_offset_reg[24]  ( .D(n1047), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[24]) );
  DFFSR \r_offset_reg[25]  ( .D(n1048), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[25]) );
  DFFSR \r_offset_reg[26]  ( .D(n1049), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[26]) );
  DFFSR \r_offset_reg[27]  ( .D(n1050), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[27]) );
  DFFSR \r_offset_reg[28]  ( .D(n1051), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[28]) );
  DFFSR \r_offset_reg[29]  ( .D(n1052), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[29]) );
  DFFSR \r_offset_reg[30]  ( .D(n1053), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[30]) );
  DFFSR \r_offset_reg[31]  ( .D(n1054), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[31]) );
  DFFSR \fft_man_araddr_reg[0]  ( .D(n816), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[0]) );
  DFFSR \fft_man_araddr_reg[1]  ( .D(n815), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[1]) );
  DFFSR \fft_man_araddr_reg[2]  ( .D(n814), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[2]) );
  DFFSR \fft_man_araddr_reg[3]  ( .D(n813), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[3]) );
  DFFSR \fft_man_araddr_reg[4]  ( .D(n812), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[4]) );
  DFFSR \fft_man_araddr_reg[5]  ( .D(n811), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[5]) );
  DFFSR \fft_man_araddr_reg[6]  ( .D(n810), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[6]) );
  DFFSR \fft_man_araddr_reg[7]  ( .D(n809), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[7]) );
  DFFSR \fft_man_araddr_reg[8]  ( .D(n808), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[8]) );
  DFFSR \fft_man_araddr_reg[9]  ( .D(n807), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[9]) );
  DFFSR \fft_man_araddr_reg[10]  ( .D(n806), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[10]) );
  DFFSR \fft_man_araddr_reg[11]  ( .D(n805), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[11]) );
  DFFSR \fft_man_araddr_reg[12]  ( .D(n804), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[12]) );
  DFFSR \fft_man_araddr_reg[13]  ( .D(n803), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[13]) );
  DFFSR \fft_man_araddr_reg[14]  ( .D(n802), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[14]) );
  DFFSR \fft_man_araddr_reg[15]  ( .D(n801), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[15]) );
  DFFSR \fft_man_araddr_reg[16]  ( .D(n800), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[16]) );
  DFFSR \fft_man_araddr_reg[17]  ( .D(n799), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[17]) );
  DFFSR \fft_man_araddr_reg[18]  ( .D(n798), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[18]) );
  DFFSR \fft_man_araddr_reg[19]  ( .D(n797), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[19]) );
  DFFSR \fft_man_araddr_reg[20]  ( .D(n796), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[20]) );
  DFFSR \fft_man_araddr_reg[21]  ( .D(n795), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[21]) );
  DFFSR \fft_man_araddr_reg[22]  ( .D(n794), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[22]) );
  DFFSR \fft_man_araddr_reg[23]  ( .D(n793), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[23]) );
  DFFSR \fft_man_araddr_reg[24]  ( .D(n792), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[24]) );
  DFFSR \fft_man_araddr_reg[25]  ( .D(n791), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[25]) );
  DFFSR \fft_man_araddr_reg[26]  ( .D(n790), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[26]) );
  DFFSR \fft_man_araddr_reg[27]  ( .D(n789), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[27]) );
  DFFSR \fft_man_araddr_reg[28]  ( .D(n788), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[28]) );
  DFFSR \fft_man_araddr_reg[29]  ( .D(n787), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[29]) );
  DFFSR \fft_man_araddr_reg[30]  ( .D(n786), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[30]) );
  DFFSR \fft_man_araddr_reg[31]  ( .D(n785), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[31]) );
  DFFSR \w_offset_reg[0]  ( .D(n879), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[0]) );
  DFFSR \w_offset_reg[1]  ( .D(n880), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[1]) );
  DFFSR \w_offset_reg[2]  ( .D(n878), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[2]) );
  DFFSR \w_offset_reg[3]  ( .D(n877), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[3]) );
  DFFSR \w_offset_reg[4]  ( .D(n876), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[4]) );
  DFFSR \w_offset_reg[5]  ( .D(n875), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[5]) );
  DFFSR \w_offset_reg[6]  ( .D(n874), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[6]) );
  DFFSR \w_offset_reg[7]  ( .D(n873), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[7]) );
  DFFSR \w_offset_reg[8]  ( .D(n872), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[8]) );
  DFFSR \w_offset_reg[9]  ( .D(n871), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[9]) );
  DFFSR \w_offset_reg[10]  ( .D(n870), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[10]) );
  DFFSR \w_offset_reg[11]  ( .D(n869), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[11]) );
  DFFSR \w_offset_reg[12]  ( .D(n868), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[12]) );
  DFFSR \w_offset_reg[13]  ( .D(n867), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[13]) );
  DFFSR \w_offset_reg[14]  ( .D(n866), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[14]) );
  DFFSR \w_offset_reg[15]  ( .D(n865), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[15]) );
  DFFSR \w_offset_reg[16]  ( .D(n864), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[16]) );
  DFFSR \w_offset_reg[17]  ( .D(n863), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[17]) );
  DFFSR \w_offset_reg[18]  ( .D(n862), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[18]) );
  DFFSR \w_offset_reg[19]  ( .D(n861), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[19]) );
  DFFSR \w_offset_reg[20]  ( .D(n860), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[20]) );
  DFFSR \w_offset_reg[21]  ( .D(n859), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[21]) );
  DFFSR \w_offset_reg[22]  ( .D(n858), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[22]) );
  DFFSR \w_offset_reg[23]  ( .D(n857), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[23]) );
  DFFSR \w_offset_reg[24]  ( .D(n856), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[24]) );
  DFFSR \w_offset_reg[25]  ( .D(n855), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[25]) );
  DFFSR \w_offset_reg[26]  ( .D(n854), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[26]) );
  DFFSR \w_offset_reg[27]  ( .D(n853), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[27]) );
  DFFSR \w_offset_reg[28]  ( .D(n852), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[28]) );
  DFFSR \w_offset_reg[29]  ( .D(n851), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[29]) );
  DFFSR \w_offset_reg[30]  ( .D(n850), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[30]) );
  DFFSR \w_offset_reg[31]  ( .D(n849), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[31]) );
  DFFSR \frame_size_reg[0]  ( .D(n1064), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[0]) );
  DFFSR \frame_size_reg[1]  ( .D(n1063), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[1]) );
  DFFSR \frame_size_reg[2]  ( .D(n1062), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[2]) );
  DFFSR \frame_size_reg[3]  ( .D(n1061), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[3]) );
  DFFSR \frame_size_reg[4]  ( .D(n1060), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[4]) );
  DFFSR \frame_size_reg[5]  ( .D(n1059), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[5]) );
  DFFSR \frame_size_reg[6]  ( .D(n1058), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[6]) );
  DFFSR \frame_size_reg[7]  ( .D(n1057), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[7]) );
  DFFSR \frame_size_reg[8]  ( .D(n1056), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[8]) );
  DFFSR \frame_size_reg[9]  ( .D(n1055), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        frame_size[9]) );
  DFFSR load_size_reg ( .D(n437), .CLK(clk), .R(n_rst), .S(1'b1), .Q(load_size) );
  DFFSR \fft_man_awaddr_reg[31]  ( .D(n817), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[31]) );
  DFFSR \fft_man_awaddr_reg[30]  ( .D(n818), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[30]) );
  DFFSR \fft_man_awaddr_reg[29]  ( .D(n819), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[29]) );
  DFFSR \fft_man_awaddr_reg[28]  ( .D(n820), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[28]) );
  DFFSR \fft_man_awaddr_reg[27]  ( .D(n821), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[27]) );
  DFFSR \fft_man_awaddr_reg[26]  ( .D(n822), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[26]) );
  DFFSR \fft_man_awaddr_reg[25]  ( .D(n823), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[25]) );
  DFFSR \fft_man_awaddr_reg[24]  ( .D(n824), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[24]) );
  DFFSR \fft_man_awaddr_reg[23]  ( .D(n825), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[23]) );
  DFFSR \fft_man_awaddr_reg[22]  ( .D(n826), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[22]) );
  DFFSR \fft_man_awaddr_reg[21]  ( .D(n827), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[21]) );
  DFFSR \fft_man_awaddr_reg[20]  ( .D(n828), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[20]) );
  DFFSR \fft_man_awaddr_reg[19]  ( .D(n829), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[19]) );
  DFFSR \fft_man_awaddr_reg[18]  ( .D(n830), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[18]) );
  DFFSR \fft_man_awaddr_reg[17]  ( .D(n831), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[17]) );
  DFFSR \fft_man_awaddr_reg[16]  ( .D(n832), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[16]) );
  DFFSR \fft_man_awaddr_reg[15]  ( .D(n833), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[15]) );
  DFFSR \fft_man_awaddr_reg[14]  ( .D(n834), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[14]) );
  DFFSR \fft_man_awaddr_reg[13]  ( .D(n835), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[13]) );
  DFFSR \fft_man_awaddr_reg[12]  ( .D(n836), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[12]) );
  DFFSR \fft_man_awaddr_reg[11]  ( .D(n837), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[11]) );
  DFFSR \fft_man_awaddr_reg[10]  ( .D(n838), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[10]) );
  DFFSR \fft_man_awaddr_reg[9]  ( .D(n839), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[9]) );
  DFFSR \fft_man_awaddr_reg[8]  ( .D(n840), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[8]) );
  DFFSR \fft_man_awaddr_reg[7]  ( .D(n841), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[7]) );
  DFFSR \fft_man_awaddr_reg[6]  ( .D(n842), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[6]) );
  DFFSR \fft_man_awaddr_reg[5]  ( .D(n843), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[5]) );
  DFFSR \fft_man_awaddr_reg[4]  ( .D(n844), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[4]) );
  DFFSR \fft_man_awaddr_reg[3]  ( .D(n845), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[3]) );
  DFFSR \fft_man_awaddr_reg[2]  ( .D(n846), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[2]) );
  DFFSR \fft_man_awaddr_reg[1]  ( .D(n847), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[1]) );
  DFFSR \fft_man_awaddr_reg[0]  ( .D(n848), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[0]) );
  fft_cla_1 r_adder ( .a(r_offset), .b({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, r_frame_size[10:0]}), .cin(1'b0), .sum(
        next_r_offset_val) );
  fft_cla_0 w_adder ( .a(w_offset), .b({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, w_frame_size[10:0]}), .cin(1'b0), .sum(
        next_w_offset_val) );
  fft_axi_counter_WRITE_OR_READ0_1 read_counter ( .clk(clk), .n_rst(n_rst), 
        .len(fft_man_arlen), .ready(fft_man_rready), .valid(fft_man_rvalid), 
        .resp(fft_man_rresp), .last(rcounter_last) );
  fft_axi_counter_WRITE_OR_READ1_1 write_counter ( .clk(clk), .n_rst(n_rst), 
        .len(fft_man_awlen), .ready(fft_man_wready), .valid(fft_man_wvalid), 
        .resp(1'b0), .last(fft_man_wlast) );
  fft_axi_manager_DW01_add_0_DW01_add_2 add_228 ( .A({\configs[3][31] , 
        \configs[3][30] , \configs[3][29] , \configs[3][28] , \configs[3][27] , 
        \configs[3][26] , \configs[3][25] , \configs[3][24] , \configs[3][23] , 
        \configs[3][22] , \configs[3][21] , \configs[3][20] , \configs[3][19] , 
        \configs[3][18] , \configs[3][17] , \configs[3][16] , \configs[3][15] , 
        \configs[3][14] , \configs[3][13] , \configs[3][12] , \configs[3][11] , 
        \configs[3][10] , \configs[3][9] , \configs[3][8] , \configs[3][7] , 
        \configs[3][6] , \configs[3][5] , \configs[3][4] , \configs[3][3] , 
        \configs[3][2] , \configs[3][1] , \configs[3][0] }), .B(w_offset), 
        .CI(1'b0), .SUM({N291, N290, N289, N288, N287, N286, N285, N284, N283, 
        N282, N281, N280, N279, N278, N277, N276, N275, N274, N273, N272, N271, 
        N270, N269, N268, N267, N266, N265, N264, N263, N262, N261, N260}) );
  fft_axi_manager_DW01_inc_0_DW01_inc_4 add_129 ( .A({1'b0, \config_reg[2][9] , 
        \config_reg[2][8] , \config_reg[2][7] , \config_reg[2][6] , 
        \config_reg[2][5] , \config_reg[2][4] , \config_reg[2][3] , 
        \config_reg[2][2] , \config_reg[2][1] , \config_reg[2][0] }), .SUM({
        N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49}) );
  fft_axi_manager_DW01_inc_1_DW01_inc_5 add_84 ( .A(fft_man_arlen), .SUM({N33, 
        N32, N31, N30, N29, N28, N27, N26, N25, N24}) );
  fft_axi_manager_DW01_inc_2_DW01_inc_6 add_130 ( .A({1'b0, \config_reg[4][9] , 
        \config_reg[4][8] , \config_reg[4][7] , \config_reg[4][6] , 
        \config_reg[4][5] , \config_reg[4][4] , \config_reg[4][3] , 
        \config_reg[4][2] , \config_reg[4][1] , \config_reg[4][0] }), .SUM({
        N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60}) );
  fft_axi_manager_DW01_add_1_DW01_add_3 add_178 ( .A({\configs[1][31] , 
        \configs[1][30] , \configs[1][29] , \configs[1][28] , \configs[1][27] , 
        \configs[1][26] , \configs[1][25] , \configs[1][24] , \configs[1][23] , 
        \configs[1][22] , \configs[1][21] , \configs[1][20] , \configs[1][19] , 
        \configs[1][18] , \configs[1][17] , \configs[1][16] , \configs[1][15] , 
        \configs[1][14] , \configs[1][13] , \configs[1][12] , \configs[1][11] , 
        \configs[1][10] , \configs[1][9] , \configs[1][8] , \configs[1][7] , 
        \configs[1][6] , \configs[1][5] , \configs[1][4] , \configs[1][3] , 
        \configs[1][2] , \configs[1][1] , \configs[1][0] }), .B(r_offset), 
        .CI(1'b0), .SUM({N244, N243, N242, N241, N240, N239, N238, N237, N236, 
        N235, N234, N233, N232, N231, N230, N229, N228, N227, N226, N225, N224, 
        N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213}) );
  OR2X2 U3 ( .A(n11), .B(n135), .Y(n1) );
  OR2X2 U4 ( .A(n135), .B(n288), .Y(n2) );
  AND2X2 U5 ( .A(\config_reg[6][0] ), .B(n756), .Y(n3) );
  INVX4 U6 ( .A(n1), .Y(n8) );
  INVX4 U7 ( .A(n2), .Y(n9) );
  INVX1 U8 ( .A(n103), .Y(n10) );
  INVX4 U9 ( .A(n10), .Y(n11) );
  INVX4 U10 ( .A(n320), .Y(n288) );
  INVX4 U15 ( .A(n3), .Y(n12) );
  INVX4 U16 ( .A(n3), .Y(n13) );
  INVX4 U17 ( .A(n3), .Y(n14) );
  INVX2 U18 ( .A(n718), .Y(n709) );
  INVX2 U19 ( .A(n378), .Y(n368) );
  BUFX2 U20 ( .A(n21), .Y(n15) );
  BUFX2 U21 ( .A(n64), .Y(n16) );
  AND2X1 U22 ( .A(fft_man_rready), .B(fft_man_rvalid), .Y(in_valid) );
  OAI21X1 U23 ( .A(fft_man_bvalid), .B(n17), .C(n18), .Y(next_wstate[1]) );
  AOI21X1 U24 ( .A(fft_man_awready), .B(fft_man_awvalid), .C(n19), .Y(n18) );
  INVX1 U25 ( .A(n20), .Y(n785) );
  MUX2X1 U26 ( .B(N244), .A(fft_man_araddr[31]), .S(n15), .Y(n20) );
  INVX1 U27 ( .A(n22), .Y(n786) );
  MUX2X1 U28 ( .B(N243), .A(fft_man_araddr[30]), .S(n15), .Y(n22) );
  INVX1 U29 ( .A(n23), .Y(n787) );
  MUX2X1 U30 ( .B(N242), .A(fft_man_araddr[29]), .S(n15), .Y(n23) );
  INVX1 U31 ( .A(n24), .Y(n788) );
  MUX2X1 U32 ( .B(N241), .A(fft_man_araddr[28]), .S(n15), .Y(n24) );
  INVX1 U33 ( .A(n25), .Y(n789) );
  MUX2X1 U34 ( .B(N240), .A(fft_man_araddr[27]), .S(n15), .Y(n25) );
  INVX1 U35 ( .A(n26), .Y(n790) );
  MUX2X1 U36 ( .B(N239), .A(fft_man_araddr[26]), .S(n15), .Y(n26) );
  INVX1 U37 ( .A(n27), .Y(n791) );
  MUX2X1 U38 ( .B(N238), .A(fft_man_araddr[25]), .S(n15), .Y(n27) );
  INVX1 U39 ( .A(n28), .Y(n792) );
  MUX2X1 U40 ( .B(N237), .A(fft_man_araddr[24]), .S(n15), .Y(n28) );
  INVX1 U41 ( .A(n29), .Y(n793) );
  MUX2X1 U42 ( .B(N236), .A(fft_man_araddr[23]), .S(n15), .Y(n29) );
  INVX1 U43 ( .A(n30), .Y(n794) );
  MUX2X1 U44 ( .B(N235), .A(fft_man_araddr[22]), .S(n15), .Y(n30) );
  INVX1 U45 ( .A(n31), .Y(n795) );
  MUX2X1 U46 ( .B(N234), .A(fft_man_araddr[21]), .S(n15), .Y(n31) );
  INVX1 U47 ( .A(n32), .Y(n796) );
  MUX2X1 U48 ( .B(N233), .A(fft_man_araddr[20]), .S(n15), .Y(n32) );
  INVX1 U49 ( .A(n33), .Y(n797) );
  MUX2X1 U50 ( .B(N232), .A(fft_man_araddr[19]), .S(n15), .Y(n33) );
  INVX1 U51 ( .A(n34), .Y(n798) );
  MUX2X1 U52 ( .B(N231), .A(fft_man_araddr[18]), .S(n15), .Y(n34) );
  INVX1 U53 ( .A(n35), .Y(n799) );
  MUX2X1 U54 ( .B(N230), .A(fft_man_araddr[17]), .S(n15), .Y(n35) );
  INVX1 U55 ( .A(n36), .Y(n800) );
  MUX2X1 U56 ( .B(N229), .A(fft_man_araddr[16]), .S(n15), .Y(n36) );
  INVX1 U57 ( .A(n37), .Y(n801) );
  MUX2X1 U58 ( .B(N228), .A(fft_man_araddr[15]), .S(n15), .Y(n37) );
  INVX1 U59 ( .A(n38), .Y(n802) );
  MUX2X1 U60 ( .B(N227), .A(fft_man_araddr[14]), .S(n15), .Y(n38) );
  INVX1 U61 ( .A(n39), .Y(n803) );
  MUX2X1 U62 ( .B(N226), .A(fft_man_araddr[13]), .S(n15), .Y(n39) );
  INVX1 U63 ( .A(n40), .Y(n804) );
  MUX2X1 U64 ( .B(N225), .A(fft_man_araddr[12]), .S(n15), .Y(n40) );
  INVX1 U65 ( .A(n41), .Y(n805) );
  MUX2X1 U66 ( .B(N224), .A(fft_man_araddr[11]), .S(n15), .Y(n41) );
  INVX1 U67 ( .A(n42), .Y(n806) );
  MUX2X1 U68 ( .B(N223), .A(fft_man_araddr[10]), .S(n15), .Y(n42) );
  INVX1 U69 ( .A(n43), .Y(n807) );
  MUX2X1 U70 ( .B(N222), .A(fft_man_araddr[9]), .S(n15), .Y(n43) );
  INVX1 U71 ( .A(n44), .Y(n808) );
  MUX2X1 U72 ( .B(N221), .A(fft_man_araddr[8]), .S(n15), .Y(n44) );
  INVX1 U73 ( .A(n45), .Y(n809) );
  MUX2X1 U74 ( .B(N220), .A(fft_man_araddr[7]), .S(n15), .Y(n45) );
  INVX1 U75 ( .A(n46), .Y(n810) );
  MUX2X1 U76 ( .B(N219), .A(fft_man_araddr[6]), .S(n21), .Y(n46) );
  INVX1 U77 ( .A(n47), .Y(n811) );
  MUX2X1 U78 ( .B(N218), .A(fft_man_araddr[5]), .S(n21), .Y(n47) );
  INVX1 U79 ( .A(n48), .Y(n812) );
  MUX2X1 U80 ( .B(N217), .A(fft_man_araddr[4]), .S(n21), .Y(n48) );
  INVX1 U81 ( .A(n49), .Y(n813) );
  MUX2X1 U82 ( .B(N216), .A(fft_man_araddr[3]), .S(n21), .Y(n49) );
  INVX1 U83 ( .A(n50), .Y(n814) );
  MUX2X1 U84 ( .B(N215), .A(fft_man_araddr[2]), .S(n21), .Y(n50) );
  INVX1 U85 ( .A(n51), .Y(n815) );
  MUX2X1 U86 ( .B(N214), .A(fft_man_araddr[1]), .S(n21), .Y(n51) );
  INVX1 U87 ( .A(n52), .Y(n816) );
  MUX2X1 U88 ( .B(N213), .A(fft_man_araddr[0]), .S(n21), .Y(n52) );
  NAND3X1 U89 ( .A(n53), .B(n54), .C(next_rstate[0]), .Y(n21) );
  OAI21X1 U90 ( .A(n55), .B(n56), .C(n57), .Y(next_rstate[0]) );
  AOI22X1 U91 ( .A(n58), .B(N18), .C(fft_man_arvalid), .D(n59), .Y(n57) );
  INVX1 U92 ( .A(fft_man_rready), .Y(n55) );
  INVX1 U93 ( .A(next_rstate[1]), .Y(n53) );
  OAI21X1 U94 ( .A(n60), .B(n59), .C(n61), .Y(next_rstate[1]) );
  NAND2X1 U95 ( .A(fft_man_rready), .B(n62), .Y(n61) );
  NAND3X1 U96 ( .A(fft_man_rvalid), .B(n56), .C(rcounter_last), .Y(n62) );
  INVX1 U97 ( .A(fft_man_rresp), .Y(n56) );
  INVX1 U98 ( .A(fft_man_arready), .Y(n59) );
  INVX1 U99 ( .A(fft_man_arvalid), .Y(n60) );
  INVX1 U100 ( .A(n63), .Y(n817) );
  MUX2X1 U101 ( .B(N291), .A(fft_man_awaddr[31]), .S(n16), .Y(n63) );
  INVX1 U102 ( .A(n65), .Y(n818) );
  MUX2X1 U103 ( .B(N290), .A(fft_man_awaddr[30]), .S(n16), .Y(n65) );
  INVX1 U104 ( .A(n66), .Y(n819) );
  MUX2X1 U105 ( .B(N289), .A(fft_man_awaddr[29]), .S(n16), .Y(n66) );
  INVX1 U106 ( .A(n67), .Y(n820) );
  MUX2X1 U107 ( .B(N288), .A(fft_man_awaddr[28]), .S(n16), .Y(n67) );
  INVX1 U108 ( .A(n68), .Y(n821) );
  MUX2X1 U109 ( .B(N287), .A(fft_man_awaddr[27]), .S(n16), .Y(n68) );
  INVX1 U110 ( .A(n69), .Y(n822) );
  MUX2X1 U111 ( .B(N286), .A(fft_man_awaddr[26]), .S(n16), .Y(n69) );
  INVX1 U112 ( .A(n70), .Y(n823) );
  MUX2X1 U113 ( .B(N285), .A(fft_man_awaddr[25]), .S(n16), .Y(n70) );
  INVX1 U114 ( .A(n71), .Y(n824) );
  MUX2X1 U115 ( .B(N284), .A(fft_man_awaddr[24]), .S(n16), .Y(n71) );
  INVX1 U116 ( .A(n72), .Y(n825) );
  MUX2X1 U117 ( .B(N283), .A(fft_man_awaddr[23]), .S(n16), .Y(n72) );
  INVX1 U118 ( .A(n73), .Y(n826) );
  MUX2X1 U119 ( .B(N282), .A(fft_man_awaddr[22]), .S(n16), .Y(n73) );
  INVX1 U120 ( .A(n74), .Y(n827) );
  MUX2X1 U121 ( .B(N281), .A(fft_man_awaddr[21]), .S(n16), .Y(n74) );
  INVX1 U122 ( .A(n75), .Y(n828) );
  MUX2X1 U123 ( .B(N280), .A(fft_man_awaddr[20]), .S(n16), .Y(n75) );
  INVX1 U124 ( .A(n76), .Y(n829) );
  MUX2X1 U125 ( .B(N279), .A(fft_man_awaddr[19]), .S(n16), .Y(n76) );
  INVX1 U126 ( .A(n77), .Y(n830) );
  MUX2X1 U127 ( .B(N278), .A(fft_man_awaddr[18]), .S(n16), .Y(n77) );
  INVX1 U128 ( .A(n78), .Y(n831) );
  MUX2X1 U129 ( .B(N277), .A(fft_man_awaddr[17]), .S(n16), .Y(n78) );
  INVX1 U130 ( .A(n79), .Y(n832) );
  MUX2X1 U131 ( .B(N276), .A(fft_man_awaddr[16]), .S(n16), .Y(n79) );
  INVX1 U132 ( .A(n80), .Y(n833) );
  MUX2X1 U133 ( .B(N275), .A(fft_man_awaddr[15]), .S(n16), .Y(n80) );
  INVX1 U134 ( .A(n81), .Y(n834) );
  MUX2X1 U135 ( .B(N274), .A(fft_man_awaddr[14]), .S(n16), .Y(n81) );
  INVX1 U136 ( .A(n82), .Y(n835) );
  MUX2X1 U137 ( .B(N273), .A(fft_man_awaddr[13]), .S(n16), .Y(n82) );
  INVX1 U138 ( .A(n83), .Y(n836) );
  MUX2X1 U139 ( .B(N272), .A(fft_man_awaddr[12]), .S(n16), .Y(n83) );
  INVX1 U140 ( .A(n84), .Y(n837) );
  MUX2X1 U141 ( .B(N271), .A(fft_man_awaddr[11]), .S(n16), .Y(n84) );
  INVX1 U142 ( .A(n85), .Y(n838) );
  MUX2X1 U143 ( .B(N270), .A(fft_man_awaddr[10]), .S(n16), .Y(n85) );
  INVX1 U144 ( .A(n86), .Y(n839) );
  MUX2X1 U145 ( .B(N269), .A(fft_man_awaddr[9]), .S(n16), .Y(n86) );
  INVX1 U146 ( .A(n87), .Y(n840) );
  MUX2X1 U147 ( .B(N268), .A(fft_man_awaddr[8]), .S(n16), .Y(n87) );
  INVX1 U148 ( .A(n88), .Y(n841) );
  MUX2X1 U149 ( .B(N267), .A(fft_man_awaddr[7]), .S(n16), .Y(n88) );
  INVX1 U150 ( .A(n89), .Y(n842) );
  MUX2X1 U151 ( .B(N266), .A(fft_man_awaddr[6]), .S(n64), .Y(n89) );
  INVX1 U152 ( .A(n90), .Y(n843) );
  MUX2X1 U153 ( .B(N265), .A(fft_man_awaddr[5]), .S(n64), .Y(n90) );
  INVX1 U154 ( .A(n91), .Y(n844) );
  MUX2X1 U155 ( .B(N264), .A(fft_man_awaddr[4]), .S(n64), .Y(n91) );
  INVX1 U156 ( .A(n92), .Y(n845) );
  MUX2X1 U157 ( .B(N263), .A(fft_man_awaddr[3]), .S(n64), .Y(n92) );
  INVX1 U158 ( .A(n93), .Y(n846) );
  MUX2X1 U159 ( .B(N262), .A(fft_man_awaddr[2]), .S(n64), .Y(n93) );
  INVX1 U160 ( .A(n94), .Y(n847) );
  MUX2X1 U161 ( .B(N261), .A(fft_man_awaddr[1]), .S(n64), .Y(n94) );
  INVX1 U162 ( .A(n95), .Y(n848) );
  MUX2X1 U163 ( .B(N260), .A(fft_man_awaddr[0]), .S(n64), .Y(n95) );
  NAND3X1 U164 ( .A(n96), .B(n17), .C(next_wstate[0]), .Y(n64) );
  NAND3X1 U165 ( .A(n97), .B(n98), .C(n99), .Y(next_wstate[0]) );
  AOI22X1 U166 ( .A(N295), .B(n100), .C(fft_man_awvalid), .D(n101), .Y(n99) );
  INVX1 U167 ( .A(fft_man_awready), .Y(n101) );
  INVX1 U168 ( .A(fft_man_bvalid), .Y(n100) );
  NAND3X1 U169 ( .A(fft_man_wlast), .B(n19), .C(fft_man_wready), .Y(n97) );
  INVX1 U170 ( .A(n102), .Y(n849) );
  AOI22X1 U171 ( .A(next_w_offset_val[31]), .B(n8), .C(w_offset[31]), .D(n11), 
        .Y(n102) );
  INVX1 U172 ( .A(n104), .Y(n850) );
  AOI22X1 U173 ( .A(next_w_offset_val[30]), .B(n8), .C(w_offset[30]), .D(n11), 
        .Y(n104) );
  INVX1 U174 ( .A(n105), .Y(n851) );
  AOI22X1 U175 ( .A(next_w_offset_val[29]), .B(n8), .C(w_offset[29]), .D(n11), 
        .Y(n105) );
  INVX1 U176 ( .A(n106), .Y(n852) );
  AOI22X1 U177 ( .A(next_w_offset_val[28]), .B(n8), .C(w_offset[28]), .D(n11), 
        .Y(n106) );
  INVX1 U178 ( .A(n107), .Y(n853) );
  AOI22X1 U179 ( .A(next_w_offset_val[27]), .B(n8), .C(w_offset[27]), .D(n11), 
        .Y(n107) );
  INVX1 U180 ( .A(n108), .Y(n854) );
  AOI22X1 U181 ( .A(next_w_offset_val[26]), .B(n8), .C(w_offset[26]), .D(n11), 
        .Y(n108) );
  INVX1 U182 ( .A(n109), .Y(n855) );
  AOI22X1 U183 ( .A(next_w_offset_val[25]), .B(n8), .C(w_offset[25]), .D(n11), 
        .Y(n109) );
  INVX1 U184 ( .A(n110), .Y(n856) );
  AOI22X1 U185 ( .A(next_w_offset_val[24]), .B(n8), .C(w_offset[24]), .D(n11), 
        .Y(n110) );
  INVX1 U186 ( .A(n111), .Y(n857) );
  AOI22X1 U187 ( .A(next_w_offset_val[23]), .B(n8), .C(w_offset[23]), .D(n11), 
        .Y(n111) );
  INVX1 U188 ( .A(n112), .Y(n858) );
  AOI22X1 U189 ( .A(next_w_offset_val[22]), .B(n8), .C(w_offset[22]), .D(n11), 
        .Y(n112) );
  INVX1 U190 ( .A(n113), .Y(n859) );
  AOI22X1 U191 ( .A(next_w_offset_val[21]), .B(n8), .C(w_offset[21]), .D(n11), 
        .Y(n113) );
  INVX1 U192 ( .A(n114), .Y(n860) );
  AOI22X1 U193 ( .A(next_w_offset_val[20]), .B(n8), .C(w_offset[20]), .D(n11), 
        .Y(n114) );
  INVX1 U194 ( .A(n115), .Y(n861) );
  AOI22X1 U195 ( .A(next_w_offset_val[19]), .B(n8), .C(w_offset[19]), .D(n11), 
        .Y(n115) );
  INVX1 U196 ( .A(n116), .Y(n862) );
  AOI22X1 U197 ( .A(next_w_offset_val[18]), .B(n8), .C(w_offset[18]), .D(n11), 
        .Y(n116) );
  INVX1 U198 ( .A(n117), .Y(n863) );
  AOI22X1 U199 ( .A(next_w_offset_val[17]), .B(n8), .C(w_offset[17]), .D(n11), 
        .Y(n117) );
  INVX1 U200 ( .A(n118), .Y(n864) );
  AOI22X1 U201 ( .A(next_w_offset_val[16]), .B(n8), .C(w_offset[16]), .D(n11), 
        .Y(n118) );
  INVX1 U202 ( .A(n119), .Y(n865) );
  AOI22X1 U203 ( .A(next_w_offset_val[15]), .B(n8), .C(w_offset[15]), .D(n11), 
        .Y(n119) );
  INVX1 U204 ( .A(n120), .Y(n866) );
  AOI22X1 U205 ( .A(next_w_offset_val[14]), .B(n8), .C(w_offset[14]), .D(n11), 
        .Y(n120) );
  INVX1 U206 ( .A(n121), .Y(n867) );
  AOI22X1 U207 ( .A(next_w_offset_val[13]), .B(n8), .C(w_offset[13]), .D(n11), 
        .Y(n121) );
  INVX1 U208 ( .A(n122), .Y(n868) );
  AOI22X1 U209 ( .A(next_w_offset_val[12]), .B(n8), .C(w_offset[12]), .D(n11), 
        .Y(n122) );
  INVX1 U210 ( .A(n123), .Y(n869) );
  AOI22X1 U211 ( .A(next_w_offset_val[11]), .B(n8), .C(w_offset[11]), .D(n11), 
        .Y(n123) );
  INVX1 U212 ( .A(n124), .Y(n870) );
  AOI22X1 U213 ( .A(next_w_offset_val[10]), .B(n8), .C(w_offset[10]), .D(n11), 
        .Y(n124) );
  INVX1 U214 ( .A(n125), .Y(n871) );
  AOI22X1 U215 ( .A(next_w_offset_val[9]), .B(n8), .C(w_offset[9]), .D(n11), 
        .Y(n125) );
  INVX1 U216 ( .A(n126), .Y(n872) );
  AOI22X1 U217 ( .A(next_w_offset_val[8]), .B(n8), .C(w_offset[8]), .D(n11), 
        .Y(n126) );
  INVX1 U218 ( .A(n127), .Y(n873) );
  AOI22X1 U219 ( .A(next_w_offset_val[7]), .B(n8), .C(w_offset[7]), .D(n11), 
        .Y(n127) );
  INVX1 U220 ( .A(n128), .Y(n874) );
  AOI22X1 U221 ( .A(next_w_offset_val[6]), .B(n8), .C(w_offset[6]), .D(n11), 
        .Y(n128) );
  INVX1 U222 ( .A(n129), .Y(n875) );
  AOI22X1 U223 ( .A(next_w_offset_val[5]), .B(n8), .C(w_offset[5]), .D(n11), 
        .Y(n129) );
  INVX1 U224 ( .A(n130), .Y(n876) );
  AOI22X1 U225 ( .A(next_w_offset_val[4]), .B(n8), .C(w_offset[4]), .D(n11), 
        .Y(n130) );
  INVX1 U226 ( .A(n131), .Y(n877) );
  AOI22X1 U227 ( .A(next_w_offset_val[3]), .B(n8), .C(w_offset[3]), .D(n11), 
        .Y(n131) );
  INVX1 U228 ( .A(n132), .Y(n878) );
  AOI22X1 U229 ( .A(next_w_offset_val[2]), .B(n8), .C(w_offset[2]), .D(n11), 
        .Y(n132) );
  INVX1 U230 ( .A(n133), .Y(n879) );
  AOI22X1 U231 ( .A(next_w_offset_val[0]), .B(n8), .C(w_offset[0]), .D(n11), 
        .Y(n133) );
  INVX1 U232 ( .A(n134), .Y(n880) );
  AOI22X1 U233 ( .A(next_w_offset_val[1]), .B(n8), .C(w_offset[1]), .D(n11), 
        .Y(n134) );
  OAI21X1 U234 ( .A(n136), .B(n137), .C(n138), .Y(n103) );
  OAI21X1 U235 ( .A(n139), .B(n140), .C(n14), .Y(n137) );
  OAI21X1 U236 ( .A(\configs[0][9] ), .B(n141), .C(n142), .Y(n140) );
  OAI21X1 U237 ( .A(n143), .B(n144), .C(j[9]), .Y(n142) );
  INVX1 U238 ( .A(n141), .Y(n143) );
  OAI21X1 U239 ( .A(j[8]), .B(n145), .C(n146), .Y(n141) );
  OAI21X1 U240 ( .A(\configs[0][8] ), .B(n147), .C(n148), .Y(n146) );
  AOI22X1 U241 ( .A(j[7]), .B(n149), .C(n150), .D(n151), .Y(n148) );
  INVX1 U242 ( .A(n152), .Y(n150) );
  NAND2X1 U243 ( .A(\configs[0][7] ), .B(n152), .Y(n149) );
  OAI21X1 U244 ( .A(j[6]), .B(n153), .C(n154), .Y(n152) );
  OAI21X1 U245 ( .A(\configs[0][6] ), .B(n155), .C(n156), .Y(n154) );
  AOI22X1 U246 ( .A(j[5]), .B(n157), .C(n158), .D(n159), .Y(n156) );
  INVX1 U247 ( .A(n160), .Y(n158) );
  NAND2X1 U248 ( .A(\configs[0][5] ), .B(n160), .Y(n157) );
  OAI22X1 U249 ( .A(n161), .B(n162), .C(j[4]), .D(n163), .Y(n160) );
  OAI21X1 U250 ( .A(\configs[0][3] ), .B(n164), .C(n165), .Y(n162) );
  OAI21X1 U251 ( .A(n166), .B(n167), .C(j[3]), .Y(n165) );
  INVX1 U252 ( .A(n164), .Y(n166) );
  OAI21X1 U253 ( .A(j[2]), .B(n168), .C(n169), .Y(n164) );
  OAI21X1 U254 ( .A(\configs[0][2] ), .B(n170), .C(n171), .Y(n169) );
  AND2X1 U255 ( .A(n172), .B(n173), .Y(n171) );
  OAI21X1 U256 ( .A(n174), .B(n175), .C(n176), .Y(n173) );
  OAI21X1 U257 ( .A(j[0]), .B(n175), .C(j[1]), .Y(n172) );
  NOR2X1 U258 ( .A(\configs[0][4] ), .B(n177), .Y(n161) );
  AND2X1 U259 ( .A(n178), .B(j[10]), .Y(n139) );
  NOR2X1 U260 ( .A(j[10]), .B(n178), .Y(n136) );
  INVX1 U261 ( .A(n179), .Y(n881) );
  MUX2X1 U262 ( .B(\config_reg[5][1] ), .A(fft_man_wstrb[1]), .S(n14), .Y(n179) );
  INVX1 U263 ( .A(n180), .Y(n882) );
  MUX2X1 U264 ( .B(\config_reg[5][0] ), .A(fft_man_wstrb[0]), .S(n13), .Y(n180) );
  INVX1 U265 ( .A(n181), .Y(n883) );
  MUX2X1 U266 ( .B(\config_reg[4][9] ), .A(fft_man_awlen[9]), .S(n12), .Y(n181) );
  INVX1 U267 ( .A(n182), .Y(n884) );
  MUX2X1 U268 ( .B(\config_reg[4][8] ), .A(fft_man_awlen[8]), .S(n14), .Y(n182) );
  INVX1 U269 ( .A(n183), .Y(n885) );
  MUX2X1 U270 ( .B(\config_reg[4][7] ), .A(fft_man_awlen[7]), .S(n13), .Y(n183) );
  INVX1 U271 ( .A(n184), .Y(n886) );
  MUX2X1 U272 ( .B(\config_reg[4][6] ), .A(fft_man_awlen[6]), .S(n12), .Y(n184) );
  INVX1 U273 ( .A(n185), .Y(n887) );
  MUX2X1 U274 ( .B(\config_reg[4][5] ), .A(fft_man_awlen[5]), .S(n14), .Y(n185) );
  INVX1 U275 ( .A(n186), .Y(n888) );
  MUX2X1 U276 ( .B(\config_reg[4][4] ), .A(fft_man_awlen[4]), .S(n13), .Y(n186) );
  INVX1 U277 ( .A(n187), .Y(n889) );
  MUX2X1 U278 ( .B(\config_reg[4][3] ), .A(fft_man_awlen[3]), .S(n12), .Y(n187) );
  INVX1 U279 ( .A(n188), .Y(n890) );
  MUX2X1 U280 ( .B(\config_reg[4][2] ), .A(fft_man_awlen[2]), .S(n14), .Y(n188) );
  INVX1 U281 ( .A(n189), .Y(n891) );
  MUX2X1 U282 ( .B(\config_reg[4][1] ), .A(fft_man_awlen[1]), .S(n13), .Y(n189) );
  INVX1 U283 ( .A(n190), .Y(n892) );
  MUX2X1 U284 ( .B(\config_reg[4][0] ), .A(fft_man_awlen[0]), .S(n12), .Y(n190) );
  INVX1 U285 ( .A(n191), .Y(n893) );
  MUX2X1 U286 ( .B(\config_reg[3][31] ), .A(\configs[3][31] ), .S(n14), .Y(
        n191) );
  INVX1 U287 ( .A(n192), .Y(n894) );
  MUX2X1 U288 ( .B(\config_reg[3][30] ), .A(\configs[3][30] ), .S(n13), .Y(
        n192) );
  INVX1 U289 ( .A(n193), .Y(n895) );
  MUX2X1 U290 ( .B(\config_reg[3][29] ), .A(\configs[3][29] ), .S(n12), .Y(
        n193) );
  INVX1 U291 ( .A(n194), .Y(n896) );
  MUX2X1 U292 ( .B(\config_reg[3][28] ), .A(\configs[3][28] ), .S(n14), .Y(
        n194) );
  INVX1 U293 ( .A(n195), .Y(n897) );
  MUX2X1 U294 ( .B(\config_reg[3][27] ), .A(\configs[3][27] ), .S(n13), .Y(
        n195) );
  INVX1 U295 ( .A(n196), .Y(n898) );
  MUX2X1 U296 ( .B(\config_reg[3][26] ), .A(\configs[3][26] ), .S(n12), .Y(
        n196) );
  INVX1 U297 ( .A(n197), .Y(n899) );
  MUX2X1 U298 ( .B(\config_reg[3][25] ), .A(\configs[3][25] ), .S(n14), .Y(
        n197) );
  INVX1 U299 ( .A(n198), .Y(n900) );
  MUX2X1 U300 ( .B(\config_reg[3][24] ), .A(\configs[3][24] ), .S(n13), .Y(
        n198) );
  INVX1 U301 ( .A(n199), .Y(n901) );
  MUX2X1 U302 ( .B(\config_reg[3][23] ), .A(\configs[3][23] ), .S(n12), .Y(
        n199) );
  INVX1 U303 ( .A(n200), .Y(n902) );
  MUX2X1 U304 ( .B(\config_reg[3][22] ), .A(\configs[3][22] ), .S(n14), .Y(
        n200) );
  INVX1 U305 ( .A(n201), .Y(n903) );
  MUX2X1 U306 ( .B(\config_reg[3][21] ), .A(\configs[3][21] ), .S(n13), .Y(
        n201) );
  INVX1 U307 ( .A(n202), .Y(n904) );
  MUX2X1 U308 ( .B(\config_reg[3][20] ), .A(\configs[3][20] ), .S(n12), .Y(
        n202) );
  INVX1 U309 ( .A(n203), .Y(n905) );
  MUX2X1 U310 ( .B(\config_reg[3][19] ), .A(\configs[3][19] ), .S(n14), .Y(
        n203) );
  INVX1 U311 ( .A(n204), .Y(n906) );
  MUX2X1 U312 ( .B(\config_reg[3][18] ), .A(\configs[3][18] ), .S(n13), .Y(
        n204) );
  INVX1 U313 ( .A(n205), .Y(n907) );
  MUX2X1 U314 ( .B(\config_reg[3][17] ), .A(\configs[3][17] ), .S(n12), .Y(
        n205) );
  INVX1 U315 ( .A(n206), .Y(n908) );
  MUX2X1 U316 ( .B(\config_reg[3][16] ), .A(\configs[3][16] ), .S(n14), .Y(
        n206) );
  INVX1 U317 ( .A(n207), .Y(n909) );
  MUX2X1 U318 ( .B(\config_reg[3][15] ), .A(\configs[3][15] ), .S(n13), .Y(
        n207) );
  INVX1 U319 ( .A(n208), .Y(n910) );
  MUX2X1 U320 ( .B(\config_reg[3][14] ), .A(\configs[3][14] ), .S(n12), .Y(
        n208) );
  INVX1 U321 ( .A(n209), .Y(n911) );
  MUX2X1 U322 ( .B(\config_reg[3][13] ), .A(\configs[3][13] ), .S(n14), .Y(
        n209) );
  INVX1 U323 ( .A(n210), .Y(n912) );
  MUX2X1 U324 ( .B(\config_reg[3][12] ), .A(\configs[3][12] ), .S(n13), .Y(
        n210) );
  INVX1 U325 ( .A(n211), .Y(n913) );
  MUX2X1 U326 ( .B(\config_reg[3][11] ), .A(\configs[3][11] ), .S(n12), .Y(
        n211) );
  INVX1 U327 ( .A(n212), .Y(n914) );
  MUX2X1 U328 ( .B(\config_reg[3][10] ), .A(\configs[3][10] ), .S(n14), .Y(
        n212) );
  INVX1 U329 ( .A(n213), .Y(n915) );
  MUX2X1 U330 ( .B(\config_reg[3][9] ), .A(\configs[3][9] ), .S(n13), .Y(n213)
         );
  INVX1 U331 ( .A(n214), .Y(n916) );
  MUX2X1 U332 ( .B(\config_reg[3][8] ), .A(\configs[3][8] ), .S(n12), .Y(n214)
         );
  INVX1 U333 ( .A(n215), .Y(n917) );
  MUX2X1 U334 ( .B(\config_reg[3][7] ), .A(\configs[3][7] ), .S(n14), .Y(n215)
         );
  INVX1 U335 ( .A(n216), .Y(n918) );
  MUX2X1 U336 ( .B(\config_reg[3][6] ), .A(\configs[3][6] ), .S(n13), .Y(n216)
         );
  INVX1 U337 ( .A(n217), .Y(n919) );
  MUX2X1 U338 ( .B(\config_reg[3][5] ), .A(\configs[3][5] ), .S(n12), .Y(n217)
         );
  INVX1 U339 ( .A(n218), .Y(n920) );
  MUX2X1 U340 ( .B(\config_reg[3][4] ), .A(\configs[3][4] ), .S(n14), .Y(n218)
         );
  INVX1 U341 ( .A(n219), .Y(n921) );
  MUX2X1 U342 ( .B(\config_reg[3][3] ), .A(\configs[3][3] ), .S(n13), .Y(n219)
         );
  INVX1 U343 ( .A(n220), .Y(n922) );
  MUX2X1 U344 ( .B(\config_reg[3][2] ), .A(\configs[3][2] ), .S(n12), .Y(n220)
         );
  INVX1 U345 ( .A(n221), .Y(n923) );
  MUX2X1 U346 ( .B(\config_reg[3][1] ), .A(\configs[3][1] ), .S(n14), .Y(n221)
         );
  INVX1 U347 ( .A(n222), .Y(n924) );
  MUX2X1 U348 ( .B(\config_reg[3][0] ), .A(\configs[3][0] ), .S(n13), .Y(n222)
         );
  INVX1 U349 ( .A(n223), .Y(n925) );
  MUX2X1 U350 ( .B(\config_reg[2][9] ), .A(fft_man_arlen[9]), .S(n12), .Y(n223) );
  INVX1 U351 ( .A(n224), .Y(n926) );
  MUX2X1 U352 ( .B(\config_reg[2][8] ), .A(fft_man_arlen[8]), .S(n14), .Y(n224) );
  INVX1 U353 ( .A(n225), .Y(n927) );
  MUX2X1 U354 ( .B(\config_reg[2][7] ), .A(fft_man_arlen[7]), .S(n13), .Y(n225) );
  INVX1 U355 ( .A(n226), .Y(n928) );
  MUX2X1 U356 ( .B(\config_reg[2][6] ), .A(fft_man_arlen[6]), .S(n12), .Y(n226) );
  INVX1 U357 ( .A(n227), .Y(n929) );
  MUX2X1 U358 ( .B(\config_reg[2][5] ), .A(fft_man_arlen[5]), .S(n14), .Y(n227) );
  INVX1 U359 ( .A(n228), .Y(n930) );
  MUX2X1 U360 ( .B(\config_reg[2][4] ), .A(fft_man_arlen[4]), .S(n13), .Y(n228) );
  INVX1 U361 ( .A(n229), .Y(n931) );
  MUX2X1 U362 ( .B(\config_reg[2][3] ), .A(fft_man_arlen[3]), .S(n12), .Y(n229) );
  INVX1 U363 ( .A(n230), .Y(n932) );
  MUX2X1 U364 ( .B(\config_reg[2][2] ), .A(fft_man_arlen[2]), .S(n14), .Y(n230) );
  INVX1 U365 ( .A(n231), .Y(n933) );
  MUX2X1 U366 ( .B(\config_reg[2][1] ), .A(fft_man_arlen[1]), .S(n13), .Y(n231) );
  INVX1 U367 ( .A(n232), .Y(n934) );
  MUX2X1 U368 ( .B(\config_reg[2][0] ), .A(fft_man_arlen[0]), .S(n12), .Y(n232) );
  INVX1 U369 ( .A(n233), .Y(n935) );
  MUX2X1 U370 ( .B(\config_reg[1][31] ), .A(\configs[1][31] ), .S(n14), .Y(
        n233) );
  INVX1 U371 ( .A(n234), .Y(n936) );
  MUX2X1 U372 ( .B(\config_reg[1][30] ), .A(\configs[1][30] ), .S(n13), .Y(
        n234) );
  INVX1 U373 ( .A(n235), .Y(n937) );
  MUX2X1 U374 ( .B(\config_reg[1][29] ), .A(\configs[1][29] ), .S(n12), .Y(
        n235) );
  INVX1 U375 ( .A(n236), .Y(n938) );
  MUX2X1 U376 ( .B(\config_reg[1][28] ), .A(\configs[1][28] ), .S(n14), .Y(
        n236) );
  INVX1 U377 ( .A(n237), .Y(n939) );
  MUX2X1 U378 ( .B(\config_reg[1][27] ), .A(\configs[1][27] ), .S(n13), .Y(
        n237) );
  INVX1 U379 ( .A(n238), .Y(n974) );
  MUX2X1 U380 ( .B(\config_reg[1][26] ), .A(\configs[1][26] ), .S(n12), .Y(
        n238) );
  INVX1 U381 ( .A(n239), .Y(n975) );
  MUX2X1 U382 ( .B(\config_reg[1][25] ), .A(\configs[1][25] ), .S(n14), .Y(
        n239) );
  INVX1 U383 ( .A(n240), .Y(n976) );
  MUX2X1 U384 ( .B(\config_reg[1][24] ), .A(\configs[1][24] ), .S(n13), .Y(
        n240) );
  INVX1 U385 ( .A(n241), .Y(n977) );
  MUX2X1 U386 ( .B(\config_reg[1][23] ), .A(\configs[1][23] ), .S(n12), .Y(
        n241) );
  INVX1 U387 ( .A(n242), .Y(n978) );
  MUX2X1 U388 ( .B(\config_reg[1][22] ), .A(\configs[1][22] ), .S(n14), .Y(
        n242) );
  INVX1 U389 ( .A(n243), .Y(n979) );
  MUX2X1 U390 ( .B(\config_reg[1][21] ), .A(\configs[1][21] ), .S(n13), .Y(
        n243) );
  INVX1 U391 ( .A(n244), .Y(n980) );
  MUX2X1 U392 ( .B(\config_reg[1][20] ), .A(\configs[1][20] ), .S(n12), .Y(
        n244) );
  INVX1 U393 ( .A(n245), .Y(n981) );
  MUX2X1 U394 ( .B(\config_reg[1][19] ), .A(\configs[1][19] ), .S(n14), .Y(
        n245) );
  INVX1 U395 ( .A(n246), .Y(n982) );
  MUX2X1 U396 ( .B(\config_reg[1][18] ), .A(\configs[1][18] ), .S(n13), .Y(
        n246) );
  INVX1 U397 ( .A(n247), .Y(n983) );
  MUX2X1 U398 ( .B(\config_reg[1][17] ), .A(\configs[1][17] ), .S(n12), .Y(
        n247) );
  INVX1 U399 ( .A(n248), .Y(n984) );
  MUX2X1 U400 ( .B(\config_reg[1][16] ), .A(\configs[1][16] ), .S(n14), .Y(
        n248) );
  INVX1 U401 ( .A(n249), .Y(n985) );
  MUX2X1 U402 ( .B(\config_reg[1][15] ), .A(\configs[1][15] ), .S(n13), .Y(
        n249) );
  INVX1 U403 ( .A(n250), .Y(n986) );
  MUX2X1 U404 ( .B(\config_reg[1][14] ), .A(\configs[1][14] ), .S(n12), .Y(
        n250) );
  INVX1 U405 ( .A(n251), .Y(n987) );
  MUX2X1 U406 ( .B(\config_reg[1][13] ), .A(\configs[1][13] ), .S(n14), .Y(
        n251) );
  INVX1 U407 ( .A(n252), .Y(n988) );
  MUX2X1 U408 ( .B(\config_reg[1][12] ), .A(\configs[1][12] ), .S(n13), .Y(
        n252) );
  INVX1 U409 ( .A(n253), .Y(n989) );
  MUX2X1 U410 ( .B(\config_reg[1][11] ), .A(\configs[1][11] ), .S(n12), .Y(
        n253) );
  INVX1 U411 ( .A(n254), .Y(n990) );
  MUX2X1 U412 ( .B(\config_reg[1][10] ), .A(\configs[1][10] ), .S(n14), .Y(
        n254) );
  INVX1 U413 ( .A(n255), .Y(n991) );
  MUX2X1 U414 ( .B(\config_reg[1][9] ), .A(\configs[1][9] ), .S(n13), .Y(n255)
         );
  INVX1 U415 ( .A(n256), .Y(n992) );
  MUX2X1 U416 ( .B(\config_reg[1][8] ), .A(\configs[1][8] ), .S(n12), .Y(n256)
         );
  INVX1 U417 ( .A(n257), .Y(n993) );
  MUX2X1 U418 ( .B(\config_reg[1][7] ), .A(\configs[1][7] ), .S(n14), .Y(n257)
         );
  INVX1 U419 ( .A(n258), .Y(n994) );
  MUX2X1 U420 ( .B(\config_reg[1][6] ), .A(\configs[1][6] ), .S(n13), .Y(n258)
         );
  INVX1 U421 ( .A(n259), .Y(n995) );
  MUX2X1 U422 ( .B(\config_reg[1][5] ), .A(\configs[1][5] ), .S(n12), .Y(n259)
         );
  INVX1 U423 ( .A(n260), .Y(n996) );
  MUX2X1 U424 ( .B(\config_reg[1][4] ), .A(\configs[1][4] ), .S(n14), .Y(n260)
         );
  INVX1 U425 ( .A(n261), .Y(n997) );
  MUX2X1 U426 ( .B(\config_reg[1][3] ), .A(\configs[1][3] ), .S(n13), .Y(n261)
         );
  INVX1 U427 ( .A(n262), .Y(n998) );
  MUX2X1 U428 ( .B(\config_reg[1][2] ), .A(\configs[1][2] ), .S(n12), .Y(n262)
         );
  INVX1 U429 ( .A(n263), .Y(n999) );
  MUX2X1 U430 ( .B(\config_reg[1][1] ), .A(\configs[1][1] ), .S(n14), .Y(n263)
         );
  INVX1 U431 ( .A(n264), .Y(n1000) );
  MUX2X1 U432 ( .B(\config_reg[1][0] ), .A(\configs[1][0] ), .S(n13), .Y(n264)
         );
  INVX1 U433 ( .A(n265), .Y(n1001) );
  MUX2X1 U434 ( .B(N50), .A(r_frame_size[1]), .S(n12), .Y(n265) );
  INVX1 U435 ( .A(n266), .Y(n1002) );
  MUX2X1 U436 ( .B(N51), .A(r_frame_size[2]), .S(n14), .Y(n266) );
  INVX1 U437 ( .A(n267), .Y(n1003) );
  MUX2X1 U438 ( .B(N52), .A(r_frame_size[3]), .S(n13), .Y(n267) );
  INVX1 U439 ( .A(n268), .Y(n1004) );
  MUX2X1 U440 ( .B(N53), .A(r_frame_size[4]), .S(n12), .Y(n268) );
  INVX1 U441 ( .A(n269), .Y(n1005) );
  MUX2X1 U442 ( .B(N54), .A(r_frame_size[5]), .S(n14), .Y(n269) );
  INVX1 U443 ( .A(n270), .Y(n1006) );
  MUX2X1 U444 ( .B(N55), .A(r_frame_size[6]), .S(n13), .Y(n270) );
  INVX1 U445 ( .A(n271), .Y(n1007) );
  MUX2X1 U446 ( .B(N56), .A(r_frame_size[7]), .S(n12), .Y(n271) );
  INVX1 U447 ( .A(n272), .Y(n1008) );
  MUX2X1 U448 ( .B(N57), .A(r_frame_size[8]), .S(n14), .Y(n272) );
  INVX1 U449 ( .A(n273), .Y(n1009) );
  MUX2X1 U450 ( .B(N58), .A(r_frame_size[9]), .S(n13), .Y(n273) );
  INVX1 U451 ( .A(n274), .Y(n1010) );
  MUX2X1 U452 ( .B(N59), .A(r_frame_size[10]), .S(n12), .Y(n274) );
  INVX1 U453 ( .A(n275), .Y(n1011) );
  MUX2X1 U454 ( .B(N60), .A(w_frame_size[0]), .S(n14), .Y(n275) );
  INVX1 U455 ( .A(n276), .Y(n1012) );
  MUX2X1 U456 ( .B(N61), .A(w_frame_size[1]), .S(n13), .Y(n276) );
  INVX1 U457 ( .A(n277), .Y(n1013) );
  MUX2X1 U458 ( .B(N62), .A(w_frame_size[2]), .S(n12), .Y(n277) );
  INVX1 U459 ( .A(n278), .Y(n1014) );
  MUX2X1 U460 ( .B(N63), .A(w_frame_size[3]), .S(n14), .Y(n278) );
  INVX1 U461 ( .A(n279), .Y(n1015) );
  MUX2X1 U462 ( .B(N64), .A(w_frame_size[4]), .S(n13), .Y(n279) );
  INVX1 U463 ( .A(n280), .Y(n1016) );
  MUX2X1 U464 ( .B(N65), .A(w_frame_size[5]), .S(n12), .Y(n280) );
  INVX1 U465 ( .A(n281), .Y(n1017) );
  MUX2X1 U466 ( .B(N66), .A(w_frame_size[6]), .S(n14), .Y(n281) );
  INVX1 U467 ( .A(n282), .Y(n1018) );
  MUX2X1 U468 ( .B(N67), .A(w_frame_size[7]), .S(n13), .Y(n282) );
  INVX1 U469 ( .A(n283), .Y(n1019) );
  MUX2X1 U470 ( .B(N68), .A(w_frame_size[8]), .S(n12), .Y(n283) );
  INVX1 U471 ( .A(n284), .Y(n1020) );
  MUX2X1 U472 ( .B(N69), .A(w_frame_size[9]), .S(n14), .Y(n284) );
  INVX1 U473 ( .A(n285), .Y(n1021) );
  MUX2X1 U474 ( .B(N70), .A(w_frame_size[10]), .S(n13), .Y(n285) );
  INVX1 U475 ( .A(n286), .Y(n1022) );
  MUX2X1 U476 ( .B(N49), .A(r_frame_size[0]), .S(n12), .Y(n286) );
  INVX1 U477 ( .A(n287), .Y(n1023) );
  AOI22X1 U478 ( .A(next_r_offset_val[1]), .B(n9), .C(r_offset[1]), .D(n288), 
        .Y(n287) );
  INVX1 U479 ( .A(n289), .Y(n1024) );
  AOI22X1 U480 ( .A(next_r_offset_val[0]), .B(n9), .C(r_offset[0]), .D(n288), 
        .Y(n289) );
  INVX1 U481 ( .A(n290), .Y(n1025) );
  AOI22X1 U482 ( .A(next_r_offset_val[2]), .B(n9), .C(r_offset[2]), .D(n288), 
        .Y(n290) );
  INVX1 U483 ( .A(n291), .Y(n1026) );
  AOI22X1 U484 ( .A(next_r_offset_val[3]), .B(n9), .C(r_offset[3]), .D(n288), 
        .Y(n291) );
  INVX1 U485 ( .A(n292), .Y(n1027) );
  AOI22X1 U486 ( .A(next_r_offset_val[4]), .B(n9), .C(r_offset[4]), .D(n288), 
        .Y(n292) );
  INVX1 U487 ( .A(n293), .Y(n1028) );
  AOI22X1 U488 ( .A(next_r_offset_val[5]), .B(n9), .C(r_offset[5]), .D(n288), 
        .Y(n293) );
  INVX1 U489 ( .A(n294), .Y(n1029) );
  AOI22X1 U490 ( .A(next_r_offset_val[6]), .B(n9), .C(r_offset[6]), .D(n288), 
        .Y(n294) );
  INVX1 U491 ( .A(n295), .Y(n1030) );
  AOI22X1 U492 ( .A(next_r_offset_val[7]), .B(n9), .C(r_offset[7]), .D(n288), 
        .Y(n295) );
  INVX1 U493 ( .A(n296), .Y(n1031) );
  AOI22X1 U494 ( .A(next_r_offset_val[8]), .B(n9), .C(r_offset[8]), .D(n288), 
        .Y(n296) );
  INVX1 U495 ( .A(n297), .Y(n1032) );
  AOI22X1 U496 ( .A(next_r_offset_val[9]), .B(n9), .C(r_offset[9]), .D(n288), 
        .Y(n297) );
  INVX1 U497 ( .A(n298), .Y(n1033) );
  AOI22X1 U498 ( .A(next_r_offset_val[10]), .B(n9), .C(r_offset[10]), .D(n288), 
        .Y(n298) );
  INVX1 U499 ( .A(n299), .Y(n1034) );
  AOI22X1 U500 ( .A(next_r_offset_val[11]), .B(n9), .C(r_offset[11]), .D(n288), 
        .Y(n299) );
  INVX1 U501 ( .A(n300), .Y(n1035) );
  AOI22X1 U502 ( .A(next_r_offset_val[12]), .B(n9), .C(r_offset[12]), .D(n288), 
        .Y(n300) );
  INVX1 U503 ( .A(n301), .Y(n1036) );
  AOI22X1 U504 ( .A(next_r_offset_val[13]), .B(n9), .C(r_offset[13]), .D(n288), 
        .Y(n301) );
  INVX1 U505 ( .A(n302), .Y(n1037) );
  AOI22X1 U506 ( .A(next_r_offset_val[14]), .B(n9), .C(r_offset[14]), .D(n288), 
        .Y(n302) );
  INVX1 U507 ( .A(n303), .Y(n1038) );
  AOI22X1 U508 ( .A(next_r_offset_val[15]), .B(n9), .C(r_offset[15]), .D(n288), 
        .Y(n303) );
  INVX1 U509 ( .A(n304), .Y(n1039) );
  AOI22X1 U510 ( .A(next_r_offset_val[16]), .B(n9), .C(r_offset[16]), .D(n288), 
        .Y(n304) );
  INVX1 U511 ( .A(n305), .Y(n1040) );
  AOI22X1 U512 ( .A(next_r_offset_val[17]), .B(n9), .C(r_offset[17]), .D(n288), 
        .Y(n305) );
  INVX1 U513 ( .A(n306), .Y(n1041) );
  AOI22X1 U514 ( .A(next_r_offset_val[18]), .B(n9), .C(r_offset[18]), .D(n288), 
        .Y(n306) );
  INVX1 U515 ( .A(n307), .Y(n1042) );
  AOI22X1 U516 ( .A(next_r_offset_val[19]), .B(n9), .C(r_offset[19]), .D(n288), 
        .Y(n307) );
  INVX1 U517 ( .A(n308), .Y(n1043) );
  AOI22X1 U518 ( .A(next_r_offset_val[20]), .B(n9), .C(r_offset[20]), .D(n288), 
        .Y(n308) );
  INVX1 U519 ( .A(n309), .Y(n1044) );
  AOI22X1 U520 ( .A(next_r_offset_val[21]), .B(n9), .C(r_offset[21]), .D(n288), 
        .Y(n309) );
  INVX1 U521 ( .A(n310), .Y(n1045) );
  AOI22X1 U522 ( .A(next_r_offset_val[22]), .B(n9), .C(r_offset[22]), .D(n288), 
        .Y(n310) );
  INVX1 U523 ( .A(n311), .Y(n1046) );
  AOI22X1 U524 ( .A(next_r_offset_val[23]), .B(n9), .C(r_offset[23]), .D(n288), 
        .Y(n311) );
  INVX1 U525 ( .A(n312), .Y(n1047) );
  AOI22X1 U526 ( .A(next_r_offset_val[24]), .B(n9), .C(r_offset[24]), .D(n288), 
        .Y(n312) );
  INVX1 U527 ( .A(n313), .Y(n1048) );
  AOI22X1 U528 ( .A(next_r_offset_val[25]), .B(n9), .C(r_offset[25]), .D(n288), 
        .Y(n313) );
  INVX1 U529 ( .A(n314), .Y(n1049) );
  AOI22X1 U530 ( .A(next_r_offset_val[26]), .B(n9), .C(r_offset[26]), .D(n288), 
        .Y(n314) );
  INVX1 U531 ( .A(n315), .Y(n1050) );
  AOI22X1 U532 ( .A(next_r_offset_val[27]), .B(n9), .C(r_offset[27]), .D(n288), 
        .Y(n315) );
  INVX1 U533 ( .A(n316), .Y(n1051) );
  AOI22X1 U534 ( .A(next_r_offset_val[28]), .B(n9), .C(r_offset[28]), .D(n288), 
        .Y(n316) );
  INVX1 U535 ( .A(n317), .Y(n1052) );
  AOI22X1 U536 ( .A(next_r_offset_val[29]), .B(n9), .C(r_offset[29]), .D(n288), 
        .Y(n317) );
  INVX1 U537 ( .A(n318), .Y(n1053) );
  AOI22X1 U538 ( .A(next_r_offset_val[30]), .B(n9), .C(r_offset[30]), .D(n288), 
        .Y(n318) );
  INVX1 U539 ( .A(n319), .Y(n1054) );
  AOI22X1 U540 ( .A(next_r_offset_val[31]), .B(n9), .C(r_offset[31]), .D(n288), 
        .Y(n319) );
  OAI21X1 U541 ( .A(n321), .B(n322), .C(n13), .Y(n320) );
  NAND2X1 U542 ( .A(n58), .B(n323), .Y(n322) );
  OAI21X1 U543 ( .A(n178), .B(n324), .C(n325), .Y(n323) );
  INVX1 U544 ( .A(n326), .Y(n325) );
  AOI21X1 U545 ( .A(n324), .B(n178), .C(k[10]), .Y(n326) );
  OAI21X1 U546 ( .A(\configs[0][9] ), .B(n327), .C(n328), .Y(n324) );
  OAI21X1 U547 ( .A(n329), .B(n144), .C(k[9]), .Y(n328) );
  INVX1 U548 ( .A(n327), .Y(n329) );
  OAI21X1 U549 ( .A(n145), .B(n330), .C(n331), .Y(n327) );
  OAI21X1 U550 ( .A(n332), .B(\configs[0][8] ), .C(n333), .Y(n331) );
  INVX1 U551 ( .A(n330), .Y(n332) );
  OAI21X1 U552 ( .A(\configs[0][7] ), .B(n334), .C(n335), .Y(n330) );
  OAI21X1 U553 ( .A(n336), .B(n151), .C(k[7]), .Y(n335) );
  INVX1 U554 ( .A(n334), .Y(n336) );
  OAI21X1 U555 ( .A(n153), .B(n337), .C(n338), .Y(n334) );
  OAI21X1 U556 ( .A(n339), .B(\configs[0][6] ), .C(n340), .Y(n338) );
  INVX1 U557 ( .A(n337), .Y(n339) );
  OAI21X1 U558 ( .A(\configs[0][5] ), .B(n341), .C(n342), .Y(n337) );
  OAI21X1 U559 ( .A(n343), .B(n159), .C(k[5]), .Y(n342) );
  INVX1 U560 ( .A(n341), .Y(n343) );
  OAI21X1 U561 ( .A(n163), .B(n344), .C(n345), .Y(n341) );
  OAI21X1 U562 ( .A(n346), .B(\configs[0][4] ), .C(n347), .Y(n345) );
  INVX1 U563 ( .A(n344), .Y(n346) );
  OAI21X1 U564 ( .A(\configs[0][3] ), .B(n348), .C(n349), .Y(n344) );
  OAI21X1 U565 ( .A(k[3]), .B(n167), .C(n350), .Y(n349) );
  AOI21X1 U566 ( .A(\configs[0][2] ), .B(n351), .C(n352), .Y(n350) );
  AOI21X1 U567 ( .A(k[2]), .B(n168), .C(n353), .Y(n352) );
  OAI22X1 U568 ( .A(\configs[0][1] ), .B(n354), .C(n355), .D(n356), .Y(n353)
         );
  OAI21X1 U569 ( .A(k[1]), .B(n176), .C(n175), .Y(n356) );
  INVX1 U570 ( .A(k[1]), .Y(n354) );
  INVX1 U571 ( .A(n357), .Y(n1055) );
  MUX2X1 U572 ( .B(N33), .A(frame_size[9]), .S(n358), .Y(n357) );
  INVX1 U573 ( .A(n359), .Y(n1056) );
  MUX2X1 U574 ( .B(N32), .A(frame_size[8]), .S(n358), .Y(n359) );
  INVX1 U575 ( .A(n360), .Y(n1057) );
  MUX2X1 U576 ( .B(N31), .A(frame_size[7]), .S(n358), .Y(n360) );
  INVX1 U577 ( .A(n361), .Y(n1058) );
  MUX2X1 U578 ( .B(N30), .A(frame_size[6]), .S(n358), .Y(n361) );
  INVX1 U579 ( .A(n362), .Y(n1059) );
  MUX2X1 U580 ( .B(N29), .A(frame_size[5]), .S(n358), .Y(n362) );
  INVX1 U581 ( .A(n363), .Y(n1060) );
  MUX2X1 U582 ( .B(N28), .A(frame_size[4]), .S(n358), .Y(n363) );
  INVX1 U583 ( .A(n364), .Y(n1061) );
  MUX2X1 U584 ( .B(N27), .A(frame_size[3]), .S(n358), .Y(n364) );
  INVX1 U585 ( .A(n365), .Y(n1062) );
  MUX2X1 U586 ( .B(N26), .A(frame_size[2]), .S(n358), .Y(n365) );
  INVX1 U587 ( .A(n366), .Y(n1063) );
  MUX2X1 U588 ( .B(N25), .A(frame_size[1]), .S(n358), .Y(n366) );
  INVX1 U589 ( .A(n367), .Y(n1064) );
  MUX2X1 U590 ( .B(N24), .A(frame_size[0]), .S(n358), .Y(n367) );
  OAI21X1 U591 ( .A(N18), .B(n368), .C(n369), .Y(n973) );
  AOI21X1 U592 ( .A(k[10]), .B(n370), .C(n371), .Y(n369) );
  OAI21X1 U593 ( .A(n372), .B(n368), .C(n373), .Y(n370) );
  INVX1 U594 ( .A(n374), .Y(n373) );
  NAND2X1 U595 ( .A(n375), .B(n376), .Y(n972) );
  MUX2X1 U596 ( .B(n377), .A(n378), .S(n355), .Y(n375) );
  OAI21X1 U597 ( .A(n379), .B(n368), .C(n380), .Y(n971) );
  AOI21X1 U598 ( .A(k[1]), .B(n381), .C(n382), .Y(n380) );
  OAI21X1 U599 ( .A(n355), .B(n368), .C(n383), .Y(n381) );
  INVX1 U600 ( .A(k[0]), .Y(n355) );
  NAND2X1 U601 ( .A(n384), .B(n385), .Y(n970) );
  MUX2X1 U602 ( .B(n386), .A(n387), .S(n351), .Y(n384) );
  NOR2X1 U603 ( .A(n379), .B(n368), .Y(n387) );
  INVX1 U604 ( .A(n388), .Y(n379) );
  OAI21X1 U605 ( .A(n389), .B(n368), .C(n390), .Y(n969) );
  AOI21X1 U606 ( .A(k[3]), .B(n391), .C(n392), .Y(n390) );
  OAI21X1 U607 ( .A(n351), .B(n368), .C(n393), .Y(n391) );
  INVX1 U608 ( .A(n386), .Y(n393) );
  OAI21X1 U609 ( .A(n388), .B(n368), .C(n383), .Y(n386) );
  NAND2X1 U610 ( .A(n394), .B(n395), .Y(n968) );
  MUX2X1 U611 ( .B(n396), .A(n397), .S(n347), .Y(n394) );
  NOR2X1 U612 ( .A(n389), .B(n368), .Y(n397) );
  OAI21X1 U613 ( .A(n398), .B(n368), .C(n399), .Y(n967) );
  AOI21X1 U614 ( .A(k[5]), .B(n400), .C(n401), .Y(n399) );
  OAI21X1 U615 ( .A(n368), .B(n347), .C(n402), .Y(n400) );
  INVX1 U616 ( .A(n396), .Y(n402) );
  OAI21X1 U617 ( .A(n403), .B(n368), .C(n383), .Y(n396) );
  NAND2X1 U618 ( .A(n439), .B(n441), .Y(n966) );
  MUX2X1 U619 ( .B(n443), .A(n445), .S(n340), .Y(n439) );
  NOR2X1 U620 ( .A(n398), .B(n368), .Y(n445) );
  OAI21X1 U621 ( .A(n447), .B(n368), .C(n449), .Y(n965) );
  AOI21X1 U622 ( .A(k[7]), .B(n451), .C(n453), .Y(n449) );
  OAI21X1 U623 ( .A(n368), .B(n340), .C(n455), .Y(n451) );
  INVX1 U624 ( .A(n443), .Y(n455) );
  OAI21X1 U625 ( .A(n457), .B(n368), .C(n383), .Y(n443) );
  OAI21X1 U626 ( .A(n703), .B(n333), .C(n704), .Y(n964) );
  NOR2X1 U627 ( .A(n705), .B(n706), .Y(n704) );
  NAND2X1 U628 ( .A(n707), .B(n708), .Y(n963) );
  MUX2X1 U629 ( .B(n374), .A(n706), .S(n372), .Y(n707) );
  NOR3X1 U630 ( .A(n447), .B(k[8]), .C(n368), .Y(n706) );
  OAI21X1 U631 ( .A(n368), .B(n333), .C(n703), .Y(n374) );
  AOI21X1 U632 ( .A(n447), .B(n378), .C(n377), .Y(n703) );
  NOR2X1 U633 ( .A(n135), .B(n377), .Y(n378) );
  INVX1 U634 ( .A(n383), .Y(n377) );
  OAI21X1 U635 ( .A(n135), .B(n321), .C(n14), .Y(n383) );
  INVX1 U636 ( .A(k_gt_0), .Y(n321) );
  OAI21X1 U637 ( .A(N19), .B(n709), .C(n710), .Y(n962) );
  AOI21X1 U638 ( .A(j[10]), .B(n711), .C(n371), .Y(n710) );
  INVX1 U639 ( .A(n712), .Y(n371) );
  OAI21X1 U640 ( .A(n713), .B(n709), .C(n714), .Y(n711) );
  INVX1 U641 ( .A(n715), .Y(n714) );
  NAND2X1 U642 ( .A(n716), .B(n376), .Y(n961) );
  MUX2X1 U643 ( .B(n717), .A(n718), .S(n719), .Y(n716) );
  OAI21X1 U644 ( .A(n174), .B(n709), .C(n720), .Y(n960) );
  AOI21X1 U645 ( .A(j[1]), .B(n721), .C(n382), .Y(n720) );
  INVX1 U646 ( .A(n722), .Y(n382) );
  OAI21X1 U647 ( .A(n709), .B(n719), .C(n138), .Y(n721) );
  INVX1 U648 ( .A(j[0]), .Y(n719) );
  NAND2X1 U649 ( .A(n723), .B(n385), .Y(n959) );
  MUX2X1 U650 ( .B(n724), .A(n725), .S(n170), .Y(n723) );
  NOR2X1 U651 ( .A(n174), .B(n709), .Y(n725) );
  INVX1 U652 ( .A(n726), .Y(n174) );
  OAI21X1 U653 ( .A(n727), .B(n709), .C(n728), .Y(n958) );
  AOI21X1 U654 ( .A(j[3]), .B(n729), .C(n392), .Y(n728) );
  INVX1 U655 ( .A(n730), .Y(n392) );
  OAI21X1 U656 ( .A(n170), .B(n709), .C(n731), .Y(n729) );
  INVX1 U657 ( .A(n724), .Y(n731) );
  OAI21X1 U658 ( .A(n726), .B(n709), .C(n138), .Y(n724) );
  NAND2X1 U659 ( .A(n732), .B(n395), .Y(n957) );
  MUX2X1 U660 ( .B(n733), .A(n734), .S(n177), .Y(n732) );
  NOR2X1 U661 ( .A(n727), .B(n709), .Y(n734) );
  OAI21X1 U662 ( .A(n735), .B(n709), .C(n736), .Y(n956) );
  AOI21X1 U663 ( .A(j[5]), .B(n737), .C(n401), .Y(n736) );
  INVX1 U664 ( .A(n738), .Y(n401) );
  OAI21X1 U665 ( .A(n177), .B(n709), .C(n739), .Y(n737) );
  INVX1 U666 ( .A(n733), .Y(n739) );
  OAI21X1 U667 ( .A(n740), .B(n709), .C(n138), .Y(n733) );
  NAND2X1 U668 ( .A(n741), .B(n441), .Y(n955) );
  MUX2X1 U669 ( .B(n742), .A(n743), .S(n155), .Y(n741) );
  NOR2X1 U670 ( .A(n735), .B(n709), .Y(n743) );
  OAI21X1 U671 ( .A(n709), .B(n744), .C(n745), .Y(n954) );
  AOI21X1 U672 ( .A(j[7]), .B(n746), .C(n453), .Y(n745) );
  INVX1 U673 ( .A(n747), .Y(n453) );
  OAI21X1 U674 ( .A(n155), .B(n709), .C(n748), .Y(n746) );
  INVX1 U675 ( .A(n742), .Y(n748) );
  OAI21X1 U676 ( .A(n749), .B(n709), .C(n138), .Y(n742) );
  OAI21X1 U677 ( .A(n750), .B(n147), .C(n751), .Y(n953) );
  NOR2X1 U678 ( .A(n705), .B(n752), .Y(n751) );
  INVX1 U679 ( .A(n753), .Y(n705) );
  NAND2X1 U680 ( .A(n754), .B(n708), .Y(n952) );
  MUX2X1 U681 ( .B(n715), .A(n752), .S(n713), .Y(n754) );
  NOR3X1 U682 ( .A(n709), .B(j[8]), .C(n744), .Y(n752) );
  OAI21X1 U683 ( .A(n147), .B(n709), .C(n750), .Y(n715) );
  AOI21X1 U1014 ( .A(n744), .B(n718), .C(n717), .Y(n750) );
  NOR2X1 U1015 ( .A(n135), .B(n717), .Y(n718) );
  INVX1 U1016 ( .A(n138), .Y(n717) );
  NAND2X1 U1017 ( .A(n12), .B(n98), .Y(n138) );
  NAND3X1 U1018 ( .A(j_eq_k), .B(n58), .C(j_gt_0), .Y(n98) );
  XNOR2X1 U1019 ( .A(n755), .B(n756), .Y(n951) );
  OAI21X1 U1020 ( .A(n135), .B(n757), .C(n13), .Y(n755) );
  OR2X1 U1021 ( .A(N18), .B(N19), .Y(n757) );
  INVX1 U1022 ( .A(n58), .Y(n135) );
  NOR2X1 U1023 ( .A(n756), .B(n358), .Y(n58) );
  OAI21X1 U1024 ( .A(n3), .B(n175), .C(n376), .Y(n950) );
  NAND2X1 U1025 ( .A(\config_reg[0][0] ), .B(n3), .Y(n376) );
  INVX1 U1026 ( .A(\configs[0][0] ), .Y(n175) );
  OAI21X1 U1027 ( .A(n3), .B(n176), .C(n722), .Y(n949) );
  NAND2X1 U1028 ( .A(\config_reg[0][1] ), .B(n3), .Y(n722) );
  INVX1 U1029 ( .A(\configs[0][1] ), .Y(n176) );
  OAI21X1 U1030 ( .A(n3), .B(n168), .C(n385), .Y(n948) );
  NAND2X1 U1031 ( .A(\config_reg[0][2] ), .B(n3), .Y(n385) );
  INVX1 U1032 ( .A(\configs[0][2] ), .Y(n168) );
  OAI21X1 U1033 ( .A(n3), .B(n167), .C(n730), .Y(n947) );
  NAND2X1 U1034 ( .A(\config_reg[0][3] ), .B(n3), .Y(n730) );
  INVX1 U1035 ( .A(\configs[0][3] ), .Y(n167) );
  OAI21X1 U1036 ( .A(n3), .B(n163), .C(n395), .Y(n946) );
  NAND2X1 U1037 ( .A(\config_reg[0][4] ), .B(n3), .Y(n395) );
  INVX1 U1038 ( .A(\configs[0][4] ), .Y(n163) );
  OAI21X1 U1039 ( .A(n3), .B(n159), .C(n738), .Y(n945) );
  NAND2X1 U1040 ( .A(\config_reg[0][5] ), .B(n3), .Y(n738) );
  INVX1 U1041 ( .A(\configs[0][5] ), .Y(n159) );
  OAI21X1 U1042 ( .A(n3), .B(n153), .C(n441), .Y(n944) );
  NAND2X1 U1043 ( .A(\config_reg[0][6] ), .B(n3), .Y(n441) );
  INVX1 U1044 ( .A(\configs[0][6] ), .Y(n153) );
  OAI21X1 U1045 ( .A(n3), .B(n151), .C(n747), .Y(n943) );
  NAND2X1 U1046 ( .A(\config_reg[0][7] ), .B(n3), .Y(n747) );
  INVX1 U1047 ( .A(\configs[0][7] ), .Y(n151) );
  OAI21X1 U1048 ( .A(n3), .B(n145), .C(n753), .Y(n942) );
  NAND2X1 U1049 ( .A(\config_reg[0][8] ), .B(n3), .Y(n753) );
  INVX1 U1050 ( .A(\configs[0][8] ), .Y(n145) );
  OAI21X1 U1051 ( .A(n3), .B(n144), .C(n708), .Y(n941) );
  NAND2X1 U1052 ( .A(\config_reg[0][9] ), .B(n3), .Y(n708) );
  INVX1 U1053 ( .A(\configs[0][9] ), .Y(n144) );
  OAI21X1 U1054 ( .A(n3), .B(n178), .C(n712), .Y(n940) );
  NAND2X1 U1055 ( .A(\config_reg[0][10] ), .B(n3), .Y(n712) );
  INVX1 U1056 ( .A(\configs[0][10] ), .Y(n178) );
  INVX1 U1057 ( .A(processing), .Y(n756) );
  NAND2X1 U1058 ( .A(n358), .B(n758), .Y(n437) );
  INVX1 U1059 ( .A(load_size), .Y(n758) );
  NAND3X1 U1060 ( .A(n54), .B(n759), .C(n760), .Y(n358) );
  NOR2X1 U1061 ( .A(wstate[1]), .B(wstate[0]), .Y(n760) );
  AND2X1 U1062 ( .A(out_valid), .B(n19), .Y(fft_man_wvalid) );
  NOR2X1 U1063 ( .A(n17), .B(wstate[0]), .Y(n19) );
  NOR2X1 U1064 ( .A(n759), .B(rstate[0]), .Y(fft_man_rready) );
  INVX1 U1065 ( .A(rstate[1]), .Y(n759) );
  NOR2X1 U1066 ( .A(n96), .B(wstate[1]), .Y(fft_man_awvalid) );
  NOR2X1 U1067 ( .A(n54), .B(rstate[1]), .Y(fft_man_arvalid) );
  INVX1 U1068 ( .A(rstate[0]), .Y(n54) );
  NOR2X1 U1069 ( .A(n96), .B(n17), .Y(N295) );
  INVX1 U1070 ( .A(wstate[1]), .Y(n17) );
  INVX1 U1071 ( .A(wstate[0]), .Y(n96) );
  NAND3X1 U1072 ( .A(n147), .B(n713), .C(n761), .Y(N19) );
  NOR2X1 U1073 ( .A(j[10]), .B(n744), .Y(n761) );
  NAND3X1 U1074 ( .A(n155), .B(n762), .C(n749), .Y(n744) );
  INVX1 U1075 ( .A(n735), .Y(n749) );
  NAND3X1 U1076 ( .A(n177), .B(n763), .C(n740), .Y(n735) );
  INVX1 U1077 ( .A(n727), .Y(n740) );
  NAND3X1 U1078 ( .A(n170), .B(n764), .C(n726), .Y(n727) );
  NOR2X1 U1079 ( .A(j[0]), .B(j[1]), .Y(n726) );
  INVX1 U1080 ( .A(j[3]), .Y(n764) );
  INVX1 U1081 ( .A(j[2]), .Y(n170) );
  INVX1 U1082 ( .A(j[5]), .Y(n763) );
  INVX1 U1083 ( .A(j[4]), .Y(n177) );
  INVX1 U1084 ( .A(j[7]), .Y(n762) );
  INVX1 U1085 ( .A(j[6]), .Y(n155) );
  INVX1 U1086 ( .A(j[9]), .Y(n713) );
  INVX1 U1087 ( .A(j[8]), .Y(n147) );
  NAND3X1 U1088 ( .A(n333), .B(n372), .C(n765), .Y(N18) );
  NOR2X1 U1089 ( .A(k[10]), .B(n447), .Y(n765) );
  NAND3X1 U1090 ( .A(n340), .B(n766), .C(n457), .Y(n447) );
  INVX1 U1091 ( .A(n398), .Y(n457) );
  NAND3X1 U1092 ( .A(n347), .B(n767), .C(n403), .Y(n398) );
  INVX1 U1093 ( .A(n389), .Y(n403) );
  NAND3X1 U1094 ( .A(n351), .B(n348), .C(n388), .Y(n389) );
  NOR2X1 U1095 ( .A(k[0]), .B(k[1]), .Y(n388) );
  INVX1 U1096 ( .A(k[3]), .Y(n348) );
  INVX1 U1097 ( .A(k[2]), .Y(n351) );
  INVX1 U1098 ( .A(k[5]), .Y(n767) );
  INVX1 U1099 ( .A(k[4]), .Y(n347) );
  INVX1 U1100 ( .A(k[6]), .Y(n340) );
  NOR2X1 U1101 ( .A(n768), .B(n769), .Y(N17) );
  NAND3X1 U1102 ( .A(n770), .B(n771), .C(n772), .Y(n769) );
  NOR2X1 U1103 ( .A(n773), .B(n774), .Y(n772) );
  XNOR2X1 U1104 ( .A(n372), .B(j[9]), .Y(n774) );
  INVX1 U1105 ( .A(k[9]), .Y(n372) );
  XNOR2X1 U1106 ( .A(n333), .B(j[8]), .Y(n773) );
  INVX1 U1107 ( .A(k[8]), .Y(n333) );
  XNOR2X1 U1108 ( .A(k[6]), .B(j[6]), .Y(n771) );
  NOR2X1 U1109 ( .A(n775), .B(n776), .Y(n770) );
  XOR2X1 U1110 ( .A(k[10]), .B(j[10]), .Y(n776) );
  XNOR2X1 U1111 ( .A(n766), .B(j[7]), .Y(n775) );
  INVX1 U1112 ( .A(k[7]), .Y(n766) );
  OR2X1 U1113 ( .A(n777), .B(n778), .Y(n768) );
  NAND3X1 U1114 ( .A(n779), .B(n780), .C(n781), .Y(n778) );
  XNOR2X1 U1115 ( .A(k[4]), .B(j[4]), .Y(n781) );
  XNOR2X1 U1116 ( .A(j[5]), .B(k[5]), .Y(n780) );
  XNOR2X1 U1117 ( .A(j[3]), .B(k[3]), .Y(n779) );
  NAND3X1 U1118 ( .A(n782), .B(n783), .C(n784), .Y(n777) );
  XNOR2X1 U1119 ( .A(j[1]), .B(k[1]), .Y(n784) );
  XNOR2X1 U1120 ( .A(j[2]), .B(k[2]), .Y(n783) );
  XNOR2X1 U1121 ( .A(j[0]), .B(k[0]), .Y(n782) );
endmodule


module fft_axi_counter_WRITE_OR_READ1_0_DW01_inc_0_DW01_inc_3 ( A, SUM );
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


module fft_axi_counter_WRITE_OR_READ1_0 ( clk, n_rst, len, ready, valid, resp, 
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
         n73, n74;
  tri   clk;
  tri   n_rst;

  DFFSR \i_reg[0]  ( .D(n65), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[0]) );
  DFFSR \i_reg[1]  ( .D(n74), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[1]) );
  DFFSR \i_reg[2]  ( .D(n73), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[2]) );
  DFFSR \i_reg[3]  ( .D(n72), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[3]) );
  DFFSR \i_reg[4]  ( .D(n71), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[4]) );
  DFFSR \i_reg[5]  ( .D(n70), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[5]) );
  DFFSR \i_reg[6]  ( .D(n69), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[6]) );
  DFFSR \i_reg[7]  ( .D(n68), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[7]) );
  DFFSR \i_reg[8]  ( .D(n67), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[8]) );
  DFFSR \i_reg[9]  ( .D(n66), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[9]) );
  fft_axi_counter_WRITE_OR_READ1_0_DW01_inc_0_DW01_inc_3 r376 ( .A(i), .SUM({
        N16, N15, N14, N13, N12, N11, N10, N9, N8, N7}) );
  OAI21X1 U7 ( .A(n1), .B(n2), .C(n3), .Y(n65) );
  NAND2X1 U8 ( .A(N7), .B(n4), .Y(n3) );
  OAI21X1 U15 ( .A(n1), .B(n5), .C(n6), .Y(n66) );
  NAND2X1 U16 ( .A(N16), .B(n4), .Y(n6) );
  OAI21X1 U17 ( .A(n1), .B(n17), .C(n18), .Y(n67) );
  NAND2X1 U18 ( .A(N15), .B(n4), .Y(n18) );
  OAI21X1 U19 ( .A(n1), .B(n19), .C(n20), .Y(n68) );
  NAND2X1 U20 ( .A(N14), .B(n4), .Y(n20) );
  INVX1 U21 ( .A(i[7]), .Y(n19) );
  OAI21X1 U22 ( .A(n1), .B(n21), .C(n22), .Y(n69) );
  NAND2X1 U23 ( .A(N13), .B(n4), .Y(n22) );
  OAI21X1 U24 ( .A(n1), .B(n23), .C(n24), .Y(n70) );
  NAND2X1 U25 ( .A(N12), .B(n4), .Y(n24) );
  OAI21X1 U26 ( .A(n1), .B(n25), .C(n26), .Y(n71) );
  NAND2X1 U27 ( .A(N11), .B(n4), .Y(n26) );
  OAI21X1 U28 ( .A(n1), .B(n27), .C(n28), .Y(n72) );
  NAND2X1 U29 ( .A(N10), .B(n4), .Y(n28) );
  OAI21X1 U30 ( .A(n1), .B(n29), .C(n30), .Y(n73) );
  NAND2X1 U31 ( .A(N9), .B(n4), .Y(n30) );
  OAI21X1 U32 ( .A(n1), .B(n31), .C(n32), .Y(n74) );
  NAND2X1 U33 ( .A(N8), .B(n4), .Y(n32) );
  AND2X1 U34 ( .A(n1), .B(n33), .Y(n4) );
  INVX1 U35 ( .A(n34), .Y(n1) );
  NOR2X1 U36 ( .A(n34), .B(n33), .Y(last) );
  OAI21X1 U37 ( .A(n35), .B(n36), .C(n37), .Y(n33) );
  AOI22X1 U38 ( .A(n38), .B(len[8]), .C(len[9]), .D(n5), .Y(n37) );
  NOR2X1 U39 ( .A(i[8]), .B(n39), .Y(n38) );
  OAI21X1 U40 ( .A(n40), .B(n41), .C(n42), .Y(n36) );
  INVX1 U41 ( .A(n39), .Y(n42) );
  NOR2X1 U42 ( .A(n5), .B(len[9]), .Y(n39) );
  INVX1 U43 ( .A(i[9]), .Y(n5) );
  OAI22X1 U44 ( .A(n43), .B(n44), .C(n45), .D(n46), .Y(n41) );
  OAI21X1 U45 ( .A(len[5]), .B(n23), .C(n47), .Y(n46) );
  INVX1 U46 ( .A(n43), .Y(n47) );
  OAI21X1 U47 ( .A(len[4]), .B(n25), .C(n48), .Y(n45) );
  OAI21X1 U48 ( .A(n49), .B(n50), .C(n51), .Y(n48) );
  AOI22X1 U49 ( .A(n52), .B(len[2]), .C(len[3]), .D(n27), .Y(n51) );
  NOR2X1 U50 ( .A(i[2]), .B(n53), .Y(n52) );
  OAI22X1 U51 ( .A(len[2]), .B(n29), .C(n54), .D(n31), .Y(n50) );
  INVX1 U52 ( .A(i[1]), .Y(n31) );
  INVX1 U53 ( .A(n55), .Y(n54) );
  INVX1 U54 ( .A(i[2]), .Y(n29) );
  OAI21X1 U55 ( .A(len[1]), .B(n56), .C(n57), .Y(n49) );
  INVX1 U56 ( .A(n53), .Y(n57) );
  NOR2X1 U57 ( .A(n27), .B(len[3]), .Y(n53) );
  INVX1 U58 ( .A(i[3]), .Y(n27) );
  NOR2X1 U59 ( .A(i[1]), .B(n55), .Y(n56) );
  NAND2X1 U60 ( .A(len[0]), .B(n2), .Y(n55) );
  INVX1 U61 ( .A(i[0]), .Y(n2) );
  OAI21X1 U62 ( .A(n58), .B(n23), .C(n59), .Y(n44) );
  OAI21X1 U63 ( .A(i[5]), .B(n60), .C(n61), .Y(n59) );
  INVX1 U64 ( .A(len[5]), .Y(n61) );
  INVX1 U65 ( .A(i[5]), .Y(n23) );
  INVX1 U66 ( .A(n60), .Y(n58) );
  NAND2X1 U67 ( .A(len[4]), .B(n25), .Y(n60) );
  INVX1 U68 ( .A(i[4]), .Y(n25) );
  OAI21X1 U69 ( .A(len[6]), .B(n21), .C(n62), .Y(n43) );
  OAI21X1 U70 ( .A(i[7]), .B(n63), .C(n64), .Y(n40) );
  NAND3X1 U71 ( .A(n62), .B(n21), .C(len[6]), .Y(n64) );
  INVX1 U72 ( .A(i[6]), .Y(n21) );
  NAND2X1 U73 ( .A(i[7]), .B(n63), .Y(n62) );
  INVX1 U74 ( .A(len[7]), .Y(n63) );
  NOR2X1 U75 ( .A(len[8]), .B(n17), .Y(n35) );
  INVX1 U76 ( .A(i[8]), .Y(n17) );
  AOI21X1 U77 ( .A(valid), .B(ready), .C(resp), .Y(n34) );
endmodule


module fft_axi_counter_WRITE_OR_READ0_0_DW01_inc_0_DW01_inc_2 ( A, SUM );
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


module fft_axi_counter_WRITE_OR_READ0_0 ( clk, n_rst, len, ready, valid, resp, 
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
         n73, n74;
  tri   clk;
  tri   n_rst;

  DFFSR \i_reg[0]  ( .D(n65), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[0]) );
  DFFSR \i_reg[1]  ( .D(n74), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[1]) );
  DFFSR \i_reg[2]  ( .D(n73), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[2]) );
  DFFSR \i_reg[3]  ( .D(n72), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[3]) );
  DFFSR \i_reg[4]  ( .D(n71), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[4]) );
  DFFSR \i_reg[5]  ( .D(n70), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[5]) );
  DFFSR \i_reg[6]  ( .D(n69), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[6]) );
  DFFSR \i_reg[7]  ( .D(n68), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[7]) );
  DFFSR \i_reg[8]  ( .D(n67), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[8]) );
  DFFSR \i_reg[9]  ( .D(n66), .CLK(clk), .R(n_rst), .S(1'b1), .Q(i[9]) );
  fft_axi_counter_WRITE_OR_READ0_0_DW01_inc_0_DW01_inc_2 r376 ( .A(i), .SUM({
        N16, N15, N14, N13, N12, N11, N10, N9, N8, N7}) );
  OAI21X1 U7 ( .A(n1), .B(n2), .C(n3), .Y(n65) );
  NAND2X1 U8 ( .A(N7), .B(n4), .Y(n3) );
  OAI21X1 U15 ( .A(n1), .B(n5), .C(n6), .Y(n66) );
  NAND2X1 U16 ( .A(N16), .B(n4), .Y(n6) );
  OAI21X1 U17 ( .A(n1), .B(n17), .C(n18), .Y(n67) );
  NAND2X1 U18 ( .A(N15), .B(n4), .Y(n18) );
  OAI21X1 U19 ( .A(n1), .B(n19), .C(n20), .Y(n68) );
  NAND2X1 U20 ( .A(N14), .B(n4), .Y(n20) );
  INVX1 U21 ( .A(i[7]), .Y(n19) );
  OAI21X1 U22 ( .A(n1), .B(n21), .C(n22), .Y(n69) );
  NAND2X1 U23 ( .A(N13), .B(n4), .Y(n22) );
  OAI21X1 U24 ( .A(n1), .B(n23), .C(n24), .Y(n70) );
  NAND2X1 U25 ( .A(N12), .B(n4), .Y(n24) );
  OAI21X1 U26 ( .A(n1), .B(n25), .C(n26), .Y(n71) );
  NAND2X1 U27 ( .A(N11), .B(n4), .Y(n26) );
  OAI21X1 U28 ( .A(n1), .B(n27), .C(n28), .Y(n72) );
  NAND2X1 U29 ( .A(N10), .B(n4), .Y(n28) );
  OAI21X1 U30 ( .A(n1), .B(n29), .C(n30), .Y(n73) );
  NAND2X1 U31 ( .A(N9), .B(n4), .Y(n30) );
  OAI21X1 U32 ( .A(n1), .B(n31), .C(n32), .Y(n74) );
  NAND2X1 U33 ( .A(N8), .B(n4), .Y(n32) );
  AND2X1 U34 ( .A(n1), .B(n33), .Y(n4) );
  INVX1 U35 ( .A(n34), .Y(n1) );
  NOR2X1 U36 ( .A(n34), .B(n33), .Y(last) );
  OAI21X1 U37 ( .A(n35), .B(n36), .C(n37), .Y(n33) );
  AOI22X1 U38 ( .A(n38), .B(len[8]), .C(len[9]), .D(n5), .Y(n37) );
  NOR2X1 U39 ( .A(i[8]), .B(n39), .Y(n38) );
  OAI21X1 U40 ( .A(n40), .B(n41), .C(n42), .Y(n36) );
  INVX1 U41 ( .A(n39), .Y(n42) );
  NOR2X1 U42 ( .A(n5), .B(len[9]), .Y(n39) );
  INVX1 U43 ( .A(i[9]), .Y(n5) );
  OAI22X1 U44 ( .A(n43), .B(n44), .C(n45), .D(n46), .Y(n41) );
  OAI21X1 U45 ( .A(len[5]), .B(n23), .C(n47), .Y(n46) );
  INVX1 U46 ( .A(n43), .Y(n47) );
  OAI21X1 U47 ( .A(len[4]), .B(n25), .C(n48), .Y(n45) );
  OAI21X1 U48 ( .A(n49), .B(n50), .C(n51), .Y(n48) );
  AOI22X1 U49 ( .A(n52), .B(len[2]), .C(len[3]), .D(n27), .Y(n51) );
  NOR2X1 U50 ( .A(i[2]), .B(n53), .Y(n52) );
  OAI22X1 U51 ( .A(len[2]), .B(n29), .C(n54), .D(n31), .Y(n50) );
  INVX1 U52 ( .A(i[1]), .Y(n31) );
  INVX1 U53 ( .A(n55), .Y(n54) );
  INVX1 U54 ( .A(i[2]), .Y(n29) );
  OAI21X1 U55 ( .A(len[1]), .B(n56), .C(n57), .Y(n49) );
  INVX1 U56 ( .A(n53), .Y(n57) );
  NOR2X1 U57 ( .A(n27), .B(len[3]), .Y(n53) );
  INVX1 U58 ( .A(i[3]), .Y(n27) );
  NOR2X1 U59 ( .A(i[1]), .B(n55), .Y(n56) );
  NAND2X1 U60 ( .A(len[0]), .B(n2), .Y(n55) );
  INVX1 U61 ( .A(i[0]), .Y(n2) );
  OAI21X1 U62 ( .A(n58), .B(n23), .C(n59), .Y(n44) );
  OAI21X1 U63 ( .A(i[5]), .B(n60), .C(n61), .Y(n59) );
  INVX1 U64 ( .A(len[5]), .Y(n61) );
  INVX1 U65 ( .A(i[5]), .Y(n23) );
  INVX1 U66 ( .A(n60), .Y(n58) );
  NAND2X1 U67 ( .A(len[4]), .B(n25), .Y(n60) );
  INVX1 U68 ( .A(i[4]), .Y(n25) );
  OAI21X1 U69 ( .A(len[6]), .B(n21), .C(n62), .Y(n43) );
  OAI21X1 U70 ( .A(i[7]), .B(n63), .C(n64), .Y(n40) );
  NAND3X1 U71 ( .A(n62), .B(n21), .C(len[6]), .Y(n64) );
  INVX1 U72 ( .A(i[6]), .Y(n21) );
  NAND2X1 U73 ( .A(i[7]), .B(n63), .Y(n62) );
  INVX1 U74 ( .A(len[7]), .Y(n63) );
  NOR2X1 U75 ( .A(len[8]), .B(n17), .Y(n35) );
  INVX1 U76 ( .A(i[8]), .Y(n17) );
  AOI21X1 U77 ( .A(valid), .B(ready), .C(resp), .Y(n34) );
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
         n597, n599, n861, n863, n865, n910, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
         n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534,
         n897, n898, n899, n900, n901, n902, n903, n904, n905, n906, n907,
         n908, n909, n911, n912, n913, n914, n915, n916, n917, n918, n919,
         n920, n921, n922, n923, n924, n925, n926, n927, n928, n929, n930,
         n931, n932, n933, n934, n935, n936, n937, n938, n939, n940, n941,
         n942, n943, n944, n945, n946, n947, n948, n949, n950, n951, n952,
         n953, n954, n955, n956, n957, n958, n959, n960, n961, n962, n963,
         n964, n965, n966, n967, n968, n969, n970, n971, n972, n973, n974,
         n975, n976, n977, n978, n979, n980, n981, n982, n983, n984, n985,
         n986, n987, n988, n989, n990, n991, n992, n993, n994, n995, n996,
         n997, n998, n999, n1000, n1001, n1002, n1003, n1004, n1005, n1006,
         n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014, n1015, n1016,
         n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024, n1025, n1026,
         n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034, n1035, n1036,
         n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044, n1045, n1046,
         n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054, n1055, n1056,
         n1057, n1058, n1059, n1060, n1061, n1062, n1063, n1064, n1065, n1066,
         n1067, n1068, n1069, n1070, n1071;
  wire   [31:0] awaddr_reg;
  wire   [9:0] wcount;
  wire   [31:0] araddr_reg;
  wire   [9:0] rcount;
  wire   [31:3] next_awaddr;
  tri   clk;
  tri   n_rst;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13;

  DFFSR fft_sub_awready_reg ( .D(n1059), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        fft_sub_awready) );
  DFFSR \awaddr_reg_reg[9]  ( .D(n1071), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awaddr_reg[9]) );
  DFFSR \awaddr_reg_reg[8]  ( .D(n1070), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awaddr_reg[8]) );
  DFFSR \awaddr_reg_reg[7]  ( .D(next_awaddr[7]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(awaddr_reg[7]) );
  DFFSR \awaddr_reg_reg[6]  ( .D(next_awaddr[6]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(awaddr_reg[6]) );
  DFFSR \awaddr_reg_reg[5]  ( .D(n1069), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awaddr_reg[5]) );
  DFFSR \awaddr_reg_reg[4]  ( .D(n1068), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awaddr_reg[4]) );
  DFFSR \awaddr_reg_reg[3]  ( .D(next_awaddr[3]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(awaddr_reg[3]) );
  DFFSR \awaddr_reg_reg[31]  ( .D(next_awaddr[31]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(awaddr_reg[31]) );
  DFFSR \awaddr_reg_reg[30]  ( .D(n1067), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awaddr_reg[30]) );
  DFFSR \awaddr_reg_reg[29]  ( .D(n1066), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
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
  DFFSR \awaddr_reg_reg[23]  ( .D(n1065), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awaddr_reg[23]) );
  DFFSR \awaddr_reg_reg[22]  ( .D(n1064), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awaddr_reg[22]) );
  DFFSR \awaddr_reg_reg[21]  ( .D(next_awaddr[21]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(awaddr_reg[21]) );
  DFFSR \awaddr_reg_reg[20]  ( .D(next_awaddr[20]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(awaddr_reg[20]) );
  DFFSR \awaddr_reg_reg[19]  ( .D(n1063), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awaddr_reg[19]) );
  DFFSR \awaddr_reg_reg[18]  ( .D(n1062), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awaddr_reg[18]) );
  DFFSR \awaddr_reg_reg[17]  ( .D(next_awaddr[17]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(awaddr_reg[17]) );
  DFFSR \awaddr_reg_reg[16]  ( .D(next_awaddr[16]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(awaddr_reg[16]) );
  DFFSR \awaddr_reg_reg[15]  ( .D(n1061), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        awaddr_reg[15]) );
  DFFSR \awaddr_reg_reg[14]  ( .D(n1060), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
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
  fft_axi_counter_WRITE_OR_READ1_0 write_counter ( .clk(clk), .n_rst(n_rst), 
        .len(fft_sub_awlen), .ready(fft_sub_wready), .valid(fft_sub_wvalid), 
        .resp(fft_sub_bresp), .last(write_last), .i({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, wcount[2:0]}) );
  fft_axi_counter_WRITE_OR_READ0_0 read_counter ( .clk(clk), .n_rst(n_rst), 
        .len(fft_sub_arlen), .ready(fft_sub_rready), .valid(fft_sub_rvalid), 
        .resp(fft_sub_rresp), .last(fft_sub_rlast), .i({
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, rcount[2:0]}) );
  AND2X2 U3 ( .A(fft_sub_awvalid), .B(fft_sub_awready), .Y(n1) );
  AND2X2 U4 ( .A(fft_sub_arvalid), .B(fft_sub_arready), .Y(n2) );
  INVX4 U5 ( .A(n2), .Y(n3) );
  INVX4 U6 ( .A(n1), .Y(n4) );
  NAND2X1 U7 ( .A(n21), .B(N32), .Y(n181) );
  INVX4 U8 ( .A(n181), .Y(n5) );
  NAND2X1 U9 ( .A(n23), .B(n193), .Y(n187) );
  INVX4 U10 ( .A(n187), .Y(n6) );
  BUFX2 U11 ( .A(n273), .Y(n7) );
  BUFX2 U12 ( .A(n446), .Y(n8) );
  NAND2X1 U13 ( .A(n23), .B(N32), .Y(n183) );
  INVX4 U14 ( .A(n183), .Y(n9) );
  NAND2X1 U15 ( .A(n21), .B(n193), .Y(n185) );
  INVX4 U16 ( .A(n185), .Y(n10) );
  BUFX2 U17 ( .A(n307), .Y(n11) );
  BUFX2 U18 ( .A(n413), .Y(n12) );
  NAND2X1 U19 ( .A(N32), .B(n22), .Y(n180) );
  INVX4 U20 ( .A(n180), .Y(n13) );
  NAND2X1 U21 ( .A(n24), .B(n193), .Y(n186) );
  INVX4 U22 ( .A(n186), .Y(n14) );
  BUFX2 U23 ( .A(n379), .Y(n15) );
  BUFX2 U24 ( .A(n341), .Y(n16) );
  INVX2 U25 ( .A(n1021), .Y(n1020) );
  NAND2X1 U26 ( .A(n24), .B(N32), .Y(n182) );
  INVX4 U27 ( .A(n182), .Y(n17) );
  NAND2X1 U28 ( .A(n22), .B(n193), .Y(n184) );
  INVX4 U29 ( .A(n184), .Y(n18) );
  BUFX2 U30 ( .A(n479), .Y(n19) );
  BUFX2 U31 ( .A(n206), .Y(n20) );
  NOR2X1 U32 ( .A(n195), .B(N33), .Y(n21) );
  NOR2X1 U33 ( .A(n195), .B(n194), .Y(n22) );
  AOI22X1 U34 ( .A(\config_reg[5][0] ), .B(n5), .C(\config_reg[7][0] ), .D(n13), .Y(n29) );
  NOR2X1 U35 ( .A(N33), .B(N34), .Y(n23) );
  NOR2X1 U36 ( .A(n194), .B(N34), .Y(n24) );
  AOI22X1 U37 ( .A(\config_reg[1][0] ), .B(n9), .C(\config_reg[3][0] ), .D(n17), .Y(n28) );
  AOI22X1 U38 ( .A(\config_reg[4][0] ), .B(n10), .C(\config_reg[6][0] ), .D(
        n18), .Y(n26) );
  AOI22X1 U39 ( .A(\config_reg[0][0] ), .B(n6), .C(\config_reg[2][0] ), .D(n14), .Y(n25) );
  AND2X1 U40 ( .A(n26), .B(n25), .Y(n27) );
  NAND3X1 U41 ( .A(n29), .B(n28), .C(n27), .Y(N417) );
  AOI22X1 U42 ( .A(\config_reg[5][1] ), .B(n5), .C(\config_reg[7][1] ), .D(n13), .Y(n34) );
  AOI22X1 U43 ( .A(\config_reg[1][1] ), .B(n9), .C(\config_reg[3][1] ), .D(n17), .Y(n33) );
  AOI22X1 U44 ( .A(\config_reg[4][1] ), .B(n10), .C(\config_reg[6][1] ), .D(
        n18), .Y(n31) );
  AOI22X1 U45 ( .A(\config_reg[0][1] ), .B(n6), .C(\config_reg[2][1] ), .D(n14), .Y(n30) );
  AND2X1 U46 ( .A(n31), .B(n30), .Y(n32) );
  NAND3X1 U47 ( .A(n34), .B(n33), .C(n32), .Y(N416) );
  AOI22X1 U48 ( .A(\config_reg[5][2] ), .B(n5), .C(\config_reg[7][2] ), .D(n13), .Y(n39) );
  AOI22X1 U49 ( .A(\config_reg[1][2] ), .B(n9), .C(\config_reg[3][2] ), .D(n17), .Y(n38) );
  AOI22X1 U50 ( .A(\config_reg[4][2] ), .B(n10), .C(\config_reg[6][2] ), .D(
        n18), .Y(n36) );
  AOI22X1 U51 ( .A(\config_reg[0][2] ), .B(n6), .C(\config_reg[2][2] ), .D(n14), .Y(n35) );
  AND2X1 U52 ( .A(n36), .B(n35), .Y(n37) );
  NAND3X1 U53 ( .A(n39), .B(n38), .C(n37), .Y(N415) );
  AOI22X1 U54 ( .A(\config_reg[5][3] ), .B(n5), .C(\config_reg[7][3] ), .D(n13), .Y(n44) );
  AOI22X1 U55 ( .A(\config_reg[1][3] ), .B(n9), .C(\config_reg[3][3] ), .D(n17), .Y(n43) );
  AOI22X1 U56 ( .A(\config_reg[4][3] ), .B(n10), .C(\config_reg[6][3] ), .D(
        n18), .Y(n41) );
  AOI22X1 U57 ( .A(\config_reg[0][3] ), .B(n6), .C(\config_reg[2][3] ), .D(n14), .Y(n40) );
  AND2X1 U58 ( .A(n41), .B(n40), .Y(n42) );
  NAND3X1 U59 ( .A(n44), .B(n43), .C(n42), .Y(N414) );
  AOI22X1 U60 ( .A(\config_reg[5][4] ), .B(n5), .C(\config_reg[7][4] ), .D(n13), .Y(n49) );
  AOI22X1 U61 ( .A(\config_reg[1][4] ), .B(n9), .C(\config_reg[3][4] ), .D(n17), .Y(n48) );
  AOI22X1 U62 ( .A(\config_reg[4][4] ), .B(n10), .C(\config_reg[6][4] ), .D(
        n18), .Y(n46) );
  AOI22X1 U63 ( .A(\config_reg[0][4] ), .B(n6), .C(\config_reg[2][4] ), .D(n14), .Y(n45) );
  AND2X1 U64 ( .A(n46), .B(n45), .Y(n47) );
  NAND3X1 U65 ( .A(n49), .B(n48), .C(n47), .Y(N413) );
  AOI22X1 U66 ( .A(\config_reg[5][5] ), .B(n5), .C(\config_reg[7][5] ), .D(n13), .Y(n54) );
  AOI22X1 U67 ( .A(\config_reg[1][5] ), .B(n9), .C(\config_reg[3][5] ), .D(n17), .Y(n53) );
  AOI22X1 U68 ( .A(\config_reg[4][5] ), .B(n10), .C(\config_reg[6][5] ), .D(
        n18), .Y(n51) );
  AOI22X1 U69 ( .A(\config_reg[0][5] ), .B(n6), .C(\config_reg[2][5] ), .D(n14), .Y(n50) );
  AND2X1 U70 ( .A(n51), .B(n50), .Y(n52) );
  NAND3X1 U71 ( .A(n54), .B(n53), .C(n52), .Y(N412) );
  AOI22X1 U72 ( .A(\config_reg[5][6] ), .B(n5), .C(\config_reg[7][6] ), .D(n13), .Y(n59) );
  AOI22X1 U73 ( .A(\config_reg[1][6] ), .B(n9), .C(\config_reg[3][6] ), .D(n17), .Y(n58) );
  AOI22X1 U74 ( .A(\config_reg[4][6] ), .B(n10), .C(\config_reg[6][6] ), .D(
        n18), .Y(n56) );
  AOI22X1 U75 ( .A(\config_reg[0][6] ), .B(n6), .C(\config_reg[2][6] ), .D(n14), .Y(n55) );
  AND2X1 U76 ( .A(n56), .B(n55), .Y(n57) );
  NAND3X1 U77 ( .A(n59), .B(n58), .C(n57), .Y(N411) );
  AOI22X1 U78 ( .A(\config_reg[5][7] ), .B(n5), .C(\config_reg[7][7] ), .D(n13), .Y(n64) );
  AOI22X1 U79 ( .A(\config_reg[1][7] ), .B(n9), .C(\config_reg[3][7] ), .D(n17), .Y(n63) );
  AOI22X1 U80 ( .A(\config_reg[4][7] ), .B(n10), .C(\config_reg[6][7] ), .D(
        n18), .Y(n61) );
  AOI22X1 U81 ( .A(\config_reg[0][7] ), .B(n6), .C(\config_reg[2][7] ), .D(n14), .Y(n60) );
  AND2X1 U82 ( .A(n61), .B(n60), .Y(n62) );
  NAND3X1 U83 ( .A(n64), .B(n63), .C(n62), .Y(N410) );
  AOI22X1 U84 ( .A(\config_reg[5][8] ), .B(n5), .C(\config_reg[7][8] ), .D(n13), .Y(n69) );
  AOI22X1 U85 ( .A(\config_reg[1][8] ), .B(n9), .C(\config_reg[3][8] ), .D(n17), .Y(n68) );
  AOI22X1 U86 ( .A(\config_reg[4][8] ), .B(n10), .C(\config_reg[6][8] ), .D(
        n18), .Y(n66) );
  AOI22X1 U87 ( .A(\config_reg[0][8] ), .B(n6), .C(\config_reg[2][8] ), .D(n14), .Y(n65) );
  AND2X1 U88 ( .A(n66), .B(n65), .Y(n67) );
  NAND3X1 U89 ( .A(n69), .B(n68), .C(n67), .Y(N409) );
  AOI22X1 U90 ( .A(\config_reg[5][9] ), .B(n5), .C(\config_reg[7][9] ), .D(n13), .Y(n74) );
  AOI22X1 U91 ( .A(\config_reg[1][9] ), .B(n9), .C(\config_reg[3][9] ), .D(n17), .Y(n73) );
  AOI22X1 U92 ( .A(\config_reg[4][9] ), .B(n10), .C(\config_reg[6][9] ), .D(
        n18), .Y(n71) );
  AOI22X1 U93 ( .A(\config_reg[0][9] ), .B(n6), .C(\config_reg[2][9] ), .D(n14), .Y(n70) );
  AND2X1 U94 ( .A(n71), .B(n70), .Y(n72) );
  NAND3X1 U95 ( .A(n74), .B(n73), .C(n72), .Y(N408) );
  AOI22X1 U96 ( .A(\config_reg[5][10] ), .B(n5), .C(\config_reg[7][10] ), .D(
        n13), .Y(n79) );
  AOI22X1 U97 ( .A(\config_reg[1][10] ), .B(n9), .C(\config_reg[3][10] ), .D(
        n17), .Y(n78) );
  AOI22X1 U98 ( .A(\config_reg[4][10] ), .B(n10), .C(\config_reg[6][10] ), .D(
        n18), .Y(n76) );
  AOI22X1 U99 ( .A(\config_reg[0][10] ), .B(n6), .C(\config_reg[2][10] ), .D(
        n14), .Y(n75) );
  AND2X1 U100 ( .A(n76), .B(n75), .Y(n77) );
  NAND3X1 U101 ( .A(n79), .B(n78), .C(n77), .Y(N407) );
  AOI22X1 U102 ( .A(\config_reg[5][11] ), .B(n5), .C(\config_reg[7][11] ), .D(
        n13), .Y(n84) );
  AOI22X1 U103 ( .A(\config_reg[1][11] ), .B(n9), .C(\config_reg[3][11] ), .D(
        n17), .Y(n83) );
  AOI22X1 U104 ( .A(\config_reg[4][11] ), .B(n10), .C(\config_reg[6][11] ), 
        .D(n18), .Y(n81) );
  AOI22X1 U105 ( .A(\config_reg[0][11] ), .B(n6), .C(\config_reg[2][11] ), .D(
        n14), .Y(n80) );
  AND2X1 U106 ( .A(n81), .B(n80), .Y(n82) );
  NAND3X1 U107 ( .A(n84), .B(n83), .C(n82), .Y(N406) );
  AOI22X1 U108 ( .A(\config_reg[5][12] ), .B(n5), .C(\config_reg[7][12] ), .D(
        n13), .Y(n89) );
  AOI22X1 U109 ( .A(\config_reg[1][12] ), .B(n9), .C(\config_reg[3][12] ), .D(
        n17), .Y(n88) );
  AOI22X1 U110 ( .A(\config_reg[4][12] ), .B(n10), .C(\config_reg[6][12] ), 
        .D(n18), .Y(n86) );
  AOI22X1 U111 ( .A(\config_reg[0][12] ), .B(n6), .C(\config_reg[2][12] ), .D(
        n14), .Y(n85) );
  AND2X1 U112 ( .A(n86), .B(n85), .Y(n87) );
  NAND3X1 U113 ( .A(n89), .B(n88), .C(n87), .Y(N405) );
  AOI22X1 U114 ( .A(\config_reg[5][13] ), .B(n5), .C(\config_reg[7][13] ), .D(
        n13), .Y(n94) );
  AOI22X1 U115 ( .A(\config_reg[1][13] ), .B(n9), .C(\config_reg[3][13] ), .D(
        n17), .Y(n93) );
  AOI22X1 U116 ( .A(\config_reg[4][13] ), .B(n10), .C(\config_reg[6][13] ), 
        .D(n18), .Y(n91) );
  AOI22X1 U117 ( .A(\config_reg[0][13] ), .B(n6), .C(\config_reg[2][13] ), .D(
        n14), .Y(n90) );
  AND2X1 U118 ( .A(n91), .B(n90), .Y(n92) );
  NAND3X1 U119 ( .A(n94), .B(n93), .C(n92), .Y(N404) );
  AOI22X1 U120 ( .A(\config_reg[5][14] ), .B(n5), .C(\config_reg[7][14] ), .D(
        n13), .Y(n99) );
  AOI22X1 U121 ( .A(\config_reg[1][14] ), .B(n9), .C(\config_reg[3][14] ), .D(
        n17), .Y(n98) );
  AOI22X1 U122 ( .A(\config_reg[4][14] ), .B(n10), .C(\config_reg[6][14] ), 
        .D(n18), .Y(n96) );
  AOI22X1 U123 ( .A(\config_reg[0][14] ), .B(n6), .C(\config_reg[2][14] ), .D(
        n14), .Y(n95) );
  AND2X1 U124 ( .A(n96), .B(n95), .Y(n97) );
  NAND3X1 U125 ( .A(n99), .B(n98), .C(n97), .Y(N403) );
  AOI22X1 U126 ( .A(\config_reg[5][15] ), .B(n5), .C(\config_reg[7][15] ), .D(
        n13), .Y(n104) );
  AOI22X1 U127 ( .A(\config_reg[1][15] ), .B(n9), .C(\config_reg[3][15] ), .D(
        n17), .Y(n103) );
  AOI22X1 U128 ( .A(\config_reg[4][15] ), .B(n10), .C(\config_reg[6][15] ), 
        .D(n18), .Y(n101) );
  AOI22X1 U129 ( .A(\config_reg[0][15] ), .B(n6), .C(\config_reg[2][15] ), .D(
        n14), .Y(n100) );
  AND2X1 U130 ( .A(n101), .B(n100), .Y(n102) );
  NAND3X1 U131 ( .A(n104), .B(n103), .C(n102), .Y(N402) );
  AOI22X1 U132 ( .A(\config_reg[5][16] ), .B(n5), .C(\config_reg[7][16] ), .D(
        n13), .Y(n109) );
  AOI22X1 U133 ( .A(\config_reg[1][16] ), .B(n9), .C(\config_reg[3][16] ), .D(
        n17), .Y(n108) );
  AOI22X1 U134 ( .A(\config_reg[4][16] ), .B(n10), .C(\config_reg[6][16] ), 
        .D(n18), .Y(n106) );
  AOI22X1 U135 ( .A(\config_reg[0][16] ), .B(n6), .C(\config_reg[2][16] ), .D(
        n14), .Y(n105) );
  AND2X1 U136 ( .A(n106), .B(n105), .Y(n107) );
  NAND3X1 U137 ( .A(n109), .B(n108), .C(n107), .Y(N401) );
  AOI22X1 U138 ( .A(\config_reg[5][17] ), .B(n5), .C(\config_reg[7][17] ), .D(
        n13), .Y(n114) );
  AOI22X1 U139 ( .A(\config_reg[1][17] ), .B(n9), .C(\config_reg[3][17] ), .D(
        n17), .Y(n113) );
  AOI22X1 U140 ( .A(\config_reg[4][17] ), .B(n10), .C(\config_reg[6][17] ), 
        .D(n18), .Y(n111) );
  AOI22X1 U141 ( .A(\config_reg[0][17] ), .B(n6), .C(\config_reg[2][17] ), .D(
        n14), .Y(n110) );
  AND2X1 U142 ( .A(n111), .B(n110), .Y(n112) );
  NAND3X1 U143 ( .A(n114), .B(n113), .C(n112), .Y(N400) );
  AOI22X1 U144 ( .A(\config_reg[5][18] ), .B(n5), .C(\config_reg[7][18] ), .D(
        n13), .Y(n119) );
  AOI22X1 U145 ( .A(\config_reg[1][18] ), .B(n9), .C(\config_reg[3][18] ), .D(
        n17), .Y(n118) );
  AOI22X1 U146 ( .A(\config_reg[4][18] ), .B(n10), .C(\config_reg[6][18] ), 
        .D(n18), .Y(n116) );
  AOI22X1 U147 ( .A(\config_reg[0][18] ), .B(n6), .C(\config_reg[2][18] ), .D(
        n14), .Y(n115) );
  AND2X1 U148 ( .A(n116), .B(n115), .Y(n117) );
  NAND3X1 U149 ( .A(n119), .B(n118), .C(n117), .Y(N399) );
  AOI22X1 U150 ( .A(\config_reg[5][19] ), .B(n5), .C(\config_reg[7][19] ), .D(
        n13), .Y(n124) );
  AOI22X1 U151 ( .A(\config_reg[1][19] ), .B(n9), .C(\config_reg[3][19] ), .D(
        n17), .Y(n123) );
  AOI22X1 U152 ( .A(\config_reg[4][19] ), .B(n10), .C(\config_reg[6][19] ), 
        .D(n18), .Y(n121) );
  AOI22X1 U153 ( .A(\config_reg[0][19] ), .B(n6), .C(\config_reg[2][19] ), .D(
        n14), .Y(n120) );
  AND2X1 U154 ( .A(n121), .B(n120), .Y(n122) );
  NAND3X1 U155 ( .A(n124), .B(n123), .C(n122), .Y(N398) );
  AOI22X1 U156 ( .A(\config_reg[5][20] ), .B(n5), .C(\config_reg[7][20] ), .D(
        n13), .Y(n129) );
  AOI22X1 U157 ( .A(\config_reg[1][20] ), .B(n9), .C(\config_reg[3][20] ), .D(
        n17), .Y(n128) );
  AOI22X1 U158 ( .A(\config_reg[4][20] ), .B(n10), .C(\config_reg[6][20] ), 
        .D(n18), .Y(n126) );
  AOI22X1 U159 ( .A(\config_reg[0][20] ), .B(n6), .C(\config_reg[2][20] ), .D(
        n14), .Y(n125) );
  AND2X1 U160 ( .A(n126), .B(n125), .Y(n127) );
  NAND3X1 U161 ( .A(n129), .B(n128), .C(n127), .Y(N397) );
  AOI22X1 U162 ( .A(\config_reg[5][21] ), .B(n5), .C(\config_reg[7][21] ), .D(
        n13), .Y(n134) );
  AOI22X1 U163 ( .A(\config_reg[1][21] ), .B(n9), .C(\config_reg[3][21] ), .D(
        n17), .Y(n133) );
  AOI22X1 U164 ( .A(\config_reg[4][21] ), .B(n10), .C(\config_reg[6][21] ), 
        .D(n18), .Y(n131) );
  AOI22X1 U165 ( .A(\config_reg[0][21] ), .B(n6), .C(\config_reg[2][21] ), .D(
        n14), .Y(n130) );
  AND2X1 U166 ( .A(n131), .B(n130), .Y(n132) );
  NAND3X1 U167 ( .A(n134), .B(n133), .C(n132), .Y(N396) );
  AOI22X1 U168 ( .A(\config_reg[5][22] ), .B(n5), .C(\config_reg[7][22] ), .D(
        n13), .Y(n139) );
  AOI22X1 U169 ( .A(\config_reg[1][22] ), .B(n9), .C(\config_reg[3][22] ), .D(
        n17), .Y(n138) );
  AOI22X1 U170 ( .A(\config_reg[4][22] ), .B(n10), .C(\config_reg[6][22] ), 
        .D(n18), .Y(n136) );
  AOI22X1 U171 ( .A(\config_reg[0][22] ), .B(n6), .C(\config_reg[2][22] ), .D(
        n14), .Y(n135) );
  AND2X1 U172 ( .A(n136), .B(n135), .Y(n137) );
  NAND3X1 U173 ( .A(n139), .B(n138), .C(n137), .Y(N395) );
  AOI22X1 U174 ( .A(\config_reg[5][23] ), .B(n5), .C(\config_reg[7][23] ), .D(
        n13), .Y(n144) );
  AOI22X1 U175 ( .A(\config_reg[1][23] ), .B(n9), .C(\config_reg[3][23] ), .D(
        n17), .Y(n143) );
  AOI22X1 U176 ( .A(\config_reg[4][23] ), .B(n10), .C(\config_reg[6][23] ), 
        .D(n18), .Y(n141) );
  AOI22X1 U177 ( .A(\config_reg[0][23] ), .B(n6), .C(\config_reg[2][23] ), .D(
        n14), .Y(n140) );
  AND2X1 U178 ( .A(n141), .B(n140), .Y(n142) );
  NAND3X1 U179 ( .A(n144), .B(n143), .C(n142), .Y(N394) );
  AOI22X1 U180 ( .A(\config_reg[5][24] ), .B(n5), .C(\config_reg[7][24] ), .D(
        n13), .Y(n149) );
  AOI22X1 U181 ( .A(\config_reg[1][24] ), .B(n9), .C(\config_reg[3][24] ), .D(
        n17), .Y(n148) );
  AOI22X1 U182 ( .A(\config_reg[4][24] ), .B(n10), .C(\config_reg[6][24] ), 
        .D(n18), .Y(n146) );
  AOI22X1 U183 ( .A(\config_reg[0][24] ), .B(n6), .C(\config_reg[2][24] ), .D(
        n14), .Y(n145) );
  AND2X1 U184 ( .A(n146), .B(n145), .Y(n147) );
  NAND3X1 U185 ( .A(n149), .B(n148), .C(n147), .Y(N393) );
  AOI22X1 U186 ( .A(\config_reg[5][25] ), .B(n5), .C(\config_reg[7][25] ), .D(
        n13), .Y(n154) );
  AOI22X1 U187 ( .A(\config_reg[1][25] ), .B(n9), .C(\config_reg[3][25] ), .D(
        n17), .Y(n153) );
  AOI22X1 U188 ( .A(\config_reg[4][25] ), .B(n10), .C(\config_reg[6][25] ), 
        .D(n18), .Y(n151) );
  AOI22X1 U189 ( .A(\config_reg[0][25] ), .B(n6), .C(\config_reg[2][25] ), .D(
        n14), .Y(n150) );
  AND2X1 U190 ( .A(n151), .B(n150), .Y(n152) );
  NAND3X1 U191 ( .A(n154), .B(n153), .C(n152), .Y(N392) );
  AOI22X1 U192 ( .A(\config_reg[5][26] ), .B(n5), .C(\config_reg[7][26] ), .D(
        n13), .Y(n159) );
  AOI22X1 U193 ( .A(\config_reg[1][26] ), .B(n9), .C(\config_reg[3][26] ), .D(
        n17), .Y(n158) );
  AOI22X1 U194 ( .A(\config_reg[4][26] ), .B(n10), .C(\config_reg[6][26] ), 
        .D(n18), .Y(n156) );
  AOI22X1 U195 ( .A(\config_reg[0][26] ), .B(n6), .C(\config_reg[2][26] ), .D(
        n14), .Y(n155) );
  AND2X1 U196 ( .A(n156), .B(n155), .Y(n157) );
  NAND3X1 U197 ( .A(n159), .B(n158), .C(n157), .Y(N391) );
  AOI22X1 U198 ( .A(\config_reg[5][27] ), .B(n5), .C(\config_reg[7][27] ), .D(
        n13), .Y(n164) );
  AOI22X1 U199 ( .A(\config_reg[1][27] ), .B(n9), .C(\config_reg[3][27] ), .D(
        n17), .Y(n163) );
  AOI22X1 U200 ( .A(\config_reg[4][27] ), .B(n10), .C(\config_reg[6][27] ), 
        .D(n18), .Y(n161) );
  AOI22X1 U201 ( .A(\config_reg[0][27] ), .B(n6), .C(\config_reg[2][27] ), .D(
        n14), .Y(n160) );
  AND2X1 U202 ( .A(n161), .B(n160), .Y(n162) );
  NAND3X1 U203 ( .A(n164), .B(n163), .C(n162), .Y(N390) );
  AOI22X1 U204 ( .A(\config_reg[5][28] ), .B(n5), .C(\config_reg[7][28] ), .D(
        n13), .Y(n169) );
  AOI22X1 U205 ( .A(\config_reg[1][28] ), .B(n9), .C(\config_reg[3][28] ), .D(
        n17), .Y(n168) );
  AOI22X1 U206 ( .A(\config_reg[4][28] ), .B(n10), .C(\config_reg[6][28] ), 
        .D(n18), .Y(n166) );
  AOI22X1 U207 ( .A(\config_reg[0][28] ), .B(n6), .C(\config_reg[2][28] ), .D(
        n14), .Y(n165) );
  AND2X1 U208 ( .A(n166), .B(n165), .Y(n167) );
  NAND3X1 U209 ( .A(n169), .B(n168), .C(n167), .Y(N389) );
  AOI22X1 U210 ( .A(\config_reg[5][29] ), .B(n5), .C(\config_reg[7][29] ), .D(
        n13), .Y(n174) );
  AOI22X1 U211 ( .A(\config_reg[1][29] ), .B(n9), .C(\config_reg[3][29] ), .D(
        n17), .Y(n173) );
  AOI22X1 U212 ( .A(\config_reg[4][29] ), .B(n10), .C(\config_reg[6][29] ), 
        .D(n18), .Y(n171) );
  AOI22X1 U213 ( .A(\config_reg[0][29] ), .B(n6), .C(\config_reg[2][29] ), .D(
        n14), .Y(n170) );
  AND2X1 U214 ( .A(n171), .B(n170), .Y(n172) );
  NAND3X1 U215 ( .A(n174), .B(n173), .C(n172), .Y(N388) );
  AOI22X1 U216 ( .A(\config_reg[5][30] ), .B(n5), .C(\config_reg[7][30] ), .D(
        n13), .Y(n179) );
  AOI22X1 U217 ( .A(\config_reg[1][30] ), .B(n9), .C(\config_reg[3][30] ), .D(
        n17), .Y(n178) );
  AOI22X1 U218 ( .A(\config_reg[4][30] ), .B(n10), .C(\config_reg[6][30] ), 
        .D(n18), .Y(n176) );
  AOI22X1 U219 ( .A(\config_reg[0][30] ), .B(n6), .C(\config_reg[2][30] ), .D(
        n14), .Y(n175) );
  AND2X1 U220 ( .A(n176), .B(n175), .Y(n177) );
  NAND3X1 U221 ( .A(n179), .B(n178), .C(n177), .Y(N387) );
  AOI22X1 U222 ( .A(\config_reg[5][31] ), .B(n5), .C(\config_reg[7][31] ), .D(
        n13), .Y(n192) );
  AOI22X1 U223 ( .A(\config_reg[1][31] ), .B(n9), .C(\config_reg[3][31] ), .D(
        n17), .Y(n191) );
  AOI22X1 U224 ( .A(\config_reg[4][31] ), .B(n10), .C(\config_reg[6][31] ), 
        .D(n18), .Y(n189) );
  AOI22X1 U225 ( .A(\config_reg[0][31] ), .B(n6), .C(\config_reg[2][31] ), .D(
        n14), .Y(n188) );
  AND2X1 U226 ( .A(n189), .B(n188), .Y(n190) );
  NAND3X1 U227 ( .A(n192), .B(n191), .C(n190), .Y(N386) );
  INVX2 U228 ( .A(N32), .Y(n193) );
  INVX2 U229 ( .A(N33), .Y(n194) );
  INVX2 U230 ( .A(N34), .Y(n195) );
  OAI21X1 U231 ( .A(n196), .B(n197), .C(n3), .Y(next_rvalid) );
  AND2X1 U232 ( .A(fft_sub_rlast), .B(fft_sub_rready), .Y(n196) );
  NOR2X1 U233 ( .A(n197), .B(n198), .Y(next_rresp) );
  NAND2X1 U234 ( .A(fft_sub_rready), .B(n199), .Y(n198) );
  OAI21X1 U235 ( .A(n200), .B(n201), .C(n202), .Y(n199) );
  OAI21X1 U236 ( .A(araddr_reg[2]), .B(n203), .C(rcount[2]), .Y(n202) );
  INVX1 U237 ( .A(araddr_reg[2]), .Y(n201) );
  INVX1 U238 ( .A(n203), .Y(n200) );
  INVX1 U239 ( .A(fft_sub_rvalid), .Y(n197) );
  MUX2X1 U240 ( .B(n204), .A(n205), .S(n20), .Y(\next_config_reg[7][9] ) );
  INVX1 U241 ( .A(\config_reg[7][9] ), .Y(n205) );
  MUX2X1 U242 ( .B(n207), .A(n208), .S(n20), .Y(\next_config_reg[7][8] ) );
  INVX1 U243 ( .A(\config_reg[7][8] ), .Y(n208) );
  MUX2X1 U244 ( .B(n209), .A(n210), .S(n20), .Y(\next_config_reg[7][7] ) );
  INVX1 U245 ( .A(\config_reg[7][7] ), .Y(n210) );
  MUX2X1 U246 ( .B(n211), .A(n212), .S(n20), .Y(\next_config_reg[7][6] ) );
  INVX1 U247 ( .A(\config_reg[7][6] ), .Y(n212) );
  MUX2X1 U248 ( .B(n213), .A(n214), .S(n20), .Y(\next_config_reg[7][5] ) );
  INVX1 U249 ( .A(\config_reg[7][5] ), .Y(n214) );
  MUX2X1 U250 ( .B(n215), .A(n216), .S(n20), .Y(\next_config_reg[7][4] ) );
  INVX1 U251 ( .A(\config_reg[7][4] ), .Y(n216) );
  MUX2X1 U252 ( .B(n217), .A(n218), .S(n20), .Y(\next_config_reg[7][3] ) );
  INVX1 U253 ( .A(\config_reg[7][3] ), .Y(n218) );
  MUX2X1 U254 ( .B(n219), .A(n220), .S(n20), .Y(\next_config_reg[7][31] ) );
  INVX1 U255 ( .A(\config_reg[7][31] ), .Y(n220) );
  MUX2X1 U256 ( .B(n221), .A(n222), .S(n20), .Y(\next_config_reg[7][30] ) );
  INVX1 U257 ( .A(\config_reg[7][30] ), .Y(n222) );
  MUX2X1 U258 ( .B(n223), .A(n224), .S(n20), .Y(\next_config_reg[7][2] ) );
  INVX1 U259 ( .A(\config_reg[7][2] ), .Y(n224) );
  MUX2X1 U260 ( .B(n225), .A(n226), .S(n20), .Y(\next_config_reg[7][29] ) );
  INVX1 U261 ( .A(\config_reg[7][29] ), .Y(n226) );
  MUX2X1 U262 ( .B(n227), .A(n228), .S(n20), .Y(\next_config_reg[7][28] ) );
  INVX1 U263 ( .A(\config_reg[7][28] ), .Y(n228) );
  MUX2X1 U264 ( .B(n229), .A(n230), .S(n20), .Y(\next_config_reg[7][27] ) );
  INVX1 U265 ( .A(\config_reg[7][27] ), .Y(n230) );
  MUX2X1 U266 ( .B(n231), .A(n232), .S(n20), .Y(\next_config_reg[7][26] ) );
  INVX1 U267 ( .A(\config_reg[7][26] ), .Y(n232) );
  MUX2X1 U268 ( .B(n233), .A(n234), .S(n20), .Y(\next_config_reg[7][25] ) );
  INVX1 U269 ( .A(\config_reg[7][25] ), .Y(n234) );
  MUX2X1 U270 ( .B(n235), .A(n236), .S(n20), .Y(\next_config_reg[7][24] ) );
  INVX1 U271 ( .A(\config_reg[7][24] ), .Y(n236) );
  MUX2X1 U272 ( .B(n237), .A(n238), .S(n20), .Y(\next_config_reg[7][23] ) );
  INVX1 U273 ( .A(\config_reg[7][23] ), .Y(n238) );
  MUX2X1 U274 ( .B(n239), .A(n240), .S(n20), .Y(\next_config_reg[7][22] ) );
  INVX1 U275 ( .A(\config_reg[7][22] ), .Y(n240) );
  MUX2X1 U276 ( .B(n241), .A(n242), .S(n20), .Y(\next_config_reg[7][21] ) );
  INVX1 U277 ( .A(\config_reg[7][21] ), .Y(n242) );
  MUX2X1 U278 ( .B(n243), .A(n244), .S(n20), .Y(\next_config_reg[7][20] ) );
  INVX1 U279 ( .A(\config_reg[7][20] ), .Y(n244) );
  MUX2X1 U280 ( .B(n245), .A(n246), .S(n20), .Y(\next_config_reg[7][1] ) );
  INVX1 U281 ( .A(\config_reg[7][1] ), .Y(n246) );
  MUX2X1 U282 ( .B(n247), .A(n248), .S(n20), .Y(\next_config_reg[7][19] ) );
  INVX1 U283 ( .A(\config_reg[7][19] ), .Y(n248) );
  MUX2X1 U284 ( .B(n249), .A(n250), .S(n20), .Y(\next_config_reg[7][18] ) );
  INVX1 U285 ( .A(\config_reg[7][18] ), .Y(n250) );
  MUX2X1 U286 ( .B(n251), .A(n252), .S(n20), .Y(\next_config_reg[7][17] ) );
  INVX1 U287 ( .A(\config_reg[7][17] ), .Y(n252) );
  MUX2X1 U288 ( .B(n253), .A(n254), .S(n20), .Y(\next_config_reg[7][16] ) );
  INVX1 U289 ( .A(\config_reg[7][16] ), .Y(n254) );
  MUX2X1 U290 ( .B(n255), .A(n256), .S(n206), .Y(\next_config_reg[7][15] ) );
  INVX1 U291 ( .A(\config_reg[7][15] ), .Y(n256) );
  MUX2X1 U292 ( .B(n257), .A(n258), .S(n206), .Y(\next_config_reg[7][14] ) );
  INVX1 U293 ( .A(\config_reg[7][14] ), .Y(n258) );
  MUX2X1 U294 ( .B(n259), .A(n260), .S(n206), .Y(\next_config_reg[7][13] ) );
  INVX1 U295 ( .A(\config_reg[7][13] ), .Y(n260) );
  MUX2X1 U296 ( .B(n261), .A(n262), .S(n206), .Y(\next_config_reg[7][12] ) );
  INVX1 U297 ( .A(\config_reg[7][12] ), .Y(n262) );
  MUX2X1 U298 ( .B(n263), .A(n264), .S(n206), .Y(\next_config_reg[7][11] ) );
  INVX1 U299 ( .A(\config_reg[7][11] ), .Y(n264) );
  MUX2X1 U300 ( .B(n265), .A(n266), .S(n206), .Y(\next_config_reg[7][10] ) );
  INVX1 U301 ( .A(\config_reg[7][10] ), .Y(n266) );
  MUX2X1 U302 ( .B(n267), .A(n268), .S(n206), .Y(\next_config_reg[7][0] ) );
  NAND3X1 U303 ( .A(n269), .B(n270), .C(n271), .Y(n206) );
  INVX1 U304 ( .A(\config_reg[7][0] ), .Y(n268) );
  MUX2X1 U305 ( .B(n204), .A(n272), .S(n7), .Y(\next_config_reg[6][9] ) );
  INVX1 U306 ( .A(\config_reg[6][9] ), .Y(n272) );
  MUX2X1 U307 ( .B(n207), .A(n274), .S(n7), .Y(\next_config_reg[6][8] ) );
  INVX1 U308 ( .A(\config_reg[6][8] ), .Y(n274) );
  MUX2X1 U309 ( .B(n209), .A(n275), .S(n7), .Y(\next_config_reg[6][7] ) );
  INVX1 U310 ( .A(\config_reg[6][7] ), .Y(n275) );
  MUX2X1 U311 ( .B(n211), .A(n276), .S(n7), .Y(\next_config_reg[6][6] ) );
  INVX1 U312 ( .A(\config_reg[6][6] ), .Y(n276) );
  MUX2X1 U313 ( .B(n213), .A(n277), .S(n7), .Y(\next_config_reg[6][5] ) );
  INVX1 U314 ( .A(\config_reg[6][5] ), .Y(n277) );
  MUX2X1 U315 ( .B(n215), .A(n278), .S(n7), .Y(\next_config_reg[6][4] ) );
  INVX1 U316 ( .A(\config_reg[6][4] ), .Y(n278) );
  MUX2X1 U317 ( .B(n217), .A(n279), .S(n7), .Y(\next_config_reg[6][3] ) );
  INVX1 U318 ( .A(\config_reg[6][3] ), .Y(n279) );
  MUX2X1 U319 ( .B(n219), .A(n280), .S(n7), .Y(\next_config_reg[6][31] ) );
  INVX1 U320 ( .A(\config_reg[6][31] ), .Y(n280) );
  MUX2X1 U321 ( .B(n221), .A(n281), .S(n7), .Y(\next_config_reg[6][30] ) );
  INVX1 U322 ( .A(\config_reg[6][30] ), .Y(n281) );
  MUX2X1 U323 ( .B(n223), .A(n282), .S(n7), .Y(\next_config_reg[6][2] ) );
  INVX1 U324 ( .A(\config_reg[6][2] ), .Y(n282) );
  MUX2X1 U325 ( .B(n225), .A(n283), .S(n7), .Y(\next_config_reg[6][29] ) );
  INVX1 U326 ( .A(\config_reg[6][29] ), .Y(n283) );
  MUX2X1 U327 ( .B(n227), .A(n284), .S(n7), .Y(\next_config_reg[6][28] ) );
  INVX1 U328 ( .A(\config_reg[6][28] ), .Y(n284) );
  MUX2X1 U329 ( .B(n229), .A(n285), .S(n7), .Y(\next_config_reg[6][27] ) );
  INVX1 U330 ( .A(\config_reg[6][27] ), .Y(n285) );
  MUX2X1 U331 ( .B(n231), .A(n286), .S(n7), .Y(\next_config_reg[6][26] ) );
  INVX1 U332 ( .A(\config_reg[6][26] ), .Y(n286) );
  MUX2X1 U333 ( .B(n233), .A(n287), .S(n7), .Y(\next_config_reg[6][25] ) );
  INVX1 U334 ( .A(\config_reg[6][25] ), .Y(n287) );
  MUX2X1 U335 ( .B(n235), .A(n288), .S(n7), .Y(\next_config_reg[6][24] ) );
  INVX1 U336 ( .A(\config_reg[6][24] ), .Y(n288) );
  MUX2X1 U337 ( .B(n237), .A(n289), .S(n7), .Y(\next_config_reg[6][23] ) );
  INVX1 U338 ( .A(\config_reg[6][23] ), .Y(n289) );
  MUX2X1 U339 ( .B(n239), .A(n290), .S(n7), .Y(\next_config_reg[6][22] ) );
  INVX1 U340 ( .A(\config_reg[6][22] ), .Y(n290) );
  MUX2X1 U341 ( .B(n241), .A(n291), .S(n7), .Y(\next_config_reg[6][21] ) );
  INVX1 U342 ( .A(\config_reg[6][21] ), .Y(n291) );
  MUX2X1 U343 ( .B(n243), .A(n292), .S(n7), .Y(\next_config_reg[6][20] ) );
  INVX1 U344 ( .A(\config_reg[6][20] ), .Y(n292) );
  MUX2X1 U345 ( .B(n245), .A(n293), .S(n7), .Y(\next_config_reg[6][1] ) );
  INVX1 U346 ( .A(\config_reg[6][1] ), .Y(n293) );
  MUX2X1 U347 ( .B(n247), .A(n294), .S(n7), .Y(\next_config_reg[6][19] ) );
  INVX1 U348 ( .A(\config_reg[6][19] ), .Y(n294) );
  MUX2X1 U349 ( .B(n249), .A(n295), .S(n7), .Y(\next_config_reg[6][18] ) );
  INVX1 U350 ( .A(\config_reg[6][18] ), .Y(n295) );
  MUX2X1 U351 ( .B(n251), .A(n296), .S(n7), .Y(\next_config_reg[6][17] ) );
  INVX1 U352 ( .A(\config_reg[6][17] ), .Y(n296) );
  MUX2X1 U353 ( .B(n253), .A(n297), .S(n7), .Y(\next_config_reg[6][16] ) );
  INVX1 U354 ( .A(\config_reg[6][16] ), .Y(n297) );
  MUX2X1 U355 ( .B(n255), .A(n298), .S(n273), .Y(\next_config_reg[6][15] ) );
  INVX1 U356 ( .A(\config_reg[6][15] ), .Y(n298) );
  MUX2X1 U357 ( .B(n257), .A(n299), .S(n273), .Y(\next_config_reg[6][14] ) );
  INVX1 U358 ( .A(\config_reg[6][14] ), .Y(n299) );
  MUX2X1 U359 ( .B(n259), .A(n300), .S(n273), .Y(\next_config_reg[6][13] ) );
  INVX1 U360 ( .A(\config_reg[6][13] ), .Y(n300) );
  MUX2X1 U361 ( .B(n261), .A(n301), .S(n273), .Y(\next_config_reg[6][12] ) );
  INVX1 U362 ( .A(\config_reg[6][12] ), .Y(n301) );
  MUX2X1 U363 ( .B(n263), .A(n302), .S(n273), .Y(\next_config_reg[6][11] ) );
  INVX1 U364 ( .A(\config_reg[6][11] ), .Y(n302) );
  MUX2X1 U365 ( .B(n265), .A(n303), .S(n273), .Y(\next_config_reg[6][10] ) );
  INVX1 U366 ( .A(\config_reg[6][10] ), .Y(n303) );
  MUX2X1 U367 ( .B(n267), .A(n304), .S(n273), .Y(\next_config_reg[6][0] ) );
  NAND3X1 U368 ( .A(n270), .B(n305), .C(n271), .Y(n273) );
  INVX1 U369 ( .A(\config_reg[6][0] ), .Y(n304) );
  MUX2X1 U370 ( .B(n204), .A(n306), .S(n11), .Y(\next_config_reg[5][9] ) );
  INVX1 U371 ( .A(\config_reg[5][9] ), .Y(n306) );
  MUX2X1 U372 ( .B(n207), .A(n308), .S(n11), .Y(\next_config_reg[5][8] ) );
  INVX1 U373 ( .A(\config_reg[5][8] ), .Y(n308) );
  MUX2X1 U374 ( .B(n209), .A(n309), .S(n11), .Y(\next_config_reg[5][7] ) );
  INVX1 U375 ( .A(\config_reg[5][7] ), .Y(n309) );
  MUX2X1 U376 ( .B(n211), .A(n310), .S(n11), .Y(\next_config_reg[5][6] ) );
  INVX1 U377 ( .A(\config_reg[5][6] ), .Y(n310) );
  MUX2X1 U378 ( .B(n213), .A(n311), .S(n11), .Y(\next_config_reg[5][5] ) );
  INVX1 U379 ( .A(\config_reg[5][5] ), .Y(n311) );
  MUX2X1 U380 ( .B(n215), .A(n312), .S(n11), .Y(\next_config_reg[5][4] ) );
  INVX1 U381 ( .A(\config_reg[5][4] ), .Y(n312) );
  MUX2X1 U382 ( .B(n217), .A(n313), .S(n11), .Y(\next_config_reg[5][3] ) );
  INVX1 U383 ( .A(\config_reg[5][3] ), .Y(n313) );
  MUX2X1 U384 ( .B(n219), .A(n314), .S(n11), .Y(\next_config_reg[5][31] ) );
  INVX1 U385 ( .A(\config_reg[5][31] ), .Y(n314) );
  MUX2X1 U386 ( .B(n221), .A(n315), .S(n11), .Y(\next_config_reg[5][30] ) );
  INVX1 U387 ( .A(\config_reg[5][30] ), .Y(n315) );
  MUX2X1 U388 ( .B(n223), .A(n316), .S(n11), .Y(\next_config_reg[5][2] ) );
  INVX1 U389 ( .A(\config_reg[5][2] ), .Y(n316) );
  MUX2X1 U390 ( .B(n225), .A(n317), .S(n11), .Y(\next_config_reg[5][29] ) );
  INVX1 U391 ( .A(\config_reg[5][29] ), .Y(n317) );
  MUX2X1 U392 ( .B(n227), .A(n318), .S(n11), .Y(\next_config_reg[5][28] ) );
  INVX1 U393 ( .A(\config_reg[5][28] ), .Y(n318) );
  MUX2X1 U394 ( .B(n229), .A(n319), .S(n11), .Y(\next_config_reg[5][27] ) );
  INVX1 U395 ( .A(\config_reg[5][27] ), .Y(n319) );
  MUX2X1 U396 ( .B(n231), .A(n320), .S(n11), .Y(\next_config_reg[5][26] ) );
  INVX1 U397 ( .A(\config_reg[5][26] ), .Y(n320) );
  MUX2X1 U398 ( .B(n233), .A(n321), .S(n11), .Y(\next_config_reg[5][25] ) );
  INVX1 U399 ( .A(\config_reg[5][25] ), .Y(n321) );
  MUX2X1 U400 ( .B(n235), .A(n322), .S(n11), .Y(\next_config_reg[5][24] ) );
  INVX1 U401 ( .A(\config_reg[5][24] ), .Y(n322) );
  MUX2X1 U402 ( .B(n237), .A(n323), .S(n11), .Y(\next_config_reg[5][23] ) );
  INVX1 U403 ( .A(\config_reg[5][23] ), .Y(n323) );
  MUX2X1 U404 ( .B(n239), .A(n324), .S(n11), .Y(\next_config_reg[5][22] ) );
  INVX1 U405 ( .A(\config_reg[5][22] ), .Y(n324) );
  MUX2X1 U406 ( .B(n241), .A(n325), .S(n11), .Y(\next_config_reg[5][21] ) );
  INVX1 U407 ( .A(\config_reg[5][21] ), .Y(n325) );
  MUX2X1 U408 ( .B(n243), .A(n326), .S(n11), .Y(\next_config_reg[5][20] ) );
  INVX1 U409 ( .A(\config_reg[5][20] ), .Y(n326) );
  MUX2X1 U410 ( .B(n245), .A(n327), .S(n11), .Y(\next_config_reg[5][1] ) );
  INVX1 U411 ( .A(\config_reg[5][1] ), .Y(n327) );
  MUX2X1 U412 ( .B(n247), .A(n328), .S(n11), .Y(\next_config_reg[5][19] ) );
  INVX1 U413 ( .A(\config_reg[5][19] ), .Y(n328) );
  MUX2X1 U414 ( .B(n249), .A(n329), .S(n11), .Y(\next_config_reg[5][18] ) );
  INVX1 U415 ( .A(\config_reg[5][18] ), .Y(n329) );
  MUX2X1 U416 ( .B(n251), .A(n330), .S(n11), .Y(\next_config_reg[5][17] ) );
  INVX1 U417 ( .A(\config_reg[5][17] ), .Y(n330) );
  MUX2X1 U418 ( .B(n253), .A(n331), .S(n11), .Y(\next_config_reg[5][16] ) );
  INVX1 U419 ( .A(\config_reg[5][16] ), .Y(n331) );
  MUX2X1 U420 ( .B(n255), .A(n332), .S(n307), .Y(\next_config_reg[5][15] ) );
  INVX1 U421 ( .A(\config_reg[5][15] ), .Y(n332) );
  MUX2X1 U422 ( .B(n257), .A(n333), .S(n307), .Y(\next_config_reg[5][14] ) );
  INVX1 U423 ( .A(\config_reg[5][14] ), .Y(n333) );
  MUX2X1 U424 ( .B(n259), .A(n334), .S(n307), .Y(\next_config_reg[5][13] ) );
  INVX1 U425 ( .A(\config_reg[5][13] ), .Y(n334) );
  MUX2X1 U426 ( .B(n261), .A(n335), .S(n307), .Y(\next_config_reg[5][12] ) );
  INVX1 U427 ( .A(\config_reg[5][12] ), .Y(n335) );
  MUX2X1 U428 ( .B(n263), .A(n336), .S(n307), .Y(\next_config_reg[5][11] ) );
  INVX1 U429 ( .A(\config_reg[5][11] ), .Y(n336) );
  MUX2X1 U430 ( .B(n265), .A(n337), .S(n307), .Y(\next_config_reg[5][10] ) );
  INVX1 U431 ( .A(\config_reg[5][10] ), .Y(n337) );
  MUX2X1 U432 ( .B(n267), .A(n338), .S(n307), .Y(\next_config_reg[5][0] ) );
  NAND3X1 U433 ( .A(n271), .B(n269), .C(n339), .Y(n307) );
  INVX1 U434 ( .A(\config_reg[5][0] ), .Y(n338) );
  MUX2X1 U435 ( .B(n204), .A(n340), .S(n16), .Y(\next_config_reg[4][9] ) );
  INVX1 U436 ( .A(\config_reg[4][9] ), .Y(n340) );
  MUX2X1 U437 ( .B(n207), .A(n342), .S(n16), .Y(\next_config_reg[4][8] ) );
  INVX1 U438 ( .A(\config_reg[4][8] ), .Y(n342) );
  MUX2X1 U439 ( .B(n209), .A(n343), .S(n16), .Y(\next_config_reg[4][7] ) );
  INVX1 U440 ( .A(\config_reg[4][7] ), .Y(n343) );
  MUX2X1 U441 ( .B(n211), .A(n344), .S(n16), .Y(\next_config_reg[4][6] ) );
  INVX1 U442 ( .A(\config_reg[4][6] ), .Y(n344) );
  MUX2X1 U443 ( .B(n213), .A(n345), .S(n16), .Y(\next_config_reg[4][5] ) );
  INVX1 U444 ( .A(\config_reg[4][5] ), .Y(n345) );
  MUX2X1 U445 ( .B(n215), .A(n346), .S(n16), .Y(\next_config_reg[4][4] ) );
  INVX1 U446 ( .A(\config_reg[4][4] ), .Y(n346) );
  MUX2X1 U447 ( .B(n217), .A(n347), .S(n16), .Y(\next_config_reg[4][3] ) );
  INVX1 U448 ( .A(\config_reg[4][3] ), .Y(n347) );
  MUX2X1 U449 ( .B(n219), .A(n348), .S(n16), .Y(\next_config_reg[4][31] ) );
  INVX1 U450 ( .A(\config_reg[4][31] ), .Y(n348) );
  MUX2X1 U451 ( .B(n221), .A(n349), .S(n16), .Y(\next_config_reg[4][30] ) );
  INVX1 U452 ( .A(\config_reg[4][30] ), .Y(n349) );
  MUX2X1 U453 ( .B(n223), .A(n350), .S(n16), .Y(\next_config_reg[4][2] ) );
  INVX1 U454 ( .A(\config_reg[4][2] ), .Y(n350) );
  MUX2X1 U455 ( .B(n225), .A(n351), .S(n16), .Y(\next_config_reg[4][29] ) );
  INVX1 U456 ( .A(\config_reg[4][29] ), .Y(n351) );
  MUX2X1 U457 ( .B(n227), .A(n352), .S(n16), .Y(\next_config_reg[4][28] ) );
  INVX1 U458 ( .A(\config_reg[4][28] ), .Y(n352) );
  MUX2X1 U459 ( .B(n229), .A(n353), .S(n16), .Y(\next_config_reg[4][27] ) );
  INVX1 U460 ( .A(\config_reg[4][27] ), .Y(n353) );
  MUX2X1 U461 ( .B(n231), .A(n354), .S(n16), .Y(\next_config_reg[4][26] ) );
  INVX1 U462 ( .A(\config_reg[4][26] ), .Y(n354) );
  MUX2X1 U463 ( .B(n233), .A(n355), .S(n16), .Y(\next_config_reg[4][25] ) );
  INVX1 U464 ( .A(\config_reg[4][25] ), .Y(n355) );
  MUX2X1 U465 ( .B(n235), .A(n356), .S(n16), .Y(\next_config_reg[4][24] ) );
  INVX1 U466 ( .A(\config_reg[4][24] ), .Y(n356) );
  MUX2X1 U467 ( .B(n237), .A(n357), .S(n16), .Y(\next_config_reg[4][23] ) );
  INVX1 U468 ( .A(\config_reg[4][23] ), .Y(n357) );
  MUX2X1 U469 ( .B(n239), .A(n358), .S(n16), .Y(\next_config_reg[4][22] ) );
  INVX1 U470 ( .A(\config_reg[4][22] ), .Y(n358) );
  MUX2X1 U471 ( .B(n241), .A(n359), .S(n16), .Y(\next_config_reg[4][21] ) );
  INVX1 U472 ( .A(\config_reg[4][21] ), .Y(n359) );
  MUX2X1 U473 ( .B(n243), .A(n360), .S(n16), .Y(\next_config_reg[4][20] ) );
  INVX1 U474 ( .A(\config_reg[4][20] ), .Y(n360) );
  MUX2X1 U475 ( .B(n245), .A(n361), .S(n16), .Y(\next_config_reg[4][1] ) );
  INVX1 U476 ( .A(\config_reg[4][1] ), .Y(n361) );
  MUX2X1 U477 ( .B(n247), .A(n362), .S(n16), .Y(\next_config_reg[4][19] ) );
  INVX1 U478 ( .A(\config_reg[4][19] ), .Y(n362) );
  MUX2X1 U479 ( .B(n249), .A(n363), .S(n16), .Y(\next_config_reg[4][18] ) );
  INVX1 U480 ( .A(\config_reg[4][18] ), .Y(n363) );
  MUX2X1 U481 ( .B(n251), .A(n364), .S(n16), .Y(\next_config_reg[4][17] ) );
  INVX1 U482 ( .A(\config_reg[4][17] ), .Y(n364) );
  MUX2X1 U483 ( .B(n253), .A(n365), .S(n16), .Y(\next_config_reg[4][16] ) );
  INVX1 U484 ( .A(\config_reg[4][16] ), .Y(n365) );
  MUX2X1 U485 ( .B(n255), .A(n366), .S(n341), .Y(\next_config_reg[4][15] ) );
  INVX1 U486 ( .A(\config_reg[4][15] ), .Y(n366) );
  MUX2X1 U487 ( .B(n257), .A(n367), .S(n341), .Y(\next_config_reg[4][14] ) );
  INVX1 U488 ( .A(\config_reg[4][14] ), .Y(n367) );
  MUX2X1 U489 ( .B(n259), .A(n368), .S(n341), .Y(\next_config_reg[4][13] ) );
  INVX1 U490 ( .A(\config_reg[4][13] ), .Y(n368) );
  MUX2X1 U491 ( .B(n261), .A(n369), .S(n341), .Y(\next_config_reg[4][12] ) );
  INVX1 U492 ( .A(\config_reg[4][12] ), .Y(n369) );
  MUX2X1 U493 ( .B(n263), .A(n370), .S(n341), .Y(\next_config_reg[4][11] ) );
  INVX1 U494 ( .A(\config_reg[4][11] ), .Y(n370) );
  MUX2X1 U495 ( .B(n265), .A(n371), .S(n341), .Y(\next_config_reg[4][10] ) );
  INVX1 U496 ( .A(\config_reg[4][10] ), .Y(n371) );
  MUX2X1 U497 ( .B(n267), .A(n372), .S(n341), .Y(\next_config_reg[4][0] ) );
  NAND3X1 U498 ( .A(n271), .B(n305), .C(n339), .Y(n341) );
  INVX1 U499 ( .A(n373), .Y(n271) );
  NAND3X1 U500 ( .A(n374), .B(n375), .C(n376), .Y(n373) );
  INVX1 U501 ( .A(n377), .Y(n375) );
  INVX1 U502 ( .A(\config_reg[4][0] ), .Y(n372) );
  MUX2X1 U503 ( .B(n204), .A(n378), .S(n15), .Y(\next_config_reg[3][9] ) );
  INVX1 U504 ( .A(\config_reg[3][9] ), .Y(n378) );
  MUX2X1 U505 ( .B(n207), .A(n380), .S(n15), .Y(\next_config_reg[3][8] ) );
  INVX1 U506 ( .A(\config_reg[3][8] ), .Y(n380) );
  MUX2X1 U507 ( .B(n209), .A(n381), .S(n15), .Y(\next_config_reg[3][7] ) );
  INVX1 U508 ( .A(\config_reg[3][7] ), .Y(n381) );
  MUX2X1 U509 ( .B(n211), .A(n382), .S(n15), .Y(\next_config_reg[3][6] ) );
  INVX1 U510 ( .A(\config_reg[3][6] ), .Y(n382) );
  MUX2X1 U511 ( .B(n213), .A(n383), .S(n15), .Y(\next_config_reg[3][5] ) );
  INVX1 U512 ( .A(\config_reg[3][5] ), .Y(n383) );
  MUX2X1 U513 ( .B(n215), .A(n384), .S(n15), .Y(\next_config_reg[3][4] ) );
  INVX1 U514 ( .A(\config_reg[3][4] ), .Y(n384) );
  MUX2X1 U515 ( .B(n217), .A(n385), .S(n15), .Y(\next_config_reg[3][3] ) );
  INVX1 U516 ( .A(\config_reg[3][3] ), .Y(n385) );
  MUX2X1 U517 ( .B(n219), .A(n386), .S(n15), .Y(\next_config_reg[3][31] ) );
  INVX1 U518 ( .A(\config_reg[3][31] ), .Y(n386) );
  MUX2X1 U519 ( .B(n221), .A(n387), .S(n15), .Y(\next_config_reg[3][30] ) );
  INVX1 U520 ( .A(\config_reg[3][30] ), .Y(n387) );
  MUX2X1 U521 ( .B(n223), .A(n388), .S(n15), .Y(\next_config_reg[3][2] ) );
  INVX1 U522 ( .A(\config_reg[3][2] ), .Y(n388) );
  MUX2X1 U523 ( .B(n225), .A(n389), .S(n15), .Y(\next_config_reg[3][29] ) );
  INVX1 U524 ( .A(\config_reg[3][29] ), .Y(n389) );
  MUX2X1 U525 ( .B(n227), .A(n390), .S(n15), .Y(\next_config_reg[3][28] ) );
  INVX1 U526 ( .A(\config_reg[3][28] ), .Y(n390) );
  MUX2X1 U527 ( .B(n229), .A(n391), .S(n15), .Y(\next_config_reg[3][27] ) );
  INVX1 U528 ( .A(\config_reg[3][27] ), .Y(n391) );
  MUX2X1 U529 ( .B(n231), .A(n392), .S(n15), .Y(\next_config_reg[3][26] ) );
  INVX1 U530 ( .A(\config_reg[3][26] ), .Y(n392) );
  MUX2X1 U531 ( .B(n233), .A(n393), .S(n15), .Y(\next_config_reg[3][25] ) );
  INVX1 U532 ( .A(\config_reg[3][25] ), .Y(n393) );
  MUX2X1 U533 ( .B(n235), .A(n394), .S(n15), .Y(\next_config_reg[3][24] ) );
  INVX1 U534 ( .A(\config_reg[3][24] ), .Y(n394) );
  MUX2X1 U535 ( .B(n237), .A(n395), .S(n15), .Y(\next_config_reg[3][23] ) );
  INVX1 U536 ( .A(\config_reg[3][23] ), .Y(n395) );
  MUX2X1 U537 ( .B(n239), .A(n396), .S(n15), .Y(\next_config_reg[3][22] ) );
  INVX1 U538 ( .A(\config_reg[3][22] ), .Y(n396) );
  MUX2X1 U539 ( .B(n241), .A(n397), .S(n15), .Y(\next_config_reg[3][21] ) );
  INVX1 U540 ( .A(\config_reg[3][21] ), .Y(n397) );
  MUX2X1 U541 ( .B(n243), .A(n398), .S(n15), .Y(\next_config_reg[3][20] ) );
  INVX1 U542 ( .A(\config_reg[3][20] ), .Y(n398) );
  MUX2X1 U543 ( .B(n245), .A(n399), .S(n15), .Y(\next_config_reg[3][1] ) );
  INVX1 U544 ( .A(\config_reg[3][1] ), .Y(n399) );
  MUX2X1 U545 ( .B(n247), .A(n400), .S(n15), .Y(\next_config_reg[3][19] ) );
  INVX1 U546 ( .A(\config_reg[3][19] ), .Y(n400) );
  MUX2X1 U547 ( .B(n249), .A(n401), .S(n15), .Y(\next_config_reg[3][18] ) );
  INVX1 U548 ( .A(\config_reg[3][18] ), .Y(n401) );
  MUX2X1 U549 ( .B(n251), .A(n402), .S(n15), .Y(\next_config_reg[3][17] ) );
  INVX1 U550 ( .A(\config_reg[3][17] ), .Y(n402) );
  MUX2X1 U551 ( .B(n253), .A(n403), .S(n15), .Y(\next_config_reg[3][16] ) );
  INVX1 U552 ( .A(\config_reg[3][16] ), .Y(n403) );
  MUX2X1 U553 ( .B(n255), .A(n404), .S(n379), .Y(\next_config_reg[3][15] ) );
  INVX1 U554 ( .A(\config_reg[3][15] ), .Y(n404) );
  MUX2X1 U555 ( .B(n257), .A(n405), .S(n379), .Y(\next_config_reg[3][14] ) );
  INVX1 U556 ( .A(\config_reg[3][14] ), .Y(n405) );
  MUX2X1 U557 ( .B(n259), .A(n406), .S(n379), .Y(\next_config_reg[3][13] ) );
  INVX1 U558 ( .A(\config_reg[3][13] ), .Y(n406) );
  MUX2X1 U559 ( .B(n261), .A(n407), .S(n379), .Y(\next_config_reg[3][12] ) );
  INVX1 U560 ( .A(\config_reg[3][12] ), .Y(n407) );
  MUX2X1 U561 ( .B(n263), .A(n408), .S(n379), .Y(\next_config_reg[3][11] ) );
  INVX1 U562 ( .A(\config_reg[3][11] ), .Y(n408) );
  MUX2X1 U563 ( .B(n265), .A(n409), .S(n379), .Y(\next_config_reg[3][10] ) );
  INVX1 U564 ( .A(\config_reg[3][10] ), .Y(n409) );
  MUX2X1 U565 ( .B(n267), .A(n410), .S(n379), .Y(\next_config_reg[3][0] ) );
  NAND3X1 U566 ( .A(n269), .B(n270), .C(n411), .Y(n379) );
  INVX1 U567 ( .A(\config_reg[3][0] ), .Y(n410) );
  MUX2X1 U568 ( .B(n204), .A(n412), .S(n12), .Y(\next_config_reg[2][9] ) );
  INVX1 U569 ( .A(\config_reg[2][9] ), .Y(n412) );
  MUX2X1 U570 ( .B(n207), .A(n414), .S(n12), .Y(\next_config_reg[2][8] ) );
  INVX1 U571 ( .A(\config_reg[2][8] ), .Y(n414) );
  MUX2X1 U572 ( .B(n209), .A(n415), .S(n12), .Y(\next_config_reg[2][7] ) );
  INVX1 U573 ( .A(\config_reg[2][7] ), .Y(n415) );
  MUX2X1 U574 ( .B(n211), .A(n416), .S(n12), .Y(\next_config_reg[2][6] ) );
  INVX1 U575 ( .A(\config_reg[2][6] ), .Y(n416) );
  MUX2X1 U576 ( .B(n213), .A(n417), .S(n12), .Y(\next_config_reg[2][5] ) );
  INVX1 U577 ( .A(\config_reg[2][5] ), .Y(n417) );
  MUX2X1 U578 ( .B(n215), .A(n418), .S(n12), .Y(\next_config_reg[2][4] ) );
  INVX1 U579 ( .A(\config_reg[2][4] ), .Y(n418) );
  MUX2X1 U580 ( .B(n217), .A(n419), .S(n12), .Y(\next_config_reg[2][3] ) );
  INVX1 U581 ( .A(\config_reg[2][3] ), .Y(n419) );
  MUX2X1 U582 ( .B(n219), .A(n420), .S(n12), .Y(\next_config_reg[2][31] ) );
  INVX1 U583 ( .A(\config_reg[2][31] ), .Y(n420) );
  MUX2X1 U584 ( .B(n221), .A(n421), .S(n12), .Y(\next_config_reg[2][30] ) );
  INVX1 U585 ( .A(\config_reg[2][30] ), .Y(n421) );
  MUX2X1 U586 ( .B(n223), .A(n422), .S(n12), .Y(\next_config_reg[2][2] ) );
  INVX1 U587 ( .A(\config_reg[2][2] ), .Y(n422) );
  MUX2X1 U588 ( .B(n225), .A(n423), .S(n12), .Y(\next_config_reg[2][29] ) );
  INVX1 U589 ( .A(\config_reg[2][29] ), .Y(n423) );
  MUX2X1 U590 ( .B(n227), .A(n424), .S(n12), .Y(\next_config_reg[2][28] ) );
  INVX1 U591 ( .A(\config_reg[2][28] ), .Y(n424) );
  MUX2X1 U592 ( .B(n229), .A(n425), .S(n12), .Y(\next_config_reg[2][27] ) );
  INVX1 U593 ( .A(\config_reg[2][27] ), .Y(n425) );
  MUX2X1 U594 ( .B(n231), .A(n426), .S(n12), .Y(\next_config_reg[2][26] ) );
  INVX1 U595 ( .A(\config_reg[2][26] ), .Y(n426) );
  MUX2X1 U596 ( .B(n233), .A(n427), .S(n12), .Y(\next_config_reg[2][25] ) );
  INVX1 U597 ( .A(\config_reg[2][25] ), .Y(n427) );
  MUX2X1 U598 ( .B(n235), .A(n428), .S(n12), .Y(\next_config_reg[2][24] ) );
  INVX1 U599 ( .A(\config_reg[2][24] ), .Y(n428) );
  MUX2X1 U600 ( .B(n237), .A(n429), .S(n12), .Y(\next_config_reg[2][23] ) );
  INVX1 U601 ( .A(\config_reg[2][23] ), .Y(n429) );
  MUX2X1 U602 ( .B(n239), .A(n430), .S(n12), .Y(\next_config_reg[2][22] ) );
  INVX1 U603 ( .A(\config_reg[2][22] ), .Y(n430) );
  MUX2X1 U604 ( .B(n241), .A(n431), .S(n12), .Y(\next_config_reg[2][21] ) );
  INVX1 U605 ( .A(\config_reg[2][21] ), .Y(n431) );
  MUX2X1 U606 ( .B(n243), .A(n432), .S(n12), .Y(\next_config_reg[2][20] ) );
  INVX1 U607 ( .A(\config_reg[2][20] ), .Y(n432) );
  MUX2X1 U608 ( .B(n245), .A(n433), .S(n12), .Y(\next_config_reg[2][1] ) );
  INVX1 U609 ( .A(\config_reg[2][1] ), .Y(n433) );
  MUX2X1 U610 ( .B(n247), .A(n434), .S(n12), .Y(\next_config_reg[2][19] ) );
  INVX1 U611 ( .A(\config_reg[2][19] ), .Y(n434) );
  MUX2X1 U612 ( .B(n249), .A(n435), .S(n12), .Y(\next_config_reg[2][18] ) );
  INVX1 U613 ( .A(\config_reg[2][18] ), .Y(n435) );
  MUX2X1 U614 ( .B(n251), .A(n436), .S(n12), .Y(\next_config_reg[2][17] ) );
  INVX1 U615 ( .A(\config_reg[2][17] ), .Y(n436) );
  MUX2X1 U616 ( .B(n253), .A(n437), .S(n12), .Y(\next_config_reg[2][16] ) );
  INVX1 U617 ( .A(\config_reg[2][16] ), .Y(n437) );
  MUX2X1 U618 ( .B(n255), .A(n438), .S(n413), .Y(\next_config_reg[2][15] ) );
  INVX1 U619 ( .A(\config_reg[2][15] ), .Y(n438) );
  MUX2X1 U620 ( .B(n257), .A(n439), .S(n413), .Y(\next_config_reg[2][14] ) );
  INVX1 U621 ( .A(\config_reg[2][14] ), .Y(n439) );
  MUX2X1 U622 ( .B(n259), .A(n440), .S(n413), .Y(\next_config_reg[2][13] ) );
  INVX1 U623 ( .A(\config_reg[2][13] ), .Y(n440) );
  MUX2X1 U624 ( .B(n261), .A(n441), .S(n413), .Y(\next_config_reg[2][12] ) );
  INVX1 U625 ( .A(\config_reg[2][12] ), .Y(n441) );
  MUX2X1 U626 ( .B(n263), .A(n442), .S(n413), .Y(\next_config_reg[2][11] ) );
  INVX1 U627 ( .A(\config_reg[2][11] ), .Y(n442) );
  MUX2X1 U628 ( .B(n265), .A(n443), .S(n413), .Y(\next_config_reg[2][10] ) );
  INVX1 U629 ( .A(\config_reg[2][10] ), .Y(n443) );
  MUX2X1 U630 ( .B(n267), .A(n444), .S(n413), .Y(\next_config_reg[2][0] ) );
  NAND3X1 U631 ( .A(n270), .B(n305), .C(n411), .Y(n413) );
  INVX1 U632 ( .A(\config_reg[2][0] ), .Y(n444) );
  MUX2X1 U633 ( .B(n204), .A(n445), .S(n8), .Y(\next_config_reg[1][9] ) );
  INVX1 U634 ( .A(\config_reg[1][9] ), .Y(n445) );
  MUX2X1 U635 ( .B(n207), .A(n447), .S(n8), .Y(\next_config_reg[1][8] ) );
  INVX1 U636 ( .A(\config_reg[1][8] ), .Y(n447) );
  MUX2X1 U637 ( .B(n209), .A(n448), .S(n8), .Y(\next_config_reg[1][7] ) );
  INVX1 U638 ( .A(\config_reg[1][7] ), .Y(n448) );
  MUX2X1 U639 ( .B(n211), .A(n449), .S(n8), .Y(\next_config_reg[1][6] ) );
  INVX1 U640 ( .A(\config_reg[1][6] ), .Y(n449) );
  MUX2X1 U641 ( .B(n213), .A(n450), .S(n8), .Y(\next_config_reg[1][5] ) );
  INVX1 U642 ( .A(\config_reg[1][5] ), .Y(n450) );
  MUX2X1 U643 ( .B(n215), .A(n451), .S(n8), .Y(\next_config_reg[1][4] ) );
  INVX1 U644 ( .A(\config_reg[1][4] ), .Y(n451) );
  MUX2X1 U645 ( .B(n217), .A(n452), .S(n8), .Y(\next_config_reg[1][3] ) );
  INVX1 U646 ( .A(\config_reg[1][3] ), .Y(n452) );
  MUX2X1 U647 ( .B(n219), .A(n453), .S(n8), .Y(\next_config_reg[1][31] ) );
  INVX1 U648 ( .A(\config_reg[1][31] ), .Y(n453) );
  MUX2X1 U649 ( .B(n221), .A(n454), .S(n8), .Y(\next_config_reg[1][30] ) );
  INVX1 U650 ( .A(\config_reg[1][30] ), .Y(n454) );
  MUX2X1 U651 ( .B(n223), .A(n455), .S(n8), .Y(\next_config_reg[1][2] ) );
  INVX1 U652 ( .A(\config_reg[1][2] ), .Y(n455) );
  MUX2X1 U653 ( .B(n225), .A(n456), .S(n8), .Y(\next_config_reg[1][29] ) );
  INVX1 U654 ( .A(\config_reg[1][29] ), .Y(n456) );
  MUX2X1 U655 ( .B(n227), .A(n457), .S(n8), .Y(\next_config_reg[1][28] ) );
  INVX1 U656 ( .A(\config_reg[1][28] ), .Y(n457) );
  MUX2X1 U657 ( .B(n229), .A(n458), .S(n8), .Y(\next_config_reg[1][27] ) );
  INVX1 U658 ( .A(\config_reg[1][27] ), .Y(n458) );
  MUX2X1 U659 ( .B(n231), .A(n459), .S(n8), .Y(\next_config_reg[1][26] ) );
  INVX1 U660 ( .A(\config_reg[1][26] ), .Y(n459) );
  MUX2X1 U661 ( .B(n233), .A(n460), .S(n8), .Y(\next_config_reg[1][25] ) );
  INVX1 U662 ( .A(\config_reg[1][25] ), .Y(n460) );
  MUX2X1 U663 ( .B(n235), .A(n461), .S(n8), .Y(\next_config_reg[1][24] ) );
  INVX1 U664 ( .A(\config_reg[1][24] ), .Y(n461) );
  MUX2X1 U665 ( .B(n237), .A(n462), .S(n8), .Y(\next_config_reg[1][23] ) );
  INVX1 U666 ( .A(\config_reg[1][23] ), .Y(n462) );
  MUX2X1 U667 ( .B(n239), .A(n463), .S(n8), .Y(\next_config_reg[1][22] ) );
  INVX1 U668 ( .A(\config_reg[1][22] ), .Y(n463) );
  MUX2X1 U669 ( .B(n241), .A(n464), .S(n8), .Y(\next_config_reg[1][21] ) );
  INVX1 U670 ( .A(\config_reg[1][21] ), .Y(n464) );
  MUX2X1 U671 ( .B(n243), .A(n465), .S(n8), .Y(\next_config_reg[1][20] ) );
  INVX1 U672 ( .A(\config_reg[1][20] ), .Y(n465) );
  MUX2X1 U673 ( .B(n245), .A(n466), .S(n8), .Y(\next_config_reg[1][1] ) );
  INVX1 U674 ( .A(\config_reg[1][1] ), .Y(n466) );
  MUX2X1 U675 ( .B(n247), .A(n467), .S(n8), .Y(\next_config_reg[1][19] ) );
  INVX1 U676 ( .A(\config_reg[1][19] ), .Y(n467) );
  MUX2X1 U677 ( .B(n249), .A(n468), .S(n8), .Y(\next_config_reg[1][18] ) );
  INVX1 U678 ( .A(\config_reg[1][18] ), .Y(n468) );
  MUX2X1 U679 ( .B(n251), .A(n469), .S(n8), .Y(\next_config_reg[1][17] ) );
  INVX1 U680 ( .A(\config_reg[1][17] ), .Y(n469) );
  MUX2X1 U681 ( .B(n253), .A(n470), .S(n8), .Y(\next_config_reg[1][16] ) );
  INVX1 U682 ( .A(\config_reg[1][16] ), .Y(n470) );
  MUX2X1 U683 ( .B(n255), .A(n471), .S(n446), .Y(\next_config_reg[1][15] ) );
  INVX1 U684 ( .A(\config_reg[1][15] ), .Y(n471) );
  MUX2X1 U685 ( .B(n257), .A(n472), .S(n446), .Y(\next_config_reg[1][14] ) );
  INVX1 U686 ( .A(\config_reg[1][14] ), .Y(n472) );
  MUX2X1 U687 ( .B(n259), .A(n473), .S(n446), .Y(\next_config_reg[1][13] ) );
  INVX1 U688 ( .A(\config_reg[1][13] ), .Y(n473) );
  MUX2X1 U689 ( .B(n261), .A(n474), .S(n446), .Y(\next_config_reg[1][12] ) );
  INVX1 U690 ( .A(\config_reg[1][12] ), .Y(n474) );
  MUX2X1 U691 ( .B(n263), .A(n475), .S(n446), .Y(\next_config_reg[1][11] ) );
  INVX1 U692 ( .A(\config_reg[1][11] ), .Y(n475) );
  MUX2X1 U693 ( .B(n265), .A(n476), .S(n446), .Y(\next_config_reg[1][10] ) );
  INVX1 U694 ( .A(\config_reg[1][10] ), .Y(n476) );
  MUX2X1 U695 ( .B(n267), .A(n477), .S(n446), .Y(\next_config_reg[1][0] ) );
  NAND3X1 U696 ( .A(n339), .B(n269), .C(n411), .Y(n446) );
  INVX1 U697 ( .A(n305), .Y(n269) );
  INVX1 U698 ( .A(\config_reg[1][0] ), .Y(n477) );
  MUX2X1 U699 ( .B(n204), .A(n478), .S(n19), .Y(\next_config_reg[0][9] ) );
  INVX1 U700 ( .A(\config_reg[0][9] ), .Y(n478) );
  NAND2X1 U701 ( .A(fft_sub_wdata[9]), .B(n480), .Y(n204) );
  MUX2X1 U702 ( .B(n207), .A(n481), .S(n19), .Y(\next_config_reg[0][8] ) );
  INVX1 U703 ( .A(\config_reg[0][8] ), .Y(n481) );
  NAND2X1 U704 ( .A(fft_sub_wdata[8]), .B(n480), .Y(n207) );
  MUX2X1 U705 ( .B(n209), .A(n482), .S(n19), .Y(\next_config_reg[0][7] ) );
  INVX1 U706 ( .A(\config_reg[0][7] ), .Y(n482) );
  NAND2X1 U707 ( .A(fft_sub_wdata[7]), .B(n480), .Y(n209) );
  MUX2X1 U708 ( .B(n211), .A(n483), .S(n19), .Y(\next_config_reg[0][6] ) );
  INVX1 U709 ( .A(\config_reg[0][6] ), .Y(n483) );
  NAND2X1 U710 ( .A(fft_sub_wdata[6]), .B(n480), .Y(n211) );
  MUX2X1 U711 ( .B(n213), .A(n484), .S(n19), .Y(\next_config_reg[0][5] ) );
  INVX1 U712 ( .A(\config_reg[0][5] ), .Y(n484) );
  NAND2X1 U713 ( .A(fft_sub_wdata[5]), .B(n480), .Y(n213) );
  MUX2X1 U714 ( .B(n215), .A(n485), .S(n19), .Y(\next_config_reg[0][4] ) );
  INVX1 U715 ( .A(\config_reg[0][4] ), .Y(n485) );
  NAND2X1 U716 ( .A(fft_sub_wdata[4]), .B(n480), .Y(n215) );
  MUX2X1 U717 ( .B(n217), .A(n486), .S(n19), .Y(\next_config_reg[0][3] ) );
  INVX1 U718 ( .A(\config_reg[0][3] ), .Y(n486) );
  NAND2X1 U719 ( .A(fft_sub_wdata[3]), .B(n480), .Y(n217) );
  MUX2X1 U720 ( .B(n219), .A(n487), .S(n19), .Y(\next_config_reg[0][31] ) );
  INVX1 U721 ( .A(\config_reg[0][31] ), .Y(n487) );
  NAND2X1 U722 ( .A(fft_sub_wdata[31]), .B(n488), .Y(n219) );
  MUX2X1 U723 ( .B(n221), .A(n489), .S(n19), .Y(\next_config_reg[0][30] ) );
  INVX1 U724 ( .A(\config_reg[0][30] ), .Y(n489) );
  NAND2X1 U725 ( .A(fft_sub_wdata[30]), .B(n488), .Y(n221) );
  MUX2X1 U726 ( .B(n223), .A(n490), .S(n19), .Y(\next_config_reg[0][2] ) );
  INVX1 U727 ( .A(\config_reg[0][2] ), .Y(n490) );
  NAND2X1 U728 ( .A(fft_sub_wdata[2]), .B(n480), .Y(n223) );
  MUX2X1 U729 ( .B(n225), .A(n491), .S(n19), .Y(\next_config_reg[0][29] ) );
  INVX1 U730 ( .A(\config_reg[0][29] ), .Y(n491) );
  NAND2X1 U731 ( .A(fft_sub_wdata[29]), .B(n488), .Y(n225) );
  MUX2X1 U732 ( .B(n227), .A(n492), .S(n19), .Y(\next_config_reg[0][28] ) );
  INVX1 U733 ( .A(\config_reg[0][28] ), .Y(n492) );
  NAND2X1 U734 ( .A(fft_sub_wdata[28]), .B(n488), .Y(n227) );
  MUX2X1 U735 ( .B(n229), .A(n493), .S(n19), .Y(\next_config_reg[0][27] ) );
  INVX1 U736 ( .A(\config_reg[0][27] ), .Y(n493) );
  NAND2X1 U737 ( .A(fft_sub_wdata[27]), .B(n488), .Y(n229) );
  MUX2X1 U738 ( .B(n231), .A(n494), .S(n19), .Y(\next_config_reg[0][26] ) );
  INVX1 U739 ( .A(\config_reg[0][26] ), .Y(n494) );
  NAND2X1 U740 ( .A(fft_sub_wdata[26]), .B(n488), .Y(n231) );
  MUX2X1 U741 ( .B(n233), .A(n495), .S(n19), .Y(\next_config_reg[0][25] ) );
  INVX1 U742 ( .A(\config_reg[0][25] ), .Y(n495) );
  NAND2X1 U743 ( .A(fft_sub_wdata[25]), .B(n488), .Y(n233) );
  MUX2X1 U744 ( .B(n235), .A(n496), .S(n19), .Y(\next_config_reg[0][24] ) );
  INVX1 U745 ( .A(\config_reg[0][24] ), .Y(n496) );
  NAND2X1 U746 ( .A(fft_sub_wdata[24]), .B(n488), .Y(n235) );
  MUX2X1 U747 ( .B(n237), .A(n497), .S(n19), .Y(\next_config_reg[0][23] ) );
  INVX1 U748 ( .A(\config_reg[0][23] ), .Y(n497) );
  NAND2X1 U749 ( .A(fft_sub_wdata[23]), .B(n488), .Y(n237) );
  MUX2X1 U750 ( .B(n239), .A(n498), .S(n19), .Y(\next_config_reg[0][22] ) );
  INVX1 U751 ( .A(\config_reg[0][22] ), .Y(n498) );
  NAND2X1 U752 ( .A(fft_sub_wdata[22]), .B(n488), .Y(n239) );
  MUX2X1 U753 ( .B(n241), .A(n499), .S(n19), .Y(\next_config_reg[0][21] ) );
  INVX1 U754 ( .A(\config_reg[0][21] ), .Y(n499) );
  NAND2X1 U755 ( .A(fft_sub_wdata[21]), .B(n488), .Y(n241) );
  MUX2X1 U756 ( .B(n243), .A(n500), .S(n19), .Y(\next_config_reg[0][20] ) );
  INVX1 U757 ( .A(\config_reg[0][20] ), .Y(n500) );
  NAND2X1 U758 ( .A(fft_sub_wdata[20]), .B(n488), .Y(n243) );
  MUX2X1 U759 ( .B(n245), .A(n501), .S(n19), .Y(\next_config_reg[0][1] ) );
  INVX1 U760 ( .A(\config_reg[0][1] ), .Y(n501) );
  NAND2X1 U761 ( .A(fft_sub_wdata[1]), .B(n480), .Y(n245) );
  MUX2X1 U762 ( .B(n247), .A(n502), .S(n19), .Y(\next_config_reg[0][19] ) );
  INVX1 U763 ( .A(\config_reg[0][19] ), .Y(n502) );
  NAND2X1 U764 ( .A(fft_sub_wdata[19]), .B(n488), .Y(n247) );
  MUX2X1 U765 ( .B(n249), .A(n503), .S(n19), .Y(\next_config_reg[0][18] ) );
  INVX1 U766 ( .A(\config_reg[0][18] ), .Y(n503) );
  NAND2X1 U767 ( .A(fft_sub_wdata[18]), .B(n488), .Y(n249) );
  MUX2X1 U768 ( .B(n251), .A(n504), .S(n19), .Y(\next_config_reg[0][17] ) );
  INVX1 U769 ( .A(\config_reg[0][17] ), .Y(n504) );
  NAND2X1 U770 ( .A(fft_sub_wdata[17]), .B(n488), .Y(n251) );
  MUX2X1 U771 ( .B(n253), .A(n505), .S(n19), .Y(\next_config_reg[0][16] ) );
  INVX1 U772 ( .A(\config_reg[0][16] ), .Y(n505) );
  NAND2X1 U773 ( .A(fft_sub_wdata[16]), .B(n488), .Y(n253) );
  OR2X1 U774 ( .A(fft_sub_wstrb[1]), .B(fft_sub_wstrb[0]), .Y(n488) );
  MUX2X1 U775 ( .B(n255), .A(n506), .S(n479), .Y(\next_config_reg[0][15] ) );
  INVX1 U776 ( .A(\config_reg[0][15] ), .Y(n506) );
  NAND2X1 U777 ( .A(fft_sub_wdata[15]), .B(n480), .Y(n255) );
  MUX2X1 U778 ( .B(n257), .A(n507), .S(n479), .Y(\next_config_reg[0][14] ) );
  INVX1 U779 ( .A(\config_reg[0][14] ), .Y(n507) );
  NAND2X1 U780 ( .A(fft_sub_wdata[14]), .B(n480), .Y(n257) );
  MUX2X1 U781 ( .B(n259), .A(n508), .S(n479), .Y(\next_config_reg[0][13] ) );
  INVX1 U782 ( .A(\config_reg[0][13] ), .Y(n508) );
  NAND2X1 U783 ( .A(fft_sub_wdata[13]), .B(n480), .Y(n259) );
  MUX2X1 U784 ( .B(n261), .A(n509), .S(n479), .Y(\next_config_reg[0][12] ) );
  INVX1 U785 ( .A(\config_reg[0][12] ), .Y(n509) );
  NAND2X1 U786 ( .A(fft_sub_wdata[12]), .B(n480), .Y(n261) );
  MUX2X1 U787 ( .B(n263), .A(n510), .S(n479), .Y(\next_config_reg[0][11] ) );
  INVX1 U788 ( .A(\config_reg[0][11] ), .Y(n510) );
  NAND2X1 U789 ( .A(fft_sub_wdata[11]), .B(n480), .Y(n263) );
  MUX2X1 U790 ( .B(n265), .A(n511), .S(n479), .Y(\next_config_reg[0][10] ) );
  INVX1 U791 ( .A(\config_reg[0][10] ), .Y(n511) );
  NAND2X1 U792 ( .A(fft_sub_wdata[10]), .B(n480), .Y(n265) );
  MUX2X1 U793 ( .B(n267), .A(n512), .S(n479), .Y(\next_config_reg[0][0] ) );
  NAND3X1 U794 ( .A(n339), .B(n305), .C(n411), .Y(n479) );
  NOR3X1 U795 ( .A(n374), .B(n377), .C(n513), .Y(n411) );
  MUX2X1 U796 ( .B(n514), .A(n515), .S(n4), .Y(n377) );
  NOR2X1 U797 ( .A(n516), .B(n517), .Y(n515) );
  NAND2X1 U798 ( .A(n518), .B(n519), .Y(n517) );
  NOR2X1 U799 ( .A(n520), .B(n521), .Y(n519) );
  NAND3X1 U800 ( .A(n522), .B(n523), .C(n524), .Y(n521) );
  NAND3X1 U801 ( .A(n525), .B(n526), .C(n527), .Y(n520) );
  NOR2X1 U802 ( .A(awaddr_reg[23]), .B(awaddr_reg[22]), .Y(n527) );
  NOR2X1 U803 ( .A(n528), .B(n529), .Y(n518) );
  NAND3X1 U804 ( .A(n530), .B(n531), .C(n532), .Y(n529) );
  NAND3X1 U805 ( .A(n533), .B(n534), .C(n897), .Y(n528) );
  NOR2X1 U806 ( .A(awaddr_reg[16]), .B(awaddr_reg[15]), .Y(n897) );
  NAND2X1 U807 ( .A(n898), .B(n899), .Y(n516) );
  NOR2X1 U808 ( .A(n900), .B(n901), .Y(n899) );
  NAND3X1 U809 ( .A(n902), .B(n903), .C(n904), .Y(n901) );
  NOR2X1 U810 ( .A(awaddr_reg[5]), .B(awaddr_reg[4]), .Y(n904) );
  NAND3X1 U811 ( .A(n905), .B(n906), .C(n907), .Y(n900) );
  NOR2X1 U812 ( .A(awaddr_reg[9]), .B(awaddr_reg[8]), .Y(n907) );
  NOR2X1 U813 ( .A(n908), .B(n909), .Y(n898) );
  NAND3X1 U814 ( .A(n911), .B(n912), .C(n913), .Y(n909) );
  NAND3X1 U815 ( .A(n914), .B(n915), .C(n916), .Y(n908) );
  NOR2X1 U816 ( .A(awaddr_reg[30]), .B(awaddr_reg[29]), .Y(n916) );
  NOR2X1 U817 ( .A(n917), .B(n918), .Y(n514) );
  NAND2X1 U818 ( .A(n919), .B(n920), .Y(n918) );
  NOR2X1 U819 ( .A(n921), .B(n922), .Y(n920) );
  NAND3X1 U820 ( .A(n923), .B(n924), .C(n925), .Y(n922) );
  NAND3X1 U821 ( .A(n926), .B(n927), .C(n928), .Y(n921) );
  NOR2X1 U822 ( .A(fft_sub_awaddr[23]), .B(fft_sub_awaddr[22]), .Y(n928) );
  NOR2X1 U823 ( .A(n929), .B(n930), .Y(n919) );
  NAND3X1 U824 ( .A(n931), .B(n932), .C(n933), .Y(n930) );
  NAND3X1 U825 ( .A(n934), .B(n935), .C(n936), .Y(n929) );
  NOR2X1 U826 ( .A(fft_sub_awaddr[16]), .B(fft_sub_awaddr[15]), .Y(n936) );
  NAND2X1 U827 ( .A(n937), .B(n938), .Y(n917) );
  NOR2X1 U828 ( .A(n939), .B(n940), .Y(n938) );
  NAND3X1 U829 ( .A(n941), .B(n942), .C(n943), .Y(n940) );
  NOR2X1 U830 ( .A(fft_sub_awaddr[5]), .B(fft_sub_awaddr[4]), .Y(n943) );
  NAND3X1 U831 ( .A(n944), .B(n945), .C(n946), .Y(n939) );
  NOR2X1 U832 ( .A(fft_sub_awaddr[9]), .B(fft_sub_awaddr[8]), .Y(n946) );
  NOR2X1 U833 ( .A(n947), .B(n948), .Y(n937) );
  NAND3X1 U834 ( .A(n949), .B(n950), .C(n951), .Y(n948) );
  NAND3X1 U835 ( .A(n952), .B(n953), .C(n954), .Y(n947) );
  NOR2X1 U836 ( .A(fft_sub_awaddr[30]), .B(fft_sub_awaddr[29]), .Y(n954) );
  MUX2X1 U837 ( .B(n955), .A(n956), .S(wcount[2]), .Y(n374) );
  XNOR2X1 U838 ( .A(awaddr_reg[2]), .B(n957), .Y(n956) );
  OAI21X1 U839 ( .A(n957), .B(n958), .C(n959), .Y(n955) );
  OAI21X1 U840 ( .A(wcount[0]), .B(awaddr_reg[0]), .C(n960), .Y(n305) );
  INVX1 U841 ( .A(n270), .Y(n339) );
  XOR2X1 U842 ( .A(n961), .B(n962), .Y(n270) );
  XNOR2X1 U843 ( .A(wcount[1]), .B(n963), .Y(n962) );
  INVX1 U844 ( .A(\config_reg[0][0] ), .Y(n512) );
  NAND2X1 U845 ( .A(fft_sub_wdata[0]), .B(n480), .Y(n267) );
  NAND2X1 U846 ( .A(fft_sub_wstrb[0]), .B(n964), .Y(n480) );
  INVX1 U847 ( .A(fft_sub_wstrb[1]), .Y(n964) );
  OAI21X1 U848 ( .A(fft_sub_bready), .B(n965), .C(n966), .Y(next_bvalid) );
  INVX1 U849 ( .A(fft_sub_bvalid), .Y(n965) );
  NOR2X1 U850 ( .A(n967), .B(n966), .Y(next_bresp) );
  OAI21X1 U851 ( .A(write_last), .B(fft_sub_wlast), .C(n376), .Y(n966) );
  INVX1 U852 ( .A(n513), .Y(n376) );
  AOI22X1 U853 ( .A(wcount[2]), .B(n959), .C(awaddr_reg[2]), .D(n968), .Y(n967) );
  NAND2X1 U854 ( .A(n957), .B(n958), .Y(n959) );
  INVX1 U855 ( .A(awaddr_reg[2]), .Y(n958) );
  INVX1 U856 ( .A(n968), .Y(n957) );
  OAI21X1 U857 ( .A(n960), .B(n963), .C(n969), .Y(n968) );
  OAI21X1 U858 ( .A(n961), .B(awaddr_reg[1]), .C(wcount[1]), .Y(n969) );
  INVX1 U859 ( .A(n960), .Y(n961) );
  INVX1 U860 ( .A(awaddr_reg[1]), .Y(n963) );
  NAND2X1 U861 ( .A(wcount[0]), .B(awaddr_reg[0]), .Y(n960) );
  MUX2X1 U862 ( .B(n945), .A(n906), .S(n4), .Y(next_awaddr[7]) );
  INVX1 U863 ( .A(awaddr_reg[7]), .Y(n906) );
  INVX1 U864 ( .A(fft_sub_awaddr[7]), .Y(n945) );
  MUX2X1 U865 ( .B(n944), .A(n905), .S(n4), .Y(next_awaddr[6]) );
  INVX1 U866 ( .A(awaddr_reg[6]), .Y(n905) );
  INVX1 U867 ( .A(fft_sub_awaddr[6]), .Y(n944) );
  MUX2X1 U868 ( .B(n942), .A(n903), .S(n4), .Y(next_awaddr[3]) );
  INVX1 U869 ( .A(awaddr_reg[3]), .Y(n903) );
  INVX1 U870 ( .A(fft_sub_awaddr[3]), .Y(n942) );
  MUX2X1 U871 ( .B(n941), .A(n902), .S(n4), .Y(next_awaddr[31]) );
  INVX1 U872 ( .A(awaddr_reg[31]), .Y(n902) );
  INVX1 U873 ( .A(fft_sub_awaddr[31]), .Y(n941) );
  MUX2X1 U874 ( .B(n953), .A(n915), .S(n4), .Y(next_awaddr[28]) );
  INVX1 U875 ( .A(awaddr_reg[28]), .Y(n915) );
  INVX1 U876 ( .A(fft_sub_awaddr[28]), .Y(n953) );
  MUX2X1 U877 ( .B(n952), .A(n914), .S(n4), .Y(next_awaddr[27]) );
  INVX1 U878 ( .A(awaddr_reg[27]), .Y(n914) );
  INVX1 U879 ( .A(fft_sub_awaddr[27]), .Y(n952) );
  MUX2X1 U880 ( .B(n950), .A(n912), .S(n4), .Y(next_awaddr[26]) );
  INVX1 U881 ( .A(awaddr_reg[26]), .Y(n912) );
  INVX1 U882 ( .A(fft_sub_awaddr[26]), .Y(n950) );
  MUX2X1 U883 ( .B(n949), .A(n911), .S(n4), .Y(next_awaddr[25]) );
  INVX1 U884 ( .A(awaddr_reg[25]), .Y(n911) );
  INVX1 U885 ( .A(fft_sub_awaddr[25]), .Y(n949) );
  MUX2X1 U886 ( .B(n951), .A(n913), .S(n4), .Y(next_awaddr[24]) );
  INVX1 U1214 ( .A(awaddr_reg[24]), .Y(n913) );
  INVX1 U1215 ( .A(fft_sub_awaddr[24]), .Y(n951) );
  MUX2X1 U1216 ( .B(n927), .A(n526), .S(n4), .Y(next_awaddr[21]) );
  INVX1 U1217 ( .A(awaddr_reg[21]), .Y(n526) );
  INVX1 U1218 ( .A(fft_sub_awaddr[21]), .Y(n927) );
  MUX2X1 U1219 ( .B(n926), .A(n525), .S(n4), .Y(next_awaddr[20]) );
  INVX1 U1220 ( .A(awaddr_reg[20]), .Y(n525) );
  INVX1 U1221 ( .A(fft_sub_awaddr[20]), .Y(n926) );
  MUX2X1 U1222 ( .B(n925), .A(n524), .S(n4), .Y(next_awaddr[17]) );
  INVX1 U1223 ( .A(awaddr_reg[17]), .Y(n524) );
  INVX1 U1224 ( .A(fft_sub_awaddr[17]), .Y(n925) );
  INVX1 U1225 ( .A(n970), .Y(next_awaddr[16]) );
  MUX2X1 U1226 ( .B(fft_sub_awaddr[16]), .A(awaddr_reg[16]), .S(n4), .Y(n970)
         );
  MUX2X1 U1227 ( .B(n934), .A(n533), .S(n4), .Y(next_awaddr[13]) );
  INVX1 U1228 ( .A(awaddr_reg[13]), .Y(n533) );
  INVX1 U1229 ( .A(fft_sub_awaddr[13]), .Y(n934) );
  MUX2X1 U1230 ( .B(n932), .A(n531), .S(n4), .Y(next_awaddr[12]) );
  INVX1 U1231 ( .A(awaddr_reg[12]), .Y(n531) );
  INVX1 U1232 ( .A(fft_sub_awaddr[12]), .Y(n932) );
  MUX2X1 U1233 ( .B(n931), .A(n530), .S(n4), .Y(next_awaddr[11]) );
  INVX1 U1234 ( .A(awaddr_reg[11]), .Y(n530) );
  INVX1 U1235 ( .A(fft_sub_awaddr[11]), .Y(n931) );
  MUX2X1 U1236 ( .B(n933), .A(n532), .S(n4), .Y(next_awaddr[10]) );
  INVX1 U1237 ( .A(awaddr_reg[10]), .Y(n532) );
  INVX1 U1238 ( .A(fft_sub_awaddr[10]), .Y(n933) );
  MUX2X1 U1239 ( .B(n971), .A(fft_sub_arvalid), .S(fft_sub_arready), .Y(
        next_arready) );
  NAND3X1 U1240 ( .A(fft_sub_rready), .B(fft_sub_rlast), .C(fft_sub_rvalid), 
        .Y(n971) );
  INVX1 U1241 ( .A(n972), .Y(n1059) );
  MUX2X1 U1242 ( .B(fft_sub_awready), .A(n4), .S(n973), .Y(n972) );
  MUX2X1 U1243 ( .B(n935), .A(n534), .S(n4), .Y(n1060) );
  INVX1 U1244 ( .A(awaddr_reg[14]), .Y(n534) );
  INVX1 U1245 ( .A(fft_sub_awaddr[14]), .Y(n935) );
  INVX1 U1246 ( .A(n974), .Y(n1061) );
  MUX2X1 U1247 ( .B(fft_sub_awaddr[15]), .A(awaddr_reg[15]), .S(n4), .Y(n974)
         );
  MUX2X1 U1248 ( .B(n923), .A(n522), .S(n4), .Y(n1062) );
  INVX1 U1249 ( .A(awaddr_reg[18]), .Y(n522) );
  INVX1 U1250 ( .A(fft_sub_awaddr[18]), .Y(n923) );
  MUX2X1 U1251 ( .B(n924), .A(n523), .S(n4), .Y(n1063) );
  INVX1 U1252 ( .A(awaddr_reg[19]), .Y(n523) );
  INVX1 U1253 ( .A(fft_sub_awaddr[19]), .Y(n924) );
  INVX1 U1254 ( .A(n975), .Y(n1064) );
  MUX2X1 U1255 ( .B(fft_sub_awaddr[22]), .A(awaddr_reg[22]), .S(n4), .Y(n975)
         );
  INVX1 U1256 ( .A(n976), .Y(n1065) );
  MUX2X1 U1257 ( .B(fft_sub_awaddr[23]), .A(awaddr_reg[23]), .S(n4), .Y(n976)
         );
  INVX1 U1258 ( .A(n977), .Y(n1066) );
  MUX2X1 U1259 ( .B(fft_sub_awaddr[29]), .A(awaddr_reg[29]), .S(n4), .Y(n977)
         );
  INVX1 U1260 ( .A(n978), .Y(n1067) );
  MUX2X1 U1261 ( .B(fft_sub_awaddr[30]), .A(awaddr_reg[30]), .S(n4), .Y(n978)
         );
  INVX1 U1262 ( .A(n979), .Y(n1068) );
  MUX2X1 U1263 ( .B(fft_sub_awaddr[4]), .A(awaddr_reg[4]), .S(n4), .Y(n979) );
  INVX1 U1264 ( .A(n980), .Y(n1069) );
  MUX2X1 U1265 ( .B(fft_sub_awaddr[5]), .A(awaddr_reg[5]), .S(n4), .Y(n980) );
  INVX1 U1266 ( .A(n981), .Y(n1070) );
  MUX2X1 U1267 ( .B(fft_sub_awaddr[8]), .A(awaddr_reg[8]), .S(n4), .Y(n981) );
  INVX1 U1268 ( .A(n982), .Y(n1071) );
  MUX2X1 U1269 ( .B(fft_sub_awaddr[9]), .A(awaddr_reg[9]), .S(n4), .Y(n982) );
  OAI21X1 U1270 ( .A(n983), .B(n973), .C(n4), .Y(n910) );
  OAI21X1 U1271 ( .A(n513), .B(n984), .C(n4), .Y(n973) );
  INVX1 U1272 ( .A(fft_sub_wlast), .Y(n984) );
  NAND2X1 U1273 ( .A(fft_sub_wvalid), .B(fft_sub_wready), .Y(n513) );
  INVX1 U1274 ( .A(fft_sub_wready), .Y(n983) );
  INVX1 U1275 ( .A(n985), .Y(n865) );
  MUX2X1 U1276 ( .B(fft_sub_awaddr[1]), .A(awaddr_reg[1]), .S(n4), .Y(n985) );
  INVX1 U1277 ( .A(n986), .Y(n863) );
  MUX2X1 U1278 ( .B(fft_sub_awaddr[0]), .A(awaddr_reg[0]), .S(n4), .Y(n986) );
  INVX1 U1279 ( .A(n987), .Y(n861) );
  MUX2X1 U1280 ( .B(fft_sub_awaddr[2]), .A(awaddr_reg[2]), .S(n4), .Y(n987) );
  INVX1 U1281 ( .A(n988), .Y(n599) );
  MUX2X1 U1282 ( .B(fft_sub_araddr[30]), .A(araddr_reg[30]), .S(n3), .Y(n988)
         );
  INVX1 U1283 ( .A(n989), .Y(n597) );
  MUX2X1 U1284 ( .B(fft_sub_araddr[29]), .A(araddr_reg[29]), .S(n3), .Y(n989)
         );
  INVX1 U1285 ( .A(n990), .Y(n595) );
  MUX2X1 U1286 ( .B(fft_sub_araddr[28]), .A(araddr_reg[28]), .S(n3), .Y(n990)
         );
  INVX1 U1287 ( .A(n991), .Y(n593) );
  MUX2X1 U1288 ( .B(fft_sub_araddr[27]), .A(araddr_reg[27]), .S(n3), .Y(n991)
         );
  INVX1 U1289 ( .A(n992), .Y(n591) );
  MUX2X1 U1290 ( .B(fft_sub_araddr[26]), .A(araddr_reg[26]), .S(n3), .Y(n992)
         );
  INVX1 U1291 ( .A(n993), .Y(n589) );
  MUX2X1 U1292 ( .B(fft_sub_araddr[25]), .A(araddr_reg[25]), .S(n3), .Y(n993)
         );
  INVX1 U1293 ( .A(n994), .Y(n587) );
  MUX2X1 U1294 ( .B(fft_sub_araddr[24]), .A(araddr_reg[24]), .S(n3), .Y(n994)
         );
  INVX1 U1295 ( .A(n995), .Y(n585) );
  MUX2X1 U1296 ( .B(fft_sub_araddr[23]), .A(araddr_reg[23]), .S(n3), .Y(n995)
         );
  INVX1 U1297 ( .A(n996), .Y(n583) );
  MUX2X1 U1298 ( .B(fft_sub_araddr[22]), .A(araddr_reg[22]), .S(n3), .Y(n996)
         );
  INVX1 U1299 ( .A(n997), .Y(n581) );
  MUX2X1 U1300 ( .B(fft_sub_araddr[21]), .A(araddr_reg[21]), .S(n3), .Y(n997)
         );
  INVX1 U1301 ( .A(n998), .Y(n579) );
  MUX2X1 U1302 ( .B(fft_sub_araddr[20]), .A(araddr_reg[20]), .S(n3), .Y(n998)
         );
  INVX1 U1303 ( .A(n999), .Y(n577) );
  MUX2X1 U1304 ( .B(fft_sub_araddr[19]), .A(araddr_reg[19]), .S(n3), .Y(n999)
         );
  INVX1 U1305 ( .A(n1000), .Y(n575) );
  MUX2X1 U1306 ( .B(fft_sub_araddr[18]), .A(araddr_reg[18]), .S(n3), .Y(n1000)
         );
  INVX1 U1307 ( .A(n1001), .Y(n573) );
  MUX2X1 U1308 ( .B(fft_sub_araddr[17]), .A(araddr_reg[17]), .S(n3), .Y(n1001)
         );
  INVX1 U1309 ( .A(n1002), .Y(n571) );
  MUX2X1 U1310 ( .B(fft_sub_araddr[16]), .A(araddr_reg[16]), .S(n3), .Y(n1002)
         );
  INVX1 U1311 ( .A(n1003), .Y(n569) );
  MUX2X1 U1312 ( .B(fft_sub_araddr[15]), .A(araddr_reg[15]), .S(n3), .Y(n1003)
         );
  INVX1 U1313 ( .A(n1004), .Y(n567) );
  MUX2X1 U1314 ( .B(fft_sub_araddr[14]), .A(araddr_reg[14]), .S(n3), .Y(n1004)
         );
  INVX1 U1315 ( .A(n1005), .Y(n565) );
  MUX2X1 U1316 ( .B(fft_sub_araddr[13]), .A(araddr_reg[13]), .S(n3), .Y(n1005)
         );
  INVX1 U1317 ( .A(n1006), .Y(n563) );
  MUX2X1 U1318 ( .B(fft_sub_araddr[12]), .A(araddr_reg[12]), .S(n3), .Y(n1006)
         );
  INVX1 U1319 ( .A(n1007), .Y(n561) );
  MUX2X1 U1320 ( .B(fft_sub_araddr[11]), .A(araddr_reg[11]), .S(n3), .Y(n1007)
         );
  INVX1 U1321 ( .A(n1008), .Y(n559) );
  MUX2X1 U1322 ( .B(fft_sub_araddr[10]), .A(araddr_reg[10]), .S(n3), .Y(n1008)
         );
  INVX1 U1323 ( .A(n1009), .Y(n557) );
  MUX2X1 U1324 ( .B(fft_sub_araddr[9]), .A(araddr_reg[9]), .S(n3), .Y(n1009)
         );
  INVX1 U1325 ( .A(n1010), .Y(n555) );
  MUX2X1 U1326 ( .B(fft_sub_araddr[8]), .A(araddr_reg[8]), .S(n3), .Y(n1010)
         );
  INVX1 U1327 ( .A(n1011), .Y(n553) );
  MUX2X1 U1328 ( .B(fft_sub_araddr[7]), .A(araddr_reg[7]), .S(n3), .Y(n1011)
         );
  INVX1 U1329 ( .A(n1012), .Y(n551) );
  MUX2X1 U1330 ( .B(fft_sub_araddr[6]), .A(araddr_reg[6]), .S(n3), .Y(n1012)
         );
  INVX1 U1331 ( .A(n1013), .Y(n549) );
  MUX2X1 U1332 ( .B(fft_sub_araddr[5]), .A(araddr_reg[5]), .S(n3), .Y(n1013)
         );
  INVX1 U1333 ( .A(n1014), .Y(n547) );
  MUX2X1 U1334 ( .B(fft_sub_araddr[4]), .A(araddr_reg[4]), .S(n3), .Y(n1014)
         );
  INVX1 U1335 ( .A(n1015), .Y(n545) );
  MUX2X1 U1336 ( .B(fft_sub_araddr[3]), .A(araddr_reg[3]), .S(n3), .Y(n1015)
         );
  INVX1 U1337 ( .A(n1016), .Y(n543) );
  MUX2X1 U1338 ( .B(fft_sub_araddr[2]), .A(araddr_reg[2]), .S(n3), .Y(n1016)
         );
  INVX1 U1339 ( .A(n1017), .Y(n541) );
  MUX2X1 U1340 ( .B(fft_sub_araddr[1]), .A(araddr_reg[1]), .S(n3), .Y(n1017)
         );
  INVX1 U1341 ( .A(n1018), .Y(n539) );
  MUX2X1 U1342 ( .B(fft_sub_araddr[0]), .A(araddr_reg[0]), .S(n3), .Y(n1018)
         );
  INVX1 U1343 ( .A(n1019), .Y(n537) );
  MUX2X1 U1344 ( .B(fft_sub_araddr[31]), .A(araddr_reg[31]), .S(n3), .Y(n1019)
         );
  AND2X1 U1345 ( .A(N408), .B(n1020), .Y(fft_sub_rdata[9]) );
  AND2X1 U1346 ( .A(N409), .B(n1020), .Y(fft_sub_rdata[8]) );
  AND2X1 U1347 ( .A(N410), .B(n1020), .Y(fft_sub_rdata[7]) );
  AND2X1 U1348 ( .A(N411), .B(n1020), .Y(fft_sub_rdata[6]) );
  AND2X1 U1349 ( .A(N412), .B(n1020), .Y(fft_sub_rdata[5]) );
  AND2X1 U1350 ( .A(N413), .B(n1020), .Y(fft_sub_rdata[4]) );
  AND2X1 U1351 ( .A(N414), .B(n1020), .Y(fft_sub_rdata[3]) );
  AND2X1 U1352 ( .A(N386), .B(n1020), .Y(fft_sub_rdata[31]) );
  AND2X1 U1353 ( .A(N387), .B(n1020), .Y(fft_sub_rdata[30]) );
  AND2X1 U1354 ( .A(N415), .B(n1020), .Y(fft_sub_rdata[2]) );
  AND2X1 U1355 ( .A(N388), .B(n1020), .Y(fft_sub_rdata[29]) );
  AND2X1 U1356 ( .A(N389), .B(n1020), .Y(fft_sub_rdata[28]) );
  AND2X1 U1357 ( .A(N390), .B(n1020), .Y(fft_sub_rdata[27]) );
  AND2X1 U1358 ( .A(N391), .B(n1020), .Y(fft_sub_rdata[26]) );
  AND2X1 U1359 ( .A(N392), .B(n1020), .Y(fft_sub_rdata[25]) );
  AND2X1 U1360 ( .A(N393), .B(n1020), .Y(fft_sub_rdata[24]) );
  AND2X1 U1361 ( .A(N394), .B(n1020), .Y(fft_sub_rdata[23]) );
  AND2X1 U1362 ( .A(N395), .B(n1020), .Y(fft_sub_rdata[22]) );
  AND2X1 U1363 ( .A(N396), .B(n1020), .Y(fft_sub_rdata[21]) );
  AND2X1 U1364 ( .A(N397), .B(n1020), .Y(fft_sub_rdata[20]) );
  AND2X1 U1365 ( .A(N416), .B(n1020), .Y(fft_sub_rdata[1]) );
  AND2X1 U1366 ( .A(N398), .B(n1020), .Y(fft_sub_rdata[19]) );
  AND2X1 U1367 ( .A(N399), .B(n1020), .Y(fft_sub_rdata[18]) );
  AND2X1 U1368 ( .A(N400), .B(n1020), .Y(fft_sub_rdata[17]) );
  AND2X1 U1369 ( .A(N401), .B(n1020), .Y(fft_sub_rdata[16]) );
  AND2X1 U1370 ( .A(N402), .B(n1020), .Y(fft_sub_rdata[15]) );
  AND2X1 U1371 ( .A(N403), .B(n1020), .Y(fft_sub_rdata[14]) );
  AND2X1 U1372 ( .A(N404), .B(n1020), .Y(fft_sub_rdata[13]) );
  AND2X1 U1373 ( .A(N405), .B(n1020), .Y(fft_sub_rdata[12]) );
  AND2X1 U1374 ( .A(N406), .B(n1020), .Y(fft_sub_rdata[11]) );
  AND2X1 U1375 ( .A(N407), .B(n1020), .Y(fft_sub_rdata[10]) );
  AND2X1 U1376 ( .A(N417), .B(n1020), .Y(fft_sub_rdata[0]) );
  NAND3X1 U1377 ( .A(n1022), .B(n1023), .C(n1024), .Y(n1021) );
  AND2X1 U1378 ( .A(n1025), .B(n1026), .Y(n1024) );
  NOR2X1 U1379 ( .A(n1027), .B(n1028), .Y(n1026) );
  NAND3X1 U1380 ( .A(n1029), .B(n1030), .C(n1031), .Y(n1028) );
  NOR2X1 U1381 ( .A(araddr_reg[5]), .B(araddr_reg[4]), .Y(n1031) );
  INVX1 U1382 ( .A(araddr_reg[3]), .Y(n1030) );
  INVX1 U1383 ( .A(araddr_reg[31]), .Y(n1029) );
  NAND3X1 U1384 ( .A(n1032), .B(n1033), .C(n1034), .Y(n1027) );
  NOR2X1 U1385 ( .A(araddr_reg[9]), .B(araddr_reg[8]), .Y(n1034) );
  INVX1 U1386 ( .A(araddr_reg[7]), .Y(n1033) );
  INVX1 U1387 ( .A(araddr_reg[6]), .Y(n1032) );
  NOR2X1 U1388 ( .A(n1035), .B(n1036), .Y(n1025) );
  INVX1 U1389 ( .A(n1037), .Y(n1036) );
  NOR3X1 U1390 ( .A(araddr_reg[25]), .B(araddr_reg[26]), .C(araddr_reg[24]), 
        .Y(n1037) );
  NAND3X1 U1391 ( .A(n1038), .B(n1039), .C(n1040), .Y(n1035) );
  NOR2X1 U1392 ( .A(araddr_reg[30]), .B(araddr_reg[29]), .Y(n1040) );
  INVX1 U1393 ( .A(araddr_reg[28]), .Y(n1039) );
  INVX1 U1394 ( .A(araddr_reg[27]), .Y(n1038) );
  NOR2X1 U1395 ( .A(n1041), .B(n1042), .Y(n1023) );
  INVX1 U1396 ( .A(n1043), .Y(n1042) );
  NOR3X1 U1397 ( .A(araddr_reg[18]), .B(araddr_reg[19]), .C(araddr_reg[17]), 
        .Y(n1043) );
  NAND3X1 U1398 ( .A(n1044), .B(n1045), .C(n1046), .Y(n1041) );
  NOR2X1 U1399 ( .A(araddr_reg[23]), .B(araddr_reg[22]), .Y(n1046) );
  INVX1 U1400 ( .A(araddr_reg[21]), .Y(n1045) );
  INVX1 U1401 ( .A(araddr_reg[20]), .Y(n1044) );
  NOR2X1 U1402 ( .A(n1047), .B(n1048), .Y(n1022) );
  INVX1 U1403 ( .A(n1049), .Y(n1048) );
  NOR3X1 U1404 ( .A(araddr_reg[11]), .B(araddr_reg[12]), .C(araddr_reg[10]), 
        .Y(n1049) );
  NAND3X1 U1405 ( .A(n1050), .B(n1051), .C(n1052), .Y(n1047) );
  NOR2X1 U1406 ( .A(araddr_reg[16]), .B(araddr_reg[15]), .Y(n1052) );
  INVX1 U1407 ( .A(araddr_reg[14]), .Y(n1051) );
  INVX1 U1408 ( .A(araddr_reg[13]), .Y(n1050) );
  XNOR2X1 U1409 ( .A(n1053), .B(n203), .Y(N34) );
  OAI21X1 U1410 ( .A(n1054), .B(n1055), .C(n1056), .Y(n203) );
  OAI21X1 U1411 ( .A(n1057), .B(araddr_reg[1]), .C(rcount[1]), .Y(n1056) );
  INVX1 U1412 ( .A(araddr_reg[1]), .Y(n1055) );
  XNOR2X1 U1413 ( .A(rcount[2]), .B(araddr_reg[2]), .Y(n1053) );
  XNOR2X1 U1414 ( .A(n1057), .B(n1058), .Y(N33) );
  XNOR2X1 U1415 ( .A(rcount[1]), .B(araddr_reg[1]), .Y(n1058) );
  INVX1 U1416 ( .A(n1054), .Y(n1057) );
  NAND2X1 U1417 ( .A(rcount[0]), .B(araddr_reg[0]), .Y(n1054) );
  XOR2X1 U1418 ( .A(rcount[0]), .B(araddr_reg[0]), .Y(N32) );
endmodule


module sram_axi_DW01_inc_0 ( A, SUM );
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


module sram_axi_DW01_inc_1 ( A, SUM );
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


module sram_axi ( clk, n_rst, sram_awaddr, sram_awvalid, sram_awlen, 
        sram_awready, sram_wdata, sram_wstrb, sram_wlast, sram_wvalid, 
        sram_wready, sram_bready, sram_bresp, sram_bvalid, sram_araddr, 
        sram_arvalid, sram_arlen, sram_arready, sram_rdata, sram_rresp, 
        sram_rlast, sram_rvalid, sram_rready, wen, ren, read_data, write_data, 
        read_addr, write_addr, read_valid, write_valid );
  input [31:0] sram_awaddr;
  input [9:0] sram_awlen;
  input [31:0] sram_wdata;
  input [1:0] sram_wstrb;
  input [31:0] sram_araddr;
  input [9:0] sram_arlen;
  output [31:0] sram_rdata;
  output [3:0] wen;
  input [31:0] read_data;
  output [31:0] write_data;
  output [31:0] read_addr;
  output [31:0] write_addr;
  input clk, n_rst, sram_awvalid, sram_wlast, sram_wvalid, sram_bready,
         sram_arvalid, sram_rready, read_valid, write_valid;
  output sram_awready, sram_wready, sram_bresp, sram_bvalid, sram_arready,
         sram_rresp, sram_rlast, sram_rvalid, ren;
  wire   \read_addr[31] , \write_addr[31] , next_rlast, N85, N86, N87, N88,
         N89, N90, N91, N92, N93, N94, N108, N109, N110, N111, N112, N113,
         N114, N115, N116, N117, N132, N136, n278, n280, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n216, n218, n220, n222, n224,
         n226, n228, n230, n232, n234, n236, n238, n240, n242, n244, n246,
         n248, n250, n252, n254, n256, n258, n260, n262, n264, n266, n268,
         n270, n272, n274, n276, n282, n308, n309, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482;
  wire   [1:0] read_state;
  wire   [1:0] write_state;
  wire   [1:0] next_read;
  wire   [1:0] next_write;
  wire   [1:0] wstrb_reg;
  wire   [10:0] waddr_reg;
  wire   [9:0] wlen_reg;
  wire   [10:0] raddr_reg;
  wire   [9:0] rlen_reg;
  tri   clk;
  tri   n_rst;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;
  assign sram_rresp = 1'b0;
  assign sram_bresp = 1'b0;
  assign sram_rdata[31] = read_data[31];
  assign sram_rdata[30] = read_data[30];
  assign sram_rdata[29] = read_data[29];
  assign sram_rdata[28] = read_data[28];
  assign sram_rdata[27] = read_data[27];
  assign sram_rdata[26] = read_data[26];
  assign sram_rdata[25] = read_data[25];
  assign sram_rdata[24] = read_data[24];
  assign sram_rdata[23] = read_data[23];
  assign sram_rdata[22] = read_data[22];
  assign sram_rdata[21] = read_data[21];
  assign sram_rdata[20] = read_data[20];
  assign sram_rdata[19] = read_data[19];
  assign sram_rdata[18] = read_data[18];
  assign sram_rdata[17] = read_data[17];
  assign sram_rdata[16] = read_data[16];
  assign sram_rdata[15] = read_data[15];
  assign sram_rdata[14] = read_data[14];
  assign sram_rdata[13] = read_data[13];
  assign sram_rdata[12] = read_data[12];
  assign sram_rdata[11] = read_data[11];
  assign sram_rdata[10] = read_data[10];
  assign sram_rdata[9] = read_data[9];
  assign sram_rdata[8] = read_data[8];
  assign sram_rdata[7] = read_data[7];
  assign sram_rdata[6] = read_data[6];
  assign sram_rdata[5] = read_data[5];
  assign sram_rdata[4] = read_data[4];
  assign sram_rdata[3] = read_data[3];
  assign sram_rdata[2] = read_data[2];
  assign sram_rdata[1] = read_data[1];
  assign sram_rdata[0] = read_data[0];
  assign wen[2] = wen[3];
  assign wen[0] = wen[1];
  assign read_addr[10] = \read_addr[31] ;
  assign read_addr[11] = \read_addr[31] ;
  assign read_addr[12] = \read_addr[31] ;
  assign read_addr[13] = \read_addr[31] ;
  assign read_addr[14] = \read_addr[31] ;
  assign read_addr[15] = \read_addr[31] ;
  assign read_addr[16] = \read_addr[31] ;
  assign read_addr[17] = \read_addr[31] ;
  assign read_addr[18] = \read_addr[31] ;
  assign read_addr[19] = \read_addr[31] ;
  assign read_addr[20] = \read_addr[31] ;
  assign read_addr[21] = \read_addr[31] ;
  assign read_addr[22] = \read_addr[31] ;
  assign read_addr[23] = \read_addr[31] ;
  assign read_addr[24] = \read_addr[31] ;
  assign read_addr[25] = \read_addr[31] ;
  assign read_addr[26] = \read_addr[31] ;
  assign read_addr[27] = \read_addr[31] ;
  assign read_addr[28] = \read_addr[31] ;
  assign read_addr[29] = \read_addr[31] ;
  assign read_addr[30] = \read_addr[31] ;
  assign read_addr[31] = \read_addr[31] ;
  assign write_addr[11] = \write_addr[31] ;
  assign write_addr[12] = \write_addr[31] ;
  assign write_addr[13] = \write_addr[31] ;
  assign write_addr[14] = \write_addr[31] ;
  assign write_addr[15] = \write_addr[31] ;
  assign write_addr[16] = \write_addr[31] ;
  assign write_addr[17] = \write_addr[31] ;
  assign write_addr[18] = \write_addr[31] ;
  assign write_addr[19] = \write_addr[31] ;
  assign write_addr[20] = \write_addr[31] ;
  assign write_addr[21] = \write_addr[31] ;
  assign write_addr[22] = \write_addr[31] ;
  assign write_addr[23] = \write_addr[31] ;
  assign write_addr[24] = \write_addr[31] ;
  assign write_addr[25] = \write_addr[31] ;
  assign write_addr[26] = \write_addr[31] ;
  assign write_addr[27] = \write_addr[31] ;
  assign write_addr[28] = \write_addr[31] ;
  assign write_addr[29] = \write_addr[31] ;
  assign write_addr[30] = \write_addr[31] ;
  assign write_addr[31] = \write_addr[31] ;

  DFFSR sram_awready_reg ( .D(n450), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_awready) );
  DFFSR \wlen_reg_reg[0]  ( .D(n351), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[0]) );
  DFFSR \write_state_reg[1]  ( .D(next_write[1]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(write_state[1]) );
  DFFSR \write_state_reg[0]  ( .D(next_write[0]), .CLK(clk), .R(n_rst), .S(
        1'b1), .Q(write_state[0]) );
  DFFSR \wlen_reg_reg[9]  ( .D(n342), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[9]) );
  DFFSR \wlen_reg_reg[1]  ( .D(n350), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[1]) );
  DFFSR \wlen_reg_reg[2]  ( .D(n349), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[2]) );
  DFFSR \wlen_reg_reg[3]  ( .D(n348), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[3]) );
  DFFSR \wlen_reg_reg[4]  ( .D(n347), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[4]) );
  DFFSR \wlen_reg_reg[5]  ( .D(n346), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[5]) );
  DFFSR \wlen_reg_reg[6]  ( .D(n345), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[6]) );
  DFFSR \wlen_reg_reg[7]  ( .D(n344), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[7]) );
  DFFSR \wlen_reg_reg[8]  ( .D(n343), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wlen_reg[8]) );
  DFFSR \waddr_reg_reg[10]  ( .D(n331), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[10]) );
  DFFSR \waddr_reg_reg[0]  ( .D(n341), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[0]) );
  DFFSR \waddr_reg_reg[1]  ( .D(n340), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[1]) );
  DFFSR \waddr_reg_reg[2]  ( .D(n339), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[2]) );
  DFFSR \waddr_reg_reg[3]  ( .D(n338), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[3]) );
  DFFSR \waddr_reg_reg[4]  ( .D(n337), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[4]) );
  DFFSR \waddr_reg_reg[5]  ( .D(n336), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[5]) );
  DFFSR \waddr_reg_reg[6]  ( .D(n335), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[6]) );
  DFFSR \waddr_reg_reg[7]  ( .D(n334), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[7]) );
  DFFSR \waddr_reg_reg[8]  ( .D(n333), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[8]) );
  DFFSR \waddr_reg_reg[9]  ( .D(n332), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        waddr_reg[9]) );
  DFFSR sram_wready_reg ( .D(n352), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_wready) );
  DFFSR \wdata_reg_reg[31]  ( .D(n475), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[31]) );
  DFFSR \wstrb_reg_reg[0]  ( .D(n280), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wstrb_reg[0]) );
  DFFSR \wstrb_reg_reg[1]  ( .D(n278), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wstrb_reg[1]) );
  DFFSR \wdata_reg_reg[0]  ( .D(n451), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[0]) );
  DFFSR \wdata_reg_reg[1]  ( .D(n462), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[1]) );
  DFFSR \wdata_reg_reg[2]  ( .D(n473), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[2]) );
  DFFSR \wdata_reg_reg[3]  ( .D(n476), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[3]) );
  DFFSR \wdata_reg_reg[4]  ( .D(n477), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[4]) );
  DFFSR \wdata_reg_reg[5]  ( .D(n478), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[5]) );
  DFFSR \wdata_reg_reg[6]  ( .D(n479), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[6]) );
  DFFSR \wdata_reg_reg[7]  ( .D(n480), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[7]) );
  DFFSR \wdata_reg_reg[8]  ( .D(n481), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[8]) );
  DFFSR \wdata_reg_reg[9]  ( .D(n482), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[9]) );
  DFFSR \wdata_reg_reg[10]  ( .D(n452), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[10]) );
  DFFSR \wdata_reg_reg[11]  ( .D(n453), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[11]) );
  DFFSR \wdata_reg_reg[12]  ( .D(n454), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[12]) );
  DFFSR \wdata_reg_reg[13]  ( .D(n455), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[13]) );
  DFFSR \wdata_reg_reg[14]  ( .D(n456), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[14]) );
  DFFSR \wdata_reg_reg[15]  ( .D(n457), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[15]) );
  DFFSR \wdata_reg_reg[16]  ( .D(n458), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[16]) );
  DFFSR \wdata_reg_reg[17]  ( .D(n459), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[17]) );
  DFFSR \wdata_reg_reg[18]  ( .D(n460), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[18]) );
  DFFSR \wdata_reg_reg[19]  ( .D(n461), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[19]) );
  DFFSR \wdata_reg_reg[20]  ( .D(n463), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[20]) );
  DFFSR \wdata_reg_reg[21]  ( .D(n464), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[21]) );
  DFFSR \wdata_reg_reg[22]  ( .D(n465), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[22]) );
  DFFSR \wdata_reg_reg[23]  ( .D(n466), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[23]) );
  DFFSR \wdata_reg_reg[24]  ( .D(n467), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[24]) );
  DFFSR \wdata_reg_reg[25]  ( .D(n468), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[25]) );
  DFFSR \wdata_reg_reg[26]  ( .D(n469), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[26]) );
  DFFSR \wdata_reg_reg[27]  ( .D(n470), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[27]) );
  DFFSR \wdata_reg_reg[28]  ( .D(n471), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[28]) );
  DFFSR \wdata_reg_reg[29]  ( .D(n472), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[29]) );
  DFFSR \wdata_reg_reg[30]  ( .D(n474), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[30]) );
  DFFSR sram_bvalid_reg ( .D(N136), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_bvalid) );
  DFFSR sram_arready_reg ( .D(n449), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_arready) );
  DFFSR \rlen_reg_reg[9]  ( .D(n321), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[9]) );
  DFFSR \read_state_reg[0]  ( .D(next_read[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(read_state[0]) );
  DFFSR \read_state_reg[1]  ( .D(next_read[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(read_state[1]) );
  DFFSR sram_rvalid_reg ( .D(N132), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_rvalid) );
  DFFSR \rlen_reg_reg[8]  ( .D(n322), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[8]) );
  DFFSR \rlen_reg_reg[0]  ( .D(n330), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[0]) );
  DFFSR \rlen_reg_reg[1]  ( .D(n329), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[1]) );
  DFFSR \rlen_reg_reg[2]  ( .D(n328), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[2]) );
  DFFSR \rlen_reg_reg[3]  ( .D(n327), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[3]) );
  DFFSR \rlen_reg_reg[4]  ( .D(n326), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[4]) );
  DFFSR \rlen_reg_reg[5]  ( .D(n325), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[5]) );
  DFFSR \rlen_reg_reg[6]  ( .D(n324), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[6]) );
  DFFSR \rlen_reg_reg[7]  ( .D(n323), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rlen_reg[7]) );
  DFFSR sram_rlast_reg ( .D(next_rlast), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_rlast) );
  DFFSR \raddr_reg_reg[10]  ( .D(n310), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[10]) );
  DFFSR \raddr_reg_reg[0]  ( .D(n320), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[0]) );
  DFFSR \raddr_reg_reg[1]  ( .D(n319), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[1]) );
  DFFSR \raddr_reg_reg[2]  ( .D(n318), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[2]) );
  DFFSR \raddr_reg_reg[3]  ( .D(n317), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[3]) );
  DFFSR \raddr_reg_reg[4]  ( .D(n316), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[4]) );
  DFFSR \raddr_reg_reg[5]  ( .D(n315), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[5]) );
  DFFSR \raddr_reg_reg[6]  ( .D(n314), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[6]) );
  DFFSR \raddr_reg_reg[7]  ( .D(n313), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[7]) );
  DFFSR \raddr_reg_reg[8]  ( .D(n312), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[8]) );
  DFFSR \raddr_reg_reg[9]  ( .D(n311), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        raddr_reg[9]) );
  sram_axi_DW01_inc_0 add_193 ( .A(waddr_reg), .SUM({N94, N93, N92, N91, N90, 
        N89, N88, N87, N86, N85, SYNOPSYS_UNCONNECTED__0}) );
  sram_axi_DW01_inc_1 add_197 ( .A(raddr_reg), .SUM({N117, N116, N115, N114, 
        N113, N112, N111, N110, N109, N108, SYNOPSYS_UNCONNECTED__1}) );
  NAND2X1 U3 ( .A(sram_wready), .B(sram_wvalid), .Y(n1) );
  INVX1 U4 ( .A(n308), .Y(n2) );
  INVX2 U5 ( .A(n2), .Y(n3) );
  INVX1 U6 ( .A(n358), .Y(n4) );
  INVX2 U7 ( .A(n4), .Y(n5) );
  INVX4 U8 ( .A(n1), .Y(n6) );
  INVX2 U9 ( .A(n156), .Y(n142) );
  INVX2 U10 ( .A(n143), .Y(n7) );
  XNOR2X1 U11 ( .A(waddr_reg[9]), .B(n8), .Y(write_addr[9]) );
  OAI21X1 U12 ( .A(n9), .B(n10), .C(n8), .Y(write_addr[8]) );
  INVX1 U13 ( .A(n11), .Y(write_addr[7]) );
  AOI21X1 U14 ( .A(n12), .B(waddr_reg[7]), .C(n9), .Y(n11) );
  OAI21X1 U15 ( .A(n13), .B(n14), .C(n12), .Y(write_addr[6]) );
  INVX1 U16 ( .A(n15), .Y(write_addr[5]) );
  AOI21X1 U17 ( .A(n16), .B(waddr_reg[5]), .C(n13), .Y(n15) );
  OAI21X1 U18 ( .A(n17), .B(n18), .C(n16), .Y(write_addr[4]) );
  OR2X1 U19 ( .A(n19), .B(n20), .Y(n18) );
  XNOR2X1 U20 ( .A(waddr_reg[3]), .B(n20), .Y(write_addr[3]) );
  XNOR2X1 U21 ( .A(waddr_reg[2]), .B(n21), .Y(write_addr[2]) );
  NAND2X1 U22 ( .A(waddr_reg[1]), .B(waddr_reg[0]), .Y(n21) );
  XNOR2X1 U23 ( .A(waddr_reg[1]), .B(write_addr[0]), .Y(write_addr[1]) );
  NAND2X1 U24 ( .A(n22), .B(n23), .Y(write_addr[10]) );
  OAI21X1 U25 ( .A(waddr_reg[9]), .B(n8), .C(waddr_reg[10]), .Y(n23) );
  INVX1 U26 ( .A(\write_addr[31] ), .Y(n22) );
  NOR3X1 U27 ( .A(waddr_reg[10]), .B(waddr_reg[9]), .C(n8), .Y(
        \write_addr[31] ) );
  NAND2X1 U28 ( .A(n9), .B(n10), .Y(n8) );
  INVX1 U29 ( .A(waddr_reg[8]), .Y(n10) );
  NOR2X1 U30 ( .A(n12), .B(waddr_reg[7]), .Y(n9) );
  NAND2X1 U31 ( .A(n13), .B(n14), .Y(n12) );
  INVX1 U32 ( .A(waddr_reg[6]), .Y(n14) );
  NOR2X1 U33 ( .A(n16), .B(waddr_reg[5]), .Y(n13) );
  OAI21X1 U34 ( .A(n20), .B(n19), .C(n17), .Y(n16) );
  INVX1 U35 ( .A(waddr_reg[4]), .Y(n17) );
  INVX1 U36 ( .A(waddr_reg[3]), .Y(n19) );
  NAND3X1 U37 ( .A(waddr_reg[1]), .B(waddr_reg[0]), .C(waddr_reg[2]), .Y(n20)
         );
  INVX1 U38 ( .A(n24), .Y(wen[3]) );
  MUX2X1 U39 ( .B(n25), .A(n24), .S(wstrb_reg[1]), .Y(wen[1]) );
  NAND2X1 U40 ( .A(wstrb_reg[0]), .B(n26), .Y(n24) );
  NAND2X1 U41 ( .A(n26), .B(n27), .Y(n25) );
  INVX1 U42 ( .A(wstrb_reg[0]), .Y(n27) );
  INVX1 U43 ( .A(n28), .Y(read_addr[9]) );
  AOI21X1 U44 ( .A(n29), .B(raddr_reg[9]), .C(\read_addr[31] ), .Y(n28) );
  OAI21X1 U45 ( .A(n30), .B(n31), .C(n29), .Y(read_addr[8]) );
  INVX1 U46 ( .A(n32), .Y(read_addr[7]) );
  AOI21X1 U47 ( .A(n33), .B(raddr_reg[7]), .C(n30), .Y(n32) );
  OAI21X1 U48 ( .A(n34), .B(n35), .C(n33), .Y(read_addr[6]) );
  INVX1 U49 ( .A(n36), .Y(read_addr[5]) );
  AOI21X1 U50 ( .A(n37), .B(raddr_reg[5]), .C(n34), .Y(n36) );
  OAI21X1 U51 ( .A(n38), .B(n39), .C(n37), .Y(read_addr[4]) );
  OR2X1 U52 ( .A(n40), .B(n41), .Y(n39) );
  XNOR2X1 U53 ( .A(raddr_reg[3]), .B(n41), .Y(read_addr[3]) );
  NOR2X1 U54 ( .A(n29), .B(raddr_reg[9]), .Y(\read_addr[31] ) );
  NAND2X1 U55 ( .A(n30), .B(n31), .Y(n29) );
  INVX1 U56 ( .A(raddr_reg[8]), .Y(n31) );
  NOR2X1 U57 ( .A(n33), .B(raddr_reg[7]), .Y(n30) );
  NAND2X1 U58 ( .A(n34), .B(n35), .Y(n33) );
  INVX1 U59 ( .A(raddr_reg[6]), .Y(n35) );
  NOR2X1 U60 ( .A(n37), .B(raddr_reg[5]), .Y(n34) );
  OAI21X1 U61 ( .A(n41), .B(n40), .C(n38), .Y(n37) );
  INVX1 U62 ( .A(raddr_reg[4]), .Y(n38) );
  INVX1 U63 ( .A(raddr_reg[3]), .Y(n40) );
  NAND3X1 U64 ( .A(raddr_reg[1]), .B(raddr_reg[0]), .C(raddr_reg[2]), .Y(n41)
         );
  XNOR2X1 U65 ( .A(raddr_reg[2]), .B(n42), .Y(read_addr[2]) );
  NAND2X1 U66 ( .A(raddr_reg[1]), .B(raddr_reg[0]), .Y(n42) );
  XNOR2X1 U67 ( .A(raddr_reg[1]), .B(read_addr[0]), .Y(read_addr[1]) );
  NOR2X1 U68 ( .A(n43), .B(n44), .Y(next_rlast) );
  NOR2X1 U69 ( .A(next_read[0]), .B(n45), .Y(n449) );
  OAI21X1 U70 ( .A(n46), .B(n47), .C(n48), .Y(n45) );
  NAND3X1 U71 ( .A(n49), .B(n50), .C(n51), .Y(n47) );
  NOR2X1 U72 ( .A(n52), .B(n53), .Y(n51) );
  OAI21X1 U73 ( .A(n54), .B(n55), .C(n56), .Y(n53) );
  NOR2X1 U74 ( .A(sram_araddr[11]), .B(sram_araddr[10]), .Y(n56) );
  NAND2X1 U75 ( .A(sram_araddr[3]), .B(sram_araddr[2]), .Y(n55) );
  NAND2X1 U76 ( .A(sram_araddr[1]), .B(sram_araddr[0]), .Y(n54) );
  NAND2X1 U77 ( .A(n57), .B(n58), .Y(n52) );
  NOR2X1 U78 ( .A(sram_araddr[15]), .B(sram_araddr[14]), .Y(n58) );
  NOR2X1 U79 ( .A(sram_araddr[13]), .B(sram_araddr[12]), .Y(n57) );
  AND2X1 U80 ( .A(n59), .B(n60), .Y(n50) );
  NOR2X1 U81 ( .A(sram_araddr[22]), .B(sram_araddr[21]), .Y(n60) );
  NOR2X1 U82 ( .A(sram_araddr[20]), .B(sram_araddr[19]), .Y(n59) );
  NOR2X1 U83 ( .A(sram_araddr[16]), .B(n61), .Y(n49) );
  OR2X1 U84 ( .A(sram_araddr[18]), .B(sram_araddr[17]), .Y(n61) );
  NAND3X1 U85 ( .A(n62), .B(n63), .C(n64), .Y(n46) );
  NOR2X1 U86 ( .A(n65), .B(n66), .Y(n64) );
  NAND3X1 U87 ( .A(n67), .B(n68), .C(n69), .Y(n66) );
  NOR2X1 U88 ( .A(sram_araddr[31]), .B(sram_araddr[30]), .Y(n69) );
  INVX1 U89 ( .A(sram_araddr[5]), .Y(n68) );
  INVX1 U90 ( .A(sram_araddr[4]), .Y(n67) );
  NAND3X1 U91 ( .A(n70), .B(n71), .C(n72), .Y(n65) );
  NOR2X1 U92 ( .A(sram_araddr[9]), .B(sram_araddr[8]), .Y(n72) );
  INVX1 U93 ( .A(sram_araddr[7]), .Y(n71) );
  INVX1 U94 ( .A(sram_araddr[6]), .Y(n70) );
  AND2X1 U95 ( .A(n73), .B(n74), .Y(n63) );
  NOR2X1 U96 ( .A(sram_araddr[29]), .B(sram_araddr[28]), .Y(n74) );
  NOR2X1 U97 ( .A(sram_araddr[27]), .B(sram_araddr[26]), .Y(n73) );
  NOR2X1 U98 ( .A(sram_araddr[23]), .B(n75), .Y(n62) );
  OR2X1 U99 ( .A(sram_araddr[25]), .B(sram_araddr[24]), .Y(n75) );
  AOI21X1 U100 ( .A(n76), .B(n77), .C(n78), .Y(n450) );
  NAND2X1 U101 ( .A(n79), .B(n80), .Y(n78) );
  NOR2X1 U102 ( .A(n81), .B(n82), .Y(n77) );
  NAND3X1 U103 ( .A(n83), .B(n84), .C(n85), .Y(n82) );
  NOR2X1 U104 ( .A(sram_awaddr[23]), .B(n86), .Y(n85) );
  OR2X1 U105 ( .A(sram_awaddr[25]), .B(sram_awaddr[24]), .Y(n86) );
  NOR2X1 U106 ( .A(sram_awaddr[29]), .B(sram_awaddr[28]), .Y(n84) );
  NOR2X1 U107 ( .A(sram_awaddr[27]), .B(sram_awaddr[26]), .Y(n83) );
  OR2X1 U108 ( .A(n87), .B(n88), .Y(n81) );
  NAND3X1 U109 ( .A(n89), .B(n90), .C(n91), .Y(n88) );
  NOR2X1 U110 ( .A(sram_awaddr[31]), .B(sram_awaddr[30]), .Y(n91) );
  INVX1 U111 ( .A(sram_awaddr[5]), .Y(n90) );
  INVX1 U112 ( .A(sram_awaddr[4]), .Y(n89) );
  NAND3X1 U113 ( .A(n92), .B(n93), .C(n94), .Y(n87) );
  NOR2X1 U114 ( .A(sram_awaddr[9]), .B(sram_awaddr[8]), .Y(n94) );
  INVX1 U115 ( .A(sram_awaddr[7]), .Y(n93) );
  INVX1 U116 ( .A(sram_awaddr[6]), .Y(n92) );
  NOR2X1 U117 ( .A(n95), .B(n96), .Y(n76) );
  NAND3X1 U118 ( .A(n97), .B(n98), .C(n99), .Y(n96) );
  AOI21X1 U119 ( .A(n100), .B(n101), .C(n102), .Y(n99) );
  OR2X1 U120 ( .A(sram_awaddr[11]), .B(sram_awaddr[10]), .Y(n102) );
  AND2X1 U121 ( .A(sram_awaddr[0]), .B(sram_awaddr[1]), .Y(n101) );
  AND2X1 U122 ( .A(sram_awaddr[2]), .B(sram_awaddr[3]), .Y(n100) );
  NOR2X1 U123 ( .A(sram_awaddr[15]), .B(sram_awaddr[14]), .Y(n98) );
  NOR2X1 U124 ( .A(sram_awaddr[13]), .B(sram_awaddr[12]), .Y(n97) );
  NAND3X1 U125 ( .A(n103), .B(n104), .C(n105), .Y(n95) );
  NOR2X1 U126 ( .A(sram_awaddr[16]), .B(n106), .Y(n105) );
  OR2X1 U127 ( .A(sram_awaddr[18]), .B(sram_awaddr[17]), .Y(n106) );
  NOR2X1 U128 ( .A(sram_awaddr[22]), .B(sram_awaddr[21]), .Y(n104) );
  NOR2X1 U129 ( .A(sram_awaddr[20]), .B(sram_awaddr[19]), .Y(n103) );
  INVX1 U130 ( .A(n107), .Y(n451) );
  MUX2X1 U131 ( .B(write_data[0]), .A(sram_wdata[0]), .S(n6), .Y(n107) );
  INVX1 U132 ( .A(n108), .Y(n452) );
  MUX2X1 U133 ( .B(write_data[10]), .A(sram_wdata[10]), .S(n6), .Y(n108) );
  INVX1 U134 ( .A(n109), .Y(n453) );
  MUX2X1 U135 ( .B(write_data[11]), .A(sram_wdata[11]), .S(n6), .Y(n109) );
  INVX1 U136 ( .A(n110), .Y(n454) );
  MUX2X1 U137 ( .B(write_data[12]), .A(sram_wdata[12]), .S(n6), .Y(n110) );
  INVX1 U138 ( .A(n111), .Y(n455) );
  MUX2X1 U139 ( .B(write_data[13]), .A(sram_wdata[13]), .S(n6), .Y(n111) );
  INVX1 U140 ( .A(n112), .Y(n456) );
  MUX2X1 U141 ( .B(write_data[14]), .A(sram_wdata[14]), .S(n6), .Y(n112) );
  INVX1 U142 ( .A(n113), .Y(n457) );
  MUX2X1 U143 ( .B(write_data[15]), .A(sram_wdata[15]), .S(n6), .Y(n113) );
  INVX1 U144 ( .A(n114), .Y(n458) );
  MUX2X1 U145 ( .B(write_data[16]), .A(sram_wdata[16]), .S(n6), .Y(n114) );
  INVX1 U146 ( .A(n115), .Y(n459) );
  MUX2X1 U147 ( .B(write_data[17]), .A(sram_wdata[17]), .S(n6), .Y(n115) );
  INVX1 U148 ( .A(n116), .Y(n460) );
  MUX2X1 U149 ( .B(write_data[18]), .A(sram_wdata[18]), .S(n6), .Y(n116) );
  INVX1 U150 ( .A(n117), .Y(n461) );
  MUX2X1 U151 ( .B(write_data[19]), .A(sram_wdata[19]), .S(n6), .Y(n117) );
  INVX1 U152 ( .A(n118), .Y(n462) );
  MUX2X1 U153 ( .B(write_data[1]), .A(sram_wdata[1]), .S(n6), .Y(n118) );
  INVX1 U154 ( .A(n119), .Y(n463) );
  MUX2X1 U155 ( .B(write_data[20]), .A(sram_wdata[20]), .S(n6), .Y(n119) );
  INVX1 U156 ( .A(n120), .Y(n464) );
  MUX2X1 U157 ( .B(write_data[21]), .A(sram_wdata[21]), .S(n6), .Y(n120) );
  INVX1 U158 ( .A(n121), .Y(n465) );
  MUX2X1 U159 ( .B(write_data[22]), .A(sram_wdata[22]), .S(n6), .Y(n121) );
  INVX1 U160 ( .A(n122), .Y(n466) );
  MUX2X1 U161 ( .B(write_data[23]), .A(sram_wdata[23]), .S(n6), .Y(n122) );
  INVX1 U162 ( .A(n123), .Y(n467) );
  MUX2X1 U163 ( .B(write_data[24]), .A(sram_wdata[24]), .S(n6), .Y(n123) );
  INVX1 U164 ( .A(n124), .Y(n468) );
  MUX2X1 U165 ( .B(write_data[25]), .A(sram_wdata[25]), .S(n6), .Y(n124) );
  INVX1 U166 ( .A(n125), .Y(n469) );
  MUX2X1 U167 ( .B(write_data[26]), .A(sram_wdata[26]), .S(n6), .Y(n125) );
  INVX1 U168 ( .A(n126), .Y(n470) );
  MUX2X1 U169 ( .B(write_data[27]), .A(sram_wdata[27]), .S(n6), .Y(n126) );
  INVX1 U170 ( .A(n127), .Y(n471) );
  MUX2X1 U171 ( .B(write_data[28]), .A(sram_wdata[28]), .S(n6), .Y(n127) );
  INVX1 U172 ( .A(n128), .Y(n472) );
  MUX2X1 U173 ( .B(write_data[29]), .A(sram_wdata[29]), .S(n6), .Y(n128) );
  INVX1 U174 ( .A(n129), .Y(n473) );
  MUX2X1 U175 ( .B(write_data[2]), .A(sram_wdata[2]), .S(n6), .Y(n129) );
  INVX1 U176 ( .A(n130), .Y(n474) );
  MUX2X1 U177 ( .B(write_data[30]), .A(sram_wdata[30]), .S(n6), .Y(n130) );
  INVX1 U178 ( .A(n131), .Y(n475) );
  MUX2X1 U179 ( .B(write_data[31]), .A(sram_wdata[31]), .S(n6), .Y(n131) );
  INVX1 U180 ( .A(n132), .Y(n476) );
  MUX2X1 U181 ( .B(write_data[3]), .A(sram_wdata[3]), .S(n6), .Y(n132) );
  INVX1 U182 ( .A(n133), .Y(n477) );
  MUX2X1 U183 ( .B(write_data[4]), .A(sram_wdata[4]), .S(n6), .Y(n133) );
  INVX1 U184 ( .A(n134), .Y(n478) );
  MUX2X1 U185 ( .B(write_data[5]), .A(sram_wdata[5]), .S(n6), .Y(n134) );
  INVX1 U186 ( .A(n135), .Y(n479) );
  MUX2X1 U187 ( .B(write_data[6]), .A(sram_wdata[6]), .S(n6), .Y(n135) );
  INVX1 U188 ( .A(n136), .Y(n480) );
  MUX2X1 U189 ( .B(write_data[7]), .A(sram_wdata[7]), .S(n6), .Y(n136) );
  INVX1 U190 ( .A(n137), .Y(n481) );
  MUX2X1 U191 ( .B(write_data[8]), .A(sram_wdata[8]), .S(n6), .Y(n137) );
  INVX1 U192 ( .A(n138), .Y(n482) );
  MUX2X1 U193 ( .B(write_data[9]), .A(sram_wdata[9]), .S(n6), .Y(n138) );
  NOR2X1 U194 ( .A(next_write[1]), .B(n79), .Y(n352) );
  OAI21X1 U195 ( .A(n139), .B(n140), .C(n141), .Y(n351) );
  MUX2X1 U196 ( .B(n142), .A(n143), .S(n144), .Y(n141) );
  INVX1 U197 ( .A(sram_awlen[0]), .Y(n140) );
  OAI21X1 U198 ( .A(n139), .B(n145), .C(n146), .Y(n350) );
  MUX2X1 U199 ( .B(n147), .A(n148), .S(n149), .Y(n146) );
  NOR2X1 U200 ( .A(wlen_reg[0]), .B(n7), .Y(n148) );
  INVX1 U201 ( .A(sram_awlen[1]), .Y(n145) );
  OAI21X1 U202 ( .A(n139), .B(n151), .C(n152), .Y(n349) );
  AOI22X1 U203 ( .A(wlen_reg[2]), .B(n153), .C(n143), .D(n154), .Y(n152) );
  OAI21X1 U204 ( .A(n7), .B(n149), .C(n155), .Y(n153) );
  INVX1 U205 ( .A(n147), .Y(n155) );
  OAI21X1 U206 ( .A(n7), .B(n144), .C(n156), .Y(n147) );
  INVX1 U207 ( .A(sram_awlen[2]), .Y(n151) );
  OAI21X1 U208 ( .A(n139), .B(n157), .C(n158), .Y(n348) );
  MUX2X1 U209 ( .B(n159), .A(n160), .S(n161), .Y(n158) );
  NOR2X1 U210 ( .A(n162), .B(n7), .Y(n160) );
  INVX1 U211 ( .A(sram_awlen[3]), .Y(n157) );
  OAI21X1 U212 ( .A(n139), .B(n163), .C(n164), .Y(n347) );
  AOI22X1 U213 ( .A(wlen_reg[4]), .B(n165), .C(n143), .D(n166), .Y(n164) );
  OAI21X1 U214 ( .A(n7), .B(n161), .C(n167), .Y(n165) );
  INVX1 U215 ( .A(n159), .Y(n167) );
  OAI21X1 U216 ( .A(n154), .B(n150), .C(n156), .Y(n159) );
  INVX1 U217 ( .A(sram_awlen[4]), .Y(n163) );
  OAI21X1 U218 ( .A(n139), .B(n168), .C(n169), .Y(n346) );
  MUX2X1 U219 ( .B(n170), .A(n171), .S(wlen_reg[5]), .Y(n169) );
  NOR2X1 U220 ( .A(n172), .B(n7), .Y(n170) );
  INVX1 U221 ( .A(sram_awlen[5]), .Y(n168) );
  OAI21X1 U222 ( .A(n139), .B(n173), .C(n174), .Y(n345) );
  AOI22X1 U223 ( .A(wlen_reg[6]), .B(n175), .C(n143), .D(n176), .Y(n174) );
  INVX1 U224 ( .A(n177), .Y(n175) );
  AOI21X1 U225 ( .A(n143), .B(wlen_reg[5]), .C(n171), .Y(n177) );
  OAI21X1 U226 ( .A(n166), .B(n150), .C(n156), .Y(n171) );
  INVX1 U227 ( .A(n172), .Y(n166) );
  INVX1 U228 ( .A(sram_awlen[6]), .Y(n173) );
  OAI21X1 U229 ( .A(n139), .B(n178), .C(n179), .Y(n344) );
  AOI21X1 U230 ( .A(wlen_reg[7]), .B(n180), .C(n181), .Y(n179) );
  INVX1 U231 ( .A(sram_awlen[7]), .Y(n178) );
  INVX1 U232 ( .A(n182), .Y(n343) );
  AOI21X1 U233 ( .A(n183), .B(sram_awlen[8]), .C(n184), .Y(n182) );
  MUX2X1 U234 ( .B(n185), .A(n186), .S(n187), .Y(n184) );
  OAI21X1 U235 ( .A(n139), .B(n216), .C(n218), .Y(n342) );
  AOI21X1 U236 ( .A(wlen_reg[9]), .B(n220), .C(n222), .Y(n218) );
  INVX1 U237 ( .A(n224), .Y(n222) );
  OAI21X1 U238 ( .A(n7), .B(n187), .C(n185), .Y(n220) );
  AOI21X1 U239 ( .A(n143), .B(wlen_reg[7]), .C(n180), .Y(n185) );
  OAI21X1 U240 ( .A(n176), .B(n150), .C(n156), .Y(n180) );
  INVX1 U241 ( .A(sram_awlen[9]), .Y(n216) );
  OAI21X1 U242 ( .A(n226), .B(n139), .C(n228), .Y(n341) );
  MUX2X1 U243 ( .B(n142), .A(n143), .S(write_addr[0]), .Y(n228) );
  INVX1 U244 ( .A(waddr_reg[0]), .Y(write_addr[0]) );
  INVX1 U245 ( .A(n183), .Y(n139) );
  INVX1 U246 ( .A(sram_awaddr[0]), .Y(n226) );
  OAI21X1 U247 ( .A(n7), .B(n230), .C(n232), .Y(n340) );
  AOI22X1 U248 ( .A(n183), .B(sram_awaddr[1]), .C(n142), .D(waddr_reg[1]), .Y(
        n232) );
  INVX1 U249 ( .A(N85), .Y(n230) );
  OAI21X1 U250 ( .A(n7), .B(n234), .C(n236), .Y(n339) );
  AOI22X1 U251 ( .A(n183), .B(sram_awaddr[2]), .C(n142), .D(waddr_reg[2]), .Y(
        n236) );
  INVX1 U252 ( .A(N86), .Y(n234) );
  OAI21X1 U253 ( .A(n150), .B(n238), .C(n240), .Y(n338) );
  AOI22X1 U254 ( .A(n183), .B(sram_awaddr[3]), .C(n142), .D(waddr_reg[3]), .Y(
        n240) );
  INVX1 U255 ( .A(N87), .Y(n238) );
  OAI21X1 U256 ( .A(n150), .B(n242), .C(n244), .Y(n337) );
  AOI22X1 U257 ( .A(sram_awaddr[4]), .B(n183), .C(n142), .D(waddr_reg[4]), .Y(
        n244) );
  INVX1 U258 ( .A(N88), .Y(n242) );
  OAI21X1 U259 ( .A(n150), .B(n246), .C(n248), .Y(n336) );
  AOI22X1 U260 ( .A(sram_awaddr[5]), .B(n183), .C(n142), .D(waddr_reg[5]), .Y(
        n248) );
  INVX1 U261 ( .A(N89), .Y(n246) );
  OAI21X1 U262 ( .A(n150), .B(n250), .C(n252), .Y(n335) );
  AOI22X1 U263 ( .A(sram_awaddr[6]), .B(n183), .C(n142), .D(waddr_reg[6]), .Y(
        n252) );
  INVX1 U264 ( .A(N90), .Y(n250) );
  OAI21X1 U265 ( .A(n150), .B(n254), .C(n256), .Y(n334) );
  AOI22X1 U266 ( .A(sram_awaddr[7]), .B(n183), .C(n142), .D(waddr_reg[7]), .Y(
        n256) );
  INVX1 U267 ( .A(N91), .Y(n254) );
  OAI21X1 U268 ( .A(n150), .B(n258), .C(n260), .Y(n333) );
  AOI22X1 U269 ( .A(sram_awaddr[8]), .B(n183), .C(n142), .D(waddr_reg[8]), .Y(
        n260) );
  INVX1 U270 ( .A(N92), .Y(n258) );
  OAI21X1 U271 ( .A(n150), .B(n262), .C(n264), .Y(n332) );
  AOI22X1 U272 ( .A(sram_awaddr[9]), .B(n183), .C(n142), .D(waddr_reg[9]), .Y(
        n264) );
  INVX1 U359 ( .A(N93), .Y(n262) );
  OAI21X1 U360 ( .A(n150), .B(n266), .C(n268), .Y(n331) );
  AOI22X1 U361 ( .A(sram_awaddr[10]), .B(n183), .C(n142), .D(waddr_reg[10]), 
        .Y(n268) );
  NOR2X1 U362 ( .A(n142), .B(n143), .Y(n183) );
  OAI21X1 U363 ( .A(n270), .B(n272), .C(n7), .Y(n156) );
  INVX1 U364 ( .A(N94), .Y(n266) );
  OAI21X1 U365 ( .A(n274), .B(n276), .C(n282), .Y(n330) );
  MUX2X1 U366 ( .B(n3), .A(n4), .S(n309), .Y(n282) );
  INVX1 U367 ( .A(sram_arlen[0]), .Y(n276) );
  OAI21X1 U368 ( .A(n274), .B(n353), .C(n354), .Y(n329) );
  MUX2X1 U369 ( .B(n355), .A(n356), .S(n357), .Y(n354) );
  NOR2X1 U370 ( .A(rlen_reg[0]), .B(n5), .Y(n356) );
  INVX1 U371 ( .A(sram_arlen[1]), .Y(n353) );
  OAI21X1 U372 ( .A(n274), .B(n359), .C(n360), .Y(n328) );
  AOI22X1 U373 ( .A(rlen_reg[2]), .B(n361), .C(n4), .D(n362), .Y(n360) );
  OAI21X1 U374 ( .A(n5), .B(n357), .C(n363), .Y(n361) );
  INVX1 U375 ( .A(n355), .Y(n363) );
  OAI21X1 U376 ( .A(n309), .B(n5), .C(n2), .Y(n355) );
  INVX1 U377 ( .A(sram_arlen[2]), .Y(n359) );
  OAI21X1 U378 ( .A(n274), .B(n364), .C(n365), .Y(n327) );
  MUX2X1 U379 ( .B(n366), .A(n367), .S(n368), .Y(n365) );
  NOR2X1 U380 ( .A(n369), .B(n5), .Y(n367) );
  INVX1 U381 ( .A(sram_arlen[3]), .Y(n364) );
  OAI21X1 U382 ( .A(n274), .B(n370), .C(n371), .Y(n326) );
  AOI22X1 U383 ( .A(rlen_reg[4]), .B(n372), .C(n4), .D(n373), .Y(n371) );
  OAI21X1 U384 ( .A(n5), .B(n368), .C(n374), .Y(n372) );
  INVX1 U385 ( .A(n366), .Y(n374) );
  OAI21X1 U386 ( .A(n362), .B(n5), .C(n2), .Y(n366) );
  INVX1 U387 ( .A(sram_arlen[4]), .Y(n370) );
  OAI21X1 U388 ( .A(n274), .B(n375), .C(n376), .Y(n325) );
  MUX2X1 U389 ( .B(n377), .A(n378), .S(rlen_reg[5]), .Y(n376) );
  NOR2X1 U390 ( .A(n379), .B(n5), .Y(n377) );
  INVX1 U391 ( .A(sram_arlen[5]), .Y(n375) );
  OAI21X1 U392 ( .A(n274), .B(n380), .C(n381), .Y(n324) );
  AOI21X1 U393 ( .A(rlen_reg[6]), .B(n382), .C(n383), .Y(n381) );
  INVX1 U394 ( .A(n384), .Y(n382) );
  AOI21X1 U395 ( .A(n4), .B(rlen_reg[5]), .C(n378), .Y(n384) );
  OAI21X1 U396 ( .A(n373), .B(n5), .C(n2), .Y(n378) );
  INVX1 U397 ( .A(n379), .Y(n373) );
  INVX1 U398 ( .A(sram_arlen[6]), .Y(n380) );
  OAI21X1 U399 ( .A(n274), .B(n385), .C(n386), .Y(n323) );
  MUX2X1 U400 ( .B(n387), .A(n383), .S(n388), .Y(n386) );
  INVX1 U401 ( .A(n389), .Y(n383) );
  INVX1 U402 ( .A(sram_arlen[7]), .Y(n385) );
  OAI21X1 U403 ( .A(n274), .B(n390), .C(n391), .Y(n322) );
  MUX2X1 U404 ( .B(n392), .A(n393), .S(n394), .Y(n391) );
  NOR2X1 U405 ( .A(rlen_reg[7]), .B(n389), .Y(n393) );
  NAND2X1 U406 ( .A(n4), .B(n395), .Y(n389) );
  INVX1 U407 ( .A(n396), .Y(n392) );
  INVX1 U408 ( .A(sram_arlen[8]), .Y(n390) );
  OAI21X1 U409 ( .A(n43), .B(n5), .C(n397), .Y(n321) );
  AOI22X1 U410 ( .A(rlen_reg[9]), .B(n398), .C(sram_arlen[9]), .D(n399), .Y(
        n397) );
  OAI21X1 U411 ( .A(n5), .B(n394), .C(n396), .Y(n398) );
  AOI21X1 U412 ( .A(n4), .B(rlen_reg[7]), .C(n387), .Y(n396) );
  OAI21X1 U413 ( .A(n395), .B(n5), .C(n2), .Y(n387) );
  INVX1 U414 ( .A(rlen_reg[8]), .Y(n394) );
  OAI21X1 U415 ( .A(n400), .B(n274), .C(n401), .Y(n320) );
  MUX2X1 U416 ( .B(n3), .A(n4), .S(read_addr[0]), .Y(n401) );
  INVX1 U417 ( .A(raddr_reg[0]), .Y(read_addr[0]) );
  INVX1 U418 ( .A(n399), .Y(n274) );
  INVX1 U419 ( .A(sram_araddr[0]), .Y(n400) );
  OAI21X1 U420 ( .A(n5), .B(n402), .C(n403), .Y(n319) );
  AOI22X1 U421 ( .A(n399), .B(sram_araddr[1]), .C(n3), .D(raddr_reg[1]), .Y(
        n403) );
  INVX1 U422 ( .A(N108), .Y(n402) );
  OAI21X1 U423 ( .A(n5), .B(n404), .C(n405), .Y(n318) );
  AOI22X1 U424 ( .A(n399), .B(sram_araddr[2]), .C(n3), .D(raddr_reg[2]), .Y(
        n405) );
  INVX1 U425 ( .A(N109), .Y(n404) );
  OAI21X1 U426 ( .A(n5), .B(n406), .C(n407), .Y(n317) );
  AOI22X1 U427 ( .A(n399), .B(sram_araddr[3]), .C(n3), .D(raddr_reg[3]), .Y(
        n407) );
  INVX1 U428 ( .A(N110), .Y(n406) );
  OAI21X1 U429 ( .A(n5), .B(n408), .C(n409), .Y(n316) );
  AOI22X1 U430 ( .A(sram_araddr[4]), .B(n399), .C(n3), .D(raddr_reg[4]), .Y(
        n409) );
  INVX1 U431 ( .A(N111), .Y(n408) );
  OAI21X1 U432 ( .A(n5), .B(n410), .C(n411), .Y(n315) );
  AOI22X1 U433 ( .A(sram_araddr[5]), .B(n399), .C(n3), .D(raddr_reg[5]), .Y(
        n411) );
  INVX1 U434 ( .A(N112), .Y(n410) );
  OAI21X1 U435 ( .A(n5), .B(n412), .C(n413), .Y(n314) );
  AOI22X1 U436 ( .A(sram_araddr[6]), .B(n399), .C(n3), .D(raddr_reg[6]), .Y(
        n413) );
  INVX1 U437 ( .A(N113), .Y(n412) );
  OAI21X1 U438 ( .A(n5), .B(n414), .C(n415), .Y(n313) );
  AOI22X1 U439 ( .A(sram_araddr[7]), .B(n399), .C(n3), .D(raddr_reg[7]), .Y(
        n415) );
  INVX1 U440 ( .A(N114), .Y(n414) );
  OAI21X1 U441 ( .A(n5), .B(n416), .C(n417), .Y(n312) );
  AOI22X1 U442 ( .A(sram_araddr[8]), .B(n399), .C(n3), .D(raddr_reg[8]), .Y(
        n417) );
  INVX1 U443 ( .A(N115), .Y(n416) );
  OAI21X1 U444 ( .A(n5), .B(n418), .C(n419), .Y(n311) );
  AOI22X1 U445 ( .A(sram_araddr[9]), .B(n399), .C(n3), .D(raddr_reg[9]), .Y(
        n419) );
  INVX1 U446 ( .A(N116), .Y(n418) );
  OAI21X1 U447 ( .A(n5), .B(n420), .C(n421), .Y(n310) );
  AOI22X1 U448 ( .A(sram_araddr[10]), .B(n399), .C(raddr_reg[10]), .D(n3), .Y(
        n421) );
  NOR2X1 U449 ( .A(n4), .B(n3), .Y(n399) );
  AOI21X1 U450 ( .A(sram_arready), .B(sram_arvalid), .C(n4), .Y(n308) );
  INVX1 U451 ( .A(N117), .Y(n420) );
  NAND3X1 U452 ( .A(sram_rvalid), .B(sram_rready), .C(n422), .Y(n358) );
  NOR2X1 U453 ( .A(n423), .B(n424), .Y(n422) );
  INVX1 U454 ( .A(n425), .Y(n280) );
  MUX2X1 U455 ( .B(wstrb_reg[0]), .A(sram_wstrb[0]), .S(n6), .Y(n425) );
  INVX1 U456 ( .A(n426), .Y(n278) );
  MUX2X1 U457 ( .B(wstrb_reg[1]), .A(sram_wstrb[1]), .S(n6), .Y(n426) );
  NOR2X1 U458 ( .A(n80), .B(n79), .Y(N136) );
  INVX1 U459 ( .A(next_write[0]), .Y(n79) );
  OAI21X1 U460 ( .A(write_state[1]), .B(n427), .C(n428), .Y(next_write[0]) );
  AND2X1 U461 ( .A(n7), .B(n429), .Y(n428) );
  MUX2X1 U462 ( .B(n430), .A(n431), .S(write_state[0]), .Y(n427) );
  INVX1 U463 ( .A(sram_wvalid), .Y(n431) );
  NOR2X1 U464 ( .A(n270), .B(n272), .Y(n430) );
  INVX1 U465 ( .A(sram_awvalid), .Y(n272) );
  INVX1 U466 ( .A(sram_awready), .Y(n270) );
  INVX1 U467 ( .A(next_write[1]), .Y(n80) );
  NAND3X1 U468 ( .A(n429), .B(n224), .C(n432), .Y(next_write[1]) );
  AOI22X1 U469 ( .A(n433), .B(sram_wvalid), .C(n26), .D(n434), .Y(n432) );
  INVX1 U470 ( .A(write_valid), .Y(n434) );
  AND2X1 U471 ( .A(n435), .B(write_state[0]), .Y(n433) );
  NAND3X1 U472 ( .A(n187), .B(n436), .C(n181), .Y(n224) );
  INVX1 U473 ( .A(n186), .Y(n181) );
  NAND3X1 U474 ( .A(n176), .B(n437), .C(n143), .Y(n186) );
  INVX1 U475 ( .A(n150), .Y(n143) );
  NAND2X1 U476 ( .A(write_valid), .B(n26), .Y(n150) );
  NOR2X1 U477 ( .A(n435), .B(write_state[0]), .Y(n26) );
  INVX1 U478 ( .A(wlen_reg[7]), .Y(n437) );
  NOR3X1 U479 ( .A(wlen_reg[5]), .B(wlen_reg[6]), .C(n172), .Y(n176) );
  NAND3X1 U480 ( .A(n161), .B(n438), .C(n154), .Y(n172) );
  INVX1 U481 ( .A(n162), .Y(n154) );
  NAND3X1 U482 ( .A(n149), .B(n439), .C(n144), .Y(n162) );
  INVX1 U483 ( .A(wlen_reg[0]), .Y(n144) );
  INVX1 U484 ( .A(wlen_reg[2]), .Y(n439) );
  INVX1 U485 ( .A(wlen_reg[1]), .Y(n149) );
  INVX1 U486 ( .A(wlen_reg[4]), .Y(n438) );
  INVX1 U487 ( .A(wlen_reg[3]), .Y(n161) );
  INVX1 U488 ( .A(wlen_reg[9]), .Y(n436) );
  INVX1 U489 ( .A(wlen_reg[8]), .Y(n187) );
  NAND2X1 U490 ( .A(n440), .B(write_state[0]), .Y(n429) );
  NOR2X1 U491 ( .A(sram_bready), .B(n435), .Y(n440) );
  INVX1 U492 ( .A(write_state[1]), .Y(n435) );
  INVX1 U493 ( .A(n44), .Y(N132) );
  NAND2X1 U494 ( .A(next_read[0]), .B(next_read[1]), .Y(n44) );
  INVX1 U495 ( .A(n48), .Y(next_read[1]) );
  NOR2X1 U496 ( .A(n441), .B(ren), .Y(n48) );
  NOR2X1 U497 ( .A(n423), .B(read_state[1]), .Y(ren) );
  MUX2X1 U498 ( .B(n424), .A(sram_rready), .S(read_state[0]), .Y(n441) );
  MUX2X1 U499 ( .B(n442), .A(n443), .S(n424), .Y(next_read[0]) );
  INVX1 U500 ( .A(read_state[1]), .Y(n424) );
  NAND3X1 U501 ( .A(sram_arready), .B(n423), .C(sram_arvalid), .Y(n443) );
  MUX2X1 U502 ( .B(n444), .A(read_valid), .S(n423), .Y(n442) );
  INVX1 U503 ( .A(read_state[0]), .Y(n423) );
  NAND2X1 U504 ( .A(sram_rready), .B(n445), .Y(n444) );
  INVX1 U505 ( .A(n43), .Y(n445) );
  NAND3X1 U506 ( .A(n395), .B(n388), .C(n446), .Y(n43) );
  NOR2X1 U507 ( .A(rlen_reg[9]), .B(rlen_reg[8]), .Y(n446) );
  INVX1 U508 ( .A(rlen_reg[7]), .Y(n388) );
  NOR3X1 U509 ( .A(rlen_reg[5]), .B(rlen_reg[6]), .C(n379), .Y(n395) );
  NAND3X1 U510 ( .A(n368), .B(n447), .C(n362), .Y(n379) );
  INVX1 U511 ( .A(n369), .Y(n362) );
  NAND3X1 U512 ( .A(n357), .B(n448), .C(n309), .Y(n369) );
  INVX1 U513 ( .A(rlen_reg[0]), .Y(n309) );
  INVX1 U514 ( .A(rlen_reg[2]), .Y(n448) );
  INVX1 U515 ( .A(rlen_reg[1]), .Y(n357) );
  INVX1 U516 ( .A(rlen_reg[4]), .Y(n447) );
  INVX1 U517 ( .A(rlen_reg[3]), .Y(n368) );
endmodule


module arbiter ( clk, n_rst, cpu_awaddr, cpu_araddr, cpu_awvalid, cpu_arvalid, 
        cpu_awready, cpu_arready, cpu_wdata, cpu_wvalid, cpu_wlast, cpu_wready, 
        cpu_rdata, cpu_rvalid, cpu_rlast, cpu_rready, cpu_bvalid, cpu_bready, 
        cpu_rresp, cpu_bresp, cpu_awlen, cpu_arlen, cpu_wstrb, fft_man_awaddr, 
        fft_man_araddr, fft_man_awvalid, fft_man_arvalid, fft_man_awready, 
        fft_man_arready, fft_man_wdata, fft_man_wvalid, fft_man_wlast, 
        fft_man_wready, fft_man_rdata, fft_man_rvalid, fft_man_rlast, 
        fft_man_rready, fft_man_bvalid, fft_man_bready, fft_man_rresp, 
        fft_man_bresp, fft_man_awlen, fft_man_wstrb, fft_man_arlen, 
        sram_awaddr, sram_araddr, sram_awvalid, sram_arvalid, sram_awready, 
        sram_arready, sram_wdata, sram_wvalid, sram_wlast, sram_wready, 
        sram_rdata, sram_rvalid, sram_rlast, sram_rready, sram_bvalid, 
        sram_bready, sram_rresp, sram_bresp, sram_awlen, sram_wstrb, 
        sram_arlen, fft_sub_awaddr, fft_sub_araddr, fft_sub_awvalid, 
        fft_sub_arvalid, fft_sub_awready, fft_sub_arready, fft_sub_wdata, 
        fft_sub_wvalid, fft_sub_wlast, fft_sub_wready, fft_sub_rdata, 
        fft_sub_rvalid, fft_sub_rlast, fft_sub_rready, fft_sub_bvalid, 
        fft_sub_bready, fft_sub_rresp, fft_sub_bresp, fft_sub_arlen, 
        fft_sub_awlen, fft_sub_wstrb );
  input [31:0] cpu_awaddr;
  input [31:0] cpu_araddr;
  input [31:0] cpu_wdata;
  output [31:0] cpu_rdata;
  input [9:0] cpu_awlen;
  input [9:0] cpu_arlen;
  input [1:0] cpu_wstrb;
  input [31:0] fft_man_awaddr;
  input [31:0] fft_man_araddr;
  input [31:0] fft_man_wdata;
  output [31:0] fft_man_rdata;
  input [9:0] fft_man_awlen;
  input [1:0] fft_man_wstrb;
  input [9:0] fft_man_arlen;
  output [31:0] sram_awaddr;
  output [31:0] sram_araddr;
  output [31:0] sram_wdata;
  input [31:0] sram_rdata;
  output [9:0] sram_awlen;
  output [1:0] sram_wstrb;
  output [9:0] sram_arlen;
  output [31:0] fft_sub_awaddr;
  output [31:0] fft_sub_araddr;
  output [31:0] fft_sub_wdata;
  input [31:0] fft_sub_rdata;
  output [9:0] fft_sub_arlen;
  output [9:0] fft_sub_awlen;
  output [1:0] fft_sub_wstrb;
  input clk, n_rst, cpu_awvalid, cpu_arvalid, cpu_wvalid, cpu_wlast,
         cpu_rready, cpu_bready, fft_man_awvalid, fft_man_arvalid,
         fft_man_wvalid, fft_man_wlast, fft_man_rready, fft_man_bready,
         sram_awready, sram_arready, sram_wready, sram_rvalid, sram_rlast,
         sram_bvalid, sram_rresp, sram_bresp, fft_sub_awready, fft_sub_arready,
         fft_sub_wready, fft_sub_rvalid, fft_sub_rlast, fft_sub_bvalid,
         fft_sub_rresp, fft_sub_bresp;
  output cpu_awready, cpu_arready, cpu_wready, cpu_rvalid, cpu_rlast,
         cpu_bvalid, cpu_rresp, cpu_bresp, fft_man_awready, fft_man_arready,
         fft_man_wready, fft_man_rvalid, fft_man_rlast, fft_man_bvalid,
         fft_man_rresp, fft_man_bresp, sram_awvalid, sram_arvalid, sram_wvalid,
         sram_wlast, sram_rready, sram_bready, fft_sub_awvalid,
         fft_sub_arvalid, fft_sub_wvalid, fft_sub_wlast, fft_sub_rready,
         fft_sub_bready;
  wire   w_state, r_state, n410, n411, n412, n413, n414, n415, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454;
  wire   [1:0] w_perms;
  wire   [1:0] r_perms;
  wire   [1:0] w_dest;
  wire   [1:0] r_dest;
  wire   [1:0] w_next_dest;
  wire   [1:0] r_next_dest;
  tri   clk;
  tri   n_rst;
  tri   [31:0] fft_man_wdata;
  tri   [31:0] fft_man_rdata;

  DFFSR \r_perms_reg[0]  ( .D(n415), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_perms[0]) );
  DFFSR r_state_reg ( .D(n414), .CLK(clk), .R(n_rst), .S(1'b1), .Q(r_state) );
  DFFSR \r_dest_reg[0]  ( .D(r_next_dest[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(r_dest[0]) );
  DFFSR \r_dest_reg[1]  ( .D(r_next_dest[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(r_dest[1]) );
  DFFSR \r_perms_reg[1]  ( .D(n413), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_perms[1]) );
  DFFSR \w_dest_reg[0]  ( .D(w_next_dest[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(w_dest[0]) );
  DFFSR w_state_reg ( .D(n412), .CLK(clk), .R(n_rst), .S(1'b1), .Q(w_state) );
  DFFSR \w_dest_reg[1]  ( .D(w_next_dest[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(w_dest[1]) );
  DFFSR \w_perms_reg[1]  ( .D(n410), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_perms[1]) );
  DFFSR \w_perms_reg[0]  ( .D(n411), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_perms[0]) );
  INVX1 U4 ( .A(n29), .Y(n1) );
  INVX8 U5 ( .A(n1), .Y(n2) );
  INVX1 U15 ( .A(n198), .Y(n3) );
  INVX8 U16 ( .A(n3), .Y(n4) );
  INVX1 U17 ( .A(n27), .Y(n5) );
  INVX8 U18 ( .A(n5), .Y(n6) );
  INVX1 U19 ( .A(n124), .Y(n7) );
  INVX8 U20 ( .A(n7), .Y(n8) );
  INVX1 U21 ( .A(n416), .Y(n9) );
  INVX8 U22 ( .A(n9), .Y(n10) );
  INVX1 U23 ( .A(n126), .Y(n21) );
  INVX8 U24 ( .A(n21), .Y(n22) );
  INVX1 U25 ( .A(n408), .Y(n23) );
  INVX8 U26 ( .A(n23), .Y(n24) );
  INVX1 U27 ( .A(n409), .Y(n25) );
  INVX8 U28 ( .A(n25), .Y(n26) );
  OAI22X1 U29 ( .A(n6), .B(n28), .C(n2), .D(n30), .Y(fft_man_rdata[9]) );
  OAI22X1 U30 ( .A(n6), .B(n31), .C(n2), .D(n32), .Y(fft_man_rdata[8]) );
  OAI22X1 U31 ( .A(n6), .B(n33), .C(n2), .D(n34), .Y(fft_man_rdata[7]) );
  OAI22X1 U32 ( .A(n6), .B(n35), .C(n2), .D(n36), .Y(fft_man_rdata[6]) );
  OAI22X1 U33 ( .A(n6), .B(n37), .C(n2), .D(n38), .Y(fft_man_rdata[5]) );
  OAI22X1 U34 ( .A(n6), .B(n39), .C(n2), .D(n40), .Y(fft_man_rdata[4]) );
  OAI22X1 U35 ( .A(n6), .B(n41), .C(n2), .D(n42), .Y(fft_man_rdata[3]) );
  OAI22X1 U36 ( .A(n6), .B(n43), .C(n2), .D(n44), .Y(fft_man_rdata[31]) );
  OAI22X1 U37 ( .A(n6), .B(n45), .C(n2), .D(n46), .Y(fft_man_rdata[30]) );
  OAI22X1 U38 ( .A(n6), .B(n47), .C(n2), .D(n48), .Y(fft_man_rdata[2]) );
  OAI22X1 U39 ( .A(n6), .B(n49), .C(n2), .D(n50), .Y(fft_man_rdata[29]) );
  OAI22X1 U40 ( .A(n6), .B(n51), .C(n2), .D(n52), .Y(fft_man_rdata[28]) );
  OAI22X1 U41 ( .A(n6), .B(n53), .C(n2), .D(n54), .Y(fft_man_rdata[27]) );
  OAI22X1 U42 ( .A(n6), .B(n55), .C(n2), .D(n56), .Y(fft_man_rdata[26]) );
  OAI22X1 U43 ( .A(n6), .B(n57), .C(n2), .D(n58), .Y(fft_man_rdata[25]) );
  OAI22X1 U44 ( .A(n6), .B(n59), .C(n2), .D(n60), .Y(fft_man_rdata[24]) );
  OAI22X1 U45 ( .A(n6), .B(n61), .C(n2), .D(n62), .Y(fft_man_rdata[23]) );
  OAI22X1 U46 ( .A(n6), .B(n63), .C(n2), .D(n64), .Y(fft_man_rdata[22]) );
  OAI22X1 U47 ( .A(n6), .B(n65), .C(n2), .D(n66), .Y(fft_man_rdata[21]) );
  OAI22X1 U48 ( .A(n6), .B(n67), .C(n2), .D(n68), .Y(fft_man_rdata[20]) );
  OAI22X1 U49 ( .A(n6), .B(n69), .C(n2), .D(n70), .Y(fft_man_rdata[1]) );
  OAI22X1 U50 ( .A(n6), .B(n71), .C(n2), .D(n72), .Y(fft_man_rdata[19]) );
  OAI22X1 U51 ( .A(n6), .B(n73), .C(n2), .D(n74), .Y(fft_man_rdata[18]) );
  OAI22X1 U52 ( .A(n6), .B(n75), .C(n2), .D(n76), .Y(fft_man_rdata[17]) );
  OAI22X1 U53 ( .A(n6), .B(n77), .C(n2), .D(n78), .Y(fft_man_rdata[16]) );
  OAI22X1 U54 ( .A(n6), .B(n79), .C(n2), .D(n80), .Y(fft_man_rdata[15]) );
  OAI22X1 U55 ( .A(n6), .B(n81), .C(n2), .D(n82), .Y(fft_man_rdata[14]) );
  OAI22X1 U56 ( .A(n6), .B(n83), .C(n2), .D(n84), .Y(fft_man_rdata[13]) );
  OAI22X1 U57 ( .A(n6), .B(n85), .C(n2), .D(n86), .Y(fft_man_rdata[12]) );
  OAI22X1 U58 ( .A(n6), .B(n87), .C(n2), .D(n88), .Y(fft_man_rdata[11]) );
  OAI22X1 U59 ( .A(n6), .B(n89), .C(n2), .D(n90), .Y(fft_man_rdata[10]) );
  OAI22X1 U60 ( .A(n6), .B(n91), .C(n2), .D(n92), .Y(fft_man_rdata[0]) );
  OAI22X1 U61 ( .A(n93), .B(n94), .C(w_state), .D(n95), .Y(w_next_dest[1]) );
  OAI22X1 U62 ( .A(n96), .B(n94), .C(w_state), .D(n97), .Y(w_next_dest[0]) );
  INVX1 U63 ( .A(n95), .Y(n97) );
  MUX2X1 U64 ( .B(n98), .A(n99), .S(n100), .Y(n95) );
  NAND3X1 U65 ( .A(n101), .B(n102), .C(n103), .Y(n99) );
  NOR2X1 U66 ( .A(n104), .B(n105), .Y(n103) );
  OAI21X1 U67 ( .A(n106), .B(n107), .C(n108), .Y(n105) );
  NAND2X1 U68 ( .A(n109), .B(fft_man_awaddr[0]), .Y(n107) );
  NAND2X1 U69 ( .A(n110), .B(n111), .Y(n104) );
  NOR2X1 U70 ( .A(fft_man_awaddr[9]), .B(fft_man_awaddr[8]), .Y(n102) );
  NOR2X1 U71 ( .A(fft_man_awaddr[7]), .B(fft_man_awaddr[6]), .Y(n101) );
  NAND3X1 U72 ( .A(n112), .B(n113), .C(n114), .Y(n98) );
  NOR2X1 U73 ( .A(n115), .B(n116), .Y(n114) );
  OAI21X1 U74 ( .A(n117), .B(n118), .C(n119), .Y(n116) );
  NAND2X1 U75 ( .A(n109), .B(cpu_awaddr[0]), .Y(n118) );
  MUX2X1 U76 ( .B(n120), .A(n121), .S(n100), .Y(n109) );
  NAND2X1 U77 ( .A(fft_man_awaddr[3]), .B(fft_man_awaddr[2]), .Y(n121) );
  NAND2X1 U78 ( .A(cpu_awaddr[3]), .B(cpu_awaddr[2]), .Y(n120) );
  NAND2X1 U79 ( .A(n122), .B(n123), .Y(n115) );
  NOR2X1 U80 ( .A(cpu_awaddr[9]), .B(cpu_awaddr[8]), .Y(n113) );
  NOR2X1 U81 ( .A(cpu_awaddr[7]), .B(cpu_awaddr[6]), .Y(n112) );
  OAI22X1 U82 ( .A(n8), .B(n125), .C(n22), .D(n127), .Y(sram_wvalid) );
  OAI22X1 U83 ( .A(n8), .B(n128), .C(n22), .D(n129), .Y(sram_wstrb[1]) );
  OAI22X1 U84 ( .A(n8), .B(n130), .C(n22), .D(n131), .Y(sram_wstrb[0]) );
  OAI22X1 U85 ( .A(n8), .B(n132), .C(n22), .D(n133), .Y(sram_wlast) );
  OAI22X1 U86 ( .A(n8), .B(n134), .C(n22), .D(n135), .Y(sram_wdata[9]) );
  OAI22X1 U87 ( .A(n8), .B(n136), .C(n22), .D(n137), .Y(sram_wdata[8]) );
  OAI22X1 U88 ( .A(n8), .B(n138), .C(n22), .D(n139), .Y(sram_wdata[7]) );
  OAI22X1 U89 ( .A(n8), .B(n140), .C(n22), .D(n141), .Y(sram_wdata[6]) );
  OAI22X1 U90 ( .A(n8), .B(n142), .C(n22), .D(n143), .Y(sram_wdata[5]) );
  OAI22X1 U91 ( .A(n8), .B(n144), .C(n22), .D(n145), .Y(sram_wdata[4]) );
  OAI22X1 U92 ( .A(n8), .B(n146), .C(n22), .D(n147), .Y(sram_wdata[3]) );
  OAI22X1 U93 ( .A(n8), .B(n148), .C(n22), .D(n149), .Y(sram_wdata[31]) );
  OAI22X1 U94 ( .A(n8), .B(n150), .C(n22), .D(n151), .Y(sram_wdata[30]) );
  OAI22X1 U95 ( .A(n8), .B(n152), .C(n22), .D(n153), .Y(sram_wdata[2]) );
  OAI22X1 U96 ( .A(n8), .B(n154), .C(n22), .D(n155), .Y(sram_wdata[29]) );
  OAI22X1 U97 ( .A(n8), .B(n156), .C(n22), .D(n157), .Y(sram_wdata[28]) );
  OAI22X1 U98 ( .A(n8), .B(n158), .C(n22), .D(n159), .Y(sram_wdata[27]) );
  OAI22X1 U99 ( .A(n8), .B(n160), .C(n22), .D(n161), .Y(sram_wdata[26]) );
  OAI22X1 U100 ( .A(n8), .B(n162), .C(n22), .D(n163), .Y(sram_wdata[25]) );
  OAI22X1 U101 ( .A(n8), .B(n164), .C(n22), .D(n165), .Y(sram_wdata[24]) );
  OAI22X1 U102 ( .A(n8), .B(n166), .C(n22), .D(n167), .Y(sram_wdata[23]) );
  OAI22X1 U103 ( .A(n8), .B(n168), .C(n22), .D(n169), .Y(sram_wdata[22]) );
  OAI22X1 U104 ( .A(n8), .B(n170), .C(n22), .D(n171), .Y(sram_wdata[21]) );
  OAI22X1 U105 ( .A(n8), .B(n172), .C(n22), .D(n173), .Y(sram_wdata[20]) );
  OAI22X1 U106 ( .A(n8), .B(n174), .C(n22), .D(n175), .Y(sram_wdata[1]) );
  OAI22X1 U107 ( .A(n8), .B(n176), .C(n22), .D(n177), .Y(sram_wdata[19]) );
  OAI22X1 U108 ( .A(n8), .B(n178), .C(n22), .D(n179), .Y(sram_wdata[18]) );
  OAI22X1 U109 ( .A(n8), .B(n180), .C(n22), .D(n181), .Y(sram_wdata[17]) );
  OAI22X1 U110 ( .A(n8), .B(n182), .C(n22), .D(n183), .Y(sram_wdata[16]) );
  OAI22X1 U111 ( .A(n8), .B(n184), .C(n22), .D(n185), .Y(sram_wdata[15]) );
  OAI22X1 U112 ( .A(n8), .B(n186), .C(n22), .D(n187), .Y(sram_wdata[14]) );
  OAI22X1 U113 ( .A(n8), .B(n188), .C(n22), .D(n189), .Y(sram_wdata[13]) );
  OAI22X1 U114 ( .A(n8), .B(n190), .C(n22), .D(n191), .Y(sram_wdata[12]) );
  OAI22X1 U115 ( .A(n8), .B(n192), .C(n22), .D(n193), .Y(sram_wdata[11]) );
  OAI22X1 U116 ( .A(n8), .B(n194), .C(n22), .D(n195), .Y(sram_wdata[10]) );
  OAI22X1 U117 ( .A(n8), .B(n196), .C(n22), .D(n197), .Y(sram_wdata[0]) );
  OAI22X1 U118 ( .A(n4), .B(n199), .C(n2), .D(n200), .Y(sram_rready) );
  OAI22X1 U119 ( .A(n8), .B(n201), .C(n22), .D(n202), .Y(sram_bready) );
  OAI22X1 U120 ( .A(n100), .B(n8), .C(n22), .D(n203), .Y(sram_awvalid) );
  OAI22X1 U121 ( .A(n8), .B(n204), .C(n22), .D(n205), .Y(sram_awlen[9]) );
  OAI22X1 U122 ( .A(n8), .B(n206), .C(n22), .D(n207), .Y(sram_awlen[8]) );
  OAI22X1 U123 ( .A(n8), .B(n208), .C(n22), .D(n209), .Y(sram_awlen[7]) );
  OAI22X1 U124 ( .A(n8), .B(n210), .C(n22), .D(n211), .Y(sram_awlen[6]) );
  OAI22X1 U125 ( .A(n8), .B(n212), .C(n22), .D(n213), .Y(sram_awlen[5]) );
  OAI22X1 U126 ( .A(n8), .B(n214), .C(n22), .D(n215), .Y(sram_awlen[4]) );
  OAI22X1 U127 ( .A(n8), .B(n216), .C(n22), .D(n217), .Y(sram_awlen[3]) );
  OAI22X1 U128 ( .A(n8), .B(n218), .C(n22), .D(n219), .Y(sram_awlen[2]) );
  OAI22X1 U129 ( .A(n8), .B(n220), .C(n22), .D(n221), .Y(sram_awlen[1]) );
  OAI22X1 U130 ( .A(n8), .B(n222), .C(n22), .D(n223), .Y(sram_awlen[0]) );
  OAI22X1 U131 ( .A(n8), .B(n224), .C(n22), .D(n225), .Y(sram_awaddr[9]) );
  OAI22X1 U132 ( .A(n8), .B(n226), .C(n22), .D(n227), .Y(sram_awaddr[8]) );
  OAI22X1 U133 ( .A(n8), .B(n228), .C(n22), .D(n229), .Y(sram_awaddr[7]) );
  OAI22X1 U134 ( .A(n8), .B(n230), .C(n22), .D(n231), .Y(sram_awaddr[6]) );
  OAI22X1 U135 ( .A(n8), .B(n123), .C(n22), .D(n111), .Y(sram_awaddr[5]) );
  OAI22X1 U136 ( .A(n8), .B(n122), .C(n22), .D(n110), .Y(sram_awaddr[4]) );
  OAI22X1 U137 ( .A(n232), .B(n8), .C(n233), .D(n22), .Y(sram_awaddr[3]) );
  OAI22X1 U138 ( .A(n8), .B(n234), .C(n22), .D(n235), .Y(sram_awaddr[31]) );
  OAI22X1 U139 ( .A(n8), .B(n236), .C(n22), .D(n237), .Y(sram_awaddr[30]) );
  OAI22X1 U140 ( .A(n238), .B(n8), .C(n239), .D(n22), .Y(sram_awaddr[2]) );
  OAI22X1 U141 ( .A(n8), .B(n240), .C(n22), .D(n241), .Y(sram_awaddr[29]) );
  OAI22X1 U142 ( .A(n8), .B(n242), .C(n22), .D(n243), .Y(sram_awaddr[28]) );
  OAI22X1 U143 ( .A(n8), .B(n244), .C(n22), .D(n245), .Y(sram_awaddr[27]) );
  OAI22X1 U144 ( .A(n8), .B(n246), .C(n22), .D(n247), .Y(sram_awaddr[26]) );
  OAI22X1 U145 ( .A(n8), .B(n248), .C(n22), .D(n249), .Y(sram_awaddr[25]) );
  OAI22X1 U146 ( .A(n8), .B(n250), .C(n22), .D(n251), .Y(sram_awaddr[24]) );
  OAI22X1 U147 ( .A(n8), .B(n252), .C(n22), .D(n253), .Y(sram_awaddr[23]) );
  OAI22X1 U148 ( .A(n8), .B(n254), .C(n22), .D(n255), .Y(sram_awaddr[22]) );
  OAI22X1 U149 ( .A(n8), .B(n256), .C(n22), .D(n257), .Y(sram_awaddr[21]) );
  OAI22X1 U150 ( .A(n8), .B(n258), .C(n22), .D(n259), .Y(sram_awaddr[20]) );
  OAI22X1 U151 ( .A(n117), .B(n8), .C(n106), .D(n22), .Y(sram_awaddr[1]) );
  OAI22X1 U152 ( .A(n8), .B(n260), .C(n22), .D(n261), .Y(sram_awaddr[19]) );
  OAI22X1 U153 ( .A(n8), .B(n262), .C(n22), .D(n263), .Y(sram_awaddr[18]) );
  OAI22X1 U154 ( .A(n8), .B(n264), .C(n22), .D(n265), .Y(sram_awaddr[17]) );
  OAI22X1 U155 ( .A(n8), .B(n266), .C(n22), .D(n267), .Y(sram_awaddr[16]) );
  OAI22X1 U156 ( .A(n8), .B(n268), .C(n22), .D(n269), .Y(sram_awaddr[15]) );
  OAI22X1 U157 ( .A(n8), .B(n270), .C(n22), .D(n271), .Y(sram_awaddr[14]) );
  OAI22X1 U158 ( .A(n8), .B(n272), .C(n22), .D(n273), .Y(sram_awaddr[13]) );
  OAI22X1 U159 ( .A(n8), .B(n274), .C(n22), .D(n275), .Y(sram_awaddr[12]) );
  OAI22X1 U160 ( .A(n8), .B(n276), .C(n22), .D(n277), .Y(sram_awaddr[11]) );
  OAI22X1 U161 ( .A(n8), .B(n119), .C(n22), .D(n108), .Y(sram_awaddr[10]) );
  OAI22X1 U162 ( .A(n278), .B(n8), .C(n279), .D(n22), .Y(sram_awaddr[0]) );
  OAI22X1 U163 ( .A(n4), .B(n280), .C(n2), .D(n281), .Y(sram_arvalid) );
  OAI22X1 U164 ( .A(n4), .B(n282), .C(n2), .D(n283), .Y(sram_arlen[9]) );
  OAI22X1 U165 ( .A(n4), .B(n284), .C(n2), .D(n285), .Y(sram_arlen[8]) );
  OAI22X1 U166 ( .A(n4), .B(n286), .C(n2), .D(n287), .Y(sram_arlen[7]) );
  OAI22X1 U167 ( .A(n4), .B(n288), .C(n2), .D(n289), .Y(sram_arlen[6]) );
  OAI22X1 U168 ( .A(n4), .B(n290), .C(n2), .D(n291), .Y(sram_arlen[5]) );
  OAI22X1 U169 ( .A(n4), .B(n292), .C(n2), .D(n293), .Y(sram_arlen[4]) );
  OAI22X1 U170 ( .A(n4), .B(n294), .C(n2), .D(n295), .Y(sram_arlen[3]) );
  OAI22X1 U171 ( .A(n4), .B(n296), .C(n2), .D(n297), .Y(sram_arlen[2]) );
  OAI22X1 U172 ( .A(n4), .B(n298), .C(n2), .D(n299), .Y(sram_arlen[1]) );
  OAI22X1 U173 ( .A(n4), .B(n300), .C(n2), .D(n301), .Y(sram_arlen[0]) );
  OAI22X1 U174 ( .A(n4), .B(n302), .C(n2), .D(n303), .Y(sram_araddr[9]) );
  OAI22X1 U175 ( .A(n4), .B(n304), .C(n2), .D(n305), .Y(sram_araddr[8]) );
  OAI22X1 U176 ( .A(n4), .B(n306), .C(n2), .D(n307), .Y(sram_araddr[7]) );
  OAI22X1 U177 ( .A(n4), .B(n308), .C(n2), .D(n309), .Y(sram_araddr[6]) );
  OAI22X1 U178 ( .A(n4), .B(n310), .C(n2), .D(n311), .Y(sram_araddr[5]) );
  OAI22X1 U179 ( .A(n4), .B(n312), .C(n2), .D(n313), .Y(sram_araddr[4]) );
  OAI22X1 U180 ( .A(n4), .B(n314), .C(n2), .D(n315), .Y(sram_araddr[3]) );
  OAI22X1 U181 ( .A(n4), .B(n316), .C(n2), .D(n317), .Y(sram_araddr[31]) );
  OAI22X1 U182 ( .A(n4), .B(n318), .C(n2), .D(n319), .Y(sram_araddr[30]) );
  OAI22X1 U183 ( .A(n4), .B(n320), .C(n2), .D(n321), .Y(sram_araddr[2]) );
  OAI22X1 U184 ( .A(n4), .B(n322), .C(n2), .D(n323), .Y(sram_araddr[29]) );
  OAI22X1 U185 ( .A(n4), .B(n324), .C(n2), .D(n325), .Y(sram_araddr[28]) );
  OAI22X1 U186 ( .A(n4), .B(n326), .C(n2), .D(n327), .Y(sram_araddr[27]) );
  OAI22X1 U187 ( .A(n4), .B(n328), .C(n2), .D(n329), .Y(sram_araddr[26]) );
  OAI22X1 U188 ( .A(n4), .B(n330), .C(n2), .D(n331), .Y(sram_araddr[25]) );
  OAI22X1 U189 ( .A(n4), .B(n332), .C(n2), .D(n333), .Y(sram_araddr[24]) );
  OAI22X1 U190 ( .A(n4), .B(n334), .C(n2), .D(n335), .Y(sram_araddr[23]) );
  OAI22X1 U191 ( .A(n4), .B(n336), .C(n2), .D(n337), .Y(sram_araddr[22]) );
  OAI22X1 U192 ( .A(n4), .B(n338), .C(n2), .D(n339), .Y(sram_araddr[21]) );
  OAI22X1 U193 ( .A(n4), .B(n340), .C(n2), .D(n341), .Y(sram_araddr[20]) );
  OAI22X1 U194 ( .A(n4), .B(n342), .C(n2), .D(n343), .Y(sram_araddr[1]) );
  OAI22X1 U195 ( .A(n4), .B(n344), .C(n2), .D(n345), .Y(sram_araddr[19]) );
  OAI22X1 U196 ( .A(n4), .B(n346), .C(n2), .D(n347), .Y(sram_araddr[18]) );
  OAI22X1 U197 ( .A(n4), .B(n348), .C(n2), .D(n349), .Y(sram_araddr[17]) );
  OAI22X1 U198 ( .A(n4), .B(n350), .C(n2), .D(n351), .Y(sram_araddr[16]) );
  OAI22X1 U199 ( .A(n4), .B(n352), .C(n2), .D(n353), .Y(sram_araddr[15]) );
  OAI22X1 U200 ( .A(n4), .B(n354), .C(n2), .D(n355), .Y(sram_araddr[14]) );
  OAI22X1 U201 ( .A(n4), .B(n356), .C(n2), .D(n357), .Y(sram_araddr[13]) );
  OAI22X1 U202 ( .A(n4), .B(n358), .C(n2), .D(n359), .Y(sram_araddr[12]) );
  OAI22X1 U203 ( .A(n4), .B(n360), .C(n2), .D(n361), .Y(sram_araddr[11]) );
  OAI22X1 U204 ( .A(n4), .B(n362), .C(n2), .D(n363), .Y(sram_araddr[10]) );
  OAI22X1 U205 ( .A(n4), .B(n364), .C(n2), .D(n365), .Y(sram_araddr[0]) );
  OAI22X1 U206 ( .A(n366), .B(n367), .C(r_state), .D(n368), .Y(r_next_dest[1])
         );
  OAI22X1 U207 ( .A(n369), .B(n367), .C(r_state), .D(n370), .Y(r_next_dest[0])
         );
  INVX1 U208 ( .A(n368), .Y(n370) );
  MUX2X1 U209 ( .B(n371), .A(n372), .S(n280), .Y(n368) );
  NAND3X1 U210 ( .A(n373), .B(n374), .C(n375), .Y(n372) );
  NOR2X1 U211 ( .A(n376), .B(n377), .Y(n375) );
  OAI21X1 U212 ( .A(n378), .B(n379), .C(n363), .Y(n377) );
  NAND2X1 U213 ( .A(fft_man_araddr[0]), .B(fft_man_araddr[1]), .Y(n379) );
  NAND2X1 U214 ( .A(n313), .B(n311), .Y(n376) );
  NOR2X1 U215 ( .A(fft_man_araddr[9]), .B(fft_man_araddr[8]), .Y(n374) );
  NOR2X1 U216 ( .A(fft_man_araddr[7]), .B(fft_man_araddr[6]), .Y(n373) );
  NAND3X1 U217 ( .A(n380), .B(n381), .C(n382), .Y(n371) );
  NOR2X1 U218 ( .A(n383), .B(n384), .Y(n382) );
  OAI21X1 U219 ( .A(n378), .B(n385), .C(n362), .Y(n384) );
  NAND2X1 U220 ( .A(cpu_araddr[0]), .B(cpu_araddr[1]), .Y(n385) );
  INVX1 U221 ( .A(n386), .Y(n378) );
  MUX2X1 U222 ( .B(n387), .A(n388), .S(n280), .Y(n386) );
  NAND2X1 U223 ( .A(fft_man_araddr[2]), .B(fft_man_araddr[3]), .Y(n388) );
  NAND2X1 U224 ( .A(cpu_araddr[2]), .B(cpu_araddr[3]), .Y(n387) );
  NAND2X1 U225 ( .A(n312), .B(n310), .Y(n383) );
  NOR2X1 U226 ( .A(cpu_araddr[9]), .B(cpu_araddr[8]), .Y(n381) );
  NOR2X1 U227 ( .A(cpu_araddr[7]), .B(cpu_araddr[6]), .Y(n380) );
  OAI21X1 U228 ( .A(n389), .B(n367), .C(n390), .Y(n415) );
  OAI21X1 U229 ( .A(n391), .B(cpu_arvalid), .C(n392), .Y(n390) );
  NOR2X1 U230 ( .A(fft_man_arvalid), .B(n389), .Y(n391) );
  OAI21X1 U231 ( .A(r_state), .B(n393), .C(n367), .Y(n414) );
  NOR2X1 U232 ( .A(cpu_arvalid), .B(fft_man_arvalid), .Y(n393) );
  OAI21X1 U233 ( .A(n394), .B(n367), .C(n395), .Y(n413) );
  OAI21X1 U234 ( .A(fft_man_arvalid), .B(r_perms[1]), .C(n396), .Y(n395) );
  NOR2X1 U235 ( .A(r_state), .B(cpu_arvalid), .Y(n396) );
  NAND3X1 U236 ( .A(n397), .B(n398), .C(r_state), .Y(n367) );
  NAND3X1 U237 ( .A(cpu_rlast), .B(cpu_rvalid), .C(cpu_rready), .Y(n398) );
  NAND3X1 U238 ( .A(fft_man_rlast), .B(fft_man_rvalid), .C(fft_man_rready), 
        .Y(n397) );
  OAI21X1 U239 ( .A(w_state), .B(n399), .C(n94), .Y(n412) );
  NOR2X1 U240 ( .A(cpu_awvalid), .B(fft_man_awvalid), .Y(n399) );
  OAI21X1 U241 ( .A(n400), .B(n94), .C(n401), .Y(n411) );
  OAI21X1 U242 ( .A(n402), .B(cpu_awvalid), .C(n403), .Y(n401) );
  NOR2X1 U243 ( .A(fft_man_awvalid), .B(n400), .Y(n402) );
  OAI21X1 U244 ( .A(n404), .B(n94), .C(n405), .Y(n410) );
  OAI21X1 U245 ( .A(fft_man_awvalid), .B(w_perms[1]), .C(n406), .Y(n405) );
  NOR2X1 U246 ( .A(w_state), .B(cpu_awvalid), .Y(n406) );
  NAND2X1 U247 ( .A(n407), .B(w_state), .Y(n94) );
  AOI22X1 U248 ( .A(cpu_bready), .B(cpu_bvalid), .C(fft_man_bready), .D(
        fft_man_bvalid), .Y(n407) );
  OAI22X1 U249 ( .A(n24), .B(n125), .C(n26), .D(n127), .Y(fft_sub_wvalid) );
  INVX1 U250 ( .A(fft_man_wvalid), .Y(n127) );
  INVX1 U251 ( .A(cpu_wvalid), .Y(n125) );
  OAI22X1 U252 ( .A(n24), .B(n128), .C(n26), .D(n129), .Y(fft_sub_wstrb[1]) );
  INVX1 U253 ( .A(fft_man_wstrb[1]), .Y(n129) );
  INVX1 U254 ( .A(cpu_wstrb[1]), .Y(n128) );
  OAI22X1 U255 ( .A(n24), .B(n130), .C(n26), .D(n131), .Y(fft_sub_wstrb[0]) );
  INVX1 U256 ( .A(fft_man_wstrb[0]), .Y(n131) );
  INVX1 U257 ( .A(cpu_wstrb[0]), .Y(n130) );
  OAI22X1 U258 ( .A(n24), .B(n132), .C(n26), .D(n133), .Y(fft_sub_wlast) );
  INVX1 U259 ( .A(fft_man_wlast), .Y(n133) );
  INVX1 U260 ( .A(cpu_wlast), .Y(n132) );
  OAI22X1 U261 ( .A(n24), .B(n134), .C(n26), .D(n135), .Y(fft_sub_wdata[9]) );
  INVX1 U262 ( .A(fft_man_wdata[9]), .Y(n135) );
  INVX1 U263 ( .A(cpu_wdata[9]), .Y(n134) );
  OAI22X1 U264 ( .A(n24), .B(n136), .C(n26), .D(n137), .Y(fft_sub_wdata[8]) );
  INVX1 U265 ( .A(fft_man_wdata[8]), .Y(n137) );
  INVX1 U266 ( .A(cpu_wdata[8]), .Y(n136) );
  OAI22X1 U267 ( .A(n24), .B(n138), .C(n26), .D(n139), .Y(fft_sub_wdata[7]) );
  INVX1 U268 ( .A(fft_man_wdata[7]), .Y(n139) );
  INVX1 U269 ( .A(cpu_wdata[7]), .Y(n138) );
  OAI22X1 U270 ( .A(n24), .B(n140), .C(n26), .D(n141), .Y(fft_sub_wdata[6]) );
  INVX1 U271 ( .A(fft_man_wdata[6]), .Y(n141) );
  INVX1 U272 ( .A(cpu_wdata[6]), .Y(n140) );
  OAI22X1 U273 ( .A(n24), .B(n142), .C(n26), .D(n143), .Y(fft_sub_wdata[5]) );
  INVX1 U274 ( .A(fft_man_wdata[5]), .Y(n143) );
  INVX1 U275 ( .A(cpu_wdata[5]), .Y(n142) );
  OAI22X1 U276 ( .A(n24), .B(n144), .C(n26), .D(n145), .Y(fft_sub_wdata[4]) );
  INVX1 U277 ( .A(fft_man_wdata[4]), .Y(n145) );
  INVX1 U278 ( .A(cpu_wdata[4]), .Y(n144) );
  OAI22X1 U279 ( .A(n24), .B(n146), .C(n26), .D(n147), .Y(fft_sub_wdata[3]) );
  INVX1 U280 ( .A(fft_man_wdata[3]), .Y(n147) );
  INVX1 U281 ( .A(cpu_wdata[3]), .Y(n146) );
  OAI22X1 U282 ( .A(n24), .B(n148), .C(n26), .D(n149), .Y(fft_sub_wdata[31])
         );
  INVX1 U283 ( .A(fft_man_wdata[31]), .Y(n149) );
  INVX1 U284 ( .A(cpu_wdata[31]), .Y(n148) );
  OAI22X1 U285 ( .A(n24), .B(n150), .C(n26), .D(n151), .Y(fft_sub_wdata[30])
         );
  INVX1 U286 ( .A(fft_man_wdata[30]), .Y(n151) );
  INVX1 U287 ( .A(cpu_wdata[30]), .Y(n150) );
  OAI22X1 U288 ( .A(n24), .B(n152), .C(n26), .D(n153), .Y(fft_sub_wdata[2]) );
  INVX1 U289 ( .A(fft_man_wdata[2]), .Y(n153) );
  INVX1 U290 ( .A(cpu_wdata[2]), .Y(n152) );
  OAI22X1 U291 ( .A(n24), .B(n154), .C(n26), .D(n155), .Y(fft_sub_wdata[29])
         );
  INVX1 U292 ( .A(fft_man_wdata[29]), .Y(n155) );
  INVX1 U293 ( .A(cpu_wdata[29]), .Y(n154) );
  OAI22X1 U294 ( .A(n24), .B(n156), .C(n26), .D(n157), .Y(fft_sub_wdata[28])
         );
  INVX1 U295 ( .A(fft_man_wdata[28]), .Y(n157) );
  INVX1 U296 ( .A(cpu_wdata[28]), .Y(n156) );
  OAI22X1 U297 ( .A(n24), .B(n158), .C(n26), .D(n159), .Y(fft_sub_wdata[27])
         );
  INVX1 U298 ( .A(fft_man_wdata[27]), .Y(n159) );
  INVX1 U299 ( .A(cpu_wdata[27]), .Y(n158) );
  OAI22X1 U300 ( .A(n24), .B(n160), .C(n26), .D(n161), .Y(fft_sub_wdata[26])
         );
  INVX1 U301 ( .A(fft_man_wdata[26]), .Y(n161) );
  INVX1 U302 ( .A(cpu_wdata[26]), .Y(n160) );
  OAI22X1 U303 ( .A(n24), .B(n162), .C(n26), .D(n163), .Y(fft_sub_wdata[25])
         );
  INVX1 U304 ( .A(fft_man_wdata[25]), .Y(n163) );
  INVX1 U305 ( .A(cpu_wdata[25]), .Y(n162) );
  OAI22X1 U306 ( .A(n24), .B(n164), .C(n26), .D(n165), .Y(fft_sub_wdata[24])
         );
  INVX1 U307 ( .A(fft_man_wdata[24]), .Y(n165) );
  INVX1 U308 ( .A(cpu_wdata[24]), .Y(n164) );
  OAI22X1 U309 ( .A(n24), .B(n166), .C(n26), .D(n167), .Y(fft_sub_wdata[23])
         );
  INVX1 U310 ( .A(fft_man_wdata[23]), .Y(n167) );
  INVX1 U311 ( .A(cpu_wdata[23]), .Y(n166) );
  OAI22X1 U312 ( .A(n24), .B(n168), .C(n26), .D(n169), .Y(fft_sub_wdata[22])
         );
  INVX1 U313 ( .A(fft_man_wdata[22]), .Y(n169) );
  INVX1 U314 ( .A(cpu_wdata[22]), .Y(n168) );
  OAI22X1 U315 ( .A(n24), .B(n170), .C(n26), .D(n171), .Y(fft_sub_wdata[21])
         );
  INVX1 U316 ( .A(fft_man_wdata[21]), .Y(n171) );
  INVX1 U317 ( .A(cpu_wdata[21]), .Y(n170) );
  OAI22X1 U318 ( .A(n24), .B(n172), .C(n26), .D(n173), .Y(fft_sub_wdata[20])
         );
  INVX1 U319 ( .A(fft_man_wdata[20]), .Y(n173) );
  INVX1 U320 ( .A(cpu_wdata[20]), .Y(n172) );
  OAI22X1 U321 ( .A(n24), .B(n174), .C(n26), .D(n175), .Y(fft_sub_wdata[1]) );
  INVX1 U322 ( .A(fft_man_wdata[1]), .Y(n175) );
  INVX1 U323 ( .A(cpu_wdata[1]), .Y(n174) );
  OAI22X1 U324 ( .A(n24), .B(n176), .C(n26), .D(n177), .Y(fft_sub_wdata[19])
         );
  INVX1 U325 ( .A(fft_man_wdata[19]), .Y(n177) );
  INVX1 U326 ( .A(cpu_wdata[19]), .Y(n176) );
  OAI22X1 U327 ( .A(n24), .B(n178), .C(n26), .D(n179), .Y(fft_sub_wdata[18])
         );
  INVX1 U328 ( .A(fft_man_wdata[18]), .Y(n179) );
  INVX1 U329 ( .A(cpu_wdata[18]), .Y(n178) );
  OAI22X1 U330 ( .A(n24), .B(n180), .C(n26), .D(n181), .Y(fft_sub_wdata[17])
         );
  INVX1 U331 ( .A(fft_man_wdata[17]), .Y(n181) );
  INVX1 U332 ( .A(cpu_wdata[17]), .Y(n180) );
  OAI22X1 U333 ( .A(n24), .B(n182), .C(n26), .D(n183), .Y(fft_sub_wdata[16])
         );
  INVX1 U334 ( .A(fft_man_wdata[16]), .Y(n183) );
  INVX1 U335 ( .A(cpu_wdata[16]), .Y(n182) );
  OAI22X1 U336 ( .A(n24), .B(n184), .C(n26), .D(n185), .Y(fft_sub_wdata[15])
         );
  INVX1 U337 ( .A(fft_man_wdata[15]), .Y(n185) );
  INVX1 U338 ( .A(cpu_wdata[15]), .Y(n184) );
  OAI22X1 U339 ( .A(n24), .B(n186), .C(n26), .D(n187), .Y(fft_sub_wdata[14])
         );
  INVX1 U340 ( .A(fft_man_wdata[14]), .Y(n187) );
  INVX1 U341 ( .A(cpu_wdata[14]), .Y(n186) );
  OAI22X1 U342 ( .A(n24), .B(n188), .C(n26), .D(n189), .Y(fft_sub_wdata[13])
         );
  INVX1 U343 ( .A(fft_man_wdata[13]), .Y(n189) );
  INVX1 U344 ( .A(cpu_wdata[13]), .Y(n188) );
  OAI22X1 U345 ( .A(n24), .B(n190), .C(n26), .D(n191), .Y(fft_sub_wdata[12])
         );
  INVX1 U346 ( .A(fft_man_wdata[12]), .Y(n191) );
  INVX1 U347 ( .A(cpu_wdata[12]), .Y(n190) );
  OAI22X1 U348 ( .A(n24), .B(n192), .C(n26), .D(n193), .Y(fft_sub_wdata[11])
         );
  INVX1 U349 ( .A(fft_man_wdata[11]), .Y(n193) );
  INVX1 U350 ( .A(cpu_wdata[11]), .Y(n192) );
  OAI22X1 U351 ( .A(n24), .B(n194), .C(n26), .D(n195), .Y(fft_sub_wdata[10])
         );
  INVX1 U352 ( .A(fft_man_wdata[10]), .Y(n195) );
  INVX1 U353 ( .A(cpu_wdata[10]), .Y(n194) );
  OAI22X1 U354 ( .A(n24), .B(n196), .C(n26), .D(n197), .Y(fft_sub_wdata[0]) );
  INVX1 U355 ( .A(fft_man_wdata[0]), .Y(n197) );
  INVX1 U356 ( .A(cpu_wdata[0]), .Y(n196) );
  OAI22X1 U357 ( .A(n199), .B(n10), .C(n6), .D(n200), .Y(fft_sub_rready) );
  INVX1 U358 ( .A(fft_man_rready), .Y(n200) );
  INVX1 U359 ( .A(cpu_rready), .Y(n199) );
  OAI22X1 U360 ( .A(n24), .B(n201), .C(n26), .D(n202), .Y(fft_sub_bready) );
  INVX1 U361 ( .A(fft_man_bready), .Y(n202) );
  INVX1 U362 ( .A(cpu_bready), .Y(n201) );
  OAI22X1 U363 ( .A(n100), .B(n24), .C(n26), .D(n203), .Y(fft_sub_awvalid) );
  INVX1 U364 ( .A(fft_man_awvalid), .Y(n203) );
  INVX1 U365 ( .A(cpu_awvalid), .Y(n100) );
  OAI22X1 U366 ( .A(n24), .B(n204), .C(n26), .D(n205), .Y(fft_sub_awlen[9]) );
  INVX1 U367 ( .A(fft_man_awlen[9]), .Y(n205) );
  INVX1 U368 ( .A(cpu_awlen[9]), .Y(n204) );
  OAI22X1 U369 ( .A(n24), .B(n206), .C(n26), .D(n207), .Y(fft_sub_awlen[8]) );
  INVX1 U370 ( .A(fft_man_awlen[8]), .Y(n207) );
  INVX1 U371 ( .A(cpu_awlen[8]), .Y(n206) );
  OAI22X1 U372 ( .A(n24), .B(n208), .C(n26), .D(n209), .Y(fft_sub_awlen[7]) );
  INVX1 U373 ( .A(fft_man_awlen[7]), .Y(n209) );
  INVX1 U374 ( .A(cpu_awlen[7]), .Y(n208) );
  OAI22X1 U375 ( .A(n24), .B(n210), .C(n26), .D(n211), .Y(fft_sub_awlen[6]) );
  INVX1 U376 ( .A(fft_man_awlen[6]), .Y(n211) );
  INVX1 U377 ( .A(cpu_awlen[6]), .Y(n210) );
  OAI22X1 U378 ( .A(n24), .B(n212), .C(n26), .D(n213), .Y(fft_sub_awlen[5]) );
  INVX1 U379 ( .A(fft_man_awlen[5]), .Y(n213) );
  INVX1 U380 ( .A(cpu_awlen[5]), .Y(n212) );
  OAI22X1 U381 ( .A(n24), .B(n214), .C(n26), .D(n215), .Y(fft_sub_awlen[4]) );
  INVX1 U382 ( .A(fft_man_awlen[4]), .Y(n215) );
  INVX1 U383 ( .A(cpu_awlen[4]), .Y(n214) );
  OAI22X1 U384 ( .A(n24), .B(n216), .C(n26), .D(n217), .Y(fft_sub_awlen[3]) );
  INVX1 U385 ( .A(fft_man_awlen[3]), .Y(n217) );
  INVX1 U386 ( .A(cpu_awlen[3]), .Y(n216) );
  OAI22X1 U387 ( .A(n24), .B(n218), .C(n26), .D(n219), .Y(fft_sub_awlen[2]) );
  INVX1 U388 ( .A(fft_man_awlen[2]), .Y(n219) );
  INVX1 U389 ( .A(cpu_awlen[2]), .Y(n218) );
  OAI22X1 U390 ( .A(n24), .B(n220), .C(n26), .D(n221), .Y(fft_sub_awlen[1]) );
  INVX1 U391 ( .A(fft_man_awlen[1]), .Y(n221) );
  INVX1 U392 ( .A(cpu_awlen[1]), .Y(n220) );
  OAI22X1 U393 ( .A(n24), .B(n222), .C(n26), .D(n223), .Y(fft_sub_awlen[0]) );
  INVX1 U394 ( .A(fft_man_awlen[0]), .Y(n223) );
  INVX1 U395 ( .A(cpu_awlen[0]), .Y(n222) );
  OAI22X1 U396 ( .A(n24), .B(n224), .C(n26), .D(n225), .Y(fft_sub_awaddr[9])
         );
  INVX1 U397 ( .A(fft_man_awaddr[9]), .Y(n225) );
  INVX1 U398 ( .A(cpu_awaddr[9]), .Y(n224) );
  OAI22X1 U399 ( .A(n24), .B(n226), .C(n26), .D(n227), .Y(fft_sub_awaddr[8])
         );
  INVX1 U400 ( .A(fft_man_awaddr[8]), .Y(n227) );
  INVX1 U401 ( .A(cpu_awaddr[8]), .Y(n226) );
  OAI22X1 U402 ( .A(n24), .B(n228), .C(n26), .D(n229), .Y(fft_sub_awaddr[7])
         );
  INVX1 U403 ( .A(fft_man_awaddr[7]), .Y(n229) );
  INVX1 U404 ( .A(cpu_awaddr[7]), .Y(n228) );
  OAI22X1 U405 ( .A(n24), .B(n230), .C(n26), .D(n231), .Y(fft_sub_awaddr[6])
         );
  INVX1 U406 ( .A(fft_man_awaddr[6]), .Y(n231) );
  INVX1 U407 ( .A(cpu_awaddr[6]), .Y(n230) );
  OAI22X1 U408 ( .A(n24), .B(n123), .C(n26), .D(n111), .Y(fft_sub_awaddr[5])
         );
  INVX1 U409 ( .A(fft_man_awaddr[5]), .Y(n111) );
  INVX1 U410 ( .A(cpu_awaddr[5]), .Y(n123) );
  OAI22X1 U411 ( .A(n24), .B(n122), .C(n26), .D(n110), .Y(fft_sub_awaddr[4])
         );
  INVX1 U412 ( .A(fft_man_awaddr[4]), .Y(n110) );
  INVX1 U413 ( .A(cpu_awaddr[4]), .Y(n122) );
  OAI22X1 U414 ( .A(n232), .B(n24), .C(n233), .D(n26), .Y(fft_sub_awaddr[3])
         );
  INVX1 U415 ( .A(fft_man_awaddr[3]), .Y(n233) );
  INVX1 U416 ( .A(cpu_awaddr[3]), .Y(n232) );
  OAI22X1 U417 ( .A(n24), .B(n234), .C(n26), .D(n235), .Y(fft_sub_awaddr[31])
         );
  INVX1 U418 ( .A(fft_man_awaddr[31]), .Y(n235) );
  INVX1 U419 ( .A(cpu_awaddr[31]), .Y(n234) );
  OAI22X1 U420 ( .A(n24), .B(n236), .C(n26), .D(n237), .Y(fft_sub_awaddr[30])
         );
  INVX1 U421 ( .A(fft_man_awaddr[30]), .Y(n237) );
  INVX1 U422 ( .A(cpu_awaddr[30]), .Y(n236) );
  OAI22X1 U423 ( .A(n238), .B(n24), .C(n239), .D(n26), .Y(fft_sub_awaddr[2])
         );
  INVX1 U424 ( .A(fft_man_awaddr[2]), .Y(n239) );
  INVX1 U425 ( .A(cpu_awaddr[2]), .Y(n238) );
  OAI22X1 U426 ( .A(n24), .B(n240), .C(n26), .D(n241), .Y(fft_sub_awaddr[29])
         );
  INVX1 U427 ( .A(fft_man_awaddr[29]), .Y(n241) );
  INVX1 U428 ( .A(cpu_awaddr[29]), .Y(n240) );
  OAI22X1 U429 ( .A(n24), .B(n242), .C(n26), .D(n243), .Y(fft_sub_awaddr[28])
         );
  INVX1 U430 ( .A(fft_man_awaddr[28]), .Y(n243) );
  INVX1 U431 ( .A(cpu_awaddr[28]), .Y(n242) );
  OAI22X1 U432 ( .A(n24), .B(n244), .C(n26), .D(n245), .Y(fft_sub_awaddr[27])
         );
  INVX1 U433 ( .A(fft_man_awaddr[27]), .Y(n245) );
  INVX1 U434 ( .A(cpu_awaddr[27]), .Y(n244) );
  OAI22X1 U435 ( .A(n24), .B(n246), .C(n26), .D(n247), .Y(fft_sub_awaddr[26])
         );
  INVX1 U436 ( .A(fft_man_awaddr[26]), .Y(n247) );
  INVX1 U437 ( .A(cpu_awaddr[26]), .Y(n246) );
  OAI22X1 U438 ( .A(n24), .B(n248), .C(n26), .D(n249), .Y(fft_sub_awaddr[25])
         );
  INVX1 U439 ( .A(fft_man_awaddr[25]), .Y(n249) );
  INVX1 U440 ( .A(cpu_awaddr[25]), .Y(n248) );
  OAI22X1 U441 ( .A(n24), .B(n250), .C(n26), .D(n251), .Y(fft_sub_awaddr[24])
         );
  INVX1 U442 ( .A(fft_man_awaddr[24]), .Y(n251) );
  INVX1 U443 ( .A(cpu_awaddr[24]), .Y(n250) );
  OAI22X1 U444 ( .A(n24), .B(n252), .C(n26), .D(n253), .Y(fft_sub_awaddr[23])
         );
  INVX1 U445 ( .A(fft_man_awaddr[23]), .Y(n253) );
  INVX1 U446 ( .A(cpu_awaddr[23]), .Y(n252) );
  OAI22X1 U447 ( .A(n24), .B(n254), .C(n26), .D(n255), .Y(fft_sub_awaddr[22])
         );
  INVX1 U448 ( .A(fft_man_awaddr[22]), .Y(n255) );
  INVX1 U449 ( .A(cpu_awaddr[22]), .Y(n254) );
  OAI22X1 U450 ( .A(n24), .B(n256), .C(n26), .D(n257), .Y(fft_sub_awaddr[21])
         );
  INVX1 U451 ( .A(fft_man_awaddr[21]), .Y(n257) );
  INVX1 U452 ( .A(cpu_awaddr[21]), .Y(n256) );
  OAI22X1 U453 ( .A(n24), .B(n258), .C(n26), .D(n259), .Y(fft_sub_awaddr[20])
         );
  INVX1 U454 ( .A(fft_man_awaddr[20]), .Y(n259) );
  INVX1 U455 ( .A(cpu_awaddr[20]), .Y(n258) );
  OAI22X1 U456 ( .A(n117), .B(n24), .C(n106), .D(n26), .Y(fft_sub_awaddr[1])
         );
  INVX1 U457 ( .A(fft_man_awaddr[1]), .Y(n106) );
  INVX1 U458 ( .A(cpu_awaddr[1]), .Y(n117) );
  OAI22X1 U459 ( .A(n24), .B(n260), .C(n26), .D(n261), .Y(fft_sub_awaddr[19])
         );
  INVX1 U460 ( .A(fft_man_awaddr[19]), .Y(n261) );
  INVX1 U461 ( .A(cpu_awaddr[19]), .Y(n260) );
  OAI22X1 U462 ( .A(n24), .B(n262), .C(n26), .D(n263), .Y(fft_sub_awaddr[18])
         );
  INVX1 U463 ( .A(fft_man_awaddr[18]), .Y(n263) );
  INVX1 U464 ( .A(cpu_awaddr[18]), .Y(n262) );
  OAI22X1 U465 ( .A(n24), .B(n264), .C(n26), .D(n265), .Y(fft_sub_awaddr[17])
         );
  INVX1 U466 ( .A(fft_man_awaddr[17]), .Y(n265) );
  INVX1 U467 ( .A(cpu_awaddr[17]), .Y(n264) );
  OAI22X1 U468 ( .A(n24), .B(n266), .C(n26), .D(n267), .Y(fft_sub_awaddr[16])
         );
  INVX1 U469 ( .A(fft_man_awaddr[16]), .Y(n267) );
  INVX1 U470 ( .A(cpu_awaddr[16]), .Y(n266) );
  OAI22X1 U471 ( .A(n24), .B(n268), .C(n26), .D(n269), .Y(fft_sub_awaddr[15])
         );
  INVX1 U472 ( .A(fft_man_awaddr[15]), .Y(n269) );
  INVX1 U473 ( .A(cpu_awaddr[15]), .Y(n268) );
  OAI22X1 U474 ( .A(n24), .B(n270), .C(n26), .D(n271), .Y(fft_sub_awaddr[14])
         );
  INVX1 U475 ( .A(fft_man_awaddr[14]), .Y(n271) );
  INVX1 U476 ( .A(cpu_awaddr[14]), .Y(n270) );
  OAI22X1 U477 ( .A(n24), .B(n272), .C(n26), .D(n273), .Y(fft_sub_awaddr[13])
         );
  INVX1 U478 ( .A(fft_man_awaddr[13]), .Y(n273) );
  INVX1 U479 ( .A(cpu_awaddr[13]), .Y(n272) );
  OAI22X1 U480 ( .A(n24), .B(n274), .C(n26), .D(n275), .Y(fft_sub_awaddr[12])
         );
  INVX1 U481 ( .A(fft_man_awaddr[12]), .Y(n275) );
  INVX1 U482 ( .A(cpu_awaddr[12]), .Y(n274) );
  OAI22X1 U483 ( .A(n24), .B(n276), .C(n26), .D(n277), .Y(fft_sub_awaddr[11])
         );
  INVX1 U484 ( .A(fft_man_awaddr[11]), .Y(n277) );
  INVX1 U485 ( .A(cpu_awaddr[11]), .Y(n276) );
  OAI22X1 U486 ( .A(n24), .B(n119), .C(n26), .D(n108), .Y(fft_sub_awaddr[10])
         );
  INVX1 U487 ( .A(fft_man_awaddr[10]), .Y(n108) );
  INVX1 U488 ( .A(cpu_awaddr[10]), .Y(n119) );
  OAI22X1 U489 ( .A(n278), .B(n24), .C(n279), .D(n26), .Y(fft_sub_awaddr[0])
         );
  INVX1 U490 ( .A(fft_man_awaddr[0]), .Y(n279) );
  INVX1 U491 ( .A(cpu_awaddr[0]), .Y(n278) );
  OAI22X1 U492 ( .A(n280), .B(n10), .C(n6), .D(n281), .Y(fft_sub_arvalid) );
  INVX1 U493 ( .A(fft_man_arvalid), .Y(n281) );
  INVX1 U494 ( .A(cpu_arvalid), .Y(n280) );
  OAI22X1 U495 ( .A(n282), .B(n10), .C(n6), .D(n283), .Y(fft_sub_arlen[9]) );
  INVX1 U496 ( .A(fft_man_arlen[9]), .Y(n283) );
  INVX1 U497 ( .A(cpu_arlen[9]), .Y(n282) );
  OAI22X1 U498 ( .A(n284), .B(n10), .C(n6), .D(n285), .Y(fft_sub_arlen[8]) );
  INVX1 U499 ( .A(fft_man_arlen[8]), .Y(n285) );
  INVX1 U500 ( .A(cpu_arlen[8]), .Y(n284) );
  OAI22X1 U501 ( .A(n286), .B(n10), .C(n6), .D(n287), .Y(fft_sub_arlen[7]) );
  INVX1 U502 ( .A(fft_man_arlen[7]), .Y(n287) );
  INVX1 U503 ( .A(cpu_arlen[7]), .Y(n286) );
  OAI22X1 U504 ( .A(n288), .B(n10), .C(n6), .D(n289), .Y(fft_sub_arlen[6]) );
  INVX1 U505 ( .A(fft_man_arlen[6]), .Y(n289) );
  INVX1 U506 ( .A(cpu_arlen[6]), .Y(n288) );
  OAI22X1 U507 ( .A(n290), .B(n10), .C(n6), .D(n291), .Y(fft_sub_arlen[5]) );
  INVX1 U508 ( .A(fft_man_arlen[5]), .Y(n291) );
  INVX1 U509 ( .A(cpu_arlen[5]), .Y(n290) );
  OAI22X1 U510 ( .A(n292), .B(n10), .C(n6), .D(n293), .Y(fft_sub_arlen[4]) );
  INVX1 U511 ( .A(fft_man_arlen[4]), .Y(n293) );
  INVX1 U512 ( .A(cpu_arlen[4]), .Y(n292) );
  OAI22X1 U513 ( .A(n294), .B(n10), .C(n6), .D(n295), .Y(fft_sub_arlen[3]) );
  INVX1 U514 ( .A(fft_man_arlen[3]), .Y(n295) );
  INVX1 U515 ( .A(cpu_arlen[3]), .Y(n294) );
  OAI22X1 U516 ( .A(n296), .B(n10), .C(n6), .D(n297), .Y(fft_sub_arlen[2]) );
  INVX1 U517 ( .A(fft_man_arlen[2]), .Y(n297) );
  INVX1 U518 ( .A(cpu_arlen[2]), .Y(n296) );
  OAI22X1 U519 ( .A(n298), .B(n10), .C(n6), .D(n299), .Y(fft_sub_arlen[1]) );
  INVX1 U520 ( .A(fft_man_arlen[1]), .Y(n299) );
  INVX1 U521 ( .A(cpu_arlen[1]), .Y(n298) );
  OAI22X1 U522 ( .A(n300), .B(n10), .C(n6), .D(n301), .Y(fft_sub_arlen[0]) );
  INVX1 U523 ( .A(fft_man_arlen[0]), .Y(n301) );
  INVX1 U524 ( .A(cpu_arlen[0]), .Y(n300) );
  OAI22X1 U525 ( .A(n302), .B(n10), .C(n6), .D(n303), .Y(fft_sub_araddr[9]) );
  INVX1 U526 ( .A(fft_man_araddr[9]), .Y(n303) );
  INVX1 U527 ( .A(cpu_araddr[9]), .Y(n302) );
  OAI22X1 U528 ( .A(n304), .B(n10), .C(n6), .D(n305), .Y(fft_sub_araddr[8]) );
  INVX1 U529 ( .A(fft_man_araddr[8]), .Y(n305) );
  INVX1 U530 ( .A(cpu_araddr[8]), .Y(n304) );
  OAI22X1 U531 ( .A(n306), .B(n10), .C(n6), .D(n307), .Y(fft_sub_araddr[7]) );
  INVX1 U532 ( .A(fft_man_araddr[7]), .Y(n307) );
  INVX1 U533 ( .A(cpu_araddr[7]), .Y(n306) );
  OAI22X1 U534 ( .A(n308), .B(n10), .C(n6), .D(n309), .Y(fft_sub_araddr[6]) );
  INVX1 U535 ( .A(fft_man_araddr[6]), .Y(n309) );
  INVX1 U536 ( .A(cpu_araddr[6]), .Y(n308) );
  OAI22X1 U537 ( .A(n310), .B(n10), .C(n6), .D(n311), .Y(fft_sub_araddr[5]) );
  INVX1 U538 ( .A(fft_man_araddr[5]), .Y(n311) );
  INVX1 U539 ( .A(cpu_araddr[5]), .Y(n310) );
  OAI22X1 U540 ( .A(n312), .B(n10), .C(n6), .D(n313), .Y(fft_sub_araddr[4]) );
  INVX1 U541 ( .A(fft_man_araddr[4]), .Y(n313) );
  INVX1 U542 ( .A(cpu_araddr[4]), .Y(n312) );
  OAI22X1 U543 ( .A(n314), .B(n10), .C(n6), .D(n315), .Y(fft_sub_araddr[3]) );
  INVX1 U544 ( .A(fft_man_araddr[3]), .Y(n315) );
  INVX1 U545 ( .A(cpu_araddr[3]), .Y(n314) );
  OAI22X1 U546 ( .A(n316), .B(n10), .C(n6), .D(n317), .Y(fft_sub_araddr[31])
         );
  INVX1 U547 ( .A(fft_man_araddr[31]), .Y(n317) );
  INVX1 U548 ( .A(cpu_araddr[31]), .Y(n316) );
  OAI22X1 U549 ( .A(n318), .B(n10), .C(n6), .D(n319), .Y(fft_sub_araddr[30])
         );
  INVX1 U550 ( .A(fft_man_araddr[30]), .Y(n319) );
  INVX1 U551 ( .A(cpu_araddr[30]), .Y(n318) );
  OAI22X1 U552 ( .A(n320), .B(n10), .C(n6), .D(n321), .Y(fft_sub_araddr[2]) );
  INVX1 U553 ( .A(fft_man_araddr[2]), .Y(n321) );
  INVX1 U554 ( .A(cpu_araddr[2]), .Y(n320) );
  OAI22X1 U555 ( .A(n322), .B(n10), .C(n6), .D(n323), .Y(fft_sub_araddr[29])
         );
  INVX1 U556 ( .A(fft_man_araddr[29]), .Y(n323) );
  INVX1 U557 ( .A(cpu_araddr[29]), .Y(n322) );
  OAI22X1 U558 ( .A(n324), .B(n10), .C(n6), .D(n325), .Y(fft_sub_araddr[28])
         );
  INVX1 U559 ( .A(fft_man_araddr[28]), .Y(n325) );
  INVX1 U560 ( .A(cpu_araddr[28]), .Y(n324) );
  OAI22X1 U561 ( .A(n326), .B(n10), .C(n6), .D(n327), .Y(fft_sub_araddr[27])
         );
  INVX1 U562 ( .A(fft_man_araddr[27]), .Y(n327) );
  INVX1 U563 ( .A(cpu_araddr[27]), .Y(n326) );
  OAI22X1 U564 ( .A(n328), .B(n10), .C(n6), .D(n329), .Y(fft_sub_araddr[26])
         );
  INVX1 U565 ( .A(fft_man_araddr[26]), .Y(n329) );
  INVX1 U566 ( .A(cpu_araddr[26]), .Y(n328) );
  OAI22X1 U567 ( .A(n330), .B(n10), .C(n6), .D(n331), .Y(fft_sub_araddr[25])
         );
  INVX1 U568 ( .A(fft_man_araddr[25]), .Y(n331) );
  INVX1 U569 ( .A(cpu_araddr[25]), .Y(n330) );
  OAI22X1 U570 ( .A(n332), .B(n10), .C(n6), .D(n333), .Y(fft_sub_araddr[24])
         );
  INVX1 U571 ( .A(fft_man_araddr[24]), .Y(n333) );
  INVX1 U572 ( .A(cpu_araddr[24]), .Y(n332) );
  OAI22X1 U573 ( .A(n334), .B(n10), .C(n6), .D(n335), .Y(fft_sub_araddr[23])
         );
  INVX1 U574 ( .A(fft_man_araddr[23]), .Y(n335) );
  INVX1 U575 ( .A(cpu_araddr[23]), .Y(n334) );
  OAI22X1 U576 ( .A(n336), .B(n10), .C(n6), .D(n337), .Y(fft_sub_araddr[22])
         );
  INVX1 U577 ( .A(fft_man_araddr[22]), .Y(n337) );
  INVX1 U578 ( .A(cpu_araddr[22]), .Y(n336) );
  OAI22X1 U579 ( .A(n338), .B(n10), .C(n6), .D(n339), .Y(fft_sub_araddr[21])
         );
  INVX1 U580 ( .A(fft_man_araddr[21]), .Y(n339) );
  INVX1 U581 ( .A(cpu_araddr[21]), .Y(n338) );
  OAI22X1 U582 ( .A(n340), .B(n10), .C(n6), .D(n341), .Y(fft_sub_araddr[20])
         );
  INVX1 U583 ( .A(fft_man_araddr[20]), .Y(n341) );
  INVX1 U584 ( .A(cpu_araddr[20]), .Y(n340) );
  OAI22X1 U585 ( .A(n342), .B(n10), .C(n6), .D(n343), .Y(fft_sub_araddr[1]) );
  INVX1 U586 ( .A(fft_man_araddr[1]), .Y(n343) );
  INVX1 U587 ( .A(cpu_araddr[1]), .Y(n342) );
  OAI22X1 U588 ( .A(n344), .B(n10), .C(n6), .D(n345), .Y(fft_sub_araddr[19])
         );
  INVX1 U589 ( .A(fft_man_araddr[19]), .Y(n345) );
  INVX1 U590 ( .A(cpu_araddr[19]), .Y(n344) );
  OAI22X1 U591 ( .A(n346), .B(n10), .C(n6), .D(n347), .Y(fft_sub_araddr[18])
         );
  INVX1 U592 ( .A(fft_man_araddr[18]), .Y(n347) );
  INVX1 U593 ( .A(cpu_araddr[18]), .Y(n346) );
  OAI22X1 U594 ( .A(n348), .B(n10), .C(n6), .D(n349), .Y(fft_sub_araddr[17])
         );
  INVX1 U595 ( .A(fft_man_araddr[17]), .Y(n349) );
  INVX1 U596 ( .A(cpu_araddr[17]), .Y(n348) );
  OAI22X1 U597 ( .A(n350), .B(n10), .C(n6), .D(n351), .Y(fft_sub_araddr[16])
         );
  INVX1 U598 ( .A(fft_man_araddr[16]), .Y(n351) );
  INVX1 U599 ( .A(cpu_araddr[16]), .Y(n350) );
  OAI22X1 U600 ( .A(n352), .B(n10), .C(n6), .D(n353), .Y(fft_sub_araddr[15])
         );
  INVX1 U601 ( .A(fft_man_araddr[15]), .Y(n353) );
  INVX1 U602 ( .A(cpu_araddr[15]), .Y(n352) );
  OAI22X1 U603 ( .A(n354), .B(n10), .C(n6), .D(n355), .Y(fft_sub_araddr[14])
         );
  INVX1 U604 ( .A(fft_man_araddr[14]), .Y(n355) );
  INVX1 U605 ( .A(cpu_araddr[14]), .Y(n354) );
  OAI22X1 U606 ( .A(n356), .B(n10), .C(n6), .D(n357), .Y(fft_sub_araddr[13])
         );
  INVX1 U607 ( .A(fft_man_araddr[13]), .Y(n357) );
  INVX1 U608 ( .A(cpu_araddr[13]), .Y(n356) );
  OAI22X1 U609 ( .A(n358), .B(n10), .C(n6), .D(n359), .Y(fft_sub_araddr[12])
         );
  INVX1 U610 ( .A(fft_man_araddr[12]), .Y(n359) );
  INVX1 U611 ( .A(cpu_araddr[12]), .Y(n358) );
  OAI22X1 U612 ( .A(n360), .B(n10), .C(n6), .D(n361), .Y(fft_sub_araddr[11])
         );
  INVX1 U613 ( .A(fft_man_araddr[11]), .Y(n361) );
  INVX1 U614 ( .A(cpu_araddr[11]), .Y(n360) );
  OAI22X1 U615 ( .A(n362), .B(n10), .C(n6), .D(n363), .Y(fft_sub_araddr[10])
         );
  INVX1 U616 ( .A(fft_man_araddr[10]), .Y(n363) );
  INVX1 U617 ( .A(cpu_araddr[10]), .Y(n362) );
  OAI22X1 U618 ( .A(n364), .B(n10), .C(n6), .D(n365), .Y(fft_sub_araddr[0]) );
  INVX1 U619 ( .A(fft_man_araddr[0]), .Y(n365) );
  INVX1 U620 ( .A(cpu_araddr[0]), .Y(n364) );
  OAI21X1 U621 ( .A(n26), .B(n417), .C(n418), .Y(fft_man_wready) );
  AOI21X1 U622 ( .A(sram_wready), .B(n21), .C(n419), .Y(n418) );
  OAI21X1 U623 ( .A(n6), .B(n420), .C(n421), .Y(fft_man_rvalid) );
  AOI21X1 U624 ( .A(sram_rvalid), .B(n1), .C(n422), .Y(n421) );
  OAI21X1 U625 ( .A(n6), .B(n423), .C(n424), .Y(fft_man_rresp) );
  AOI21X1 U626 ( .A(sram_rresp), .B(n1), .C(n422), .Y(n424) );
  OAI21X1 U627 ( .A(n6), .B(n425), .C(n426), .Y(fft_man_rlast) );
  AOI21X1 U628 ( .A(sram_rlast), .B(n1), .C(n422), .Y(n426) );
  OAI21X1 U629 ( .A(n427), .B(n26), .C(n428), .Y(fft_man_bvalid) );
  AOI21X1 U630 ( .A(n21), .B(sram_bvalid), .C(n419), .Y(n428) );
  OAI21X1 U631 ( .A(n26), .B(n429), .C(n430), .Y(fft_man_bresp) );
  AOI21X1 U632 ( .A(sram_bresp), .B(n21), .C(n419), .Y(n430) );
  OAI21X1 U633 ( .A(n26), .B(n431), .C(n432), .Y(fft_man_awready) );
  AOI21X1 U634 ( .A(sram_awready), .B(n21), .C(n419), .Y(n432) );
  INVX1 U635 ( .A(n433), .Y(n419) );
  NAND3X1 U636 ( .A(n434), .B(n400), .C(w_perms[1]), .Y(n433) );
  NAND3X1 U637 ( .A(n435), .B(n400), .C(w_perms[1]), .Y(n126) );
  NAND3X1 U638 ( .A(n436), .B(n400), .C(w_perms[1]), .Y(n409) );
  INVX1 U639 ( .A(w_perms[0]), .Y(n400) );
  OAI21X1 U640 ( .A(n6), .B(n437), .C(n438), .Y(fft_man_arready) );
  AOI21X1 U641 ( .A(sram_arready), .B(n1), .C(n422), .Y(n438) );
  INVX1 U642 ( .A(n439), .Y(n422) );
  NAND3X1 U643 ( .A(r_perms[1]), .B(n389), .C(n440), .Y(n439) );
  NAND3X1 U644 ( .A(n441), .B(n389), .C(r_perms[1]), .Y(n29) );
  NAND3X1 U645 ( .A(r_perms[1]), .B(n389), .C(n442), .Y(n27) );
  INVX1 U646 ( .A(r_perms[0]), .Y(n389) );
  OAI21X1 U647 ( .A(n24), .B(n417), .C(n443), .Y(cpu_wready) );
  AOI21X1 U648 ( .A(sram_wready), .B(n7), .C(n444), .Y(n443) );
  INVX1 U649 ( .A(fft_sub_wready), .Y(n417) );
  OAI21X1 U650 ( .A(n10), .B(n420), .C(n445), .Y(cpu_rvalid) );
  AOI21X1 U651 ( .A(sram_rvalid), .B(n3), .C(n446), .Y(n445) );
  INVX1 U652 ( .A(fft_sub_rvalid), .Y(n420) );
  OAI21X1 U653 ( .A(n10), .B(n423), .C(n447), .Y(cpu_rresp) );
  AOI21X1 U654 ( .A(sram_rresp), .B(n3), .C(n446), .Y(n447) );
  INVX1 U655 ( .A(fft_sub_rresp), .Y(n423) );
  OAI21X1 U656 ( .A(n10), .B(n425), .C(n448), .Y(cpu_rlast) );
  AOI21X1 U657 ( .A(sram_rlast), .B(n3), .C(n446), .Y(n448) );
  INVX1 U658 ( .A(fft_sub_rlast), .Y(n425) );
  OAI22X1 U659 ( .A(n28), .B(n10), .C(n30), .D(n4), .Y(cpu_rdata[9]) );
  INVX1 U660 ( .A(sram_rdata[9]), .Y(n30) );
  INVX1 U661 ( .A(fft_sub_rdata[9]), .Y(n28) );
  OAI22X1 U662 ( .A(n31), .B(n10), .C(n32), .D(n4), .Y(cpu_rdata[8]) );
  INVX1 U663 ( .A(sram_rdata[8]), .Y(n32) );
  INVX1 U664 ( .A(fft_sub_rdata[8]), .Y(n31) );
  OAI22X1 U665 ( .A(n33), .B(n10), .C(n34), .D(n4), .Y(cpu_rdata[7]) );
  INVX1 U666 ( .A(sram_rdata[7]), .Y(n34) );
  INVX1 U667 ( .A(fft_sub_rdata[7]), .Y(n33) );
  OAI22X1 U668 ( .A(n35), .B(n10), .C(n36), .D(n4), .Y(cpu_rdata[6]) );
  INVX1 U669 ( .A(sram_rdata[6]), .Y(n36) );
  INVX1 U670 ( .A(fft_sub_rdata[6]), .Y(n35) );
  OAI22X1 U671 ( .A(n37), .B(n10), .C(n38), .D(n4), .Y(cpu_rdata[5]) );
  INVX1 U672 ( .A(sram_rdata[5]), .Y(n38) );
  INVX1 U673 ( .A(fft_sub_rdata[5]), .Y(n37) );
  OAI22X1 U674 ( .A(n39), .B(n10), .C(n40), .D(n4), .Y(cpu_rdata[4]) );
  INVX1 U675 ( .A(sram_rdata[4]), .Y(n40) );
  INVX1 U676 ( .A(fft_sub_rdata[4]), .Y(n39) );
  OAI22X1 U677 ( .A(n41), .B(n10), .C(n42), .D(n4), .Y(cpu_rdata[3]) );
  INVX1 U678 ( .A(sram_rdata[3]), .Y(n42) );
  INVX1 U679 ( .A(fft_sub_rdata[3]), .Y(n41) );
  OAI22X1 U680 ( .A(n43), .B(n10), .C(n44), .D(n4), .Y(cpu_rdata[31]) );
  INVX1 U681 ( .A(sram_rdata[31]), .Y(n44) );
  INVX1 U682 ( .A(fft_sub_rdata[31]), .Y(n43) );
  OAI22X1 U683 ( .A(n45), .B(n10), .C(n46), .D(n4), .Y(cpu_rdata[30]) );
  INVX1 U684 ( .A(sram_rdata[30]), .Y(n46) );
  INVX1 U685 ( .A(fft_sub_rdata[30]), .Y(n45) );
  OAI22X1 U686 ( .A(n47), .B(n10), .C(n48), .D(n4), .Y(cpu_rdata[2]) );
  INVX1 U687 ( .A(sram_rdata[2]), .Y(n48) );
  INVX1 U688 ( .A(fft_sub_rdata[2]), .Y(n47) );
  OAI22X1 U689 ( .A(n49), .B(n10), .C(n50), .D(n4), .Y(cpu_rdata[29]) );
  INVX1 U690 ( .A(sram_rdata[29]), .Y(n50) );
  INVX1 U691 ( .A(fft_sub_rdata[29]), .Y(n49) );
  OAI22X1 U692 ( .A(n51), .B(n10), .C(n52), .D(n4), .Y(cpu_rdata[28]) );
  INVX1 U693 ( .A(sram_rdata[28]), .Y(n52) );
  INVX1 U694 ( .A(fft_sub_rdata[28]), .Y(n51) );
  OAI22X1 U695 ( .A(n53), .B(n10), .C(n54), .D(n4), .Y(cpu_rdata[27]) );
  INVX1 U696 ( .A(sram_rdata[27]), .Y(n54) );
  INVX1 U697 ( .A(fft_sub_rdata[27]), .Y(n53) );
  OAI22X1 U698 ( .A(n55), .B(n10), .C(n56), .D(n4), .Y(cpu_rdata[26]) );
  INVX1 U699 ( .A(sram_rdata[26]), .Y(n56) );
  INVX1 U700 ( .A(fft_sub_rdata[26]), .Y(n55) );
  OAI22X1 U701 ( .A(n57), .B(n10), .C(n58), .D(n4), .Y(cpu_rdata[25]) );
  INVX1 U702 ( .A(sram_rdata[25]), .Y(n58) );
  INVX1 U703 ( .A(fft_sub_rdata[25]), .Y(n57) );
  OAI22X1 U704 ( .A(n59), .B(n10), .C(n60), .D(n4), .Y(cpu_rdata[24]) );
  INVX1 U705 ( .A(sram_rdata[24]), .Y(n60) );
  INVX1 U706 ( .A(fft_sub_rdata[24]), .Y(n59) );
  OAI22X1 U707 ( .A(n61), .B(n10), .C(n62), .D(n4), .Y(cpu_rdata[23]) );
  INVX1 U708 ( .A(sram_rdata[23]), .Y(n62) );
  INVX1 U709 ( .A(fft_sub_rdata[23]), .Y(n61) );
  OAI22X1 U710 ( .A(n63), .B(n10), .C(n64), .D(n4), .Y(cpu_rdata[22]) );
  INVX1 U711 ( .A(sram_rdata[22]), .Y(n64) );
  INVX1 U712 ( .A(fft_sub_rdata[22]), .Y(n63) );
  OAI22X1 U713 ( .A(n65), .B(n10), .C(n66), .D(n4), .Y(cpu_rdata[21]) );
  INVX1 U714 ( .A(sram_rdata[21]), .Y(n66) );
  INVX1 U715 ( .A(fft_sub_rdata[21]), .Y(n65) );
  OAI22X1 U716 ( .A(n67), .B(n10), .C(n68), .D(n4), .Y(cpu_rdata[20]) );
  INVX1 U717 ( .A(sram_rdata[20]), .Y(n68) );
  INVX1 U718 ( .A(fft_sub_rdata[20]), .Y(n67) );
  OAI22X1 U719 ( .A(n69), .B(n10), .C(n70), .D(n4), .Y(cpu_rdata[1]) );
  INVX1 U720 ( .A(sram_rdata[1]), .Y(n70) );
  INVX1 U721 ( .A(fft_sub_rdata[1]), .Y(n69) );
  OAI22X1 U722 ( .A(n71), .B(n10), .C(n72), .D(n4), .Y(cpu_rdata[19]) );
  INVX1 U723 ( .A(sram_rdata[19]), .Y(n72) );
  INVX1 U724 ( .A(fft_sub_rdata[19]), .Y(n71) );
  OAI22X1 U725 ( .A(n73), .B(n10), .C(n74), .D(n4), .Y(cpu_rdata[18]) );
  INVX1 U726 ( .A(sram_rdata[18]), .Y(n74) );
  INVX1 U727 ( .A(fft_sub_rdata[18]), .Y(n73) );
  OAI22X1 U728 ( .A(n75), .B(n10), .C(n76), .D(n4), .Y(cpu_rdata[17]) );
  INVX1 U729 ( .A(sram_rdata[17]), .Y(n76) );
  INVX1 U730 ( .A(fft_sub_rdata[17]), .Y(n75) );
  OAI22X1 U731 ( .A(n77), .B(n10), .C(n78), .D(n4), .Y(cpu_rdata[16]) );
  INVX1 U732 ( .A(sram_rdata[16]), .Y(n78) );
  INVX1 U733 ( .A(fft_sub_rdata[16]), .Y(n77) );
  OAI22X1 U734 ( .A(n79), .B(n10), .C(n80), .D(n4), .Y(cpu_rdata[15]) );
  INVX1 U735 ( .A(sram_rdata[15]), .Y(n80) );
  INVX1 U736 ( .A(fft_sub_rdata[15]), .Y(n79) );
  OAI22X1 U737 ( .A(n81), .B(n10), .C(n82), .D(n4), .Y(cpu_rdata[14]) );
  INVX1 U738 ( .A(sram_rdata[14]), .Y(n82) );
  INVX1 U739 ( .A(fft_sub_rdata[14]), .Y(n81) );
  OAI22X1 U740 ( .A(n83), .B(n10), .C(n84), .D(n4), .Y(cpu_rdata[13]) );
  INVX1 U741 ( .A(sram_rdata[13]), .Y(n84) );
  INVX1 U742 ( .A(fft_sub_rdata[13]), .Y(n83) );
  OAI22X1 U743 ( .A(n85), .B(n10), .C(n86), .D(n4), .Y(cpu_rdata[12]) );
  INVX1 U744 ( .A(sram_rdata[12]), .Y(n86) );
  INVX1 U745 ( .A(fft_sub_rdata[12]), .Y(n85) );
  OAI22X1 U746 ( .A(n87), .B(n10), .C(n88), .D(n4), .Y(cpu_rdata[11]) );
  INVX1 U747 ( .A(sram_rdata[11]), .Y(n88) );
  INVX1 U748 ( .A(fft_sub_rdata[11]), .Y(n87) );
  OAI22X1 U749 ( .A(n89), .B(n10), .C(n90), .D(n4), .Y(cpu_rdata[10]) );
  INVX1 U750 ( .A(sram_rdata[10]), .Y(n90) );
  INVX1 U751 ( .A(fft_sub_rdata[10]), .Y(n89) );
  OAI22X1 U752 ( .A(n91), .B(n10), .C(n92), .D(n4), .Y(cpu_rdata[0]) );
  INVX1 U753 ( .A(sram_rdata[0]), .Y(n92) );
  INVX1 U754 ( .A(fft_sub_rdata[0]), .Y(n91) );
  OAI21X1 U755 ( .A(n24), .B(n427), .C(n449), .Y(cpu_bvalid) );
  AOI21X1 U756 ( .A(sram_bvalid), .B(n7), .C(n444), .Y(n449) );
  INVX1 U757 ( .A(fft_sub_bvalid), .Y(n427) );
  OAI21X1 U758 ( .A(n24), .B(n429), .C(n450), .Y(cpu_bresp) );
  AOI21X1 U759 ( .A(sram_bresp), .B(n7), .C(n444), .Y(n450) );
  INVX1 U760 ( .A(fft_sub_bresp), .Y(n429) );
  OAI21X1 U761 ( .A(n24), .B(n431), .C(n451), .Y(cpu_awready) );
  AOI21X1 U762 ( .A(sram_awready), .B(n7), .C(n444), .Y(n451) );
  INVX1 U763 ( .A(n452), .Y(n444) );
  NAND3X1 U764 ( .A(n434), .B(n404), .C(w_perms[0]), .Y(n452) );
  NOR3X1 U765 ( .A(n436), .B(n435), .C(n403), .Y(n434) );
  INVX1 U766 ( .A(w_state), .Y(n403) );
  NAND3X1 U767 ( .A(w_perms[0]), .B(n404), .C(n435), .Y(n124) );
  NOR2X1 U768 ( .A(n93), .B(w_dest[0]), .Y(n435) );
  INVX1 U769 ( .A(w_dest[1]), .Y(n93) );
  INVX1 U770 ( .A(fft_sub_awready), .Y(n431) );
  NAND3X1 U771 ( .A(w_perms[0]), .B(n404), .C(n436), .Y(n408) );
  NOR2X1 U772 ( .A(n96), .B(w_dest[1]), .Y(n436) );
  INVX1 U773 ( .A(w_dest[0]), .Y(n96) );
  INVX1 U774 ( .A(w_perms[1]), .Y(n404) );
  OAI21X1 U775 ( .A(n10), .B(n437), .C(n453), .Y(cpu_arready) );
  AOI21X1 U776 ( .A(sram_arready), .B(n3), .C(n446), .Y(n453) );
  INVX1 U777 ( .A(n454), .Y(n446) );
  NAND3X1 U778 ( .A(r_perms[0]), .B(n394), .C(n440), .Y(n454) );
  NOR3X1 U779 ( .A(n442), .B(n441), .C(n392), .Y(n440) );
  INVX1 U780 ( .A(r_state), .Y(n392) );
  NAND3X1 U781 ( .A(n441), .B(n394), .C(r_perms[0]), .Y(n198) );
  NOR2X1 U782 ( .A(n366), .B(r_dest[0]), .Y(n441) );
  INVX1 U783 ( .A(r_dest[1]), .Y(n366) );
  INVX1 U784 ( .A(fft_sub_arready), .Y(n437) );
  NAND3X1 U785 ( .A(n442), .B(n394), .C(r_perms[0]), .Y(n416) );
  INVX1 U786 ( .A(r_perms[1]), .Y(n394) );
  NOR2X1 U787 ( .A(n369), .B(r_dest[1]), .Y(n442) );
  INVX1 U788 ( .A(r_dest[0]), .Y(n369) );
endmodule


module axi_top ( clk, n_rst, cpu_awaddr, cpu_araddr, cpu_awvalid, cpu_arvalid, 
        cpu_awready, cpu_arready, cpu_wdata, cpu_wvalid, cpu_wlast, cpu_wready, 
        cpu_rdata, cpu_rvalid, cpu_rlast, cpu_rready, cpu_bvalid, cpu_bready, 
        cpu_rresp, cpu_bresp, cpu_arlen, cpu_awlen, cpu_wstrb, wen, write_addr, 
        write_data, write_valid, ren, read_addr, read_data, read_valid );
  input [31:0] cpu_awaddr;
  input [31:0] cpu_araddr;
  input [31:0] cpu_wdata;
  output [31:0] cpu_rdata;
  input [9:0] cpu_arlen;
  input [9:0] cpu_awlen;
  input [1:0] cpu_wstrb;
  output [3:0] wen;
  output [31:0] write_addr;
  output [31:0] write_data;
  output [31:0] read_addr;
  input [31:0] read_data;
  input clk, n_rst, cpu_awvalid, cpu_arvalid, cpu_wvalid, cpu_wlast,
         cpu_rready, cpu_bready, write_valid, read_valid;
  output cpu_awready, cpu_arready, cpu_wready, cpu_rvalid, cpu_rlast,
         cpu_bvalid, cpu_rresp, cpu_bresp, ren;
  wire   \config_reg[7][31] , \config_reg[7][30] , \config_reg[7][29] ,
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
         \config_reg[0][0] , fft_man_rresp, fft_man_rready, fft_man_rvalid,
         fft_man_rlast, fft_man_arvalid, fft_man_arready, fft_man_bready,
         fft_man_bvalid, fft_man_bresp, fft_man_wvalid, fft_man_wlast,
         fft_man_wready, fft_man_awvalid, fft_man_awready, fft_sub_rresp,
         fft_sub_rready, fft_sub_rvalid, fft_sub_rlast, fft_sub_arvalid,
         fft_sub_arready, fft_sub_bready, fft_sub_bvalid, fft_sub_bresp,
         fft_sub_wvalid, fft_sub_wlast, fft_sub_wready, fft_sub_awvalid,
         fft_sub_awready, sram_rready, sram_rvalid, sram_rlast, sram_arready,
         sram_arvalid, sram_bvalid, sram_bready, sram_wready, sram_wvalid,
         sram_wlast, sram_awready, sram_awvalid;
  wire   [9:0] fft_man_arlen;
  wire   [31:0] fft_man_araddr;
  wire   [1:0] fft_man_wstrb;
  wire   [9:0] fft_man_awlen;
  wire   [31:0] fft_man_awaddr;
  wire   [31:0] fft_sub_rdata;
  wire   [9:0] fft_sub_arlen;
  wire   [31:0] fft_sub_araddr;
  wire   [1:0] fft_sub_wstrb;
  wire   [31:0] fft_sub_wdata;
  wire   [9:0] fft_sub_awlen;
  wire   [31:0] fft_sub_awaddr;
  wire   [31:0] sram_rdata;
  wire   [9:0] sram_arlen;
  wire   [31:0] sram_araddr;
  wire   [1:0] sram_wstrb;
  wire   [31:0] sram_wdata;
  wire   [9:0] sram_awlen;
  wire   [31:0] sram_awaddr;
  tri   clk;
  tri   n_rst;
  tri   [31:0] sample;
  tri   valid;
  tri   [31:0] data_out;
  tri   [9:0] frame_size;
  tri   load_size;
  tri   out_valid;
  tri   [31:0] fft_man_rdata;
  tri   [31:0] fft_man_wdata;

  fft_axi_manager fft_man ( .clk(clk), .n_rst(n_rst), .fft_man_awready(
        fft_man_awready), .fft_man_awaddr(fft_man_awaddr), .fft_man_awlen(
        fft_man_awlen), .fft_man_awvalid(fft_man_awvalid), .fft_man_wready(
        fft_man_wready), .fft_man_wdata(fft_man_wdata), .fft_man_wstrb(
        fft_man_wstrb), .fft_man_wlast(fft_man_wlast), .fft_man_wvalid(
        fft_man_wvalid), .fft_man_bresp(fft_man_bresp), .fft_man_bvalid(
        fft_man_bvalid), .fft_man_bready(fft_man_bready), .fft_man_arready(
        fft_man_arready), .fft_man_araddr(fft_man_araddr), .fft_man_arlen(
        fft_man_arlen), .fft_man_arvalid(fft_man_arvalid), .fft_man_rlast(
        fft_man_rlast), .fft_man_rvalid(fft_man_rvalid), .fft_man_rdata(
        fft_man_rdata), .fft_man_rready(fft_man_rready), .fft_man_rresp(
        fft_man_rresp), .config_reg({\config_reg[7][31] , \config_reg[7][30] , 
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
        \config_reg[0][1] , \config_reg[0][0] }), .data_out(data_out), 
        .out_valid(out_valid), .data_in(sample), .in_valid(valid), .load_size(
        load_size), .frame_size(frame_size) );
  fft_axi_subordinate fft_sub ( .clk(clk), .n_rst(n_rst), .fft_sub_awready(
        fft_sub_awready), .fft_sub_awaddr(fft_sub_awaddr), .fft_sub_awlen(
        fft_sub_awlen), .fft_sub_awvalid(fft_sub_awvalid), .fft_sub_wready(
        fft_sub_wready), .fft_sub_wdata(fft_sub_wdata), .fft_sub_wstrb(
        fft_sub_wstrb), .fft_sub_wlast(fft_sub_wlast), .fft_sub_wvalid(
        fft_sub_wvalid), .fft_sub_bresp(fft_sub_bresp), .fft_sub_bvalid(
        fft_sub_bvalid), .fft_sub_bready(fft_sub_bready), .fft_sub_arready(
        fft_sub_arready), .fft_sub_araddr(fft_sub_araddr), .fft_sub_arlen(
        fft_sub_arlen), .fft_sub_arvalid(fft_sub_arvalid), .fft_sub_rlast(
        fft_sub_rlast), .fft_sub_rvalid(fft_sub_rvalid), .fft_sub_rdata(
        fft_sub_rdata), .fft_sub_rready(fft_sub_rready), .fft_sub_rresp(
        fft_sub_rresp), .config_reg({\config_reg[7][31] , \config_reg[7][30] , 
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
        \config_reg[0][1] , \config_reg[0][0] }) );
  sram_axi sram ( .clk(clk), .n_rst(n_rst), .sram_awaddr(sram_awaddr), 
        .sram_awvalid(sram_awvalid), .sram_awlen(sram_awlen), .sram_awready(
        sram_awready), .sram_wdata(sram_wdata), .sram_wstrb(sram_wstrb), 
        .sram_wlast(sram_wlast), .sram_wvalid(sram_wvalid), .sram_wready(
        sram_wready), .sram_bready(sram_bready), .sram_bvalid(sram_bvalid), 
        .sram_araddr(sram_araddr), .sram_arvalid(sram_arvalid), .sram_arlen(
        sram_arlen), .sram_arready(sram_arready), .sram_rdata(sram_rdata), 
        .sram_rlast(sram_rlast), .sram_rvalid(sram_rvalid), .sram_rready(
        sram_rready), .wen(wen), .ren(ren), .read_data(read_data), 
        .write_data(write_data), .read_addr(read_addr), .write_addr(write_addr), .read_valid(read_valid), .write_valid(write_valid) );
  arbiter arbit ( .clk(clk), .n_rst(n_rst), .cpu_awaddr(cpu_awaddr), 
        .cpu_araddr(cpu_araddr), .cpu_awvalid(cpu_awvalid), .cpu_arvalid(
        cpu_arvalid), .cpu_awready(cpu_awready), .cpu_arready(cpu_arready), 
        .cpu_wdata(cpu_wdata), .cpu_wvalid(cpu_wvalid), .cpu_wlast(cpu_wlast), 
        .cpu_wready(cpu_wready), .cpu_rdata(cpu_rdata), .cpu_rvalid(cpu_rvalid), .cpu_rlast(cpu_rlast), .cpu_rready(cpu_rready), .cpu_bvalid(cpu_bvalid), 
        .cpu_bready(cpu_bready), .cpu_rresp(cpu_rresp), .cpu_bresp(cpu_bresp), 
        .cpu_awlen(cpu_awlen), .cpu_arlen(cpu_arlen), .cpu_wstrb(cpu_wstrb), 
        .fft_man_awaddr(fft_man_awaddr), .fft_man_araddr(fft_man_araddr), 
        .fft_man_awvalid(fft_man_awvalid), .fft_man_arvalid(fft_man_arvalid), 
        .fft_man_awready(fft_man_awready), .fft_man_arready(fft_man_arready), 
        .fft_man_wdata(fft_man_wdata), .fft_man_wvalid(fft_man_wvalid), 
        .fft_man_wlast(fft_man_wlast), .fft_man_wready(fft_man_wready), 
        .fft_man_rdata(fft_man_rdata), .fft_man_rvalid(fft_man_rvalid), 
        .fft_man_rlast(fft_man_rlast), .fft_man_rready(fft_man_rready), 
        .fft_man_bvalid(fft_man_bvalid), .fft_man_bready(fft_man_bready), 
        .fft_man_rresp(fft_man_rresp), .fft_man_bresp(fft_man_bresp), 
        .fft_man_awlen(fft_man_awlen), .fft_man_wstrb(fft_man_wstrb), 
        .fft_man_arlen(fft_man_arlen), .sram_awaddr(sram_awaddr), 
        .sram_araddr(sram_araddr), .sram_awvalid(sram_awvalid), .sram_arvalid(
        sram_arvalid), .sram_awready(sram_awready), .sram_arready(sram_arready), .sram_wdata(sram_wdata), .sram_wvalid(sram_wvalid), .sram_wlast(sram_wlast), 
        .sram_wready(sram_wready), .sram_rdata(sram_rdata), .sram_rvalid(
        sram_rvalid), .sram_rlast(sram_rlast), .sram_rready(sram_rready), 
        .sram_bvalid(sram_bvalid), .sram_bready(sram_bready), .sram_rresp(1'b0), .sram_bresp(1'b0), .sram_awlen(sram_awlen), .sram_wstrb(sram_wstrb), 
        .sram_arlen(sram_arlen), .fft_sub_awaddr(fft_sub_awaddr), 
        .fft_sub_araddr(fft_sub_araddr), .fft_sub_awvalid(fft_sub_awvalid), 
        .fft_sub_arvalid(fft_sub_arvalid), .fft_sub_awready(fft_sub_awready), 
        .fft_sub_arready(fft_sub_arready), .fft_sub_wdata(fft_sub_wdata), 
        .fft_sub_wvalid(fft_sub_wvalid), .fft_sub_wlast(fft_sub_wlast), 
        .fft_sub_wready(fft_sub_wready), .fft_sub_rdata(fft_sub_rdata), 
        .fft_sub_rvalid(fft_sub_rvalid), .fft_sub_rlast(fft_sub_rlast), 
        .fft_sub_rready(fft_sub_rready), .fft_sub_bvalid(fft_sub_bvalid), 
        .fft_sub_bready(fft_sub_bready), .fft_sub_rresp(fft_sub_rresp), 
        .fft_sub_bresp(fft_sub_bresp), .fft_sub_arlen(fft_sub_arlen), 
        .fft_sub_awlen(fft_sub_awlen), .fft_sub_wstrb(fft_sub_wstrb) );
  fft_core fft ( .frame_size(frame_size), .load_size(load_size), .out_valid(
        out_valid), .out(data_out), .valid(valid), .sample(sample), .n_rst(
        n_rst), .clk(clk) );
endmodule

