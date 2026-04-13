/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4
// Date      : Mon Apr 13 17:58:44 2026
/////////////////////////////////////////////////////////////


module multiplier_DW_mult_tc_1 ( a, b, product );
  input [16:0] a;
  input [15:0] b;
  output [32:0] product;
  wire   n1, n3, n4, n5, n6, n7, n9, n10, n11, n12, n13, n15, n16, n17, n18,
         n19, n21, n22, n23, n24, n25, n27, n28, n29, n30, n31, n33, n34, n35,
         n36, n37, n39, n40, n41, n42, n43, n45, n46, n47, n48, n49, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
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
         n305, n306, n307, n309, n310, n312, n313, n315, n316, n318, n319,
         n321, n322, n324, n325, n327, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566,
         n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, n577,
         n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588,
         n589, n590, n591, n592, n593, n594, n595, n596, n597, n598, n599,
         n600, n601, n602, n603, n604, n605, n606, n607, n608, n609, n610,
         n611, n612, n613, n614, n615, n616, n617, n618, n619, n620, n621,
         n622, n623, n624, n625, n626, n627, n628, n629, n630, n631, n632,
         n633, n635, n636, n637, n638, n639, n640, n641, n642, n643, n644,
         n645, n646, n647, n648, n649, n650, n651, n652, n653, n654, n655,
         n656, n657, n658, n659, n660, n661, n662, n663, n664, n665, n666;

  INVX2 U51 ( .A(n51), .Y(product[32]) );
  FAX1 U52 ( .A(n82), .B(n338), .C(n52), .YC(n51), .YS(product[31]) );
  FAX1 U53 ( .A(n83), .B(n84), .C(n53), .YC(n52), .YS(product[30]) );
  FAX1 U54 ( .A(n85), .B(n86), .C(n54), .YC(n53), .YS(product[29]) );
  FAX1 U55 ( .A(n87), .B(n90), .C(n55), .YC(n54), .YS(product[28]) );
  FAX1 U56 ( .A(n91), .B(n94), .C(n56), .YC(n55), .YS(product[27]) );
  FAX1 U57 ( .A(n95), .B(n100), .C(n57), .YC(n56), .YS(product[26]) );
  FAX1 U58 ( .A(n101), .B(n106), .C(n58), .YC(n57), .YS(product[25]) );
  FAX1 U59 ( .A(n107), .B(n114), .C(n59), .YC(n58), .YS(product[24]) );
  FAX1 U60 ( .A(n115), .B(n122), .C(n60), .YC(n59), .YS(product[23]) );
  FAX1 U61 ( .A(n132), .B(n123), .C(n61), .YC(n60), .YS(product[22]) );
  FAX1 U62 ( .A(n142), .B(n133), .C(n62), .YC(n61), .YS(product[21]) );
  FAX1 U63 ( .A(n154), .B(n143), .C(n63), .YC(n62), .YS(product[20]) );
  FAX1 U64 ( .A(n166), .B(n155), .C(n64), .YC(n63), .YS(product[19]) );
  FAX1 U65 ( .A(n180), .B(n167), .C(n65), .YC(n64), .YS(product[18]) );
  FAX1 U66 ( .A(n194), .B(n181), .C(n66), .YC(n65), .YS(product[17]) );
  FAX1 U67 ( .A(n208), .B(n195), .C(n67), .YC(n66), .YS(product[16]) );
  FAX1 U68 ( .A(n222), .B(n209), .C(n68), .YC(n67), .YS(product[15]) );
  FAX1 U69 ( .A(n234), .B(n223), .C(n69), .YC(n68), .YS(product[14]) );
  FAX1 U70 ( .A(n246), .B(n235), .C(n70), .YC(n69) );
  FAX1 U71 ( .A(n256), .B(n247), .C(n71), .YC(n70) );
  FAX1 U72 ( .A(n266), .B(n257), .C(n72), .YC(n71) );
  FAX1 U73 ( .A(n274), .B(n267), .C(n73), .YC(n72) );
  FAX1 U74 ( .A(n282), .B(n275), .C(n74), .YC(n73) );
  FAX1 U75 ( .A(n288), .B(n283), .C(n75), .YC(n74) );
  FAX1 U76 ( .A(n294), .B(n289), .C(n76), .YC(n75) );
  FAX1 U77 ( .A(n298), .B(n295), .C(n77), .YC(n76) );
  FAX1 U78 ( .A(n302), .B(n299), .C(n78), .YC(n77) );
  FAX1 U79 ( .A(n304), .B(n303), .C(n79), .YC(n78) );
  FAX1 U80 ( .A(n336), .B(n305), .C(n80), .YC(n79) );
  FAX1 U81 ( .A(n472), .B(n456), .C(n81), .YC(n80) );
  HAX1 U82 ( .A(n337), .B(n473), .YC(n81) );
  INVX2 U83 ( .A(n82), .Y(n83) );
  FAX1 U84 ( .A(n88), .B(n339), .C(n355), .YC(n84), .YS(n85) );
  FAX1 U85 ( .A(n340), .B(n89), .C(n92), .YC(n86), .YS(n87) );
  INVX2 U86 ( .A(n88), .Y(n89) );
  FAX1 U87 ( .A(n341), .B(n96), .C(n93), .YC(n90), .YS(n91) );
  FAX1 U88 ( .A(n98), .B(n356), .C(n372), .YC(n92), .YS(n93) );
  FAX1 U89 ( .A(n104), .B(n97), .C(n102), .YC(n94), .YS(n95) );
  FAX1 U90 ( .A(n357), .B(n342), .C(n99), .YC(n96), .YS(n97) );
  INVX2 U91 ( .A(n98), .Y(n99) );
  FAX1 U92 ( .A(n105), .B(n103), .C(n108), .YC(n100), .YS(n101) );
  FAX1 U93 ( .A(n373), .B(n112), .C(n110), .YC(n102), .YS(n103) );
  FAX1 U94 ( .A(n343), .B(n358), .C(n389), .YC(n104), .YS(n105) );
  FAX1 U95 ( .A(n111), .B(n109), .C(n116), .YC(n106), .YS(n107) );
  FAX1 U96 ( .A(n113), .B(n120), .C(n118), .YC(n108), .YS(n109) );
  FAX1 U97 ( .A(n359), .B(n344), .C(n374), .YC(n110), .YS(n111) );
  INVX2 U98 ( .A(n112), .Y(n113) );
  FAX1 U99 ( .A(n126), .B(n117), .C(n124), .YC(n114), .YS(n115) );
  FAX1 U100 ( .A(n128), .B(n119), .C(n121), .YC(n116), .YS(n117) );
  FAX1 U101 ( .A(n130), .B(n360), .C(n375), .YC(n118), .YS(n119) );
  FAX1 U102 ( .A(n345), .B(n390), .C(n406), .YC(n120), .YS(n121) );
  FAX1 U103 ( .A(n136), .B(n134), .C(n125), .YC(n122), .YS(n123) );
  FAX1 U104 ( .A(n138), .B(n129), .C(n127), .YC(n124), .YS(n125) );
  FAX1 U105 ( .A(n376), .B(n131), .C(n140), .YC(n126), .YS(n127) );
  FAX1 U106 ( .A(n361), .B(n391), .C(n346), .YC(n128), .YS(n129) );
  INVX2 U107 ( .A(n130), .Y(n131) );
  FAX1 U108 ( .A(n137), .B(n144), .C(n135), .YC(n132), .YS(n133) );
  FAX1 U109 ( .A(n139), .B(n141), .C(n146), .YC(n134), .YS(n135) );
  FAX1 U110 ( .A(n392), .B(n150), .C(n148), .YC(n136), .YS(n137) );
  FAX1 U111 ( .A(n407), .B(n362), .C(n377), .YC(n138), .YS(n139) );
  FAX1 U112 ( .A(n347), .B(n152), .C(n423), .YC(n140), .YS(n141) );
  FAX1 U113 ( .A(n147), .B(n156), .C(n145), .YC(n142), .YS(n143) );
  FAX1 U114 ( .A(n149), .B(n160), .C(n158), .YC(n144), .YS(n145) );
  FAX1 U115 ( .A(n164), .B(n162), .C(n151), .YC(n146), .YS(n147) );
  FAX1 U116 ( .A(n363), .B(n348), .C(n153), .YC(n148), .YS(n149) );
  FAX1 U117 ( .A(n378), .B(n408), .C(n393), .YC(n150), .YS(n151) );
  INVX2 U118 ( .A(n152), .Y(n153) );
  FAX1 U119 ( .A(n159), .B(n168), .C(n157), .YC(n154), .YS(n155) );
  FAX1 U120 ( .A(n172), .B(n161), .C(n170), .YC(n156), .YS(n157) );
  FAX1 U121 ( .A(n174), .B(n163), .C(n165), .YC(n158), .YS(n159) );
  FAX1 U122 ( .A(n394), .B(n379), .C(n176), .YC(n160), .YS(n161) );
  FAX1 U123 ( .A(n424), .B(n364), .C(n409), .YC(n162), .YS(n163) );
  FAX1 U124 ( .A(n349), .B(n178), .C(n440), .YC(n164), .YS(n165) );
  FAX1 U125 ( .A(n171), .B(n182), .C(n169), .YC(n166), .YS(n167) );
  FAX1 U126 ( .A(n186), .B(n173), .C(n184), .YC(n168), .YS(n169) );
  FAX1 U127 ( .A(n188), .B(n175), .C(n177), .YC(n170), .YS(n171) );
  FAX1 U128 ( .A(n179), .B(n192), .C(n190), .YC(n172), .YS(n173) );
  FAX1 U129 ( .A(n410), .B(n365), .C(n395), .YC(n174), .YS(n175) );
  FAX1 U130 ( .A(n380), .B(n425), .C(n350), .YC(n176), .YS(n177) );
  INVX2 U131 ( .A(n178), .Y(n179) );
  FAX1 U132 ( .A(n185), .B(n196), .C(n183), .YC(n180), .YS(n181) );
  FAX1 U133 ( .A(n200), .B(n187), .C(n198), .YC(n182), .YS(n183) );
  FAX1 U134 ( .A(n202), .B(n189), .C(n191), .YC(n184), .YS(n185) );
  FAX1 U135 ( .A(n206), .B(n193), .C(n204), .YC(n186), .YS(n187) );
  FAX1 U136 ( .A(n441), .B(n381), .C(n426), .YC(n188), .YS(n189) );
  FAX1 U137 ( .A(n396), .B(n351), .C(n457), .YC(n190), .YS(n191) );
  XNOR2X1 U138 ( .A(n411), .B(n366), .Y(n193) );
  OR2X2 U139 ( .A(n411), .B(n366), .Y(n192) );
  FAX1 U140 ( .A(n199), .B(n210), .C(n197), .YC(n194), .YS(n195) );
  FAX1 U141 ( .A(n214), .B(n201), .C(n212), .YC(n196), .YS(n197) );
  FAX1 U142 ( .A(n216), .B(n203), .C(n205), .YC(n198), .YS(n199) );
  FAX1 U143 ( .A(n220), .B(n207), .C(n218), .YC(n200), .YS(n201) );
  FAX1 U144 ( .A(n427), .B(n382), .C(n412), .YC(n202), .YS(n203) );
  FAX1 U145 ( .A(n397), .B(n442), .C(n367), .YC(n204), .YS(n205) );
  HAX1 U146 ( .A(n458), .B(n352), .YC(n206), .YS(n207) );
  FAX1 U147 ( .A(n213), .B(n224), .C(n211), .YC(n208), .YS(n209) );
  FAX1 U148 ( .A(n228), .B(n215), .C(n226), .YC(n210), .YS(n211) );
  FAX1 U149 ( .A(n230), .B(n217), .C(n219), .YC(n212), .YS(n213) );
  FAX1 U150 ( .A(n428), .B(n221), .C(n232), .YC(n214), .YS(n215) );
  FAX1 U151 ( .A(n443), .B(n383), .C(n413), .YC(n216), .YS(n217) );
  FAX1 U152 ( .A(n398), .B(n353), .C(n368), .YC(n218), .YS(n219) );
  HAX1 U153 ( .A(n459), .B(n330), .YC(n220), .YS(n221) );
  FAX1 U154 ( .A(n227), .B(n236), .C(n225), .YC(n222), .YS(n223) );
  FAX1 U155 ( .A(n233), .B(n229), .C(n238), .YC(n224), .YS(n225) );
  FAX1 U156 ( .A(n242), .B(n240), .C(n231), .YC(n226), .YS(n227) );
  FAX1 U157 ( .A(n429), .B(n414), .C(n244), .YC(n228), .YS(n229) );
  FAX1 U158 ( .A(n444), .B(n384), .C(n399), .YC(n230), .YS(n231) );
  FAX1 U159 ( .A(n460), .B(n369), .C(n354), .YC(n232), .YS(n233) );
  FAX1 U160 ( .A(n239), .B(n248), .C(n237), .YC(n234), .YS(n235) );
  FAX1 U161 ( .A(n241), .B(n243), .C(n250), .YC(n236), .YS(n237) );
  FAX1 U162 ( .A(n245), .B(n254), .C(n252), .YC(n238), .YS(n239) );
  FAX1 U163 ( .A(n415), .B(n370), .C(n385), .YC(n240), .YS(n241) );
  FAX1 U164 ( .A(n400), .B(n445), .C(n430), .YC(n242), .YS(n243) );
  HAX1 U165 ( .A(n461), .B(n331), .YC(n244), .YS(n245) );
  FAX1 U166 ( .A(n251), .B(n258), .C(n249), .YC(n246), .YS(n247) );
  FAX1 U167 ( .A(n255), .B(n253), .C(n260), .YC(n248), .YS(n249) );
  FAX1 U168 ( .A(n431), .B(n264), .C(n262), .YC(n250), .YS(n251) );
  FAX1 U169 ( .A(n446), .B(n401), .C(n416), .YC(n252), .YS(n253) );
  FAX1 U170 ( .A(n462), .B(n386), .C(n371), .YC(n254), .YS(n255) );
  FAX1 U171 ( .A(n261), .B(n268), .C(n259), .YC(n256), .YS(n257) );
  FAX1 U172 ( .A(n272), .B(n270), .C(n263), .YC(n258), .YS(n259) );
  FAX1 U173 ( .A(n432), .B(n402), .C(n265), .YC(n260), .YS(n261) );
  FAX1 U174 ( .A(n417), .B(n387), .C(n447), .YC(n262), .YS(n263) );
  HAX1 U175 ( .A(n463), .B(n332), .YC(n264), .YS(n265) );
  FAX1 U176 ( .A(n271), .B(n276), .C(n269), .YC(n266), .YS(n267) );
  FAX1 U177 ( .A(n280), .B(n278), .C(n273), .YC(n268), .YS(n269) );
  FAX1 U178 ( .A(n448), .B(n418), .C(n433), .YC(n270), .YS(n271) );
  FAX1 U179 ( .A(n464), .B(n403), .C(n388), .YC(n272), .YS(n273) );
  FAX1 U180 ( .A(n279), .B(n284), .C(n277), .YC(n274), .YS(n275) );
  FAX1 U181 ( .A(n449), .B(n281), .C(n286), .YC(n276), .YS(n277) );
  FAX1 U182 ( .A(n419), .B(n404), .C(n434), .YC(n278), .YS(n279) );
  HAX1 U183 ( .A(n465), .B(n333), .YC(n280), .YS(n281) );
  FAX1 U184 ( .A(n290), .B(n287), .C(n285), .YC(n282), .YS(n283) );
  FAX1 U185 ( .A(n450), .B(n435), .C(n292), .YC(n284), .YS(n285) );
  FAX1 U186 ( .A(n466), .B(n420), .C(n405), .YC(n286), .YS(n287) );
  FAX1 U187 ( .A(n293), .B(n296), .C(n291), .YC(n288), .YS(n289) );
  FAX1 U188 ( .A(n451), .B(n421), .C(n436), .YC(n290), .YS(n291) );
  HAX1 U189 ( .A(n467), .B(n334), .YC(n292), .YS(n293) );
  FAX1 U190 ( .A(n452), .B(n300), .C(n297), .YC(n294), .YS(n295) );
  FAX1 U191 ( .A(n468), .B(n437), .C(n422), .YC(n296), .YS(n297) );
  FAX1 U192 ( .A(n453), .B(n438), .C(n301), .YC(n298), .YS(n299) );
  HAX1 U193 ( .A(n469), .B(n335), .YC(n300), .YS(n301) );
  FAX1 U194 ( .A(n470), .B(n454), .C(n439), .YC(n302), .YS(n303) );
  HAX1 U195 ( .A(n471), .B(n455), .YC(n304), .YS(n305) );
  OAI22X1 U196 ( .A(n46), .B(n491), .C(n659), .D(n48), .Y(n330) );
  INVX2 U197 ( .A(n306), .Y(n338) );
  AOI21X1 U198 ( .A(n46), .B(n48), .C(n474), .Y(n306) );
  OAI22X1 U199 ( .A(n474), .B(n46), .C(n475), .D(n48), .Y(n82) );
  OAI22X1 U200 ( .A(n475), .B(n46), .C(n476), .D(n48), .Y(n339) );
  OAI22X1 U201 ( .A(n476), .B(n46), .C(n477), .D(n48), .Y(n340) );
  OAI22X1 U202 ( .A(n477), .B(n46), .C(n478), .D(n48), .Y(n341) );
  OAI22X1 U203 ( .A(n478), .B(n46), .C(n479), .D(n48), .Y(n342) );
  OAI22X1 U204 ( .A(n479), .B(n46), .C(n480), .D(n48), .Y(n343) );
  OAI22X1 U205 ( .A(n480), .B(n46), .C(n481), .D(n48), .Y(n344) );
  OAI22X1 U206 ( .A(n481), .B(n46), .C(n482), .D(n47), .Y(n345) );
  OAI22X1 U207 ( .A(n482), .B(n45), .C(n483), .D(n47), .Y(n346) );
  OAI22X1 U208 ( .A(n483), .B(n45), .C(n484), .D(n47), .Y(n347) );
  OAI22X1 U209 ( .A(n484), .B(n45), .C(n485), .D(n47), .Y(n348) );
  OAI22X1 U210 ( .A(n485), .B(n45), .C(n486), .D(n47), .Y(n349) );
  OAI22X1 U211 ( .A(n486), .B(n45), .C(n487), .D(n47), .Y(n350) );
  OAI22X1 U212 ( .A(n487), .B(n45), .C(n488), .D(n47), .Y(n351) );
  OAI22X1 U213 ( .A(n488), .B(n45), .C(n489), .D(n47), .Y(n352) );
  OAI22X1 U214 ( .A(n489), .B(n45), .C(n490), .D(n47), .Y(n353) );
  AND2X2 U215 ( .A(n49), .B(n307), .Y(n354) );
  INVX2 U216 ( .A(n45), .Y(n307) );
  XNOR2X1 U217 ( .A(n43), .B(n618), .Y(n474) );
  XNOR2X1 U218 ( .A(n43), .B(n619), .Y(n475) );
  XNOR2X1 U219 ( .A(n43), .B(n620), .Y(n476) );
  XNOR2X1 U220 ( .A(n43), .B(n621), .Y(n477) );
  XNOR2X1 U221 ( .A(n43), .B(n622), .Y(n478) );
  XNOR2X1 U222 ( .A(n43), .B(n623), .Y(n479) );
  XNOR2X1 U223 ( .A(n43), .B(n624), .Y(n480) );
  XNOR2X1 U224 ( .A(n43), .B(n625), .Y(n481) );
  XNOR2X1 U225 ( .A(n43), .B(n626), .Y(n482) );
  XNOR2X1 U226 ( .A(n43), .B(n627), .Y(n483) );
  XNOR2X1 U227 ( .A(n43), .B(n628), .Y(n484) );
  XNOR2X1 U228 ( .A(n43), .B(n629), .Y(n485) );
  XNOR2X1 U229 ( .A(n43), .B(n630), .Y(n486) );
  XNOR2X1 U230 ( .A(n43), .B(n631), .Y(n487) );
  XNOR2X1 U231 ( .A(n43), .B(n632), .Y(n488) );
  XNOR2X1 U232 ( .A(n43), .B(n633), .Y(n489) );
  XNOR2X1 U233 ( .A(n43), .B(n49), .Y(n490) );
  OR2X2 U234 ( .A(n49), .B(n659), .Y(n491) );
  OAI22X1 U236 ( .A(n40), .B(n509), .C(n660), .D(n42), .Y(n331) );
  INVX2 U237 ( .A(n309), .Y(n355) );
  AOI21X1 U238 ( .A(n40), .B(n42), .C(n492), .Y(n309) );
  OAI22X1 U239 ( .A(n492), .B(n40), .C(n493), .D(n42), .Y(n88) );
  OAI22X1 U240 ( .A(n493), .B(n40), .C(n494), .D(n42), .Y(n356) );
  OAI22X1 U241 ( .A(n494), .B(n40), .C(n495), .D(n42), .Y(n357) );
  OAI22X1 U242 ( .A(n495), .B(n40), .C(n496), .D(n42), .Y(n358) );
  OAI22X1 U243 ( .A(n496), .B(n40), .C(n497), .D(n42), .Y(n359) );
  OAI22X1 U244 ( .A(n497), .B(n40), .C(n498), .D(n42), .Y(n360) );
  OAI22X1 U245 ( .A(n498), .B(n40), .C(n499), .D(n42), .Y(n361) );
  OAI22X1 U246 ( .A(n499), .B(n40), .C(n500), .D(n41), .Y(n362) );
  OAI22X1 U247 ( .A(n500), .B(n39), .C(n501), .D(n41), .Y(n363) );
  OAI22X1 U248 ( .A(n501), .B(n39), .C(n502), .D(n41), .Y(n364) );
  OAI22X1 U249 ( .A(n502), .B(n39), .C(n503), .D(n41), .Y(n365) );
  OAI22X1 U250 ( .A(n503), .B(n39), .C(n504), .D(n41), .Y(n366) );
  OAI22X1 U251 ( .A(n504), .B(n39), .C(n505), .D(n41), .Y(n367) );
  OAI22X1 U252 ( .A(n505), .B(n39), .C(n506), .D(n41), .Y(n368) );
  OAI22X1 U253 ( .A(n506), .B(n39), .C(n507), .D(n41), .Y(n369) );
  OAI22X1 U254 ( .A(n507), .B(n39), .C(n508), .D(n41), .Y(n370) );
  AND2X2 U255 ( .A(n49), .B(n310), .Y(n371) );
  INVX2 U256 ( .A(n39), .Y(n310) );
  XNOR2X1 U257 ( .A(n37), .B(n618), .Y(n492) );
  XNOR2X1 U258 ( .A(n37), .B(n619), .Y(n493) );
  XNOR2X1 U259 ( .A(n37), .B(n620), .Y(n494) );
  XNOR2X1 U260 ( .A(n37), .B(n621), .Y(n495) );
  XNOR2X1 U261 ( .A(n37), .B(n622), .Y(n496) );
  XNOR2X1 U262 ( .A(n37), .B(n623), .Y(n497) );
  XNOR2X1 U263 ( .A(n37), .B(n624), .Y(n498) );
  XNOR2X1 U264 ( .A(n37), .B(n625), .Y(n499) );
  XNOR2X1 U265 ( .A(n37), .B(n626), .Y(n500) );
  XNOR2X1 U266 ( .A(n37), .B(n627), .Y(n501) );
  XNOR2X1 U267 ( .A(n37), .B(n628), .Y(n502) );
  XNOR2X1 U268 ( .A(n37), .B(n629), .Y(n503) );
  XNOR2X1 U269 ( .A(n37), .B(n630), .Y(n504) );
  XNOR2X1 U270 ( .A(n37), .B(n631), .Y(n505) );
  XNOR2X1 U271 ( .A(n37), .B(n632), .Y(n506) );
  XNOR2X1 U272 ( .A(n37), .B(n633), .Y(n507) );
  XNOR2X1 U273 ( .A(n37), .B(n49), .Y(n508) );
  OR2X2 U274 ( .A(n49), .B(n660), .Y(n509) );
  OAI22X1 U276 ( .A(n34), .B(n527), .C(n661), .D(n36), .Y(n332) );
  INVX2 U277 ( .A(n312), .Y(n372) );
  AOI21X1 U278 ( .A(n34), .B(n36), .C(n510), .Y(n312) );
  OAI22X1 U279 ( .A(n510), .B(n34), .C(n511), .D(n36), .Y(n98) );
  OAI22X1 U280 ( .A(n511), .B(n34), .C(n512), .D(n36), .Y(n373) );
  OAI22X1 U281 ( .A(n512), .B(n34), .C(n513), .D(n36), .Y(n374) );
  OAI22X1 U282 ( .A(n513), .B(n34), .C(n514), .D(n36), .Y(n375) );
  OAI22X1 U283 ( .A(n514), .B(n34), .C(n515), .D(n36), .Y(n376) );
  OAI22X1 U284 ( .A(n515), .B(n34), .C(n516), .D(n36), .Y(n377) );
  OAI22X1 U285 ( .A(n516), .B(n34), .C(n517), .D(n36), .Y(n378) );
  OAI22X1 U286 ( .A(n517), .B(n34), .C(n518), .D(n35), .Y(n379) );
  OAI22X1 U287 ( .A(n518), .B(n33), .C(n519), .D(n35), .Y(n380) );
  OAI22X1 U288 ( .A(n519), .B(n33), .C(n520), .D(n35), .Y(n381) );
  OAI22X1 U289 ( .A(n520), .B(n33), .C(n521), .D(n35), .Y(n382) );
  OAI22X1 U290 ( .A(n521), .B(n33), .C(n522), .D(n35), .Y(n383) );
  OAI22X1 U291 ( .A(n522), .B(n33), .C(n523), .D(n35), .Y(n384) );
  OAI22X1 U292 ( .A(n523), .B(n33), .C(n524), .D(n35), .Y(n385) );
  OAI22X1 U293 ( .A(n524), .B(n33), .C(n525), .D(n35), .Y(n386) );
  OAI22X1 U294 ( .A(n525), .B(n33), .C(n526), .D(n35), .Y(n387) );
  AND2X2 U295 ( .A(n49), .B(n313), .Y(n388) );
  INVX2 U296 ( .A(n33), .Y(n313) );
  XNOR2X1 U297 ( .A(n31), .B(n618), .Y(n510) );
  XNOR2X1 U298 ( .A(n31), .B(n619), .Y(n511) );
  XNOR2X1 U299 ( .A(n31), .B(n620), .Y(n512) );
  XNOR2X1 U300 ( .A(n31), .B(n621), .Y(n513) );
  XNOR2X1 U301 ( .A(n31), .B(n622), .Y(n514) );
  XNOR2X1 U302 ( .A(n31), .B(n623), .Y(n515) );
  XNOR2X1 U303 ( .A(n31), .B(n624), .Y(n516) );
  XNOR2X1 U304 ( .A(n31), .B(n625), .Y(n517) );
  XNOR2X1 U305 ( .A(n31), .B(n626), .Y(n518) );
  XNOR2X1 U306 ( .A(n31), .B(n627), .Y(n519) );
  XNOR2X1 U307 ( .A(n31), .B(n628), .Y(n520) );
  XNOR2X1 U308 ( .A(n31), .B(n629), .Y(n521) );
  XNOR2X1 U309 ( .A(n31), .B(n630), .Y(n522) );
  XNOR2X1 U310 ( .A(n31), .B(n631), .Y(n523) );
  XNOR2X1 U311 ( .A(n31), .B(n632), .Y(n524) );
  XNOR2X1 U312 ( .A(n31), .B(n633), .Y(n525) );
  XNOR2X1 U313 ( .A(n31), .B(n49), .Y(n526) );
  OR2X2 U314 ( .A(n49), .B(n661), .Y(n527) );
  OAI22X1 U316 ( .A(n28), .B(n545), .C(n662), .D(n30), .Y(n333) );
  INVX2 U317 ( .A(n315), .Y(n389) );
  AOI21X1 U318 ( .A(n28), .B(n30), .C(n528), .Y(n315) );
  OAI22X1 U319 ( .A(n528), .B(n28), .C(n529), .D(n30), .Y(n112) );
  OAI22X1 U320 ( .A(n529), .B(n28), .C(n530), .D(n30), .Y(n390) );
  OAI22X1 U321 ( .A(n530), .B(n28), .C(n531), .D(n30), .Y(n391) );
  OAI22X1 U322 ( .A(n531), .B(n28), .C(n532), .D(n30), .Y(n392) );
  OAI22X1 U323 ( .A(n532), .B(n28), .C(n533), .D(n30), .Y(n393) );
  OAI22X1 U324 ( .A(n533), .B(n28), .C(n534), .D(n30), .Y(n394) );
  OAI22X1 U325 ( .A(n534), .B(n28), .C(n535), .D(n30), .Y(n395) );
  OAI22X1 U326 ( .A(n535), .B(n28), .C(n536), .D(n29), .Y(n396) );
  OAI22X1 U327 ( .A(n536), .B(n27), .C(n537), .D(n29), .Y(n397) );
  OAI22X1 U328 ( .A(n537), .B(n27), .C(n538), .D(n29), .Y(n398) );
  OAI22X1 U329 ( .A(n538), .B(n27), .C(n539), .D(n29), .Y(n399) );
  OAI22X1 U330 ( .A(n539), .B(n27), .C(n540), .D(n29), .Y(n400) );
  OAI22X1 U331 ( .A(n540), .B(n27), .C(n541), .D(n29), .Y(n401) );
  OAI22X1 U332 ( .A(n541), .B(n27), .C(n542), .D(n29), .Y(n402) );
  OAI22X1 U333 ( .A(n542), .B(n27), .C(n543), .D(n29), .Y(n403) );
  OAI22X1 U334 ( .A(n543), .B(n27), .C(n544), .D(n29), .Y(n404) );
  AND2X2 U335 ( .A(n49), .B(n316), .Y(n405) );
  INVX2 U336 ( .A(n27), .Y(n316) );
  XNOR2X1 U337 ( .A(n25), .B(n618), .Y(n528) );
  XNOR2X1 U338 ( .A(n25), .B(n619), .Y(n529) );
  XNOR2X1 U339 ( .A(n25), .B(n620), .Y(n530) );
  XNOR2X1 U340 ( .A(n25), .B(n621), .Y(n531) );
  XNOR2X1 U341 ( .A(n25), .B(n622), .Y(n532) );
  XNOR2X1 U342 ( .A(n25), .B(n623), .Y(n533) );
  XNOR2X1 U343 ( .A(n25), .B(n624), .Y(n534) );
  XNOR2X1 U344 ( .A(n25), .B(n625), .Y(n535) );
  XNOR2X1 U345 ( .A(n25), .B(n626), .Y(n536) );
  XNOR2X1 U346 ( .A(n25), .B(n627), .Y(n537) );
  XNOR2X1 U347 ( .A(n25), .B(n628), .Y(n538) );
  XNOR2X1 U348 ( .A(n25), .B(n629), .Y(n539) );
  XNOR2X1 U349 ( .A(n25), .B(n630), .Y(n540) );
  XNOR2X1 U350 ( .A(n25), .B(n631), .Y(n541) );
  XNOR2X1 U351 ( .A(n25), .B(n632), .Y(n542) );
  XNOR2X1 U352 ( .A(n25), .B(n633), .Y(n543) );
  XNOR2X1 U353 ( .A(n25), .B(n49), .Y(n544) );
  OR2X2 U354 ( .A(n49), .B(n662), .Y(n545) );
  OAI22X1 U356 ( .A(n22), .B(n563), .C(n663), .D(n24), .Y(n334) );
  INVX2 U357 ( .A(n318), .Y(n406) );
  AOI21X1 U358 ( .A(n22), .B(n24), .C(n546), .Y(n318) );
  OAI22X1 U359 ( .A(n546), .B(n22), .C(n547), .D(n24), .Y(n130) );
  OAI22X1 U360 ( .A(n547), .B(n22), .C(n548), .D(n24), .Y(n407) );
  OAI22X1 U361 ( .A(n548), .B(n22), .C(n549), .D(n24), .Y(n408) );
  OAI22X1 U362 ( .A(n549), .B(n22), .C(n550), .D(n24), .Y(n409) );
  OAI22X1 U363 ( .A(n550), .B(n22), .C(n551), .D(n24), .Y(n410) );
  OAI22X1 U364 ( .A(n551), .B(n22), .C(n552), .D(n24), .Y(n411) );
  OAI22X1 U365 ( .A(n552), .B(n22), .C(n553), .D(n24), .Y(n412) );
  OAI22X1 U366 ( .A(n553), .B(n22), .C(n554), .D(n23), .Y(n413) );
  OAI22X1 U367 ( .A(n554), .B(n21), .C(n555), .D(n23), .Y(n414) );
  OAI22X1 U368 ( .A(n555), .B(n21), .C(n556), .D(n23), .Y(n415) );
  OAI22X1 U369 ( .A(n556), .B(n21), .C(n557), .D(n23), .Y(n416) );
  OAI22X1 U370 ( .A(n557), .B(n21), .C(n558), .D(n23), .Y(n417) );
  OAI22X1 U371 ( .A(n558), .B(n21), .C(n559), .D(n23), .Y(n418) );
  OAI22X1 U372 ( .A(n559), .B(n21), .C(n560), .D(n23), .Y(n419) );
  OAI22X1 U373 ( .A(n560), .B(n21), .C(n561), .D(n23), .Y(n420) );
  OAI22X1 U374 ( .A(n561), .B(n21), .C(n562), .D(n23), .Y(n421) );
  AND2X2 U375 ( .A(n49), .B(n319), .Y(n422) );
  INVX2 U376 ( .A(n21), .Y(n319) );
  XNOR2X1 U377 ( .A(n19), .B(n618), .Y(n546) );
  XNOR2X1 U378 ( .A(n19), .B(n619), .Y(n547) );
  XNOR2X1 U379 ( .A(n19), .B(n620), .Y(n548) );
  XNOR2X1 U380 ( .A(n19), .B(n621), .Y(n549) );
  XNOR2X1 U381 ( .A(n19), .B(n622), .Y(n550) );
  XNOR2X1 U382 ( .A(n19), .B(n623), .Y(n551) );
  XNOR2X1 U383 ( .A(n19), .B(n624), .Y(n552) );
  XNOR2X1 U384 ( .A(n19), .B(n625), .Y(n553) );
  XNOR2X1 U385 ( .A(n19), .B(n626), .Y(n554) );
  XNOR2X1 U386 ( .A(n19), .B(n627), .Y(n555) );
  XNOR2X1 U387 ( .A(n19), .B(n628), .Y(n556) );
  XNOR2X1 U388 ( .A(n19), .B(n629), .Y(n557) );
  XNOR2X1 U389 ( .A(n19), .B(n630), .Y(n558) );
  XNOR2X1 U390 ( .A(n19), .B(n631), .Y(n559) );
  XNOR2X1 U391 ( .A(n19), .B(n632), .Y(n560) );
  XNOR2X1 U392 ( .A(n19), .B(n633), .Y(n561) );
  XNOR2X1 U393 ( .A(n19), .B(n49), .Y(n562) );
  OR2X2 U394 ( .A(n49), .B(n663), .Y(n563) );
  OAI22X1 U396 ( .A(n16), .B(n581), .C(n664), .D(n18), .Y(n335) );
  INVX2 U397 ( .A(n321), .Y(n423) );
  AOI21X1 U398 ( .A(n16), .B(n18), .C(n564), .Y(n321) );
  OAI22X1 U399 ( .A(n564), .B(n16), .C(n565), .D(n18), .Y(n152) );
  OAI22X1 U400 ( .A(n565), .B(n16), .C(n566), .D(n18), .Y(n424) );
  OAI22X1 U401 ( .A(n566), .B(n16), .C(n567), .D(n18), .Y(n425) );
  OAI22X1 U402 ( .A(n567), .B(n16), .C(n568), .D(n18), .Y(n426) );
  OAI22X1 U403 ( .A(n568), .B(n16), .C(n569), .D(n18), .Y(n427) );
  OAI22X1 U404 ( .A(n569), .B(n16), .C(n570), .D(n18), .Y(n428) );
  OAI22X1 U405 ( .A(n570), .B(n16), .C(n571), .D(n18), .Y(n429) );
  OAI22X1 U406 ( .A(n571), .B(n16), .C(n572), .D(n17), .Y(n430) );
  OAI22X1 U407 ( .A(n572), .B(n15), .C(n573), .D(n17), .Y(n431) );
  OAI22X1 U408 ( .A(n573), .B(n15), .C(n574), .D(n17), .Y(n432) );
  OAI22X1 U409 ( .A(n574), .B(n15), .C(n575), .D(n17), .Y(n433) );
  OAI22X1 U410 ( .A(n575), .B(n15), .C(n576), .D(n17), .Y(n434) );
  OAI22X1 U411 ( .A(n576), .B(n15), .C(n577), .D(n17), .Y(n435) );
  OAI22X1 U412 ( .A(n577), .B(n15), .C(n578), .D(n17), .Y(n436) );
  OAI22X1 U413 ( .A(n578), .B(n15), .C(n579), .D(n17), .Y(n437) );
  OAI22X1 U414 ( .A(n579), .B(n15), .C(n580), .D(n17), .Y(n438) );
  AND2X2 U415 ( .A(n49), .B(n322), .Y(n439) );
  INVX2 U416 ( .A(n15), .Y(n322) );
  XNOR2X1 U417 ( .A(n13), .B(n618), .Y(n564) );
  XNOR2X1 U418 ( .A(n13), .B(n619), .Y(n565) );
  XNOR2X1 U419 ( .A(n13), .B(n620), .Y(n566) );
  XNOR2X1 U420 ( .A(n13), .B(n621), .Y(n567) );
  XNOR2X1 U421 ( .A(n13), .B(n622), .Y(n568) );
  XNOR2X1 U422 ( .A(n13), .B(n623), .Y(n569) );
  XNOR2X1 U423 ( .A(n13), .B(n624), .Y(n570) );
  XNOR2X1 U424 ( .A(n13), .B(n625), .Y(n571) );
  XNOR2X1 U425 ( .A(n13), .B(n626), .Y(n572) );
  XNOR2X1 U426 ( .A(n13), .B(n627), .Y(n573) );
  XNOR2X1 U427 ( .A(n13), .B(n628), .Y(n574) );
  XNOR2X1 U428 ( .A(n13), .B(n629), .Y(n575) );
  XNOR2X1 U429 ( .A(n13), .B(n630), .Y(n576) );
  XNOR2X1 U430 ( .A(n13), .B(n631), .Y(n577) );
  XNOR2X1 U431 ( .A(n13), .B(n632), .Y(n578) );
  XNOR2X1 U432 ( .A(n13), .B(n633), .Y(n579) );
  XNOR2X1 U433 ( .A(n13), .B(n49), .Y(n580) );
  OR2X2 U434 ( .A(n49), .B(n664), .Y(n581) );
  OAI22X1 U436 ( .A(n10), .B(n599), .C(n665), .D(n12), .Y(n336) );
  INVX2 U437 ( .A(n324), .Y(n440) );
  AOI21X1 U438 ( .A(n10), .B(n12), .C(n582), .Y(n324) );
  OAI22X1 U439 ( .A(n582), .B(n10), .C(n583), .D(n12), .Y(n178) );
  OAI22X1 U440 ( .A(n583), .B(n10), .C(n584), .D(n12), .Y(n441) );
  OAI22X1 U441 ( .A(n584), .B(n10), .C(n585), .D(n12), .Y(n442) );
  OAI22X1 U442 ( .A(n585), .B(n10), .C(n586), .D(n12), .Y(n443) );
  OAI22X1 U443 ( .A(n586), .B(n10), .C(n587), .D(n12), .Y(n444) );
  OAI22X1 U444 ( .A(n587), .B(n10), .C(n588), .D(n12), .Y(n445) );
  OAI22X1 U445 ( .A(n588), .B(n10), .C(n589), .D(n12), .Y(n446) );
  OAI22X1 U446 ( .A(n589), .B(n10), .C(n590), .D(n11), .Y(n447) );
  OAI22X1 U447 ( .A(n590), .B(n9), .C(n591), .D(n11), .Y(n448) );
  OAI22X1 U448 ( .A(n591), .B(n9), .C(n592), .D(n11), .Y(n449) );
  OAI22X1 U449 ( .A(n592), .B(n9), .C(n593), .D(n11), .Y(n450) );
  OAI22X1 U450 ( .A(n593), .B(n9), .C(n594), .D(n11), .Y(n451) );
  OAI22X1 U451 ( .A(n594), .B(n9), .C(n595), .D(n11), .Y(n452) );
  OAI22X1 U452 ( .A(n595), .B(n9), .C(n596), .D(n11), .Y(n453) );
  OAI22X1 U453 ( .A(n596), .B(n9), .C(n597), .D(n11), .Y(n454) );
  OAI22X1 U454 ( .A(n597), .B(n9), .C(n598), .D(n11), .Y(n455) );
  AND2X2 U455 ( .A(n49), .B(n325), .Y(n456) );
  INVX2 U456 ( .A(n9), .Y(n325) );
  XNOR2X1 U457 ( .A(n7), .B(n618), .Y(n582) );
  XNOR2X1 U458 ( .A(n7), .B(n619), .Y(n583) );
  XNOR2X1 U459 ( .A(n7), .B(n620), .Y(n584) );
  XNOR2X1 U460 ( .A(n7), .B(n621), .Y(n585) );
  XNOR2X1 U461 ( .A(n7), .B(n622), .Y(n586) );
  XNOR2X1 U462 ( .A(n7), .B(n623), .Y(n587) );
  XNOR2X1 U463 ( .A(n7), .B(n624), .Y(n588) );
  XNOR2X1 U464 ( .A(n7), .B(n625), .Y(n589) );
  XNOR2X1 U465 ( .A(n7), .B(n626), .Y(n590) );
  XNOR2X1 U466 ( .A(n7), .B(n627), .Y(n591) );
  XNOR2X1 U467 ( .A(n7), .B(n628), .Y(n592) );
  XNOR2X1 U468 ( .A(n7), .B(n629), .Y(n593) );
  XNOR2X1 U469 ( .A(n7), .B(n630), .Y(n594) );
  XNOR2X1 U470 ( .A(n7), .B(n631), .Y(n595) );
  XNOR2X1 U471 ( .A(n7), .B(n632), .Y(n596) );
  XNOR2X1 U472 ( .A(n7), .B(n633), .Y(n597) );
  XNOR2X1 U473 ( .A(n7), .B(n49), .Y(n598) );
  OR2X2 U474 ( .A(n49), .B(n665), .Y(n599) );
  OAI22X1 U476 ( .A(n4), .B(n617), .C(n666), .D(n6), .Y(n337) );
  INVX2 U477 ( .A(n327), .Y(n457) );
  AOI21X1 U478 ( .A(n4), .B(n6), .C(n600), .Y(n327) );
  OAI22X1 U479 ( .A(n4), .B(n600), .C(n601), .D(n6), .Y(n458) );
  OAI22X1 U480 ( .A(n4), .B(n601), .C(n602), .D(n6), .Y(n459) );
  OAI22X1 U481 ( .A(n4), .B(n602), .C(n603), .D(n6), .Y(n460) );
  OAI22X1 U482 ( .A(n4), .B(n603), .C(n604), .D(n6), .Y(n461) );
  OAI22X1 U483 ( .A(n4), .B(n604), .C(n605), .D(n6), .Y(n462) );
  OAI22X1 U484 ( .A(n4), .B(n605), .C(n606), .D(n6), .Y(n463) );
  OAI22X1 U485 ( .A(n4), .B(n606), .C(n607), .D(n6), .Y(n464) );
  OAI22X1 U486 ( .A(n4), .B(n607), .C(n608), .D(n5), .Y(n465) );
  OAI22X1 U487 ( .A(n3), .B(n608), .C(n609), .D(n5), .Y(n466) );
  OAI22X1 U488 ( .A(n3), .B(n609), .C(n610), .D(n5), .Y(n467) );
  OAI22X1 U489 ( .A(n3), .B(n610), .C(n611), .D(n5), .Y(n468) );
  OAI22X1 U490 ( .A(n3), .B(n611), .C(n612), .D(n5), .Y(n469) );
  OAI22X1 U491 ( .A(n3), .B(n612), .C(n613), .D(n5), .Y(n470) );
  OAI22X1 U492 ( .A(n3), .B(n613), .C(n614), .D(n5), .Y(n471) );
  OAI22X1 U493 ( .A(n3), .B(n614), .C(n615), .D(n5), .Y(n472) );
  OAI22X1 U494 ( .A(n3), .B(n615), .C(n616), .D(n5), .Y(n473) );
  XNOR2X1 U497 ( .A(n1), .B(n618), .Y(n600) );
  XNOR2X1 U498 ( .A(n1), .B(n619), .Y(n601) );
  XNOR2X1 U499 ( .A(n1), .B(n620), .Y(n602) );
  XNOR2X1 U500 ( .A(n1), .B(n621), .Y(n603) );
  XNOR2X1 U501 ( .A(n1), .B(n622), .Y(n604) );
  XNOR2X1 U502 ( .A(n1), .B(n623), .Y(n605) );
  XNOR2X1 U503 ( .A(n1), .B(n624), .Y(n606) );
  XNOR2X1 U504 ( .A(n1), .B(n625), .Y(n607) );
  XNOR2X1 U505 ( .A(n1), .B(n626), .Y(n608) );
  XNOR2X1 U506 ( .A(n1), .B(n627), .Y(n609) );
  XNOR2X1 U507 ( .A(n1), .B(n628), .Y(n610) );
  XNOR2X1 U508 ( .A(n1), .B(n629), .Y(n611) );
  XNOR2X1 U509 ( .A(n1), .B(n630), .Y(n612) );
  XNOR2X1 U510 ( .A(n1), .B(n631), .Y(n613) );
  XNOR2X1 U511 ( .A(n1), .B(n632), .Y(n614) );
  XNOR2X1 U512 ( .A(n1), .B(n633), .Y(n615) );
  XNOR2X1 U513 ( .A(n1), .B(n49), .Y(n616) );
  OR2X2 U514 ( .A(n49), .B(n666), .Y(n617) );
  INVX2 U532 ( .A(n43), .Y(n659) );
  INVX2 U533 ( .A(n37), .Y(n660) );
  INVX2 U534 ( .A(n31), .Y(n661) );
  INVX2 U535 ( .A(n25), .Y(n662) );
  INVX2 U536 ( .A(n19), .Y(n663) );
  INVX2 U537 ( .A(n13), .Y(n664) );
  INVX2 U538 ( .A(n7), .Y(n665) );
  INVX2 U539 ( .A(n1), .Y(n666) );
  NAND2X1 U540 ( .A(n651), .B(n635), .Y(n643) );
  XOR2X1 U541 ( .A(b[14]), .B(b[15]), .Y(n635) );
  XNOR2X1 U542 ( .A(b[14]), .B(b[13]), .Y(n651) );
  NAND2X1 U543 ( .A(n652), .B(n636), .Y(n644) );
  XOR2X1 U544 ( .A(b[12]), .B(b[13]), .Y(n636) );
  XNOR2X1 U545 ( .A(b[12]), .B(b[11]), .Y(n652) );
  NAND2X1 U546 ( .A(n653), .B(n637), .Y(n645) );
  XOR2X1 U547 ( .A(b[10]), .B(b[11]), .Y(n637) );
  XNOR2X1 U548 ( .A(b[10]), .B(b[9]), .Y(n653) );
  NAND2X1 U549 ( .A(n654), .B(n638), .Y(n646) );
  XOR2X1 U550 ( .A(b[8]), .B(b[9]), .Y(n638) );
  XNOR2X1 U551 ( .A(b[8]), .B(b[7]), .Y(n654) );
  NAND2X1 U552 ( .A(n655), .B(n639), .Y(n647) );
  XOR2X1 U553 ( .A(b[6]), .B(b[7]), .Y(n639) );
  XNOR2X1 U554 ( .A(b[6]), .B(b[5]), .Y(n655) );
  NAND2X1 U555 ( .A(n656), .B(n640), .Y(n648) );
  XOR2X1 U556 ( .A(b[4]), .B(b[5]), .Y(n640) );
  XNOR2X1 U557 ( .A(b[4]), .B(b[3]), .Y(n656) );
  NAND2X1 U558 ( .A(n657), .B(n641), .Y(n649) );
  XOR2X1 U559 ( .A(b[2]), .B(b[3]), .Y(n641) );
  XNOR2X1 U560 ( .A(b[2]), .B(b[1]), .Y(n657) );
  NAND2X1 U561 ( .A(n658), .B(n642), .Y(n650) );
  XOR2X1 U562 ( .A(b[0]), .B(b[1]), .Y(n642) );
  INVX2 U563 ( .A(b[0]), .Y(n658) );
  BUFX2 U566 ( .A(n657), .Y(n10) );
  BUFX2 U567 ( .A(n656), .Y(n16) );
  BUFX2 U568 ( .A(n655), .Y(n22) );
  BUFX2 U569 ( .A(n654), .Y(n28) );
  BUFX2 U570 ( .A(n653), .Y(n34) );
  BUFX2 U571 ( .A(n652), .Y(n40) );
  BUFX2 U572 ( .A(n651), .Y(n46) );
  BUFX2 U573 ( .A(n658), .Y(n4) );
  BUFX2 U574 ( .A(n650), .Y(n5) );
  BUFX2 U575 ( .A(n649), .Y(n11) );
  BUFX2 U576 ( .A(n648), .Y(n17) );
  BUFX2 U577 ( .A(n647), .Y(n23) );
  BUFX2 U578 ( .A(n646), .Y(n29) );
  BUFX2 U579 ( .A(n645), .Y(n35) );
  BUFX2 U580 ( .A(n644), .Y(n41) );
  BUFX2 U581 ( .A(n643), .Y(n47) );
  BUFX2 U582 ( .A(n650), .Y(n6) );
  BUFX2 U583 ( .A(n649), .Y(n12) );
  BUFX2 U584 ( .A(n648), .Y(n18) );
  BUFX2 U585 ( .A(n647), .Y(n24) );
  BUFX2 U586 ( .A(n646), .Y(n30) );
  BUFX2 U587 ( .A(n645), .Y(n36) );
  BUFX2 U588 ( .A(n644), .Y(n42) );
  BUFX2 U589 ( .A(n643), .Y(n48) );
  BUFX2 U590 ( .A(n657), .Y(n9) );
  BUFX2 U591 ( .A(n656), .Y(n15) );
  BUFX2 U592 ( .A(n655), .Y(n21) );
  BUFX2 U593 ( .A(n654), .Y(n27) );
  BUFX2 U594 ( .A(n653), .Y(n33) );
  BUFX2 U595 ( .A(n652), .Y(n39) );
  BUFX2 U596 ( .A(n651), .Y(n45) );
  BUFX2 U597 ( .A(n658), .Y(n3) );
  BUFX4 U598 ( .A(b[1]), .Y(n1) );
  BUFX4 U599 ( .A(b[3]), .Y(n7) );
  BUFX4 U600 ( .A(b[5]), .Y(n13) );
  BUFX4 U601 ( .A(b[7]), .Y(n19) );
  BUFX4 U602 ( .A(b[9]), .Y(n25) );
  BUFX4 U603 ( .A(b[11]), .Y(n31) );
  BUFX4 U604 ( .A(b[13]), .Y(n37) );
  BUFX4 U605 ( .A(b[15]), .Y(n43) );
  BUFX2 U606 ( .A(a[0]), .Y(n49) );
  BUFX2 U607 ( .A(a[1]), .Y(n633) );
  BUFX2 U608 ( .A(a[2]), .Y(n632) );
  BUFX2 U609 ( .A(a[3]), .Y(n631) );
  BUFX2 U610 ( .A(a[4]), .Y(n630) );
  BUFX2 U611 ( .A(a[5]), .Y(n629) );
  BUFX2 U612 ( .A(a[6]), .Y(n628) );
  BUFX2 U613 ( .A(a[7]), .Y(n627) );
  BUFX2 U614 ( .A(a[8]), .Y(n626) );
  BUFX2 U615 ( .A(a[9]), .Y(n625) );
  BUFX2 U616 ( .A(a[10]), .Y(n624) );
  BUFX2 U617 ( .A(a[11]), .Y(n623) );
  BUFX2 U618 ( .A(a[12]), .Y(n622) );
  BUFX2 U619 ( .A(a[13]), .Y(n621) );
  BUFX2 U620 ( .A(a[14]), .Y(n620) );
  BUFX2 U621 ( .A(a[15]), .Y(n619) );
  BUFX2 U622 ( .A(a[16]), .Y(n618) );
