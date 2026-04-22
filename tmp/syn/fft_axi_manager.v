/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4
// Date      : Tue Apr 21 17:30:49 2026
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
         n968, n969, n970, n971, n972, n973, n976, n977, n978, n979, n980,
         n981, n982, n983, n984, n985, n986, n987, n988, n989, n990, n991,
         n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001, n1002,
         n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012,
         n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022,
         n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032,
         n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042,
         n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052,
         n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062,
         n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072,
         n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082,
         n1083, n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092,
         n1093, n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102,
         n1103, n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112,
         n1113, n1114, n1115, n1116, n1117, n1118, n1119, n1120, n1121, n1122,
         n1123, n1124, n1125, n1126, n1127, n1128, n1129, n1130, n1131, n1132,
         n1133, n1134, n1135, n1136, n1137, n1138, n1139, n1140, n1141, n1142,
         n1143, n1144, n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152,
         n1153, n1154, n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162,
         n1163, n1164, n1165, n1166, n1167, n1168, n1169, n1170, n1171, n1172,
         n1173, n1174, n1175, n1176, n1177, n1178, n1179, n1180, n1181, n1182,
         n1183, n1184, n1185, n1186, n1187, n1188, n1189, n1190, n1191, n1192,
         n1193, n1194, n1195, n1196, n1197, n1198, n1199, n1200, n1201, n1202,
         n1203, n1204, n1205, n1206, n1207, n1208, n1209, n1210, n1211, n1212,
         n1213, n1214, n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222,
         n1223, n1224, n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232,
         n1233, n1234, n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242,
         n1243, n1244, n1245, n1246, n1247, n1248, n1249, n1250, n1251, n1252,
         n1253, n1254, n1255, n1256, n1257, n1258, n1259, n1260, n1261, n1262,
         n1263, n1264, n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272,
         n1273, n1274, n1275, n1276, n1277, n1278, n1279, n1280, n1281, n1282,
         n1283, n1284, n1285, n1286, n1287, n1288, n1289, n1290, n1291, n1292,
         n1293, n1294, n1295, n1296, n1297, n1298, n1299, n1300, n1301, n1302,
         n1303, n1304, n1305, n1306, n1307, n1308, n1309, n1310, n1311, n1312,
         n1313, n1314, n1315, n1316, n1317, n1318, n1319, n1320, n1321, n1322,
         n1323, n1324, n1325, n1326, n1327, n1328, n1329, n1330, n1331, n1332,
         n1333, n1334, n1335, n1336, n1337, n1338, n1339, n1340, n1341, n1342,
         n1343, n1344, n1345, n1346, n1347, n1348, n1349, n1350, n1351, n1352,
         n1353, n1354, n1355, n1356, n1357, n1358, n1359, n1360, n1361, n1362,
         n1363, n1364, n1365, n1366, n1367, n1368, n1369, n1370, n1371, n1372,
         n1373, n1374, n1375, n1376, n1377, n1378, n1379, n1380, n1381, n1382,
         n1383, n1384, n1385, n1386, n1387, n1388, n1389, n1390, n1391, n1392,
         n1393, n1394, n1395, n1396, n1397, n1398, n1399, n1400, n1401, n1402,
         n1403, n1404, n1405, n1406, n1407, n1408, n1409, n1410, n1411, n1412,
         n1413, n1414, n1415, n1416, n1417, n1418, n1419, n1420, n1421, n1422,
         n1423, n1424, n1425, n1426, n1427, n1428, n1429, n1430, n1431, n1432,
         n1433, n1434, n1435, n1436, n1437, n1438, n1439, n1440, n1441, n1442,
         n1443, n1444, n1445, n1446, n1447, n1448, n1449, n1450, n1451, n1452,
         n1453, n1454, n1455, n1456, n1457, n1458, n1459, n1460, n1461, n1462,
         n1463, n1464, n1465, n1466, n1467, n1468, n1469, n1470, n1471, n1472,
         n1473, n1474, n1475, n1476, n1477, n1478, n1479, n1480, n1481, n1482,
         n1483, n1484, n1485, n1486, n1487, n1488, n1489, n1490, n1491, n1492,
         n1493, n1494, n1495, n1496, n1497, n1498, n1499, n1500, n1501, n1502,
         n1503, n1504, n1505, n1506, n1507, n1508, n1509, n1510, n1511, n1512,
         n1513, n1514, n1515, n1516, n1517, n1518, n1519, n1520, n1521, n1522,
         n1523, n1524, n1525, n1526, n1527, n1528, n1529, n1530, n1531, n1532,
         n1533, n1534, n1535, n1536, n1537, n1538, n1539, n1540, n1541, n1542,
         n1543, n1544, n1545, n1546, n1547, n1548, n1549, n1550, n1551, n1552,
         n1553, n1554, n1555, n1556, n1557, n1558, n1559, n1560, n1561, n1562,
         n1563, n1564, n1565, n1566, n1567, n1568, n1569, n1570, n1571, n1572,
         n1573, n1574, n1575, n1576, n1577, n1578, n1579, n1580, n1581, n1582,
         n1583, n1584, n1585, n1586, n1587, n1588, n1589, n1590, n1591, n1592,
         n1593, n1594, n1595, n1596, n1597, n1598, n1599, n1600, n1601, n1602,
         n1603, n1604, n1605, n1606, n1607, n1608, n1609, n1610, n1611, n1612,
         n1613, n1614, n1615, n1616, n1617, n1618, n1619, n1620, n1621, n1622,
         n1623, n1624, n1625, n1626, n1627, n1628, n1629, n1630, n1631, n1632,
         n1633, n1634, n1635, n1636, n1637, n1638, n1639, n1640, n1641, n1642,
         n1643, n1644, n1645, n1646, n1647, n1648, n1649, n1650, n1651, n1652,
         n1653, n1654, n1655, n1656, n1657, n1658, n1659, n1660, n1661, n1662,
         n1663, n1664, n1665, n1666, n1667, n1668, n1669, n1670, n1671, n1672,
         n1673, n1674, n1675, n1676, n1677, n1678, n1679, n1680, n1681, n1682,
         n1683, n1684, n1685, n1686, n1687, n1688, n1689, n1690, n1691, n1692,
         n1693, n1694, n1695, n1696, n1697, n1698, n1699, n1700, n1701, n1702,
         n1703, n1704, n1705, n1706, n1707, n1708, n1709, n1710, n1711, n1712;
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
  assign fft_man_bready = N295;

  DFFSR \wstate_reg[0]  ( .D(next_wstate[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(wstate[0]) );
  DFFSR \wstate_reg[1]  ( .D(next_wstate[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(wstate[1]) );
  DFFSR \k_reg[10]  ( .D(n973), .CLK(clk), .R(n_rst), .S(1'b1), .Q(k[10]) );
  DFFSR processing_reg ( .D(n951), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        processing) );
  DFFSR \r_frame_size_reg[1]  ( .D(n1681), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[1]) );
  DFFSR \r_frame_size_reg[2]  ( .D(n1682), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[2]) );
  DFFSR \r_frame_size_reg[3]  ( .D(n1683), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[3]) );
  DFFSR \r_frame_size_reg[4]  ( .D(n1684), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[4]) );
  DFFSR \r_frame_size_reg[5]  ( .D(n1685), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[5]) );
  DFFSR \r_frame_size_reg[6]  ( .D(n1686), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[6]) );
  DFFSR \r_frame_size_reg[7]  ( .D(n1687), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[7]) );
  DFFSR \r_frame_size_reg[8]  ( .D(n1688), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[8]) );
  DFFSR \r_frame_size_reg[9]  ( .D(n1689), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[9]) );
  DFFSR \r_frame_size_reg[10]  ( .D(n1690), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(r_frame_size[10]) );
  DFFSR \w_frame_size_reg[0]  ( .D(n1691), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[0]) );
  DFFSR \w_frame_size_reg[1]  ( .D(n1692), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[1]) );
  DFFSR \w_frame_size_reg[2]  ( .D(n1693), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[2]) );
  DFFSR \w_frame_size_reg[3]  ( .D(n1694), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[3]) );
  DFFSR \w_frame_size_reg[4]  ( .D(n1695), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[4]) );
  DFFSR \w_frame_size_reg[5]  ( .D(n1696), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[5]) );
  DFFSR \w_frame_size_reg[6]  ( .D(n1697), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[6]) );
  DFFSR \w_frame_size_reg[7]  ( .D(n1698), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[7]) );
  DFFSR \w_frame_size_reg[8]  ( .D(n1699), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[8]) );
  DFFSR \w_frame_size_reg[9]  ( .D(n1700), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_frame_size[9]) );
  DFFSR \w_frame_size_reg[10]  ( .D(n1701), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(w_frame_size[10]) );
  DFFSR \r_frame_size_reg[0]  ( .D(n1702), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_frame_size[0]) );
  DFFSR \configs_reg[5][1]  ( .D(n1595), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_wstrb[1]) );
  DFFSR \configs_reg[5][0]  ( .D(n1596), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_wstrb[0]) );
  DFFSR \configs_reg[4][9]  ( .D(n1597), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[9]) );
  DFFSR \configs_reg[4][8]  ( .D(n1598), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[8]) );
  DFFSR \configs_reg[4][7]  ( .D(n1599), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[7]) );
  DFFSR \configs_reg[4][6]  ( .D(n1600), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[6]) );
  DFFSR \configs_reg[4][5]  ( .D(n1601), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[5]) );
  DFFSR \configs_reg[4][4]  ( .D(n1602), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[4]) );
  DFFSR \configs_reg[4][3]  ( .D(n1603), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[3]) );
  DFFSR \configs_reg[4][2]  ( .D(n1604), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[2]) );
  DFFSR \configs_reg[4][1]  ( .D(n1605), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[1]) );
  DFFSR \configs_reg[4][0]  ( .D(n1606), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_awlen[0]) );
  DFFSR \configs_reg[3][31]  ( .D(n1607), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][31] ) );
  DFFSR \configs_reg[3][30]  ( .D(n1608), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][30] ) );
  DFFSR \configs_reg[3][29]  ( .D(n1609), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][29] ) );
  DFFSR \configs_reg[3][28]  ( .D(n1610), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][28] ) );
  DFFSR \configs_reg[3][27]  ( .D(n1611), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][27] ) );
  DFFSR \configs_reg[3][26]  ( .D(n1612), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][26] ) );
  DFFSR \configs_reg[3][25]  ( .D(n1613), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][25] ) );
  DFFSR \configs_reg[3][24]  ( .D(n1614), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][24] ) );
  DFFSR \configs_reg[3][23]  ( .D(n1615), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][23] ) );
  DFFSR \configs_reg[3][22]  ( .D(n1616), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][22] ) );
  DFFSR \configs_reg[3][21]  ( .D(n1617), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][21] ) );
  DFFSR \configs_reg[3][20]  ( .D(n1618), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][20] ) );
  DFFSR \configs_reg[3][19]  ( .D(n1619), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][19] ) );
  DFFSR \configs_reg[3][18]  ( .D(n1620), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][18] ) );
  DFFSR \configs_reg[3][17]  ( .D(n1621), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][17] ) );
  DFFSR \configs_reg[3][16]  ( .D(n1622), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][16] ) );
  DFFSR \configs_reg[3][15]  ( .D(n1623), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][15] ) );
  DFFSR \configs_reg[3][14]  ( .D(n1624), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][14] ) );
  DFFSR \configs_reg[3][13]  ( .D(n1625), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][13] ) );
  DFFSR \configs_reg[3][12]  ( .D(n1626), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][12] ) );
  DFFSR \configs_reg[3][11]  ( .D(n1627), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][11] ) );
  DFFSR \configs_reg[3][10]  ( .D(n1628), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][10] ) );
  DFFSR \configs_reg[3][9]  ( .D(n1629), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][9] ) );
  DFFSR \configs_reg[3][8]  ( .D(n1630), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][8] ) );
  DFFSR \configs_reg[3][7]  ( .D(n1631), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][7] ) );
  DFFSR \configs_reg[3][6]  ( .D(n1632), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][6] ) );
  DFFSR \configs_reg[3][5]  ( .D(n1633), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][5] ) );
  DFFSR \configs_reg[3][4]  ( .D(n1634), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][4] ) );
  DFFSR \configs_reg[3][3]  ( .D(n1635), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][3] ) );
  DFFSR \configs_reg[3][2]  ( .D(n1636), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][2] ) );
  DFFSR \configs_reg[3][1]  ( .D(n1637), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][1] ) );
  DFFSR \configs_reg[3][0]  ( .D(n1638), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[3][0] ) );
  DFFSR \configs_reg[2][9]  ( .D(n1639), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[9]) );
  DFFSR \configs_reg[2][8]  ( .D(n1640), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[8]) );
  DFFSR \configs_reg[2][7]  ( .D(n1641), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[7]) );
  DFFSR \configs_reg[2][6]  ( .D(n1642), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[6]) );
  DFFSR \configs_reg[2][5]  ( .D(n1643), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[5]) );
  DFFSR \configs_reg[2][4]  ( .D(n1644), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[4]) );
  DFFSR \configs_reg[2][3]  ( .D(n1645), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[3]) );
  DFFSR \configs_reg[2][2]  ( .D(n1646), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[2]) );
  DFFSR \configs_reg[2][1]  ( .D(n1647), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[1]) );
  DFFSR \configs_reg[2][0]  ( .D(n1648), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        fft_man_arlen[0]) );
  DFFSR \rstate_reg[1]  ( .D(next_rstate[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(rstate[1]) );
  DFFSR \rstate_reg[0]  ( .D(next_rstate[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(rstate[0]) );
  DFFSR \configs_reg[1][31]  ( .D(n1649), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][31] ) );
  DFFSR \configs_reg[1][30]  ( .D(n1650), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][30] ) );
  DFFSR \configs_reg[1][29]  ( .D(n1651), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][29] ) );
  DFFSR \configs_reg[1][28]  ( .D(n1652), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][28] ) );
  DFFSR \configs_reg[1][27]  ( .D(n1653), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][27] ) );
  DFFSR \configs_reg[1][26]  ( .D(n1654), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][26] ) );
  DFFSR \configs_reg[1][25]  ( .D(n1655), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][25] ) );
  DFFSR \configs_reg[1][24]  ( .D(n1656), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][24] ) );
  DFFSR \configs_reg[1][23]  ( .D(n1657), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][23] ) );
  DFFSR \configs_reg[1][22]  ( .D(n1658), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][22] ) );
  DFFSR \configs_reg[1][21]  ( .D(n1659), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][21] ) );
  DFFSR \configs_reg[1][20]  ( .D(n1660), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][20] ) );
  DFFSR \configs_reg[1][19]  ( .D(n1661), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][19] ) );
  DFFSR \configs_reg[1][18]  ( .D(n1662), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][18] ) );
  DFFSR \configs_reg[1][17]  ( .D(n1663), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][17] ) );
  DFFSR \configs_reg[1][16]  ( .D(n1664), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][16] ) );
  DFFSR \configs_reg[1][15]  ( .D(n1665), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][15] ) );
  DFFSR \configs_reg[1][14]  ( .D(n1666), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][14] ) );
  DFFSR \configs_reg[1][13]  ( .D(n1667), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][13] ) );
  DFFSR \configs_reg[1][12]  ( .D(n1668), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][12] ) );
  DFFSR \configs_reg[1][11]  ( .D(n1669), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][11] ) );
  DFFSR \configs_reg[1][10]  ( .D(n1670), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][10] ) );
  DFFSR \configs_reg[1][9]  ( .D(n1671), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][9] ) );
  DFFSR \configs_reg[1][8]  ( .D(n1672), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][8] ) );
  DFFSR \configs_reg[1][7]  ( .D(n1673), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][7] ) );
  DFFSR \configs_reg[1][6]  ( .D(n1674), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][6] ) );
  DFFSR \configs_reg[1][5]  ( .D(n1675), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][5] ) );
  DFFSR \configs_reg[1][4]  ( .D(n1676), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][4] ) );
  DFFSR \configs_reg[1][3]  ( .D(n1677), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][3] ) );
  DFFSR \configs_reg[1][2]  ( .D(n1678), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][2] ) );
  DFFSR \configs_reg[1][1]  ( .D(n1679), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \configs[1][1] ) );
  DFFSR \configs_reg[1][0]  ( .D(n1680), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
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
  DFFSR \r_offset_reg[0]  ( .D(n1587), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[0]) );
  DFFSR \r_offset_reg[1]  ( .D(n1574), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[1]) );
  DFFSR \r_offset_reg[2]  ( .D(n1586), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[2]) );
  DFFSR \r_offset_reg[3]  ( .D(n1570), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[3]) );
  DFFSR \r_offset_reg[4]  ( .D(n1594), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[4]) );
  DFFSR \r_offset_reg[5]  ( .D(n1578), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[5]) );
  DFFSR \r_offset_reg[6]  ( .D(n1585), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[6]) );
  DFFSR \r_offset_reg[7]  ( .D(n1569), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[7]) );
  DFFSR \r_offset_reg[8]  ( .D(n1593), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[8]) );
  DFFSR \r_offset_reg[9]  ( .D(n1573), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[9]) );
  DFFSR \r_offset_reg[10]  ( .D(n1579), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[10]) );
  DFFSR \r_offset_reg[11]  ( .D(n1563), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[11]) );
  DFFSR \r_offset_reg[12]  ( .D(n1592), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[12]) );
  DFFSR \r_offset_reg[13]  ( .D(n1576), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[13]) );
  DFFSR \r_offset_reg[14]  ( .D(n1582), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[14]) );
  DFFSR \r_offset_reg[15]  ( .D(n1564), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[15]) );
  DFFSR \r_offset_reg[16]  ( .D(n1589), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[16]) );
  DFFSR \r_offset_reg[17]  ( .D(n1571), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[17]) );
  DFFSR \r_offset_reg[18]  ( .D(n1580), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[18]) );
  DFFSR \r_offset_reg[19]  ( .D(n1565), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[19]) );
  DFFSR \r_offset_reg[20]  ( .D(n1590), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[20]) );
  DFFSR \r_offset_reg[21]  ( .D(n1575), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[21]) );
  DFFSR \r_offset_reg[22]  ( .D(n1583), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[22]) );
  DFFSR \r_offset_reg[23]  ( .D(n1567), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[23]) );
  DFFSR \r_offset_reg[24]  ( .D(n1588), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[24]) );
  DFFSR \r_offset_reg[25]  ( .D(n1572), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[25]) );
  DFFSR \r_offset_reg[26]  ( .D(n1581), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[26]) );
  DFFSR \r_offset_reg[27]  ( .D(n1566), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[27]) );
  DFFSR \r_offset_reg[28]  ( .D(n1591), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[28]) );
  DFFSR \r_offset_reg[29]  ( .D(n1577), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[29]) );
  DFFSR \r_offset_reg[30]  ( .D(n1584), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[30]) );
  DFFSR \r_offset_reg[31]  ( .D(n1568), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        r_offset[31]) );
  DFFSR \fft_man_araddr_reg[0]  ( .D(n1498), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[0]) );
  DFFSR \fft_man_araddr_reg[1]  ( .D(n1497), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[1]) );
  DFFSR \fft_man_araddr_reg[2]  ( .D(n1496), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[2]) );
  DFFSR \fft_man_araddr_reg[3]  ( .D(n1495), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[3]) );
  DFFSR \fft_man_araddr_reg[4]  ( .D(n1494), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[4]) );
  DFFSR \fft_man_araddr_reg[5]  ( .D(n1493), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[5]) );
  DFFSR \fft_man_araddr_reg[6]  ( .D(n1492), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[6]) );
  DFFSR \fft_man_araddr_reg[7]  ( .D(n1491), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[7]) );
  DFFSR \fft_man_araddr_reg[8]  ( .D(n1490), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[8]) );
  DFFSR \fft_man_araddr_reg[9]  ( .D(n1489), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[9]) );
  DFFSR \fft_man_araddr_reg[10]  ( .D(n1488), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[10]) );
  DFFSR \fft_man_araddr_reg[11]  ( .D(n1487), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[11]) );
  DFFSR \fft_man_araddr_reg[12]  ( .D(n1486), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[12]) );
  DFFSR \fft_man_araddr_reg[13]  ( .D(n1485), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[13]) );
  DFFSR \fft_man_araddr_reg[14]  ( .D(n1484), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[14]) );
  DFFSR \fft_man_araddr_reg[15]  ( .D(n1483), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[15]) );
  DFFSR \fft_man_araddr_reg[16]  ( .D(n1482), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[16]) );
  DFFSR \fft_man_araddr_reg[17]  ( .D(n1481), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[17]) );
  DFFSR \fft_man_araddr_reg[18]  ( .D(n1480), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[18]) );
  DFFSR \fft_man_araddr_reg[19]  ( .D(n1479), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[19]) );
  DFFSR \fft_man_araddr_reg[20]  ( .D(n1478), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[20]) );
  DFFSR \fft_man_araddr_reg[21]  ( .D(n1477), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[21]) );
  DFFSR \fft_man_araddr_reg[22]  ( .D(n1476), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[22]) );
  DFFSR \fft_man_araddr_reg[23]  ( .D(n1475), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[23]) );
  DFFSR \fft_man_araddr_reg[24]  ( .D(n1474), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[24]) );
  DFFSR \fft_man_araddr_reg[25]  ( .D(n1473), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[25]) );
  DFFSR \fft_man_araddr_reg[26]  ( .D(n1472), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[26]) );
  DFFSR \fft_man_araddr_reg[27]  ( .D(n1471), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[27]) );
  DFFSR \fft_man_araddr_reg[28]  ( .D(n1470), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[28]) );
  DFFSR \fft_man_araddr_reg[29]  ( .D(n1469), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[29]) );
  DFFSR \fft_man_araddr_reg[30]  ( .D(n1468), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[30]) );
  DFFSR \fft_man_araddr_reg[31]  ( .D(n1467), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_araddr[31]) );
  DFFSR \w_offset_reg[0]  ( .D(n1555), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[0]) );
  DFFSR \w_offset_reg[1]  ( .D(n1542), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[1]) );
  DFFSR \w_offset_reg[2]  ( .D(n1554), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[2]) );
  DFFSR \w_offset_reg[3]  ( .D(n1538), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[3]) );
  DFFSR \w_offset_reg[4]  ( .D(n1562), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[4]) );
  DFFSR \w_offset_reg[5]  ( .D(n1546), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[5]) );
  DFFSR \w_offset_reg[6]  ( .D(n1553), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[6]) );
  DFFSR \w_offset_reg[7]  ( .D(n1537), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[7]) );
  DFFSR \w_offset_reg[8]  ( .D(n1561), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[8]) );
  DFFSR \w_offset_reg[9]  ( .D(n1541), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[9]) );
  DFFSR \w_offset_reg[10]  ( .D(n1547), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[10]) );
  DFFSR \w_offset_reg[11]  ( .D(n1531), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[11]) );
  DFFSR \w_offset_reg[12]  ( .D(n1560), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[12]) );
  DFFSR \w_offset_reg[13]  ( .D(n1544), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[13]) );
  DFFSR \w_offset_reg[14]  ( .D(n1550), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[14]) );
  DFFSR \w_offset_reg[15]  ( .D(n1532), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[15]) );
  DFFSR \w_offset_reg[16]  ( .D(n1557), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[16]) );
  DFFSR \w_offset_reg[17]  ( .D(n1539), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[17]) );
  DFFSR \w_offset_reg[18]  ( .D(n1548), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[18]) );
  DFFSR \w_offset_reg[19]  ( .D(n1533), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[19]) );
  DFFSR \w_offset_reg[20]  ( .D(n1558), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[20]) );
  DFFSR \w_offset_reg[21]  ( .D(n1543), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[21]) );
  DFFSR \w_offset_reg[22]  ( .D(n1551), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[22]) );
  DFFSR \w_offset_reg[23]  ( .D(n1535), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[23]) );
  DFFSR \w_offset_reg[24]  ( .D(n1556), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[24]) );
  DFFSR \w_offset_reg[25]  ( .D(n1540), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[25]) );
  DFFSR \w_offset_reg[26]  ( .D(n1549), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[26]) );
  DFFSR \w_offset_reg[27]  ( .D(n1534), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[27]) );
  DFFSR \w_offset_reg[28]  ( .D(n1559), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[28]) );
  DFFSR \w_offset_reg[29]  ( .D(n1545), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[29]) );
  DFFSR \w_offset_reg[30]  ( .D(n1552), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[30]) );
  DFFSR \w_offset_reg[31]  ( .D(n1536), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        w_offset[31]) );
  DFFSR \frame_size_reg[0]  ( .D(n1712), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[0]) );
  DFFSR \frame_size_reg[1]  ( .D(n1711), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[1]) );
  DFFSR \frame_size_reg[2]  ( .D(n1710), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[2]) );
  DFFSR \frame_size_reg[3]  ( .D(n1709), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[3]) );
  DFFSR \frame_size_reg[4]  ( .D(n1708), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[4]) );
  DFFSR \frame_size_reg[5]  ( .D(n1707), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[5]) );
  DFFSR \frame_size_reg[6]  ( .D(n1706), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[6]) );
  DFFSR \frame_size_reg[7]  ( .D(n1705), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[7]) );
  DFFSR \frame_size_reg[8]  ( .D(n1704), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        frame_size[8]) );
  DFFSR \frame_size_reg[9]  ( .D(n1703), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        frame_size[9]) );
  DFFSR load_size_reg ( .D(n437), .CLK(clk), .R(n_rst), .S(1'b1), .Q(load_size) );
  DFFSR \fft_man_awaddr_reg[31]  ( .D(n1499), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[31]) );
  DFFSR \fft_man_awaddr_reg[30]  ( .D(n1500), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[30]) );
  DFFSR \fft_man_awaddr_reg[29]  ( .D(n1501), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[29]) );
  DFFSR \fft_man_awaddr_reg[28]  ( .D(n1502), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[28]) );
  DFFSR \fft_man_awaddr_reg[27]  ( .D(n1503), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[27]) );
  DFFSR \fft_man_awaddr_reg[26]  ( .D(n1504), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[26]) );
  DFFSR \fft_man_awaddr_reg[25]  ( .D(n1505), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[25]) );
  DFFSR \fft_man_awaddr_reg[24]  ( .D(n1506), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[24]) );
  DFFSR \fft_man_awaddr_reg[23]  ( .D(n1507), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[23]) );
  DFFSR \fft_man_awaddr_reg[22]  ( .D(n1508), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[22]) );
  DFFSR \fft_man_awaddr_reg[21]  ( .D(n1509), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[21]) );
  DFFSR \fft_man_awaddr_reg[20]  ( .D(n1510), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[20]) );
  DFFSR \fft_man_awaddr_reg[19]  ( .D(n1511), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[19]) );
  DFFSR \fft_man_awaddr_reg[18]  ( .D(n1512), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[18]) );
  DFFSR \fft_man_awaddr_reg[17]  ( .D(n1513), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[17]) );
  DFFSR \fft_man_awaddr_reg[16]  ( .D(n1514), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[16]) );
  DFFSR \fft_man_awaddr_reg[15]  ( .D(n1515), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[15]) );
  DFFSR \fft_man_awaddr_reg[14]  ( .D(n1516), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[14]) );
  DFFSR \fft_man_awaddr_reg[13]  ( .D(n1517), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[13]) );
  DFFSR \fft_man_awaddr_reg[12]  ( .D(n1518), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[12]) );
  DFFSR \fft_man_awaddr_reg[11]  ( .D(n1519), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[11]) );
  DFFSR \fft_man_awaddr_reg[10]  ( .D(n1520), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[10]) );
  DFFSR \fft_man_awaddr_reg[9]  ( .D(n1521), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[9]) );
  DFFSR \fft_man_awaddr_reg[8]  ( .D(n1522), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[8]) );
  DFFSR \fft_man_awaddr_reg[7]  ( .D(n1523), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[7]) );
  DFFSR \fft_man_awaddr_reg[6]  ( .D(n1524), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[6]) );
  DFFSR \fft_man_awaddr_reg[5]  ( .D(n1525), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[5]) );
  DFFSR \fft_man_awaddr_reg[4]  ( .D(n1526), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[4]) );
  DFFSR \fft_man_awaddr_reg[3]  ( .D(n1527), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[3]) );
  DFFSR \fft_man_awaddr_reg[2]  ( .D(n1528), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[2]) );
  DFFSR \fft_man_awaddr_reg[1]  ( .D(n1529), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(fft_man_awaddr[1]) );
  DFFSR \fft_man_awaddr_reg[0]  ( .D(n1530), .CLK(clk), .R(n_rst), .S(1'b1), 
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
  fft_axi_manager_DW01_add_0 add_227 ( .A({\configs[3][31] , \configs[3][30] , 
        \configs[3][29] , \configs[3][28] , \configs[3][27] , \configs[3][26] , 
        \configs[3][25] , \configs[3][24] , \configs[3][23] , \configs[3][22] , 
        \configs[3][21] , \configs[3][20] , \configs[3][19] , \configs[3][18] , 
        \configs[3][17] , \configs[3][16] , \configs[3][15] , \configs[3][14] , 
        \configs[3][13] , \configs[3][12] , \configs[3][11] , \configs[3][10] , 
        \configs[3][9] , \configs[3][8] , \configs[3][7] , \configs[3][6] , 
        \configs[3][5] , \configs[3][4] , \configs[3][3] , \configs[3][2] , 
        \configs[3][1] , \configs[3][0] }), .B(w_offset), .CI(1'b0), .SUM({
        N291, N290, N289, N288, N287, N286, N285, N284, N283, N282, N281, N280, 
        N279, N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, 
        N267, N266, N265, N264, N263, N262, N261, N260}) );
  fft_axi_manager_DW01_inc_0 add_128 ( .A({1'b0, \config_reg[2][9] , 
        \config_reg[2][8] , \config_reg[2][7] , \config_reg[2][6] , 
        \config_reg[2][5] , \config_reg[2][4] , \config_reg[2][3] , 
        \config_reg[2][2] , \config_reg[2][1] , \config_reg[2][0] }), .SUM({
        N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49}) );
  fft_axi_manager_DW01_inc_1 add_83 ( .A(fft_man_arlen), .SUM({N33, N32, N31, 
        N30, N29, N28, N27, N26, N25, N24}) );
  fft_axi_manager_DW01_inc_2 add_129 ( .A({1'b0, \config_reg[4][9] , 
        \config_reg[4][8] , \config_reg[4][7] , \config_reg[4][6] , 
        \config_reg[4][5] , \config_reg[4][4] , \config_reg[4][3] , 
        \config_reg[4][2] , \config_reg[4][1] , \config_reg[4][0] }), .SUM({
        N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60}) );
  fft_axi_manager_DW01_add_1 add_177 ( .A({\configs[1][31] , \configs[1][30] , 
        \configs[1][29] , \configs[1][28] , \configs[1][27] , \configs[1][26] , 
        \configs[1][25] , \configs[1][24] , \configs[1][23] , \configs[1][22] , 
        \configs[1][21] , \configs[1][20] , \configs[1][19] , \configs[1][18] , 
        \configs[1][17] , \configs[1][16] , \configs[1][15] , \configs[1][14] , 
        \configs[1][13] , \configs[1][12] , \configs[1][11] , \configs[1][10] , 
        \configs[1][9] , \configs[1][8] , \configs[1][7] , \configs[1][6] , 
        \configs[1][5] , \configs[1][4] , \configs[1][3] , \configs[1][2] , 
        \configs[1][1] , \configs[1][0] }), .B(r_offset), .CI(1'b0), .SUM({
        N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, 
        N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, 
        N220, N219, N218, N217, N216, N215, N214, N213}) );
  OR2X2 U1014 ( .A(n982), .B(n1106), .Y(n976) );
  OR2X2 U1015 ( .A(n1106), .B(n1151), .Y(n977) );
  AND2X2 U1016 ( .A(\config_reg[6][0] ), .B(n1438), .Y(n978) );
  INVX4 U1017 ( .A(n976), .Y(n979) );
  INVX4 U1018 ( .A(n977), .Y(n980) );
  INVX1 U1019 ( .A(n1074), .Y(n981) );
  INVX4 U1020 ( .A(n981), .Y(n982) );
  INVX4 U1021 ( .A(n1183), .Y(n1151) );
  INVX4 U1022 ( .A(n978), .Y(n983) );
  INVX4 U1023 ( .A(n978), .Y(n984) );
  INVX4 U1024 ( .A(n978), .Y(n985) );
  INVX2 U1025 ( .A(n1400), .Y(n1391) );
  INVX2 U1026 ( .A(n1349), .Y(n1339) );
  BUFX2 U1027 ( .A(n992), .Y(n986) );
  BUFX2 U1028 ( .A(n1035), .Y(n987) );
  OAI21X1 U1029 ( .A(fft_man_bvalid), .B(n988), .C(n989), .Y(next_wstate[1])
         );
  AOI21X1 U1030 ( .A(fft_man_awready), .B(fft_man_awvalid), .C(n990), .Y(n989)
         );
  INVX1 U1031 ( .A(n991), .Y(n1467) );
  MUX2X1 U1032 ( .B(N244), .A(fft_man_araddr[31]), .S(n986), .Y(n991) );
  INVX1 U1033 ( .A(n993), .Y(n1468) );
  MUX2X1 U1034 ( .B(N243), .A(fft_man_araddr[30]), .S(n986), .Y(n993) );
  INVX1 U1035 ( .A(n994), .Y(n1469) );
  MUX2X1 U1036 ( .B(N242), .A(fft_man_araddr[29]), .S(n986), .Y(n994) );
  INVX1 U1037 ( .A(n995), .Y(n1470) );
  MUX2X1 U1038 ( .B(N241), .A(fft_man_araddr[28]), .S(n986), .Y(n995) );
  INVX1 U1039 ( .A(n996), .Y(n1471) );
  MUX2X1 U1040 ( .B(N240), .A(fft_man_araddr[27]), .S(n986), .Y(n996) );
  INVX1 U1041 ( .A(n997), .Y(n1472) );
  MUX2X1 U1042 ( .B(N239), .A(fft_man_araddr[26]), .S(n986), .Y(n997) );
  INVX1 U1043 ( .A(n998), .Y(n1473) );
  MUX2X1 U1044 ( .B(N238), .A(fft_man_araddr[25]), .S(n986), .Y(n998) );
  INVX1 U1045 ( .A(n999), .Y(n1474) );
  MUX2X1 U1046 ( .B(N237), .A(fft_man_araddr[24]), .S(n986), .Y(n999) );
  INVX1 U1047 ( .A(n1000), .Y(n1475) );
  MUX2X1 U1048 ( .B(N236), .A(fft_man_araddr[23]), .S(n986), .Y(n1000) );
  INVX1 U1049 ( .A(n1001), .Y(n1476) );
  MUX2X1 U1050 ( .B(N235), .A(fft_man_araddr[22]), .S(n986), .Y(n1001) );
  INVX1 U1051 ( .A(n1002), .Y(n1477) );
  MUX2X1 U1052 ( .B(N234), .A(fft_man_araddr[21]), .S(n986), .Y(n1002) );
  INVX1 U1053 ( .A(n1003), .Y(n1478) );
  MUX2X1 U1054 ( .B(N233), .A(fft_man_araddr[20]), .S(n986), .Y(n1003) );
  INVX1 U1055 ( .A(n1004), .Y(n1479) );
  MUX2X1 U1056 ( .B(N232), .A(fft_man_araddr[19]), .S(n986), .Y(n1004) );
  INVX1 U1057 ( .A(n1005), .Y(n1480) );
  MUX2X1 U1058 ( .B(N231), .A(fft_man_araddr[18]), .S(n986), .Y(n1005) );
  INVX1 U1059 ( .A(n1006), .Y(n1481) );
  MUX2X1 U1060 ( .B(N230), .A(fft_man_araddr[17]), .S(n986), .Y(n1006) );
  INVX1 U1061 ( .A(n1007), .Y(n1482) );
  MUX2X1 U1062 ( .B(N229), .A(fft_man_araddr[16]), .S(n986), .Y(n1007) );
  INVX1 U1063 ( .A(n1008), .Y(n1483) );
  MUX2X1 U1064 ( .B(N228), .A(fft_man_araddr[15]), .S(n986), .Y(n1008) );
  INVX1 U1065 ( .A(n1009), .Y(n1484) );
  MUX2X1 U1066 ( .B(N227), .A(fft_man_araddr[14]), .S(n986), .Y(n1009) );
  INVX1 U1067 ( .A(n1010), .Y(n1485) );
  MUX2X1 U1068 ( .B(N226), .A(fft_man_araddr[13]), .S(n986), .Y(n1010) );
  INVX1 U1069 ( .A(n1011), .Y(n1486) );
  MUX2X1 U1070 ( .B(N225), .A(fft_man_araddr[12]), .S(n986), .Y(n1011) );
  INVX1 U1071 ( .A(n1012), .Y(n1487) );
  MUX2X1 U1072 ( .B(N224), .A(fft_man_araddr[11]), .S(n986), .Y(n1012) );
  INVX1 U1073 ( .A(n1013), .Y(n1488) );
  MUX2X1 U1074 ( .B(N223), .A(fft_man_araddr[10]), .S(n986), .Y(n1013) );
  INVX1 U1075 ( .A(n1014), .Y(n1489) );
  MUX2X1 U1076 ( .B(N222), .A(fft_man_araddr[9]), .S(n986), .Y(n1014) );
  INVX1 U1077 ( .A(n1015), .Y(n1490) );
  MUX2X1 U1078 ( .B(N221), .A(fft_man_araddr[8]), .S(n986), .Y(n1015) );
  INVX1 U1079 ( .A(n1016), .Y(n1491) );
  MUX2X1 U1080 ( .B(N220), .A(fft_man_araddr[7]), .S(n986), .Y(n1016) );
  INVX1 U1081 ( .A(n1017), .Y(n1492) );
  MUX2X1 U1082 ( .B(N219), .A(fft_man_araddr[6]), .S(n992), .Y(n1017) );
  INVX1 U1083 ( .A(n1018), .Y(n1493) );
  MUX2X1 U1084 ( .B(N218), .A(fft_man_araddr[5]), .S(n992), .Y(n1018) );
  INVX1 U1085 ( .A(n1019), .Y(n1494) );
  MUX2X1 U1086 ( .B(N217), .A(fft_man_araddr[4]), .S(n992), .Y(n1019) );
  INVX1 U1087 ( .A(n1020), .Y(n1495) );
  MUX2X1 U1088 ( .B(N216), .A(fft_man_araddr[3]), .S(n992), .Y(n1020) );
  INVX1 U1089 ( .A(n1021), .Y(n1496) );
  MUX2X1 U1090 ( .B(N215), .A(fft_man_araddr[2]), .S(n992), .Y(n1021) );
  INVX1 U1091 ( .A(n1022), .Y(n1497) );
  MUX2X1 U1092 ( .B(N214), .A(fft_man_araddr[1]), .S(n992), .Y(n1022) );
  INVX1 U1093 ( .A(n1023), .Y(n1498) );
  MUX2X1 U1094 ( .B(N213), .A(fft_man_araddr[0]), .S(n992), .Y(n1023) );
  NAND3X1 U1095 ( .A(n1024), .B(n1025), .C(next_rstate[0]), .Y(n992) );
  OAI21X1 U1096 ( .A(n1026), .B(n1027), .C(n1028), .Y(next_rstate[0]) );
  AOI22X1 U1097 ( .A(n1029), .B(N18), .C(fft_man_arvalid), .D(n1030), .Y(n1028) );
  INVX1 U1098 ( .A(fft_man_rready), .Y(n1026) );
  INVX1 U1099 ( .A(next_rstate[1]), .Y(n1024) );
  OAI21X1 U1100 ( .A(n1031), .B(n1030), .C(n1032), .Y(next_rstate[1]) );
  NAND2X1 U1101 ( .A(fft_man_rready), .B(n1033), .Y(n1032) );
  NAND3X1 U1102 ( .A(fft_man_rvalid), .B(n1027), .C(rcounter_last), .Y(n1033)
         );
  INVX1 U1103 ( .A(fft_man_rresp), .Y(n1027) );
  INVX1 U1104 ( .A(fft_man_arready), .Y(n1030) );
  INVX1 U1105 ( .A(fft_man_arvalid), .Y(n1031) );
  INVX1 U1106 ( .A(n1034), .Y(n1499) );
  MUX2X1 U1107 ( .B(N291), .A(fft_man_awaddr[31]), .S(n987), .Y(n1034) );
  INVX1 U1108 ( .A(n1036), .Y(n1500) );
  MUX2X1 U1109 ( .B(N290), .A(fft_man_awaddr[30]), .S(n987), .Y(n1036) );
  INVX1 U1110 ( .A(n1037), .Y(n1501) );
  MUX2X1 U1111 ( .B(N289), .A(fft_man_awaddr[29]), .S(n987), .Y(n1037) );
  INVX1 U1112 ( .A(n1038), .Y(n1502) );
  MUX2X1 U1113 ( .B(N288), .A(fft_man_awaddr[28]), .S(n987), .Y(n1038) );
  INVX1 U1114 ( .A(n1039), .Y(n1503) );
  MUX2X1 U1115 ( .B(N287), .A(fft_man_awaddr[27]), .S(n987), .Y(n1039) );
  INVX1 U1116 ( .A(n1040), .Y(n1504) );
  MUX2X1 U1117 ( .B(N286), .A(fft_man_awaddr[26]), .S(n987), .Y(n1040) );
  INVX1 U1118 ( .A(n1041), .Y(n1505) );
  MUX2X1 U1119 ( .B(N285), .A(fft_man_awaddr[25]), .S(n987), .Y(n1041) );
  INVX1 U1120 ( .A(n1042), .Y(n1506) );
  MUX2X1 U1121 ( .B(N284), .A(fft_man_awaddr[24]), .S(n987), .Y(n1042) );
  INVX1 U1122 ( .A(n1043), .Y(n1507) );
  MUX2X1 U1123 ( .B(N283), .A(fft_man_awaddr[23]), .S(n987), .Y(n1043) );
  INVX1 U1124 ( .A(n1044), .Y(n1508) );
  MUX2X1 U1125 ( .B(N282), .A(fft_man_awaddr[22]), .S(n987), .Y(n1044) );
  INVX1 U1126 ( .A(n1045), .Y(n1509) );
  MUX2X1 U1127 ( .B(N281), .A(fft_man_awaddr[21]), .S(n987), .Y(n1045) );
  INVX1 U1128 ( .A(n1046), .Y(n1510) );
  MUX2X1 U1129 ( .B(N280), .A(fft_man_awaddr[20]), .S(n987), .Y(n1046) );
  INVX1 U1130 ( .A(n1047), .Y(n1511) );
  MUX2X1 U1131 ( .B(N279), .A(fft_man_awaddr[19]), .S(n987), .Y(n1047) );
  INVX1 U1132 ( .A(n1048), .Y(n1512) );
  MUX2X1 U1133 ( .B(N278), .A(fft_man_awaddr[18]), .S(n987), .Y(n1048) );
  INVX1 U1134 ( .A(n1049), .Y(n1513) );
  MUX2X1 U1135 ( .B(N277), .A(fft_man_awaddr[17]), .S(n987), .Y(n1049) );
  INVX1 U1136 ( .A(n1050), .Y(n1514) );
  MUX2X1 U1137 ( .B(N276), .A(fft_man_awaddr[16]), .S(n987), .Y(n1050) );
  INVX1 U1138 ( .A(n1051), .Y(n1515) );
  MUX2X1 U1139 ( .B(N275), .A(fft_man_awaddr[15]), .S(n987), .Y(n1051) );
  INVX1 U1140 ( .A(n1052), .Y(n1516) );
  MUX2X1 U1141 ( .B(N274), .A(fft_man_awaddr[14]), .S(n987), .Y(n1052) );
  INVX1 U1142 ( .A(n1053), .Y(n1517) );
  MUX2X1 U1143 ( .B(N273), .A(fft_man_awaddr[13]), .S(n987), .Y(n1053) );
  INVX1 U1144 ( .A(n1054), .Y(n1518) );
  MUX2X1 U1145 ( .B(N272), .A(fft_man_awaddr[12]), .S(n987), .Y(n1054) );
  INVX1 U1146 ( .A(n1055), .Y(n1519) );
  MUX2X1 U1147 ( .B(N271), .A(fft_man_awaddr[11]), .S(n987), .Y(n1055) );
  INVX1 U1148 ( .A(n1056), .Y(n1520) );
  MUX2X1 U1149 ( .B(N270), .A(fft_man_awaddr[10]), .S(n987), .Y(n1056) );
  INVX1 U1150 ( .A(n1057), .Y(n1521) );
  MUX2X1 U1151 ( .B(N269), .A(fft_man_awaddr[9]), .S(n987), .Y(n1057) );
  INVX1 U1152 ( .A(n1058), .Y(n1522) );
  MUX2X1 U1153 ( .B(N268), .A(fft_man_awaddr[8]), .S(n987), .Y(n1058) );
  INVX1 U1154 ( .A(n1059), .Y(n1523) );
  MUX2X1 U1155 ( .B(N267), .A(fft_man_awaddr[7]), .S(n987), .Y(n1059) );
  INVX1 U1156 ( .A(n1060), .Y(n1524) );
  MUX2X1 U1157 ( .B(N266), .A(fft_man_awaddr[6]), .S(n1035), .Y(n1060) );
  INVX1 U1158 ( .A(n1061), .Y(n1525) );
  MUX2X1 U1159 ( .B(N265), .A(fft_man_awaddr[5]), .S(n1035), .Y(n1061) );
  INVX1 U1160 ( .A(n1062), .Y(n1526) );
  MUX2X1 U1161 ( .B(N264), .A(fft_man_awaddr[4]), .S(n1035), .Y(n1062) );
  INVX1 U1162 ( .A(n1063), .Y(n1527) );
  MUX2X1 U1163 ( .B(N263), .A(fft_man_awaddr[3]), .S(n1035), .Y(n1063) );
  INVX1 U1164 ( .A(n1064), .Y(n1528) );
  MUX2X1 U1165 ( .B(N262), .A(fft_man_awaddr[2]), .S(n1035), .Y(n1064) );
  INVX1 U1166 ( .A(n1065), .Y(n1529) );
  MUX2X1 U1167 ( .B(N261), .A(fft_man_awaddr[1]), .S(n1035), .Y(n1065) );
  INVX1 U1168 ( .A(n1066), .Y(n1530) );
  MUX2X1 U1169 ( .B(N260), .A(fft_man_awaddr[0]), .S(n1035), .Y(n1066) );
  NAND3X1 U1170 ( .A(n1067), .B(n988), .C(next_wstate[0]), .Y(n1035) );
  NAND3X1 U1171 ( .A(n1068), .B(n1069), .C(n1070), .Y(next_wstate[0]) );
  AOI22X1 U1172 ( .A(N295), .B(n1071), .C(fft_man_awvalid), .D(n1072), .Y(
        n1070) );
  INVX1 U1173 ( .A(fft_man_awready), .Y(n1072) );
  INVX1 U1174 ( .A(fft_man_bvalid), .Y(n1071) );
  NAND3X1 U1175 ( .A(fft_man_wlast), .B(n990), .C(fft_man_wready), .Y(n1068)
         );
  INVX1 U1176 ( .A(n1073), .Y(n1531) );
  AOI22X1 U1177 ( .A(next_w_offset_val[11]), .B(n979), .C(w_offset[11]), .D(
        n982), .Y(n1073) );
  INVX1 U1178 ( .A(n1075), .Y(n1532) );
  AOI22X1 U1179 ( .A(next_w_offset_val[15]), .B(n979), .C(w_offset[15]), .D(
        n982), .Y(n1075) );
  INVX1 U1180 ( .A(n1076), .Y(n1533) );
  AOI22X1 U1181 ( .A(next_w_offset_val[19]), .B(n979), .C(w_offset[19]), .D(
        n982), .Y(n1076) );
  INVX1 U1182 ( .A(n1077), .Y(n1534) );
  AOI22X1 U1183 ( .A(next_w_offset_val[27]), .B(n979), .C(w_offset[27]), .D(
        n982), .Y(n1077) );
  INVX1 U1184 ( .A(n1078), .Y(n1535) );
  AOI22X1 U1185 ( .A(next_w_offset_val[23]), .B(n979), .C(w_offset[23]), .D(
        n982), .Y(n1078) );
  INVX1 U1186 ( .A(n1079), .Y(n1536) );
  AOI22X1 U1187 ( .A(next_w_offset_val[31]), .B(n979), .C(w_offset[31]), .D(
        n982), .Y(n1079) );
  INVX1 U1188 ( .A(n1080), .Y(n1537) );
  AOI22X1 U1189 ( .A(next_w_offset_val[7]), .B(n979), .C(w_offset[7]), .D(n982), .Y(n1080) );
  INVX1 U1190 ( .A(n1081), .Y(n1538) );
  AOI22X1 U1191 ( .A(next_w_offset_val[3]), .B(n979), .C(w_offset[3]), .D(n982), .Y(n1081) );
  INVX1 U1192 ( .A(n1082), .Y(n1539) );
  AOI22X1 U1193 ( .A(next_w_offset_val[17]), .B(n979), .C(w_offset[17]), .D(
        n982), .Y(n1082) );
  INVX1 U1194 ( .A(n1083), .Y(n1540) );
  AOI22X1 U1195 ( .A(next_w_offset_val[25]), .B(n979), .C(w_offset[25]), .D(
        n982), .Y(n1083) );
  INVX1 U1196 ( .A(n1084), .Y(n1541) );
  AOI22X1 U1197 ( .A(next_w_offset_val[9]), .B(n979), .C(w_offset[9]), .D(n982), .Y(n1084) );
  INVX1 U1198 ( .A(n1085), .Y(n1542) );
  AOI22X1 U1199 ( .A(next_w_offset_val[1]), .B(n979), .C(w_offset[1]), .D(n982), .Y(n1085) );
  INVX1 U1200 ( .A(n1086), .Y(n1543) );
  AOI22X1 U1201 ( .A(next_w_offset_val[21]), .B(n979), .C(w_offset[21]), .D(
        n982), .Y(n1086) );
  INVX1 U1202 ( .A(n1087), .Y(n1544) );
  AOI22X1 U1203 ( .A(next_w_offset_val[13]), .B(n979), .C(w_offset[13]), .D(
        n982), .Y(n1087) );
  INVX1 U1204 ( .A(n1088), .Y(n1545) );
  AOI22X1 U1205 ( .A(next_w_offset_val[29]), .B(n979), .C(w_offset[29]), .D(
        n982), .Y(n1088) );
  INVX1 U1206 ( .A(n1089), .Y(n1546) );
  AOI22X1 U1207 ( .A(next_w_offset_val[5]), .B(n979), .C(w_offset[5]), .D(n982), .Y(n1089) );
  INVX1 U1208 ( .A(n1090), .Y(n1547) );
  AOI22X1 U1209 ( .A(next_w_offset_val[10]), .B(n979), .C(w_offset[10]), .D(
        n982), .Y(n1090) );
  INVX1 U1210 ( .A(n1091), .Y(n1548) );
  AOI22X1 U1211 ( .A(next_w_offset_val[18]), .B(n979), .C(w_offset[18]), .D(
        n982), .Y(n1091) );
  INVX1 U1212 ( .A(n1092), .Y(n1549) );
  AOI22X1 U1213 ( .A(next_w_offset_val[26]), .B(n979), .C(w_offset[26]), .D(
        n982), .Y(n1092) );
  INVX1 U1214 ( .A(n1093), .Y(n1550) );
  AOI22X1 U1215 ( .A(next_w_offset_val[14]), .B(n979), .C(w_offset[14]), .D(
        n982), .Y(n1093) );
  INVX1 U1216 ( .A(n1094), .Y(n1551) );
  AOI22X1 U1217 ( .A(next_w_offset_val[22]), .B(n979), .C(w_offset[22]), .D(
        n982), .Y(n1094) );
  INVX1 U1218 ( .A(n1095), .Y(n1552) );
  AOI22X1 U1219 ( .A(next_w_offset_val[30]), .B(n979), .C(w_offset[30]), .D(
        n982), .Y(n1095) );
  INVX1 U1220 ( .A(n1096), .Y(n1553) );
  AOI22X1 U1221 ( .A(next_w_offset_val[6]), .B(n979), .C(w_offset[6]), .D(n982), .Y(n1096) );
  INVX1 U1222 ( .A(n1097), .Y(n1554) );
  AOI22X1 U1223 ( .A(next_w_offset_val[2]), .B(n979), .C(w_offset[2]), .D(n982), .Y(n1097) );
  INVX1 U1224 ( .A(n1098), .Y(n1555) );
  AOI22X1 U1225 ( .A(next_w_offset_val[0]), .B(n979), .C(w_offset[0]), .D(n982), .Y(n1098) );
  INVX1 U1226 ( .A(n1099), .Y(n1556) );
  AOI22X1 U1227 ( .A(next_w_offset_val[24]), .B(n979), .C(w_offset[24]), .D(
        n982), .Y(n1099) );
  INVX1 U1228 ( .A(n1100), .Y(n1557) );
  AOI22X1 U1229 ( .A(next_w_offset_val[16]), .B(n979), .C(w_offset[16]), .D(
        n982), .Y(n1100) );
  INVX1 U1230 ( .A(n1101), .Y(n1558) );
  AOI22X1 U1231 ( .A(next_w_offset_val[20]), .B(n979), .C(w_offset[20]), .D(
        n982), .Y(n1101) );
  INVX1 U1232 ( .A(n1102), .Y(n1559) );
  AOI22X1 U1233 ( .A(next_w_offset_val[28]), .B(n979), .C(w_offset[28]), .D(
        n982), .Y(n1102) );
  INVX1 U1234 ( .A(n1103), .Y(n1560) );
  AOI22X1 U1235 ( .A(next_w_offset_val[12]), .B(n979), .C(w_offset[12]), .D(
        n982), .Y(n1103) );
  INVX1 U1236 ( .A(n1104), .Y(n1561) );
  AOI22X1 U1237 ( .A(next_w_offset_val[8]), .B(n979), .C(w_offset[8]), .D(n982), .Y(n1104) );
  INVX1 U1238 ( .A(n1105), .Y(n1562) );
  AOI22X1 U1239 ( .A(next_w_offset_val[4]), .B(n979), .C(w_offset[4]), .D(n982), .Y(n1105) );
  OAI21X1 U1240 ( .A(n1107), .B(n1108), .C(n1109), .Y(n1074) );
  OAI21X1 U1241 ( .A(n1110), .B(n1111), .C(n985), .Y(n1108) );
  OAI21X1 U1242 ( .A(\configs[0][9] ), .B(n1112), .C(n1113), .Y(n1111) );
  OAI21X1 U1243 ( .A(n1114), .B(n1115), .C(j[9]), .Y(n1113) );
  INVX1 U1244 ( .A(n1112), .Y(n1114) );
  OAI21X1 U1245 ( .A(j[8]), .B(n1116), .C(n1117), .Y(n1112) );
  OAI21X1 U1246 ( .A(\configs[0][8] ), .B(n1118), .C(n1119), .Y(n1117) );
  AOI22X1 U1247 ( .A(j[7]), .B(n1120), .C(n1121), .D(n1122), .Y(n1119) );
  INVX1 U1248 ( .A(n1123), .Y(n1121) );
  NAND2X1 U1249 ( .A(\configs[0][7] ), .B(n1123), .Y(n1120) );
  OAI21X1 U1250 ( .A(j[6]), .B(n1124), .C(n1125), .Y(n1123) );
  OAI21X1 U1251 ( .A(\configs[0][6] ), .B(n1126), .C(n1127), .Y(n1125) );
  AOI22X1 U1252 ( .A(j[5]), .B(n1128), .C(n1129), .D(n1130), .Y(n1127) );
  INVX1 U1253 ( .A(n1131), .Y(n1129) );
  NAND2X1 U1254 ( .A(\configs[0][5] ), .B(n1131), .Y(n1128) );
  OAI22X1 U1255 ( .A(n1132), .B(n1133), .C(j[4]), .D(n1134), .Y(n1131) );
  OAI21X1 U1256 ( .A(\configs[0][3] ), .B(n1135), .C(n1136), .Y(n1133) );
  OAI21X1 U1257 ( .A(n1137), .B(n1138), .C(j[3]), .Y(n1136) );
  INVX1 U1258 ( .A(n1135), .Y(n1137) );
  OAI21X1 U1259 ( .A(j[2]), .B(n1139), .C(n1140), .Y(n1135) );
  OAI21X1 U1260 ( .A(\configs[0][2] ), .B(n1141), .C(n1142), .Y(n1140) );
  AND2X1 U1261 ( .A(n1143), .B(n1144), .Y(n1142) );
  OAI21X1 U1262 ( .A(n1145), .B(n1146), .C(n1147), .Y(n1144) );
  OAI21X1 U1263 ( .A(j[0]), .B(n1146), .C(j[1]), .Y(n1143) );
  NOR2X1 U1264 ( .A(\configs[0][4] ), .B(n1148), .Y(n1132) );
  AND2X1 U1265 ( .A(n1149), .B(j[10]), .Y(n1110) );
  NOR2X1 U1266 ( .A(j[10]), .B(n1149), .Y(n1107) );
  INVX1 U1267 ( .A(n1150), .Y(n1563) );
  AOI22X1 U1268 ( .A(next_r_offset_val[11]), .B(n980), .C(r_offset[11]), .D(
        n1151), .Y(n1150) );
  INVX1 U1269 ( .A(n1152), .Y(n1564) );
  AOI22X1 U1270 ( .A(next_r_offset_val[15]), .B(n980), .C(r_offset[15]), .D(
        n1151), .Y(n1152) );
  INVX1 U1271 ( .A(n1153), .Y(n1565) );
  AOI22X1 U1272 ( .A(next_r_offset_val[19]), .B(n980), .C(r_offset[19]), .D(
        n1151), .Y(n1153) );
  INVX1 U1273 ( .A(n1154), .Y(n1566) );
  AOI22X1 U1274 ( .A(next_r_offset_val[27]), .B(n980), .C(r_offset[27]), .D(
        n1151), .Y(n1154) );
  INVX1 U1275 ( .A(n1155), .Y(n1567) );
  AOI22X1 U1276 ( .A(next_r_offset_val[23]), .B(n980), .C(r_offset[23]), .D(
        n1151), .Y(n1155) );
  INVX1 U1277 ( .A(n1156), .Y(n1568) );
  AOI22X1 U1278 ( .A(next_r_offset_val[31]), .B(n980), .C(r_offset[31]), .D(
        n1151), .Y(n1156) );
  INVX1 U1279 ( .A(n1157), .Y(n1569) );
  AOI22X1 U1280 ( .A(next_r_offset_val[7]), .B(n980), .C(r_offset[7]), .D(
        n1151), .Y(n1157) );
  INVX1 U1281 ( .A(n1158), .Y(n1570) );
  AOI22X1 U1282 ( .A(next_r_offset_val[3]), .B(n980), .C(r_offset[3]), .D(
        n1151), .Y(n1158) );
  INVX1 U1283 ( .A(n1159), .Y(n1571) );
  AOI22X1 U1284 ( .A(next_r_offset_val[17]), .B(n980), .C(r_offset[17]), .D(
        n1151), .Y(n1159) );
  INVX1 U1285 ( .A(n1160), .Y(n1572) );
  AOI22X1 U1286 ( .A(next_r_offset_val[25]), .B(n980), .C(r_offset[25]), .D(
        n1151), .Y(n1160) );
  INVX1 U1287 ( .A(n1161), .Y(n1573) );
  AOI22X1 U1288 ( .A(next_r_offset_val[9]), .B(n980), .C(r_offset[9]), .D(
        n1151), .Y(n1161) );
  INVX1 U1289 ( .A(n1162), .Y(n1574) );
  AOI22X1 U1290 ( .A(next_r_offset_val[1]), .B(n980), .C(r_offset[1]), .D(
        n1151), .Y(n1162) );
  INVX1 U1291 ( .A(n1163), .Y(n1575) );
  AOI22X1 U1292 ( .A(next_r_offset_val[21]), .B(n980), .C(r_offset[21]), .D(
        n1151), .Y(n1163) );
  INVX1 U1293 ( .A(n1164), .Y(n1576) );
  AOI22X1 U1294 ( .A(next_r_offset_val[13]), .B(n980), .C(r_offset[13]), .D(
        n1151), .Y(n1164) );
  INVX1 U1295 ( .A(n1165), .Y(n1577) );
  AOI22X1 U1296 ( .A(next_r_offset_val[29]), .B(n980), .C(r_offset[29]), .D(
        n1151), .Y(n1165) );
  INVX1 U1297 ( .A(n1166), .Y(n1578) );
  AOI22X1 U1298 ( .A(next_r_offset_val[5]), .B(n980), .C(r_offset[5]), .D(
        n1151), .Y(n1166) );
  INVX1 U1299 ( .A(n1167), .Y(n1579) );
  AOI22X1 U1300 ( .A(next_r_offset_val[10]), .B(n980), .C(r_offset[10]), .D(
        n1151), .Y(n1167) );
  INVX1 U1301 ( .A(n1168), .Y(n1580) );
  AOI22X1 U1302 ( .A(next_r_offset_val[18]), .B(n980), .C(r_offset[18]), .D(
        n1151), .Y(n1168) );
  INVX1 U1303 ( .A(n1169), .Y(n1581) );
  AOI22X1 U1304 ( .A(next_r_offset_val[26]), .B(n980), .C(r_offset[26]), .D(
        n1151), .Y(n1169) );
  INVX1 U1305 ( .A(n1170), .Y(n1582) );
  AOI22X1 U1306 ( .A(next_r_offset_val[14]), .B(n980), .C(r_offset[14]), .D(
        n1151), .Y(n1170) );
  INVX1 U1307 ( .A(n1171), .Y(n1583) );
  AOI22X1 U1308 ( .A(next_r_offset_val[22]), .B(n980), .C(r_offset[22]), .D(
        n1151), .Y(n1171) );
  INVX1 U1309 ( .A(n1172), .Y(n1584) );
  AOI22X1 U1310 ( .A(next_r_offset_val[30]), .B(n980), .C(r_offset[30]), .D(
        n1151), .Y(n1172) );
  INVX1 U1311 ( .A(n1173), .Y(n1585) );
  AOI22X1 U1312 ( .A(next_r_offset_val[6]), .B(n980), .C(r_offset[6]), .D(
        n1151), .Y(n1173) );
  INVX1 U1313 ( .A(n1174), .Y(n1586) );
  AOI22X1 U1314 ( .A(next_r_offset_val[2]), .B(n980), .C(r_offset[2]), .D(
        n1151), .Y(n1174) );
  INVX1 U1315 ( .A(n1175), .Y(n1587) );
  AOI22X1 U1316 ( .A(next_r_offset_val[0]), .B(n980), .C(r_offset[0]), .D(
        n1151), .Y(n1175) );
  INVX1 U1317 ( .A(n1176), .Y(n1588) );
  AOI22X1 U1318 ( .A(next_r_offset_val[24]), .B(n980), .C(r_offset[24]), .D(
        n1151), .Y(n1176) );
  INVX1 U1319 ( .A(n1177), .Y(n1589) );
  AOI22X1 U1320 ( .A(next_r_offset_val[16]), .B(n980), .C(r_offset[16]), .D(
        n1151), .Y(n1177) );
  INVX1 U1321 ( .A(n1178), .Y(n1590) );
  AOI22X1 U1322 ( .A(next_r_offset_val[20]), .B(n980), .C(r_offset[20]), .D(
        n1151), .Y(n1178) );
  INVX1 U1323 ( .A(n1179), .Y(n1591) );
  AOI22X1 U1324 ( .A(next_r_offset_val[28]), .B(n980), .C(r_offset[28]), .D(
        n1151), .Y(n1179) );
  INVX1 U1325 ( .A(n1180), .Y(n1592) );
  AOI22X1 U1326 ( .A(next_r_offset_val[12]), .B(n980), .C(r_offset[12]), .D(
        n1151), .Y(n1180) );
  INVX1 U1327 ( .A(n1181), .Y(n1593) );
  AOI22X1 U1328 ( .A(next_r_offset_val[8]), .B(n980), .C(r_offset[8]), .D(
        n1151), .Y(n1181) );
  INVX1 U1329 ( .A(n1182), .Y(n1594) );
  AOI22X1 U1330 ( .A(next_r_offset_val[4]), .B(n980), .C(r_offset[4]), .D(
        n1151), .Y(n1182) );
  OAI21X1 U1331 ( .A(n1184), .B(n1185), .C(n984), .Y(n1183) );
  NAND2X1 U1332 ( .A(n1029), .B(n1186), .Y(n1185) );
  OAI21X1 U1333 ( .A(n1149), .B(n1187), .C(n1188), .Y(n1186) );
  INVX1 U1334 ( .A(n1189), .Y(n1188) );
  AOI21X1 U1335 ( .A(n1187), .B(n1149), .C(k[10]), .Y(n1189) );
  OAI21X1 U1336 ( .A(\configs[0][9] ), .B(n1190), .C(n1191), .Y(n1187) );
  OAI21X1 U1337 ( .A(n1192), .B(n1115), .C(k[9]), .Y(n1191) );
  INVX1 U1338 ( .A(n1190), .Y(n1192) );
  OAI21X1 U1339 ( .A(n1116), .B(n1193), .C(n1194), .Y(n1190) );
  OAI21X1 U1340 ( .A(n1195), .B(\configs[0][8] ), .C(n1196), .Y(n1194) );
  INVX1 U1341 ( .A(n1193), .Y(n1195) );
  OAI21X1 U1342 ( .A(\configs[0][7] ), .B(n1197), .C(n1198), .Y(n1193) );
  OAI21X1 U1343 ( .A(n1199), .B(n1122), .C(k[7]), .Y(n1198) );
  INVX1 U1344 ( .A(n1197), .Y(n1199) );
  OAI21X1 U1345 ( .A(n1124), .B(n1200), .C(n1201), .Y(n1197) );
  OAI21X1 U1346 ( .A(n1202), .B(\configs[0][6] ), .C(n1203), .Y(n1201) );
  INVX1 U1347 ( .A(n1200), .Y(n1202) );
  OAI21X1 U1348 ( .A(\configs[0][5] ), .B(n1204), .C(n1205), .Y(n1200) );
  OAI21X1 U1349 ( .A(n1206), .B(n1130), .C(k[5]), .Y(n1205) );
  INVX1 U1350 ( .A(n1204), .Y(n1206) );
  OAI21X1 U1351 ( .A(n1134), .B(n1207), .C(n1208), .Y(n1204) );
  OAI21X1 U1352 ( .A(n1209), .B(\configs[0][4] ), .C(n1210), .Y(n1208) );
  INVX1 U1353 ( .A(n1207), .Y(n1209) );
  OAI21X1 U1354 ( .A(\configs[0][3] ), .B(n1211), .C(n1212), .Y(n1207) );
  OAI21X1 U1355 ( .A(k[3]), .B(n1138), .C(n1213), .Y(n1212) );
  AOI21X1 U1356 ( .A(\configs[0][2] ), .B(n1214), .C(n1215), .Y(n1213) );
  AOI21X1 U1357 ( .A(k[2]), .B(n1139), .C(n1216), .Y(n1215) );
  OAI22X1 U1358 ( .A(\configs[0][1] ), .B(n1217), .C(n1218), .D(n1219), .Y(
        n1216) );
  OAI21X1 U1359 ( .A(k[1]), .B(n1147), .C(n1146), .Y(n1219) );
  INVX1 U1360 ( .A(k[1]), .Y(n1217) );
  INVX1 U1361 ( .A(n1220), .Y(n1595) );
  MUX2X1 U1362 ( .B(\config_reg[5][1] ), .A(fft_man_wstrb[1]), .S(n985), .Y(
        n1220) );
  INVX1 U1363 ( .A(n1221), .Y(n1596) );
  MUX2X1 U1364 ( .B(\config_reg[5][0] ), .A(fft_man_wstrb[0]), .S(n984), .Y(
        n1221) );
  INVX1 U1365 ( .A(n1222), .Y(n1597) );
  MUX2X1 U1366 ( .B(\config_reg[4][9] ), .A(fft_man_awlen[9]), .S(n983), .Y(
        n1222) );
  INVX1 U1367 ( .A(n1223), .Y(n1598) );
  MUX2X1 U1368 ( .B(\config_reg[4][8] ), .A(fft_man_awlen[8]), .S(n985), .Y(
        n1223) );
  INVX1 U1369 ( .A(n1224), .Y(n1599) );
  MUX2X1 U1370 ( .B(\config_reg[4][7] ), .A(fft_man_awlen[7]), .S(n984), .Y(
        n1224) );
  INVX1 U1371 ( .A(n1225), .Y(n1600) );
  MUX2X1 U1372 ( .B(\config_reg[4][6] ), .A(fft_man_awlen[6]), .S(n983), .Y(
        n1225) );
  INVX1 U1373 ( .A(n1226), .Y(n1601) );
  MUX2X1 U1374 ( .B(\config_reg[4][5] ), .A(fft_man_awlen[5]), .S(n985), .Y(
        n1226) );
  INVX1 U1375 ( .A(n1227), .Y(n1602) );
  MUX2X1 U1376 ( .B(\config_reg[4][4] ), .A(fft_man_awlen[4]), .S(n984), .Y(
        n1227) );
  INVX1 U1377 ( .A(n1228), .Y(n1603) );
  MUX2X1 U1378 ( .B(\config_reg[4][3] ), .A(fft_man_awlen[3]), .S(n983), .Y(
        n1228) );
  INVX1 U1379 ( .A(n1229), .Y(n1604) );
  MUX2X1 U1380 ( .B(\config_reg[4][2] ), .A(fft_man_awlen[2]), .S(n985), .Y(
        n1229) );
  INVX1 U1381 ( .A(n1230), .Y(n1605) );
  MUX2X1 U1382 ( .B(\config_reg[4][1] ), .A(fft_man_awlen[1]), .S(n984), .Y(
        n1230) );
  INVX1 U1383 ( .A(n1231), .Y(n1606) );
  MUX2X1 U1384 ( .B(\config_reg[4][0] ), .A(fft_man_awlen[0]), .S(n983), .Y(
        n1231) );
  INVX1 U1385 ( .A(n1232), .Y(n1607) );
  MUX2X1 U1386 ( .B(\config_reg[3][31] ), .A(\configs[3][31] ), .S(n985), .Y(
        n1232) );
  INVX1 U1387 ( .A(n1233), .Y(n1608) );
  MUX2X1 U1388 ( .B(\config_reg[3][30] ), .A(\configs[3][30] ), .S(n984), .Y(
        n1233) );
  INVX1 U1389 ( .A(n1234), .Y(n1609) );
  MUX2X1 U1390 ( .B(\config_reg[3][29] ), .A(\configs[3][29] ), .S(n983), .Y(
        n1234) );
  INVX1 U1391 ( .A(n1235), .Y(n1610) );
  MUX2X1 U1392 ( .B(\config_reg[3][28] ), .A(\configs[3][28] ), .S(n985), .Y(
        n1235) );
  INVX1 U1393 ( .A(n1236), .Y(n1611) );
  MUX2X1 U1394 ( .B(\config_reg[3][27] ), .A(\configs[3][27] ), .S(n984), .Y(
        n1236) );
  INVX1 U1395 ( .A(n1237), .Y(n1612) );
  MUX2X1 U1396 ( .B(\config_reg[3][26] ), .A(\configs[3][26] ), .S(n983), .Y(
        n1237) );
  INVX1 U1397 ( .A(n1238), .Y(n1613) );
  MUX2X1 U1398 ( .B(\config_reg[3][25] ), .A(\configs[3][25] ), .S(n985), .Y(
        n1238) );
  INVX1 U1399 ( .A(n1239), .Y(n1614) );
  MUX2X1 U1400 ( .B(\config_reg[3][24] ), .A(\configs[3][24] ), .S(n984), .Y(
        n1239) );
  INVX1 U1401 ( .A(n1240), .Y(n1615) );
  MUX2X1 U1402 ( .B(\config_reg[3][23] ), .A(\configs[3][23] ), .S(n983), .Y(
        n1240) );
  INVX1 U1403 ( .A(n1241), .Y(n1616) );
  MUX2X1 U1404 ( .B(\config_reg[3][22] ), .A(\configs[3][22] ), .S(n985), .Y(
        n1241) );
  INVX1 U1405 ( .A(n1242), .Y(n1617) );
  MUX2X1 U1406 ( .B(\config_reg[3][21] ), .A(\configs[3][21] ), .S(n984), .Y(
        n1242) );
  INVX1 U1407 ( .A(n1243), .Y(n1618) );
  MUX2X1 U1408 ( .B(\config_reg[3][20] ), .A(\configs[3][20] ), .S(n983), .Y(
        n1243) );
  INVX1 U1409 ( .A(n1244), .Y(n1619) );
  MUX2X1 U1410 ( .B(\config_reg[3][19] ), .A(\configs[3][19] ), .S(n985), .Y(
        n1244) );
  INVX1 U1411 ( .A(n1245), .Y(n1620) );
  MUX2X1 U1412 ( .B(\config_reg[3][18] ), .A(\configs[3][18] ), .S(n984), .Y(
        n1245) );
  INVX1 U1413 ( .A(n1246), .Y(n1621) );
  MUX2X1 U1414 ( .B(\config_reg[3][17] ), .A(\configs[3][17] ), .S(n983), .Y(
        n1246) );
  INVX1 U1415 ( .A(n1247), .Y(n1622) );
  MUX2X1 U1416 ( .B(\config_reg[3][16] ), .A(\configs[3][16] ), .S(n985), .Y(
        n1247) );
  INVX1 U1417 ( .A(n1248), .Y(n1623) );
  MUX2X1 U1418 ( .B(\config_reg[3][15] ), .A(\configs[3][15] ), .S(n984), .Y(
        n1248) );
  INVX1 U1419 ( .A(n1249), .Y(n1624) );
  MUX2X1 U1420 ( .B(\config_reg[3][14] ), .A(\configs[3][14] ), .S(n983), .Y(
        n1249) );
  INVX1 U1421 ( .A(n1250), .Y(n1625) );
  MUX2X1 U1422 ( .B(\config_reg[3][13] ), .A(\configs[3][13] ), .S(n985), .Y(
        n1250) );
  INVX1 U1423 ( .A(n1251), .Y(n1626) );
  MUX2X1 U1424 ( .B(\config_reg[3][12] ), .A(\configs[3][12] ), .S(n984), .Y(
        n1251) );
  INVX1 U1425 ( .A(n1252), .Y(n1627) );
  MUX2X1 U1426 ( .B(\config_reg[3][11] ), .A(\configs[3][11] ), .S(n983), .Y(
        n1252) );
  INVX1 U1427 ( .A(n1253), .Y(n1628) );
  MUX2X1 U1428 ( .B(\config_reg[3][10] ), .A(\configs[3][10] ), .S(n985), .Y(
        n1253) );
  INVX1 U1429 ( .A(n1254), .Y(n1629) );
  MUX2X1 U1430 ( .B(\config_reg[3][9] ), .A(\configs[3][9] ), .S(n984), .Y(
        n1254) );
  INVX1 U1431 ( .A(n1255), .Y(n1630) );
  MUX2X1 U1432 ( .B(\config_reg[3][8] ), .A(\configs[3][8] ), .S(n983), .Y(
        n1255) );
  INVX1 U1433 ( .A(n1256), .Y(n1631) );
  MUX2X1 U1434 ( .B(\config_reg[3][7] ), .A(\configs[3][7] ), .S(n985), .Y(
        n1256) );
  INVX1 U1435 ( .A(n1257), .Y(n1632) );
  MUX2X1 U1436 ( .B(\config_reg[3][6] ), .A(\configs[3][6] ), .S(n984), .Y(
        n1257) );
  INVX1 U1437 ( .A(n1258), .Y(n1633) );
  MUX2X1 U1438 ( .B(\config_reg[3][5] ), .A(\configs[3][5] ), .S(n983), .Y(
        n1258) );
  INVX1 U1439 ( .A(n1259), .Y(n1634) );
  MUX2X1 U1440 ( .B(\config_reg[3][4] ), .A(\configs[3][4] ), .S(n985), .Y(
        n1259) );
  INVX1 U1441 ( .A(n1260), .Y(n1635) );
  MUX2X1 U1442 ( .B(\config_reg[3][3] ), .A(\configs[3][3] ), .S(n984), .Y(
        n1260) );
  INVX1 U1443 ( .A(n1261), .Y(n1636) );
  MUX2X1 U1444 ( .B(\config_reg[3][2] ), .A(\configs[3][2] ), .S(n983), .Y(
        n1261) );
  INVX1 U1445 ( .A(n1262), .Y(n1637) );
  MUX2X1 U1446 ( .B(\config_reg[3][1] ), .A(\configs[3][1] ), .S(n985), .Y(
        n1262) );
  INVX1 U1447 ( .A(n1263), .Y(n1638) );
  MUX2X1 U1448 ( .B(\config_reg[3][0] ), .A(\configs[3][0] ), .S(n984), .Y(
        n1263) );
  INVX1 U1449 ( .A(n1264), .Y(n1639) );
  MUX2X1 U1450 ( .B(\config_reg[2][9] ), .A(fft_man_arlen[9]), .S(n983), .Y(
        n1264) );
  INVX1 U1451 ( .A(n1265), .Y(n1640) );
  MUX2X1 U1452 ( .B(\config_reg[2][8] ), .A(fft_man_arlen[8]), .S(n985), .Y(
        n1265) );
  INVX1 U1453 ( .A(n1266), .Y(n1641) );
  MUX2X1 U1454 ( .B(\config_reg[2][7] ), .A(fft_man_arlen[7]), .S(n984), .Y(
        n1266) );
  INVX1 U1455 ( .A(n1267), .Y(n1642) );
  MUX2X1 U1456 ( .B(\config_reg[2][6] ), .A(fft_man_arlen[6]), .S(n983), .Y(
        n1267) );
  INVX1 U1457 ( .A(n1268), .Y(n1643) );
  MUX2X1 U1458 ( .B(\config_reg[2][5] ), .A(fft_man_arlen[5]), .S(n985), .Y(
        n1268) );
  INVX1 U1459 ( .A(n1269), .Y(n1644) );
  MUX2X1 U1460 ( .B(\config_reg[2][4] ), .A(fft_man_arlen[4]), .S(n984), .Y(
        n1269) );
  INVX1 U1461 ( .A(n1270), .Y(n1645) );
  MUX2X1 U1462 ( .B(\config_reg[2][3] ), .A(fft_man_arlen[3]), .S(n983), .Y(
        n1270) );
  INVX1 U1463 ( .A(n1271), .Y(n1646) );
  MUX2X1 U1464 ( .B(\config_reg[2][2] ), .A(fft_man_arlen[2]), .S(n985), .Y(
        n1271) );
  INVX1 U1465 ( .A(n1272), .Y(n1647) );
  MUX2X1 U1466 ( .B(\config_reg[2][1] ), .A(fft_man_arlen[1]), .S(n984), .Y(
        n1272) );
  INVX1 U1467 ( .A(n1273), .Y(n1648) );
  MUX2X1 U1468 ( .B(\config_reg[2][0] ), .A(fft_man_arlen[0]), .S(n983), .Y(
        n1273) );
  INVX1 U1469 ( .A(n1274), .Y(n1649) );
  MUX2X1 U1470 ( .B(\config_reg[1][31] ), .A(\configs[1][31] ), .S(n985), .Y(
        n1274) );
  INVX1 U1471 ( .A(n1275), .Y(n1650) );
  MUX2X1 U1472 ( .B(\config_reg[1][30] ), .A(\configs[1][30] ), .S(n984), .Y(
        n1275) );
  INVX1 U1473 ( .A(n1276), .Y(n1651) );
  MUX2X1 U1474 ( .B(\config_reg[1][29] ), .A(\configs[1][29] ), .S(n983), .Y(
        n1276) );
  INVX1 U1475 ( .A(n1277), .Y(n1652) );
  MUX2X1 U1476 ( .B(\config_reg[1][28] ), .A(\configs[1][28] ), .S(n985), .Y(
        n1277) );
  INVX1 U1477 ( .A(n1278), .Y(n1653) );
  MUX2X1 U1478 ( .B(\config_reg[1][27] ), .A(\configs[1][27] ), .S(n984), .Y(
        n1278) );
  INVX1 U1479 ( .A(n1279), .Y(n1654) );
  MUX2X1 U1480 ( .B(\config_reg[1][26] ), .A(\configs[1][26] ), .S(n983), .Y(
        n1279) );
  INVX1 U1481 ( .A(n1280), .Y(n1655) );
  MUX2X1 U1482 ( .B(\config_reg[1][25] ), .A(\configs[1][25] ), .S(n985), .Y(
        n1280) );
  INVX1 U1483 ( .A(n1281), .Y(n1656) );
  MUX2X1 U1484 ( .B(\config_reg[1][24] ), .A(\configs[1][24] ), .S(n984), .Y(
        n1281) );
  INVX1 U1485 ( .A(n1282), .Y(n1657) );
  MUX2X1 U1486 ( .B(\config_reg[1][23] ), .A(\configs[1][23] ), .S(n983), .Y(
        n1282) );
  INVX1 U1487 ( .A(n1283), .Y(n1658) );
  MUX2X1 U1488 ( .B(\config_reg[1][22] ), .A(\configs[1][22] ), .S(n985), .Y(
        n1283) );
  INVX1 U1489 ( .A(n1284), .Y(n1659) );
  MUX2X1 U1490 ( .B(\config_reg[1][21] ), .A(\configs[1][21] ), .S(n984), .Y(
        n1284) );
  INVX1 U1491 ( .A(n1285), .Y(n1660) );
  MUX2X1 U1492 ( .B(\config_reg[1][20] ), .A(\configs[1][20] ), .S(n983), .Y(
        n1285) );
  INVX1 U1493 ( .A(n1286), .Y(n1661) );
  MUX2X1 U1494 ( .B(\config_reg[1][19] ), .A(\configs[1][19] ), .S(n985), .Y(
        n1286) );
  INVX1 U1495 ( .A(n1287), .Y(n1662) );
  MUX2X1 U1496 ( .B(\config_reg[1][18] ), .A(\configs[1][18] ), .S(n984), .Y(
        n1287) );
  INVX1 U1497 ( .A(n1288), .Y(n1663) );
  MUX2X1 U1498 ( .B(\config_reg[1][17] ), .A(\configs[1][17] ), .S(n983), .Y(
        n1288) );
  INVX1 U1499 ( .A(n1289), .Y(n1664) );
  MUX2X1 U1500 ( .B(\config_reg[1][16] ), .A(\configs[1][16] ), .S(n985), .Y(
        n1289) );
  INVX1 U1501 ( .A(n1290), .Y(n1665) );
  MUX2X1 U1502 ( .B(\config_reg[1][15] ), .A(\configs[1][15] ), .S(n984), .Y(
        n1290) );
  INVX1 U1503 ( .A(n1291), .Y(n1666) );
  MUX2X1 U1504 ( .B(\config_reg[1][14] ), .A(\configs[1][14] ), .S(n983), .Y(
        n1291) );
  INVX1 U1505 ( .A(n1292), .Y(n1667) );
  MUX2X1 U1506 ( .B(\config_reg[1][13] ), .A(\configs[1][13] ), .S(n985), .Y(
        n1292) );
  INVX1 U1507 ( .A(n1293), .Y(n1668) );
  MUX2X1 U1508 ( .B(\config_reg[1][12] ), .A(\configs[1][12] ), .S(n984), .Y(
        n1293) );
  INVX1 U1509 ( .A(n1294), .Y(n1669) );
  MUX2X1 U1510 ( .B(\config_reg[1][11] ), .A(\configs[1][11] ), .S(n983), .Y(
        n1294) );
  INVX1 U1511 ( .A(n1295), .Y(n1670) );
  MUX2X1 U1512 ( .B(\config_reg[1][10] ), .A(\configs[1][10] ), .S(n985), .Y(
        n1295) );
  INVX1 U1513 ( .A(n1296), .Y(n1671) );
  MUX2X1 U1514 ( .B(\config_reg[1][9] ), .A(\configs[1][9] ), .S(n984), .Y(
        n1296) );
  INVX1 U1515 ( .A(n1297), .Y(n1672) );
  MUX2X1 U1516 ( .B(\config_reg[1][8] ), .A(\configs[1][8] ), .S(n983), .Y(
        n1297) );
  INVX1 U1517 ( .A(n1298), .Y(n1673) );
  MUX2X1 U1518 ( .B(\config_reg[1][7] ), .A(\configs[1][7] ), .S(n985), .Y(
        n1298) );
  INVX1 U1519 ( .A(n1299), .Y(n1674) );
  MUX2X1 U1520 ( .B(\config_reg[1][6] ), .A(\configs[1][6] ), .S(n984), .Y(
        n1299) );
  INVX1 U1521 ( .A(n1300), .Y(n1675) );
  MUX2X1 U1522 ( .B(\config_reg[1][5] ), .A(\configs[1][5] ), .S(n983), .Y(
        n1300) );
  INVX1 U1523 ( .A(n1301), .Y(n1676) );
  MUX2X1 U1524 ( .B(\config_reg[1][4] ), .A(\configs[1][4] ), .S(n985), .Y(
        n1301) );
  INVX1 U1525 ( .A(n1302), .Y(n1677) );
  MUX2X1 U1526 ( .B(\config_reg[1][3] ), .A(\configs[1][3] ), .S(n984), .Y(
        n1302) );
  INVX1 U1527 ( .A(n1303), .Y(n1678) );
  MUX2X1 U1528 ( .B(\config_reg[1][2] ), .A(\configs[1][2] ), .S(n983), .Y(
        n1303) );
  INVX1 U1529 ( .A(n1304), .Y(n1679) );
  MUX2X1 U1530 ( .B(\config_reg[1][1] ), .A(\configs[1][1] ), .S(n985), .Y(
        n1304) );
  INVX1 U1531 ( .A(n1305), .Y(n1680) );
  MUX2X1 U1532 ( .B(\config_reg[1][0] ), .A(\configs[1][0] ), .S(n984), .Y(
        n1305) );
  INVX1 U1533 ( .A(n1306), .Y(n1681) );
  MUX2X1 U1534 ( .B(N50), .A(r_frame_size[1]), .S(n983), .Y(n1306) );
  INVX1 U1535 ( .A(n1307), .Y(n1682) );
  MUX2X1 U1536 ( .B(N51), .A(r_frame_size[2]), .S(n985), .Y(n1307) );
  INVX1 U1537 ( .A(n1308), .Y(n1683) );
  MUX2X1 U1538 ( .B(N52), .A(r_frame_size[3]), .S(n984), .Y(n1308) );
  INVX1 U1539 ( .A(n1309), .Y(n1684) );
  MUX2X1 U1540 ( .B(N53), .A(r_frame_size[4]), .S(n983), .Y(n1309) );
  INVX1 U1541 ( .A(n1310), .Y(n1685) );
  MUX2X1 U1542 ( .B(N54), .A(r_frame_size[5]), .S(n985), .Y(n1310) );
  INVX1 U1543 ( .A(n1311), .Y(n1686) );
  MUX2X1 U1544 ( .B(N55), .A(r_frame_size[6]), .S(n984), .Y(n1311) );
  INVX1 U1545 ( .A(n1312), .Y(n1687) );
  MUX2X1 U1546 ( .B(N56), .A(r_frame_size[7]), .S(n983), .Y(n1312) );
  INVX1 U1547 ( .A(n1313), .Y(n1688) );
  MUX2X1 U1548 ( .B(N57), .A(r_frame_size[8]), .S(n985), .Y(n1313) );
  INVX1 U1549 ( .A(n1314), .Y(n1689) );
  MUX2X1 U1550 ( .B(N58), .A(r_frame_size[9]), .S(n984), .Y(n1314) );
  INVX1 U1551 ( .A(n1315), .Y(n1690) );
  MUX2X1 U1552 ( .B(N59), .A(r_frame_size[10]), .S(n983), .Y(n1315) );
  INVX1 U1553 ( .A(n1316), .Y(n1691) );
  MUX2X1 U1554 ( .B(N60), .A(w_frame_size[0]), .S(n985), .Y(n1316) );
  INVX1 U1555 ( .A(n1317), .Y(n1692) );
  MUX2X1 U1556 ( .B(N61), .A(w_frame_size[1]), .S(n984), .Y(n1317) );
  INVX1 U1557 ( .A(n1318), .Y(n1693) );
  MUX2X1 U1558 ( .B(N62), .A(w_frame_size[2]), .S(n983), .Y(n1318) );
  INVX1 U1559 ( .A(n1319), .Y(n1694) );
  MUX2X1 U1560 ( .B(N63), .A(w_frame_size[3]), .S(n985), .Y(n1319) );
  INVX1 U1561 ( .A(n1320), .Y(n1695) );
  MUX2X1 U1562 ( .B(N64), .A(w_frame_size[4]), .S(n984), .Y(n1320) );
  INVX1 U1563 ( .A(n1321), .Y(n1696) );
  MUX2X1 U1564 ( .B(N65), .A(w_frame_size[5]), .S(n983), .Y(n1321) );
  INVX1 U1565 ( .A(n1322), .Y(n1697) );
  MUX2X1 U1566 ( .B(N66), .A(w_frame_size[6]), .S(n985), .Y(n1322) );
  INVX1 U1567 ( .A(n1323), .Y(n1698) );
  MUX2X1 U1568 ( .B(N67), .A(w_frame_size[7]), .S(n984), .Y(n1323) );
  INVX1 U1569 ( .A(n1324), .Y(n1699) );
  MUX2X1 U1570 ( .B(N68), .A(w_frame_size[8]), .S(n983), .Y(n1324) );
  INVX1 U1571 ( .A(n1325), .Y(n1700) );
  MUX2X1 U1572 ( .B(N69), .A(w_frame_size[9]), .S(n985), .Y(n1325) );
  INVX1 U1573 ( .A(n1326), .Y(n1701) );
  MUX2X1 U1574 ( .B(N70), .A(w_frame_size[10]), .S(n984), .Y(n1326) );
  INVX1 U1575 ( .A(n1327), .Y(n1702) );
  MUX2X1 U1576 ( .B(N49), .A(r_frame_size[0]), .S(n983), .Y(n1327) );
  INVX1 U1577 ( .A(n1328), .Y(n1703) );
  MUX2X1 U1578 ( .B(N33), .A(frame_size[9]), .S(n1329), .Y(n1328) );
  INVX1 U1579 ( .A(n1330), .Y(n1704) );
  MUX2X1 U1580 ( .B(N32), .A(frame_size[8]), .S(n1329), .Y(n1330) );
  INVX1 U1581 ( .A(n1331), .Y(n1705) );
  MUX2X1 U1582 ( .B(N31), .A(frame_size[7]), .S(n1329), .Y(n1331) );
  INVX1 U1583 ( .A(n1332), .Y(n1706) );
  MUX2X1 U1584 ( .B(N30), .A(frame_size[6]), .S(n1329), .Y(n1332) );
  INVX1 U1585 ( .A(n1333), .Y(n1707) );
  MUX2X1 U1586 ( .B(N29), .A(frame_size[5]), .S(n1329), .Y(n1333) );
  INVX1 U1587 ( .A(n1334), .Y(n1708) );
  MUX2X1 U1588 ( .B(N28), .A(frame_size[4]), .S(n1329), .Y(n1334) );
  INVX1 U1589 ( .A(n1335), .Y(n1709) );
  MUX2X1 U1590 ( .B(N27), .A(frame_size[3]), .S(n1329), .Y(n1335) );
  INVX1 U1591 ( .A(n1336), .Y(n1710) );
  MUX2X1 U1592 ( .B(N26), .A(frame_size[2]), .S(n1329), .Y(n1336) );
  INVX1 U1593 ( .A(n1337), .Y(n1711) );
  MUX2X1 U1594 ( .B(N25), .A(frame_size[1]), .S(n1329), .Y(n1337) );
  INVX1 U1595 ( .A(n1338), .Y(n1712) );
  MUX2X1 U1596 ( .B(N24), .A(frame_size[0]), .S(n1329), .Y(n1338) );
  OAI21X1 U1597 ( .A(N18), .B(n1339), .C(n1340), .Y(n973) );
  AOI21X1 U1598 ( .A(k[10]), .B(n1341), .C(n1342), .Y(n1340) );
  OAI21X1 U1599 ( .A(n1343), .B(n1339), .C(n1344), .Y(n1341) );
  INVX1 U1600 ( .A(n1345), .Y(n1344) );
  NAND2X1 U1601 ( .A(n1346), .B(n1347), .Y(n972) );
  MUX2X1 U1602 ( .B(n1348), .A(n1349), .S(n1218), .Y(n1346) );
  OAI21X1 U1603 ( .A(n1350), .B(n1339), .C(n1351), .Y(n971) );
  AOI21X1 U1604 ( .A(k[1]), .B(n1352), .C(n1353), .Y(n1351) );
  OAI21X1 U1605 ( .A(n1218), .B(n1339), .C(n1354), .Y(n1352) );
  INVX1 U1606 ( .A(k[0]), .Y(n1218) );
  NAND2X1 U1607 ( .A(n1355), .B(n1356), .Y(n970) );
  MUX2X1 U1608 ( .B(n1357), .A(n1358), .S(n1214), .Y(n1355) );
  NOR2X1 U1609 ( .A(n1350), .B(n1339), .Y(n1358) );
  INVX1 U1610 ( .A(n1359), .Y(n1350) );
  OAI21X1 U1611 ( .A(n1360), .B(n1339), .C(n1361), .Y(n969) );
  AOI21X1 U1612 ( .A(k[3]), .B(n1362), .C(n1363), .Y(n1361) );
  OAI21X1 U1613 ( .A(n1214), .B(n1339), .C(n1364), .Y(n1362) );
  INVX1 U1614 ( .A(n1357), .Y(n1364) );
  OAI21X1 U1615 ( .A(n1359), .B(n1339), .C(n1354), .Y(n1357) );
  NAND2X1 U1616 ( .A(n1365), .B(n1366), .Y(n968) );
  MUX2X1 U1617 ( .B(n1367), .A(n1368), .S(n1210), .Y(n1365) );
  NOR2X1 U1618 ( .A(n1360), .B(n1339), .Y(n1368) );
  OAI21X1 U1619 ( .A(n1369), .B(n1339), .C(n1370), .Y(n967) );
  AOI21X1 U1620 ( .A(k[5]), .B(n1371), .C(n1372), .Y(n1370) );
  OAI21X1 U1621 ( .A(n1339), .B(n1210), .C(n1373), .Y(n1371) );
  INVX1 U1622 ( .A(n1367), .Y(n1373) );
  OAI21X1 U1623 ( .A(n1374), .B(n1339), .C(n1354), .Y(n1367) );
  NAND2X1 U1624 ( .A(n1375), .B(n1376), .Y(n966) );
  MUX2X1 U1625 ( .B(n1377), .A(n1378), .S(n1203), .Y(n1375) );
  NOR2X1 U1626 ( .A(n1369), .B(n1339), .Y(n1378) );
  OAI21X1 U1627 ( .A(n1379), .B(n1339), .C(n1380), .Y(n965) );
  AOI21X1 U1628 ( .A(k[7]), .B(n1381), .C(n1382), .Y(n1380) );
  OAI21X1 U1629 ( .A(n1339), .B(n1203), .C(n1383), .Y(n1381) );
  INVX1 U1630 ( .A(n1377), .Y(n1383) );
  OAI21X1 U1631 ( .A(n1384), .B(n1339), .C(n1354), .Y(n1377) );
  OAI21X1 U1632 ( .A(n1385), .B(n1196), .C(n1386), .Y(n964) );
  NOR2X1 U1633 ( .A(n1387), .B(n1388), .Y(n1386) );
  NAND2X1 U1634 ( .A(n1389), .B(n1390), .Y(n963) );
  MUX2X1 U1635 ( .B(n1345), .A(n1388), .S(n1343), .Y(n1389) );
  NOR3X1 U1636 ( .A(n1379), .B(k[8]), .C(n1339), .Y(n1388) );
  OAI21X1 U1637 ( .A(n1339), .B(n1196), .C(n1385), .Y(n1345) );
  AOI21X1 U1638 ( .A(n1379), .B(n1349), .C(n1348), .Y(n1385) );
  NOR2X1 U1639 ( .A(n1106), .B(n1348), .Y(n1349) );
  INVX1 U1640 ( .A(n1354), .Y(n1348) );
  OAI21X1 U1641 ( .A(n1106), .B(n1184), .C(n985), .Y(n1354) );
  INVX1 U1642 ( .A(k_gt_0), .Y(n1184) );
  OAI21X1 U1643 ( .A(N19), .B(n1391), .C(n1392), .Y(n962) );
  AOI21X1 U1644 ( .A(j[10]), .B(n1393), .C(n1342), .Y(n1392) );
  INVX1 U1645 ( .A(n1394), .Y(n1342) );
  OAI21X1 U1646 ( .A(n1395), .B(n1391), .C(n1396), .Y(n1393) );
  INVX1 U1647 ( .A(n1397), .Y(n1396) );
  NAND2X1 U1648 ( .A(n1398), .B(n1347), .Y(n961) );
  MUX2X1 U1649 ( .B(n1399), .A(n1400), .S(n1401), .Y(n1398) );
  OAI21X1 U1650 ( .A(n1145), .B(n1391), .C(n1402), .Y(n960) );
  AOI21X1 U1651 ( .A(j[1]), .B(n1403), .C(n1353), .Y(n1402) );
  INVX1 U1652 ( .A(n1404), .Y(n1353) );
  OAI21X1 U1653 ( .A(n1391), .B(n1401), .C(n1109), .Y(n1403) );
  INVX1 U1654 ( .A(j[0]), .Y(n1401) );
  NAND2X1 U1655 ( .A(n1405), .B(n1356), .Y(n959) );
  MUX2X1 U1656 ( .B(n1406), .A(n1407), .S(n1141), .Y(n1405) );
  NOR2X1 U1657 ( .A(n1145), .B(n1391), .Y(n1407) );
  INVX1 U1658 ( .A(n1408), .Y(n1145) );
  OAI21X1 U1659 ( .A(n1409), .B(n1391), .C(n1410), .Y(n958) );
  AOI21X1 U1660 ( .A(j[3]), .B(n1411), .C(n1363), .Y(n1410) );
  INVX1 U1661 ( .A(n1412), .Y(n1363) );
  OAI21X1 U1662 ( .A(n1141), .B(n1391), .C(n1413), .Y(n1411) );
  INVX1 U1663 ( .A(n1406), .Y(n1413) );
  OAI21X1 U1664 ( .A(n1408), .B(n1391), .C(n1109), .Y(n1406) );
  NAND2X1 U1665 ( .A(n1414), .B(n1366), .Y(n957) );
  MUX2X1 U1666 ( .B(n1415), .A(n1416), .S(n1148), .Y(n1414) );
  NOR2X1 U1667 ( .A(n1409), .B(n1391), .Y(n1416) );
  OAI21X1 U1668 ( .A(n1417), .B(n1391), .C(n1418), .Y(n956) );
  AOI21X1 U1669 ( .A(j[5]), .B(n1419), .C(n1372), .Y(n1418) );
  INVX1 U1670 ( .A(n1420), .Y(n1372) );
  OAI21X1 U1671 ( .A(n1148), .B(n1391), .C(n1421), .Y(n1419) );
  INVX1 U1672 ( .A(n1415), .Y(n1421) );
  OAI21X1 U1673 ( .A(n1422), .B(n1391), .C(n1109), .Y(n1415) );
  NAND2X1 U1674 ( .A(n1423), .B(n1376), .Y(n955) );
  MUX2X1 U1675 ( .B(n1424), .A(n1425), .S(n1126), .Y(n1423) );
  NOR2X1 U1676 ( .A(n1417), .B(n1391), .Y(n1425) );
  OAI21X1 U1677 ( .A(n1391), .B(n1426), .C(n1427), .Y(n954) );
  AOI21X1 U1678 ( .A(j[7]), .B(n1428), .C(n1382), .Y(n1427) );
  INVX1 U1679 ( .A(n1429), .Y(n1382) );
  OAI21X1 U1680 ( .A(n1126), .B(n1391), .C(n1430), .Y(n1428) );
  INVX1 U1681 ( .A(n1424), .Y(n1430) );
  OAI21X1 U1682 ( .A(n1431), .B(n1391), .C(n1109), .Y(n1424) );
  OAI21X1 U1683 ( .A(n1432), .B(n1118), .C(n1433), .Y(n953) );
  NOR2X1 U1684 ( .A(n1387), .B(n1434), .Y(n1433) );
  INVX1 U1685 ( .A(n1435), .Y(n1387) );
  NAND2X1 U1686 ( .A(n1436), .B(n1390), .Y(n952) );
  MUX2X1 U1687 ( .B(n1397), .A(n1434), .S(n1395), .Y(n1436) );
  NOR3X1 U1688 ( .A(n1391), .B(j[8]), .C(n1426), .Y(n1434) );
  OAI21X1 U1689 ( .A(n1118), .B(n1391), .C(n1432), .Y(n1397) );
  AOI21X1 U1690 ( .A(n1426), .B(n1400), .C(n1399), .Y(n1432) );
  NOR2X1 U1691 ( .A(n1106), .B(n1399), .Y(n1400) );
  INVX1 U1692 ( .A(n1109), .Y(n1399) );
  NAND2X1 U1693 ( .A(n983), .B(n1069), .Y(n1109) );
  NAND3X1 U1694 ( .A(j_eq_k), .B(n1029), .C(j_gt_0), .Y(n1069) );
  XNOR2X1 U1695 ( .A(n1437), .B(n1438), .Y(n951) );
  OAI21X1 U1696 ( .A(n1106), .B(n1439), .C(n984), .Y(n1437) );
  OR2X1 U1697 ( .A(N18), .B(N19), .Y(n1439) );
  INVX1 U1698 ( .A(n1029), .Y(n1106) );
  NOR2X1 U1699 ( .A(n1438), .B(n1329), .Y(n1029) );
  OAI21X1 U1700 ( .A(n978), .B(n1146), .C(n1347), .Y(n950) );
  NAND2X1 U1701 ( .A(\config_reg[0][0] ), .B(n978), .Y(n1347) );
  INVX1 U1702 ( .A(\configs[0][0] ), .Y(n1146) );
  OAI21X1 U1703 ( .A(n978), .B(n1147), .C(n1404), .Y(n949) );
  NAND2X1 U1704 ( .A(\config_reg[0][1] ), .B(n978), .Y(n1404) );
  INVX1 U1705 ( .A(\configs[0][1] ), .Y(n1147) );
  OAI21X1 U1706 ( .A(n978), .B(n1139), .C(n1356), .Y(n948) );
  NAND2X1 U1707 ( .A(\config_reg[0][2] ), .B(n978), .Y(n1356) );
  INVX1 U1708 ( .A(\configs[0][2] ), .Y(n1139) );
  OAI21X1 U1709 ( .A(n978), .B(n1138), .C(n1412), .Y(n947) );
  NAND2X1 U1710 ( .A(\config_reg[0][3] ), .B(n978), .Y(n1412) );
  INVX1 U1711 ( .A(\configs[0][3] ), .Y(n1138) );
  OAI21X1 U1712 ( .A(n978), .B(n1134), .C(n1366), .Y(n946) );
  NAND2X1 U1713 ( .A(\config_reg[0][4] ), .B(n978), .Y(n1366) );
  INVX1 U1714 ( .A(\configs[0][4] ), .Y(n1134) );
  OAI21X1 U1715 ( .A(n978), .B(n1130), .C(n1420), .Y(n945) );
  NAND2X1 U1716 ( .A(\config_reg[0][5] ), .B(n978), .Y(n1420) );
  INVX1 U1717 ( .A(\configs[0][5] ), .Y(n1130) );
  OAI21X1 U1718 ( .A(n978), .B(n1124), .C(n1376), .Y(n944) );
  NAND2X1 U1719 ( .A(\config_reg[0][6] ), .B(n978), .Y(n1376) );
  INVX1 U1720 ( .A(\configs[0][6] ), .Y(n1124) );
  OAI21X1 U1721 ( .A(n978), .B(n1122), .C(n1429), .Y(n943) );
  NAND2X1 U1722 ( .A(\config_reg[0][7] ), .B(n978), .Y(n1429) );
  INVX1 U1723 ( .A(\configs[0][7] ), .Y(n1122) );
  OAI21X1 U1724 ( .A(n978), .B(n1116), .C(n1435), .Y(n942) );
  NAND2X1 U1725 ( .A(\config_reg[0][8] ), .B(n978), .Y(n1435) );
  INVX1 U1726 ( .A(\configs[0][8] ), .Y(n1116) );
  OAI21X1 U1727 ( .A(n978), .B(n1115), .C(n1390), .Y(n941) );
  NAND2X1 U1728 ( .A(\config_reg[0][9] ), .B(n978), .Y(n1390) );
  INVX1 U1729 ( .A(\configs[0][9] ), .Y(n1115) );
  OAI21X1 U1730 ( .A(n978), .B(n1149), .C(n1394), .Y(n940) );
  NAND2X1 U1731 ( .A(\config_reg[0][10] ), .B(n978), .Y(n1394) );
  INVX1 U1732 ( .A(\configs[0][10] ), .Y(n1149) );
  INVX1 U1733 ( .A(processing), .Y(n1438) );
  NAND2X1 U1734 ( .A(n1329), .B(n1440), .Y(n437) );
  INVX1 U1735 ( .A(load_size), .Y(n1440) );
  NAND3X1 U1736 ( .A(n1025), .B(n1441), .C(n1442), .Y(n1329) );
  NOR2X1 U1737 ( .A(wstate[1]), .B(wstate[0]), .Y(n1442) );
  AND2X1 U1738 ( .A(fft_man_rvalid), .B(fft_man_rready), .Y(in_valid) );
  AND2X1 U1739 ( .A(out_valid), .B(n990), .Y(fft_man_wvalid) );
  NOR2X1 U1740 ( .A(n988), .B(wstate[0]), .Y(n990) );
  NOR2X1 U1741 ( .A(n1441), .B(rstate[0]), .Y(fft_man_rready) );
  INVX1 U1742 ( .A(rstate[1]), .Y(n1441) );
  NOR2X1 U1743 ( .A(n1067), .B(wstate[1]), .Y(fft_man_awvalid) );
  NOR2X1 U1744 ( .A(n1025), .B(rstate[1]), .Y(fft_man_arvalid) );
  INVX1 U1745 ( .A(rstate[0]), .Y(n1025) );
  NOR2X1 U1746 ( .A(n1067), .B(n988), .Y(N295) );
  INVX1 U1747 ( .A(wstate[1]), .Y(n988) );
  INVX1 U1748 ( .A(wstate[0]), .Y(n1067) );
  NAND3X1 U1749 ( .A(n1118), .B(n1395), .C(n1443), .Y(N19) );
  NOR2X1 U1750 ( .A(j[10]), .B(n1426), .Y(n1443) );
  NAND3X1 U1751 ( .A(n1126), .B(n1444), .C(n1431), .Y(n1426) );
  INVX1 U1752 ( .A(n1417), .Y(n1431) );
  NAND3X1 U1753 ( .A(n1148), .B(n1445), .C(n1422), .Y(n1417) );
  INVX1 U1754 ( .A(n1409), .Y(n1422) );
  NAND3X1 U1755 ( .A(n1141), .B(n1446), .C(n1408), .Y(n1409) );
  NOR2X1 U1756 ( .A(j[0]), .B(j[1]), .Y(n1408) );
  INVX1 U1757 ( .A(j[3]), .Y(n1446) );
  INVX1 U1758 ( .A(j[2]), .Y(n1141) );
  INVX1 U1759 ( .A(j[5]), .Y(n1445) );
  INVX1 U1760 ( .A(j[4]), .Y(n1148) );
  INVX1 U1761 ( .A(j[7]), .Y(n1444) );
  INVX1 U1762 ( .A(j[6]), .Y(n1126) );
  INVX1 U1763 ( .A(j[9]), .Y(n1395) );
  INVX1 U1764 ( .A(j[8]), .Y(n1118) );
  NAND3X1 U1765 ( .A(n1196), .B(n1343), .C(n1447), .Y(N18) );
  NOR2X1 U1766 ( .A(k[10]), .B(n1379), .Y(n1447) );
  NAND3X1 U1767 ( .A(n1203), .B(n1448), .C(n1384), .Y(n1379) );
  INVX1 U1768 ( .A(n1369), .Y(n1384) );
  NAND3X1 U1769 ( .A(n1210), .B(n1449), .C(n1374), .Y(n1369) );
  INVX1 U1770 ( .A(n1360), .Y(n1374) );
  NAND3X1 U1771 ( .A(n1214), .B(n1211), .C(n1359), .Y(n1360) );
  NOR2X1 U1772 ( .A(k[0]), .B(k[1]), .Y(n1359) );
  INVX1 U1773 ( .A(k[3]), .Y(n1211) );
  INVX1 U1774 ( .A(k[2]), .Y(n1214) );
  INVX1 U1775 ( .A(k[5]), .Y(n1449) );
  INVX1 U1776 ( .A(k[4]), .Y(n1210) );
  INVX1 U1777 ( .A(k[6]), .Y(n1203) );
  NOR2X1 U1778 ( .A(n1450), .B(n1451), .Y(N17) );
  NAND3X1 U1779 ( .A(n1452), .B(n1453), .C(n1454), .Y(n1451) );
  NOR2X1 U1780 ( .A(n1455), .B(n1456), .Y(n1454) );
  XNOR2X1 U1781 ( .A(n1343), .B(j[9]), .Y(n1456) );
  INVX1 U1782 ( .A(k[9]), .Y(n1343) );
  XNOR2X1 U1783 ( .A(n1196), .B(j[8]), .Y(n1455) );
  INVX1 U1784 ( .A(k[8]), .Y(n1196) );
  XNOR2X1 U1785 ( .A(k[6]), .B(j[6]), .Y(n1453) );
  NOR2X1 U1786 ( .A(n1457), .B(n1458), .Y(n1452) );
  XOR2X1 U1787 ( .A(k[10]), .B(j[10]), .Y(n1458) );
  XNOR2X1 U1788 ( .A(n1448), .B(j[7]), .Y(n1457) );
  INVX1 U1789 ( .A(k[7]), .Y(n1448) );
  OR2X1 U1790 ( .A(n1459), .B(n1460), .Y(n1450) );
  NAND3X1 U1791 ( .A(n1461), .B(n1462), .C(n1463), .Y(n1460) );
  XNOR2X1 U1792 ( .A(k[4]), .B(j[4]), .Y(n1463) );
  XNOR2X1 U1793 ( .A(j[5]), .B(k[5]), .Y(n1462) );
  XNOR2X1 U1794 ( .A(j[3]), .B(k[3]), .Y(n1461) );
  NAND3X1 U1795 ( .A(n1464), .B(n1465), .C(n1466), .Y(n1459) );
  XNOR2X1 U1796 ( .A(j[1]), .B(k[1]), .Y(n1466) );
  XNOR2X1 U1797 ( .A(j[2]), .B(k[2]), .Y(n1465) );
  XNOR2X1 U1798 ( .A(j[0]), .B(k[0]), .Y(n1464) );
endmodule