endmodule


module multiplier ( diff, twiddle, total );
  input [16:0] diff;
  input [15:0] twiddle;
  output [15:0] total;
  wire   \product[32] , \product[31] , \product[30] , \product[29] ,
         \product[28] , \product[27] , \product[26] , \product[25] ,
         \product[24] , \product[23] , \product[22] , \product[21] ,
         \product[20] , \product[19] , \product[18] , \product[17] ,
         \product[16] , \product[15] , \product[14] , n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13;

  multiplier_DW_mult_tc_1 mult_15 ( .a(diff), .b(twiddle), .product({
        \product[32] , \product[31] , \product[30] , \product[29] , 
        \product[28] , \product[27] , \product[26] , \product[25] , 
        \product[24] , \product[23] , \product[22] , \product[21] , 
        \product[20] , \product[19] , \product[18] , \product[17] , 
        \product[16] , \product[15] , \product[14] , SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13}) );
  BUFX2 U48 ( .A(n52), .Y(n51) );
  OAI21X1 U49 ( .A(n51), .B(n53), .C(n54), .Y(total[9]) );
  XOR2X1 U50 ( .A(n55), .B(\product[24] ), .Y(n53) );
  OAI21X1 U51 ( .A(n51), .B(n56), .C(n54), .Y(total[8]) );
  XNOR2X1 U52 ( .A(\product[23] ), .B(n57), .Y(n56) );
  OAI21X1 U53 ( .A(n51), .B(n58), .C(n54), .Y(total[7]) );
  XOR2X1 U54 ( .A(n59), .B(\product[22] ), .Y(n58) );
  OAI21X1 U55 ( .A(n51), .B(n60), .C(n54), .Y(total[6]) );
  XNOR2X1 U56 ( .A(\product[21] ), .B(n61), .Y(n60) );
  OAI21X1 U57 ( .A(n51), .B(n62), .C(n54), .Y(total[5]) );
  XOR2X1 U58 ( .A(n63), .B(\product[20] ), .Y(n62) );
  OAI21X1 U59 ( .A(n51), .B(n64), .C(n54), .Y(total[4]) );
  XNOR2X1 U60 ( .A(\product[19] ), .B(n65), .Y(n64) );
  OAI21X1 U61 ( .A(n51), .B(n66), .C(n54), .Y(total[3]) );
  XOR2X1 U62 ( .A(n67), .B(\product[18] ), .Y(n66) );
  OAI21X1 U63 ( .A(n51), .B(n68), .C(n54), .Y(total[2]) );
  XNOR2X1 U64 ( .A(\product[17] ), .B(n69), .Y(n68) );
  OAI21X1 U65 ( .A(n51), .B(n70), .C(n54), .Y(total[1]) );
  XOR2X1 U66 ( .A(n71), .B(\product[16] ), .Y(n70) );
  OAI21X1 U67 ( .A(n51), .B(n72), .C(n54), .Y(total[14]) );
  XNOR2X1 U68 ( .A(\product[29] ), .B(n73), .Y(n72) );
  OAI21X1 U69 ( .A(n51), .B(n74), .C(n54), .Y(total[13]) );
  XOR2X1 U70 ( .A(n75), .B(\product[28] ), .Y(n74) );
  OAI21X1 U71 ( .A(n51), .B(n76), .C(n54), .Y(total[12]) );
  XNOR2X1 U72 ( .A(\product[27] ), .B(n77), .Y(n76) );
  OAI21X1 U73 ( .A(n51), .B(n78), .C(n54), .Y(total[11]) );
  XOR2X1 U74 ( .A(n79), .B(\product[26] ), .Y(n78) );
  OAI21X1 U75 ( .A(n51), .B(n80), .C(n54), .Y(total[10]) );
  XNOR2X1 U76 ( .A(\product[25] ), .B(n81), .Y(n80) );
  OAI21X1 U77 ( .A(n51), .B(n82), .C(n54), .Y(total[0]) );
  XNOR2X1 U78 ( .A(\product[14] ), .B(\product[15] ), .Y(n82) );
  INVX1 U79 ( .A(n83), .Y(total[15]) );
  OAI21X1 U80 ( .A(n84), .B(n51), .C(n54), .Y(n83) );
  OAI21X1 U81 ( .A(n84), .B(n85), .C(n86), .Y(n54) );
  AOI21X1 U82 ( .A(n85), .B(n84), .C(n86), .Y(n52) );
  XOR2X1 U83 ( .A(n87), .B(\product[32] ), .Y(n86) );
  NAND2X1 U84 ( .A(n88), .B(\product[31] ), .Y(n87) );
  INVX1 U85 ( .A(n89), .Y(n88) );
  XNOR2X1 U86 ( .A(n89), .B(\product[31] ), .Y(n85) );
  NAND3X1 U87 ( .A(\product[29] ), .B(n73), .C(\product[30] ), .Y(n89) );
  XNOR2X1 U88 ( .A(n90), .B(\product[30] ), .Y(n84) );
  NAND2X1 U89 ( .A(\product[29] ), .B(n73), .Y(n90) );
  NOR2X1 U90 ( .A(n91), .B(n75), .Y(n73) );
  NAND2X1 U91 ( .A(\product[27] ), .B(n77), .Y(n75) );
  NOR2X1 U92 ( .A(n92), .B(n79), .Y(n77) );
  NAND2X1 U93 ( .A(\product[25] ), .B(n81), .Y(n79) );
  NOR2X1 U94 ( .A(n93), .B(n55), .Y(n81) );
  NAND2X1 U95 ( .A(\product[23] ), .B(n57), .Y(n55) );
  NOR2X1 U96 ( .A(n94), .B(n59), .Y(n57) );
  NAND2X1 U97 ( .A(\product[21] ), .B(n61), .Y(n59) );
  NOR2X1 U98 ( .A(n95), .B(n63), .Y(n61) );
  NAND2X1 U99 ( .A(\product[19] ), .B(n65), .Y(n63) );
  NOR2X1 U100 ( .A(n96), .B(n67), .Y(n65) );
  NAND2X1 U101 ( .A(\product[17] ), .B(n69), .Y(n67) );
  NOR2X1 U102 ( .A(n97), .B(n71), .Y(n69) );
  NAND2X1 U103 ( .A(\product[15] ), .B(\product[14] ), .Y(n71) );
  INVX1 U104 ( .A(\product[16] ), .Y(n97) );
  INVX1 U105 ( .A(\product[18] ), .Y(n96) );
  INVX1 U106 ( .A(\product[20] ), .Y(n95) );
  INVX1 U107 ( .A(\product[22] ), .Y(n94) );
  INVX1 U108 ( .A(\product[24] ), .Y(n93) );
  INVX1 U109 ( .A(\product[26] ), .Y(n92) );
  INVX1 U110 ( .A(\product[28] ), .Y(n91) );
endmodule

