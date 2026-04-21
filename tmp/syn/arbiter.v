/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4
// Date      : Tue Apr 21 17:38:43 2026
/////////////////////////////////////////////////////////////


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
  wire   w_state, r_state, n410, n411, n412, n413, n414, n415, n416, n417,
         n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, n428,
         n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439,
         n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450,
         n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, n461,
         n462, n463, n464, n465, n466, n467, n468, n469, n470, n471, n472,
         n473, n474, n475, n476, n477, n478, n479, n480, n481, n482, n483,
         n484, n485, n486, n487, n488, n489, n490, n491, n492, n493, n494,
         n495, n496, n497, n498, n499, n500, n501, n502, n503, n504, n505,
         n506, n507, n508, n509, n510, n511, n512, n513, n514, n515, n516,
         n517, n518, n519, n520, n521, n522, n523, n524, n525, n526, n527,
         n528, n529, n530, n531, n532, n533, n534, n535, n536, n537, n538,
         n539, n540, n541, n542, n543, n544, n545, n546, n547, n548, n549,
         n550, n551, n552, n553, n554, n555, n556, n557, n558, n559, n560,
         n561, n562, n563, n564, n565, n566, n567, n568, n569, n570, n571,
         n572, n573, n574, n575, n576, n577, n578, n579, n580, n581, n582,
         n583, n584, n585, n586, n587, n588, n589, n590, n591, n592, n593,
         n594, n595, n596, n597, n598, n599, n600, n601, n602, n603, n604,
         n605, n606, n607, n608, n609, n610, n611, n612, n613, n614, n615,
         n616, n617, n618, n619, n620, n621, n622, n623, n624, n625, n626,
         n627, n628, n629, n630, n631, n632, n633, n634, n635, n636, n637,
         n638, n639, n640, n641, n642, n643, n644, n645, n646, n647, n648,
         n649, n650, n651, n652, n653, n654, n655, n656, n657, n658, n659,
         n660, n661, n662, n663, n664, n665, n666, n667, n668, n669, n670,
         n671, n672, n673, n674, n675, n676, n677, n678, n679, n680, n681,
         n682, n683, n684, n685, n686, n687, n688, n689, n690, n691, n692,
         n693, n694, n695, n696, n697, n698, n699, n700, n701, n702, n703,
         n704, n705, n706, n707, n708, n709, n710, n711, n712, n713, n714,
         n715, n716, n717, n718, n719, n720, n721, n722, n723, n724, n725,
         n726, n727, n728, n729, n730, n731, n732, n733, n734, n735, n736,
         n737, n738, n739, n740, n741, n742, n743, n744, n745, n746, n747,
         n748, n749, n750, n751, n752, n753, n754, n755, n756, n757, n758,
         n759, n760, n761, n762, n763, n764, n765, n766, n767, n768, n769,
         n770, n771, n772, n773, n774, n775, n776, n777, n778, n779, n780,
         n781, n782, n783, n784, n785, n786, n787, n788, n789, n790, n791,
         n792, n793, n794, n795, n796, n797, n798, n799, n800, n801, n802,
         n803, n804, n805, n806, n807, n808, n809, n810, n811, n812, n813,
         n814, n815, n816, n817, n818, n819, n820, n821, n822, n823, n824,
         n825, n826, n827, n828, n829, n830, n831, n832, n833, n834, n835,
         n836, n837, n838, n839, n840, n841, n842, n843, n844, n845, n846,
         n847, n848, n849, n850, n851, n852, n853;
  wire   [1:0] w_perms;
  wire   [1:0] r_perms;
  wire   [1:0] w_dest;
  wire   [1:0] r_dest;
  wire   [1:0] w_next_dest;
  wire   [1:0] r_next_dest;

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
  INVX1 U764 ( .A(n537), .Y(n416) );
  INVX8 U765 ( .A(n416), .Y(n417) );
  INVX1 U766 ( .A(n539), .Y(n418) );
  INVX8 U767 ( .A(n418), .Y(n419) );
  INVX1 U768 ( .A(n750), .Y(n420) );
  INVX8 U769 ( .A(n420), .Y(n421) );
  INVX1 U770 ( .A(n751), .Y(n422) );
  INVX8 U771 ( .A(n422), .Y(n423) );
  INVX1 U772 ( .A(n463), .Y(n424) );
  INVX8 U773 ( .A(n424), .Y(n425) );
  INVX1 U774 ( .A(n465), .Y(n426) );
  INVX8 U775 ( .A(n426), .Y(n427) );
  INVX1 U776 ( .A(n748), .Y(n428) );
  INVX8 U777 ( .A(n428), .Y(n429) );
  INVX1 U778 ( .A(n749), .Y(n430) );
  INVX8 U779 ( .A(n430), .Y(n431) );
  OAI22X1 U780 ( .A(n432), .B(n433), .C(w_state), .D(n434), .Y(w_next_dest[1])
         );
  OAI22X1 U781 ( .A(n435), .B(n433), .C(w_state), .D(n436), .Y(w_next_dest[0])
         );
  INVX1 U782 ( .A(n434), .Y(n436) );
  MUX2X1 U783 ( .B(n437), .A(n438), .S(n439), .Y(n434) );
  NAND3X1 U784 ( .A(n440), .B(n441), .C(n442), .Y(n438) );
  NOR2X1 U785 ( .A(n443), .B(n444), .Y(n442) );
  OAI21X1 U786 ( .A(n445), .B(n446), .C(n447), .Y(n444) );
  NAND2X1 U787 ( .A(n448), .B(fft_man_awaddr[0]), .Y(n446) );
  NAND2X1 U788 ( .A(n449), .B(n450), .Y(n443) );
  NOR2X1 U789 ( .A(fft_man_awaddr[9]), .B(fft_man_awaddr[8]), .Y(n441) );
  NOR2X1 U790 ( .A(fft_man_awaddr[7]), .B(fft_man_awaddr[6]), .Y(n440) );
  NAND3X1 U791 ( .A(n451), .B(n452), .C(n453), .Y(n437) );
  NOR2X1 U792 ( .A(n454), .B(n455), .Y(n453) );
  OAI21X1 U793 ( .A(n456), .B(n457), .C(n458), .Y(n455) );
  NAND2X1 U794 ( .A(n448), .B(cpu_awaddr[0]), .Y(n457) );
  MUX2X1 U795 ( .B(n459), .A(n460), .S(n439), .Y(n448) );
  NAND2X1 U796 ( .A(fft_man_awaddr[3]), .B(fft_man_awaddr[2]), .Y(n460) );
  NAND2X1 U797 ( .A(cpu_awaddr[3]), .B(cpu_awaddr[2]), .Y(n459) );
  NAND2X1 U798 ( .A(n461), .B(n462), .Y(n454) );
  NOR2X1 U799 ( .A(cpu_awaddr[9]), .B(cpu_awaddr[8]), .Y(n452) );
  NOR2X1 U800 ( .A(cpu_awaddr[7]), .B(cpu_awaddr[6]), .Y(n451) );
  OAI22X1 U801 ( .A(n425), .B(n464), .C(n427), .D(n466), .Y(sram_wvalid) );
  OAI22X1 U802 ( .A(n425), .B(n467), .C(n427), .D(n468), .Y(sram_wstrb[1]) );
  OAI22X1 U803 ( .A(n425), .B(n469), .C(n427), .D(n470), .Y(sram_wstrb[0]) );
  OAI22X1 U804 ( .A(n425), .B(n471), .C(n427), .D(n472), .Y(sram_wlast) );
  OAI22X1 U805 ( .A(n425), .B(n473), .C(n427), .D(n474), .Y(sram_wdata[9]) );
  OAI22X1 U806 ( .A(n425), .B(n475), .C(n427), .D(n476), .Y(sram_wdata[8]) );
  OAI22X1 U807 ( .A(n425), .B(n477), .C(n427), .D(n478), .Y(sram_wdata[7]) );
  OAI22X1 U808 ( .A(n425), .B(n479), .C(n427), .D(n480), .Y(sram_wdata[6]) );
  OAI22X1 U809 ( .A(n425), .B(n481), .C(n427), .D(n482), .Y(sram_wdata[5]) );
  OAI22X1 U810 ( .A(n425), .B(n483), .C(n427), .D(n484), .Y(sram_wdata[4]) );
  OAI22X1 U811 ( .A(n425), .B(n485), .C(n427), .D(n486), .Y(sram_wdata[3]) );
  OAI22X1 U812 ( .A(n425), .B(n487), .C(n427), .D(n488), .Y(sram_wdata[31]) );
  OAI22X1 U813 ( .A(n425), .B(n489), .C(n427), .D(n490), .Y(sram_wdata[30]) );
  OAI22X1 U814 ( .A(n425), .B(n491), .C(n427), .D(n492), .Y(sram_wdata[2]) );
  OAI22X1 U815 ( .A(n425), .B(n493), .C(n427), .D(n494), .Y(sram_wdata[29]) );
  OAI22X1 U816 ( .A(n425), .B(n495), .C(n427), .D(n496), .Y(sram_wdata[28]) );
  OAI22X1 U817 ( .A(n425), .B(n497), .C(n427), .D(n498), .Y(sram_wdata[27]) );
  OAI22X1 U818 ( .A(n425), .B(n499), .C(n427), .D(n500), .Y(sram_wdata[26]) );
  OAI22X1 U819 ( .A(n425), .B(n501), .C(n427), .D(n502), .Y(sram_wdata[25]) );
  OAI22X1 U820 ( .A(n425), .B(n503), .C(n427), .D(n504), .Y(sram_wdata[24]) );
  OAI22X1 U821 ( .A(n425), .B(n505), .C(n427), .D(n506), .Y(sram_wdata[23]) );
  OAI22X1 U822 ( .A(n425), .B(n507), .C(n427), .D(n508), .Y(sram_wdata[22]) );
  OAI22X1 U823 ( .A(n425), .B(n509), .C(n427), .D(n510), .Y(sram_wdata[21]) );
  OAI22X1 U824 ( .A(n425), .B(n511), .C(n427), .D(n512), .Y(sram_wdata[20]) );
  OAI22X1 U825 ( .A(n425), .B(n513), .C(n427), .D(n514), .Y(sram_wdata[1]) );
  OAI22X1 U826 ( .A(n425), .B(n515), .C(n427), .D(n516), .Y(sram_wdata[19]) );
  OAI22X1 U827 ( .A(n425), .B(n517), .C(n427), .D(n518), .Y(sram_wdata[18]) );
  OAI22X1 U828 ( .A(n425), .B(n519), .C(n427), .D(n520), .Y(sram_wdata[17]) );
  OAI22X1 U829 ( .A(n425), .B(n521), .C(n427), .D(n522), .Y(sram_wdata[16]) );
  OAI22X1 U830 ( .A(n425), .B(n523), .C(n427), .D(n524), .Y(sram_wdata[15]) );
  OAI22X1 U831 ( .A(n425), .B(n525), .C(n427), .D(n526), .Y(sram_wdata[14]) );
  OAI22X1 U832 ( .A(n425), .B(n527), .C(n427), .D(n528), .Y(sram_wdata[13]) );
  OAI22X1 U833 ( .A(n425), .B(n529), .C(n427), .D(n530), .Y(sram_wdata[12]) );
  OAI22X1 U834 ( .A(n425), .B(n531), .C(n427), .D(n532), .Y(sram_wdata[11]) );
  OAI22X1 U835 ( .A(n425), .B(n533), .C(n427), .D(n534), .Y(sram_wdata[10]) );
  OAI22X1 U836 ( .A(n425), .B(n535), .C(n427), .D(n536), .Y(sram_wdata[0]) );
  OAI22X1 U837 ( .A(n417), .B(n538), .C(n419), .D(n540), .Y(sram_rready) );
  OAI22X1 U838 ( .A(n425), .B(n541), .C(n427), .D(n542), .Y(sram_bready) );
  OAI22X1 U839 ( .A(n439), .B(n425), .C(n427), .D(n543), .Y(sram_awvalid) );
  OAI22X1 U840 ( .A(n425), .B(n544), .C(n427), .D(n545), .Y(sram_awlen[9]) );
  OAI22X1 U841 ( .A(n425), .B(n546), .C(n427), .D(n547), .Y(sram_awlen[8]) );
  OAI22X1 U842 ( .A(n425), .B(n548), .C(n427), .D(n549), .Y(sram_awlen[7]) );
  OAI22X1 U843 ( .A(n425), .B(n550), .C(n427), .D(n551), .Y(sram_awlen[6]) );
  OAI22X1 U844 ( .A(n425), .B(n552), .C(n427), .D(n553), .Y(sram_awlen[5]) );
  OAI22X1 U845 ( .A(n425), .B(n554), .C(n427), .D(n555), .Y(sram_awlen[4]) );
  OAI22X1 U846 ( .A(n425), .B(n556), .C(n427), .D(n557), .Y(sram_awlen[3]) );
  OAI22X1 U847 ( .A(n425), .B(n558), .C(n427), .D(n559), .Y(sram_awlen[2]) );
  OAI22X1 U848 ( .A(n425), .B(n560), .C(n427), .D(n561), .Y(sram_awlen[1]) );
  OAI22X1 U849 ( .A(n425), .B(n562), .C(n427), .D(n563), .Y(sram_awlen[0]) );
  OAI22X1 U850 ( .A(n425), .B(n564), .C(n427), .D(n565), .Y(sram_awaddr[9]) );
  OAI22X1 U851 ( .A(n425), .B(n566), .C(n427), .D(n567), .Y(sram_awaddr[8]) );
  OAI22X1 U852 ( .A(n425), .B(n568), .C(n427), .D(n569), .Y(sram_awaddr[7]) );
  OAI22X1 U853 ( .A(n425), .B(n570), .C(n427), .D(n571), .Y(sram_awaddr[6]) );
  OAI22X1 U854 ( .A(n425), .B(n462), .C(n427), .D(n450), .Y(sram_awaddr[5]) );
  OAI22X1 U855 ( .A(n425), .B(n461), .C(n427), .D(n449), .Y(sram_awaddr[4]) );
  OAI22X1 U856 ( .A(n572), .B(n425), .C(n573), .D(n427), .Y(sram_awaddr[3]) );
  OAI22X1 U857 ( .A(n425), .B(n574), .C(n427), .D(n575), .Y(sram_awaddr[31])
         );
  OAI22X1 U858 ( .A(n425), .B(n576), .C(n427), .D(n577), .Y(sram_awaddr[30])
         );
  OAI22X1 U859 ( .A(n578), .B(n425), .C(n579), .D(n427), .Y(sram_awaddr[2]) );
  OAI22X1 U860 ( .A(n425), .B(n580), .C(n427), .D(n581), .Y(sram_awaddr[29])
         );
  OAI22X1 U861 ( .A(n425), .B(n582), .C(n427), .D(n583), .Y(sram_awaddr[28])
         );
  OAI22X1 U862 ( .A(n425), .B(n584), .C(n427), .D(n585), .Y(sram_awaddr[27])
         );
  OAI22X1 U863 ( .A(n425), .B(n586), .C(n427), .D(n587), .Y(sram_awaddr[26])
         );
  OAI22X1 U864 ( .A(n425), .B(n588), .C(n427), .D(n589), .Y(sram_awaddr[25])
         );
  OAI22X1 U865 ( .A(n425), .B(n590), .C(n427), .D(n591), .Y(sram_awaddr[24])
         );
  OAI22X1 U866 ( .A(n425), .B(n592), .C(n427), .D(n593), .Y(sram_awaddr[23])
         );
  OAI22X1 U867 ( .A(n425), .B(n594), .C(n427), .D(n595), .Y(sram_awaddr[22])
         );
  OAI22X1 U868 ( .A(n425), .B(n596), .C(n427), .D(n597), .Y(sram_awaddr[21])
         );
  OAI22X1 U869 ( .A(n425), .B(n598), .C(n427), .D(n599), .Y(sram_awaddr[20])
         );
  OAI22X1 U870 ( .A(n456), .B(n425), .C(n445), .D(n427), .Y(sram_awaddr[1]) );
  OAI22X1 U871 ( .A(n425), .B(n600), .C(n427), .D(n601), .Y(sram_awaddr[19])
         );
  OAI22X1 U872 ( .A(n425), .B(n602), .C(n427), .D(n603), .Y(sram_awaddr[18])
         );
  OAI22X1 U873 ( .A(n425), .B(n604), .C(n427), .D(n605), .Y(sram_awaddr[17])
         );
  OAI22X1 U874 ( .A(n425), .B(n606), .C(n427), .D(n607), .Y(sram_awaddr[16])
         );
  OAI22X1 U875 ( .A(n425), .B(n608), .C(n427), .D(n609), .Y(sram_awaddr[15])
         );
  OAI22X1 U876 ( .A(n425), .B(n610), .C(n427), .D(n611), .Y(sram_awaddr[14])
         );
  OAI22X1 U877 ( .A(n425), .B(n612), .C(n427), .D(n613), .Y(sram_awaddr[13])
         );
  OAI22X1 U878 ( .A(n425), .B(n614), .C(n427), .D(n615), .Y(sram_awaddr[12])
         );
  OAI22X1 U879 ( .A(n425), .B(n616), .C(n427), .D(n617), .Y(sram_awaddr[11])
         );
  OAI22X1 U880 ( .A(n425), .B(n458), .C(n427), .D(n447), .Y(sram_awaddr[10])
         );
  OAI22X1 U881 ( .A(n618), .B(n425), .C(n619), .D(n427), .Y(sram_awaddr[0]) );
  OAI22X1 U882 ( .A(n417), .B(n620), .C(n419), .D(n621), .Y(sram_arvalid) );
  OAI22X1 U883 ( .A(n417), .B(n622), .C(n419), .D(n623), .Y(sram_arlen[9]) );
  OAI22X1 U884 ( .A(n417), .B(n624), .C(n419), .D(n625), .Y(sram_arlen[8]) );
  OAI22X1 U885 ( .A(n417), .B(n626), .C(n419), .D(n627), .Y(sram_arlen[7]) );
  OAI22X1 U886 ( .A(n417), .B(n628), .C(n419), .D(n629), .Y(sram_arlen[6]) );
  OAI22X1 U887 ( .A(n417), .B(n630), .C(n419), .D(n631), .Y(sram_arlen[5]) );
  OAI22X1 U888 ( .A(n417), .B(n632), .C(n419), .D(n633), .Y(sram_arlen[4]) );
  OAI22X1 U889 ( .A(n417), .B(n634), .C(n419), .D(n635), .Y(sram_arlen[3]) );
  OAI22X1 U890 ( .A(n417), .B(n636), .C(n419), .D(n637), .Y(sram_arlen[2]) );
  OAI22X1 U891 ( .A(n417), .B(n638), .C(n419), .D(n639), .Y(sram_arlen[1]) );
  OAI22X1 U892 ( .A(n417), .B(n640), .C(n419), .D(n641), .Y(sram_arlen[0]) );
  OAI22X1 U893 ( .A(n417), .B(n642), .C(n419), .D(n643), .Y(sram_araddr[9]) );
  OAI22X1 U894 ( .A(n417), .B(n644), .C(n419), .D(n645), .Y(sram_araddr[8]) );
  OAI22X1 U895 ( .A(n417), .B(n646), .C(n419), .D(n647), .Y(sram_araddr[7]) );
  OAI22X1 U896 ( .A(n417), .B(n648), .C(n419), .D(n649), .Y(sram_araddr[6]) );
  OAI22X1 U897 ( .A(n417), .B(n650), .C(n419), .D(n651), .Y(sram_araddr[5]) );
  OAI22X1 U898 ( .A(n417), .B(n652), .C(n419), .D(n653), .Y(sram_araddr[4]) );
  OAI22X1 U899 ( .A(n417), .B(n654), .C(n419), .D(n655), .Y(sram_araddr[3]) );
  OAI22X1 U900 ( .A(n417), .B(n656), .C(n419), .D(n657), .Y(sram_araddr[31])
         );
  OAI22X1 U901 ( .A(n417), .B(n658), .C(n419), .D(n659), .Y(sram_araddr[30])
         );
  OAI22X1 U902 ( .A(n417), .B(n660), .C(n419), .D(n661), .Y(sram_araddr[2]) );
  OAI22X1 U903 ( .A(n417), .B(n662), .C(n419), .D(n663), .Y(sram_araddr[29])
         );
  OAI22X1 U904 ( .A(n417), .B(n664), .C(n419), .D(n665), .Y(sram_araddr[28])
         );
  OAI22X1 U905 ( .A(n417), .B(n666), .C(n419), .D(n667), .Y(sram_araddr[27])
         );
  OAI22X1 U906 ( .A(n417), .B(n668), .C(n419), .D(n669), .Y(sram_araddr[26])
         );
  OAI22X1 U907 ( .A(n417), .B(n670), .C(n419), .D(n671), .Y(sram_araddr[25])
         );
  OAI22X1 U908 ( .A(n417), .B(n672), .C(n419), .D(n673), .Y(sram_araddr[24])
         );
  OAI22X1 U909 ( .A(n417), .B(n674), .C(n419), .D(n675), .Y(sram_araddr[23])
         );
  OAI22X1 U910 ( .A(n417), .B(n676), .C(n419), .D(n677), .Y(sram_araddr[22])
         );
  OAI22X1 U911 ( .A(n417), .B(n678), .C(n419), .D(n679), .Y(sram_araddr[21])
         );
  OAI22X1 U912 ( .A(n417), .B(n680), .C(n419), .D(n681), .Y(sram_araddr[20])
         );
  OAI22X1 U913 ( .A(n417), .B(n682), .C(n419), .D(n683), .Y(sram_araddr[1]) );
  OAI22X1 U914 ( .A(n417), .B(n684), .C(n419), .D(n685), .Y(sram_araddr[19])
         );
  OAI22X1 U915 ( .A(n417), .B(n686), .C(n419), .D(n687), .Y(sram_araddr[18])
         );
  OAI22X1 U916 ( .A(n417), .B(n688), .C(n419), .D(n689), .Y(sram_araddr[17])
         );
  OAI22X1 U917 ( .A(n417), .B(n690), .C(n419), .D(n691), .Y(sram_araddr[16])
         );
  OAI22X1 U918 ( .A(n417), .B(n692), .C(n419), .D(n693), .Y(sram_araddr[15])
         );
  OAI22X1 U919 ( .A(n417), .B(n694), .C(n419), .D(n695), .Y(sram_araddr[14])
         );
  OAI22X1 U920 ( .A(n417), .B(n696), .C(n419), .D(n697), .Y(sram_araddr[13])
         );
  OAI22X1 U921 ( .A(n417), .B(n698), .C(n419), .D(n699), .Y(sram_araddr[12])
         );
  OAI22X1 U922 ( .A(n417), .B(n700), .C(n419), .D(n701), .Y(sram_araddr[11])
         );
  OAI22X1 U923 ( .A(n417), .B(n702), .C(n419), .D(n703), .Y(sram_araddr[10])
         );
  OAI22X1 U924 ( .A(n417), .B(n704), .C(n419), .D(n705), .Y(sram_araddr[0]) );
  OAI22X1 U925 ( .A(n706), .B(n707), .C(r_state), .D(n708), .Y(r_next_dest[1])
         );
  OAI22X1 U926 ( .A(n709), .B(n707), .C(r_state), .D(n710), .Y(r_next_dest[0])
         );
  INVX1 U927 ( .A(n708), .Y(n710) );
  MUX2X1 U928 ( .B(n711), .A(n712), .S(n620), .Y(n708) );
  NAND3X1 U929 ( .A(n713), .B(n714), .C(n715), .Y(n712) );
  NOR2X1 U930 ( .A(n716), .B(n717), .Y(n715) );
  OAI21X1 U931 ( .A(n718), .B(n719), .C(n703), .Y(n717) );
  NAND2X1 U932 ( .A(fft_man_araddr[0]), .B(fft_man_araddr[1]), .Y(n719) );
  NAND2X1 U933 ( .A(n653), .B(n651), .Y(n716) );
  NOR2X1 U934 ( .A(fft_man_araddr[9]), .B(fft_man_araddr[8]), .Y(n714) );
  NOR2X1 U935 ( .A(fft_man_araddr[7]), .B(fft_man_araddr[6]), .Y(n713) );
  NAND3X1 U936 ( .A(n720), .B(n721), .C(n722), .Y(n711) );
  NOR2X1 U937 ( .A(n723), .B(n724), .Y(n722) );
  OAI21X1 U938 ( .A(n718), .B(n725), .C(n702), .Y(n724) );
  NAND2X1 U939 ( .A(cpu_araddr[0]), .B(cpu_araddr[1]), .Y(n725) );
  INVX1 U940 ( .A(n726), .Y(n718) );
  MUX2X1 U941 ( .B(n727), .A(n728), .S(n620), .Y(n726) );
  NAND2X1 U942 ( .A(fft_man_araddr[2]), .B(fft_man_araddr[3]), .Y(n728) );
  NAND2X1 U943 ( .A(cpu_araddr[2]), .B(cpu_araddr[3]), .Y(n727) );
  NAND2X1 U944 ( .A(n652), .B(n650), .Y(n723) );
  NOR2X1 U945 ( .A(cpu_araddr[9]), .B(cpu_araddr[8]), .Y(n721) );
  NOR2X1 U946 ( .A(cpu_araddr[7]), .B(cpu_araddr[6]), .Y(n720) );
  OAI21X1 U947 ( .A(n729), .B(n707), .C(n730), .Y(n415) );
  OAI21X1 U948 ( .A(n731), .B(cpu_arvalid), .C(n732), .Y(n730) );
  NOR2X1 U949 ( .A(fft_man_arvalid), .B(n729), .Y(n731) );
  OAI21X1 U950 ( .A(r_state), .B(n733), .C(n707), .Y(n414) );
  NOR2X1 U951 ( .A(cpu_arvalid), .B(fft_man_arvalid), .Y(n733) );
  OAI21X1 U952 ( .A(n734), .B(n707), .C(n735), .Y(n413) );
  OAI21X1 U953 ( .A(fft_man_arvalid), .B(r_perms[1]), .C(n736), .Y(n735) );
  NOR2X1 U954 ( .A(r_state), .B(cpu_arvalid), .Y(n736) );
  NAND3X1 U955 ( .A(n737), .B(n738), .C(r_state), .Y(n707) );
  NAND3X1 U956 ( .A(cpu_rlast), .B(cpu_rvalid), .C(cpu_rready), .Y(n738) );
  NAND3X1 U957 ( .A(fft_man_rlast), .B(fft_man_rvalid), .C(fft_man_rready), 
        .Y(n737) );
  OAI21X1 U958 ( .A(w_state), .B(n739), .C(n433), .Y(n412) );
  NOR2X1 U959 ( .A(cpu_awvalid), .B(fft_man_awvalid), .Y(n739) );
  OAI21X1 U960 ( .A(n740), .B(n433), .C(n741), .Y(n411) );
  OAI21X1 U961 ( .A(n742), .B(cpu_awvalid), .C(n743), .Y(n741) );
  NOR2X1 U962 ( .A(fft_man_awvalid), .B(n740), .Y(n742) );
  OAI21X1 U963 ( .A(n744), .B(n433), .C(n745), .Y(n410) );
  OAI21X1 U964 ( .A(fft_man_awvalid), .B(w_perms[1]), .C(n746), .Y(n745) );
  NOR2X1 U965 ( .A(w_state), .B(cpu_awvalid), .Y(n746) );
  NAND2X1 U966 ( .A(n747), .B(w_state), .Y(n433) );
  AOI22X1 U967 ( .A(cpu_bready), .B(cpu_bvalid), .C(fft_man_bready), .D(
        fft_man_bvalid), .Y(n747) );
  OAI22X1 U968 ( .A(n429), .B(n464), .C(n431), .D(n466), .Y(fft_sub_wvalid) );
  INVX1 U969 ( .A(fft_man_wvalid), .Y(n466) );
  INVX1 U970 ( .A(cpu_wvalid), .Y(n464) );
  OAI22X1 U971 ( .A(n429), .B(n467), .C(n431), .D(n468), .Y(fft_sub_wstrb[1])
         );
  INVX1 U972 ( .A(fft_man_wstrb[1]), .Y(n468) );
  INVX1 U973 ( .A(cpu_wstrb[1]), .Y(n467) );
  OAI22X1 U974 ( .A(n429), .B(n469), .C(n431), .D(n470), .Y(fft_sub_wstrb[0])
         );
  INVX1 U975 ( .A(fft_man_wstrb[0]), .Y(n470) );
  INVX1 U976 ( .A(cpu_wstrb[0]), .Y(n469) );
  OAI22X1 U977 ( .A(n429), .B(n471), .C(n431), .D(n472), .Y(fft_sub_wlast) );
  INVX1 U978 ( .A(fft_man_wlast), .Y(n472) );
  INVX1 U979 ( .A(cpu_wlast), .Y(n471) );
  OAI22X1 U980 ( .A(n429), .B(n473), .C(n431), .D(n474), .Y(fft_sub_wdata[9])
         );
  INVX1 U981 ( .A(fft_man_wdata[9]), .Y(n474) );
  INVX1 U982 ( .A(cpu_wdata[9]), .Y(n473) );
  OAI22X1 U983 ( .A(n429), .B(n475), .C(n431), .D(n476), .Y(fft_sub_wdata[8])
         );
  INVX1 U984 ( .A(fft_man_wdata[8]), .Y(n476) );
  INVX1 U985 ( .A(cpu_wdata[8]), .Y(n475) );
  OAI22X1 U986 ( .A(n429), .B(n477), .C(n431), .D(n478), .Y(fft_sub_wdata[7])
         );
  INVX1 U987 ( .A(fft_man_wdata[7]), .Y(n478) );
  INVX1 U988 ( .A(cpu_wdata[7]), .Y(n477) );
  OAI22X1 U989 ( .A(n429), .B(n479), .C(n431), .D(n480), .Y(fft_sub_wdata[6])
         );
  INVX1 U990 ( .A(fft_man_wdata[6]), .Y(n480) );
  INVX1 U991 ( .A(cpu_wdata[6]), .Y(n479) );
  OAI22X1 U992 ( .A(n429), .B(n481), .C(n431), .D(n482), .Y(fft_sub_wdata[5])
         );
  INVX1 U993 ( .A(fft_man_wdata[5]), .Y(n482) );
  INVX1 U994 ( .A(cpu_wdata[5]), .Y(n481) );
  OAI22X1 U995 ( .A(n429), .B(n483), .C(n431), .D(n484), .Y(fft_sub_wdata[4])
         );
  INVX1 U996 ( .A(fft_man_wdata[4]), .Y(n484) );
  INVX1 U997 ( .A(cpu_wdata[4]), .Y(n483) );
  OAI22X1 U998 ( .A(n429), .B(n485), .C(n431), .D(n486), .Y(fft_sub_wdata[3])
         );
  INVX1 U999 ( .A(fft_man_wdata[3]), .Y(n486) );
  INVX1 U1000 ( .A(cpu_wdata[3]), .Y(n485) );
  OAI22X1 U1001 ( .A(n429), .B(n487), .C(n431), .D(n488), .Y(fft_sub_wdata[31]) );
  INVX1 U1002 ( .A(fft_man_wdata[31]), .Y(n488) );
  INVX1 U1003 ( .A(cpu_wdata[31]), .Y(n487) );
  OAI22X1 U1004 ( .A(n429), .B(n489), .C(n431), .D(n490), .Y(fft_sub_wdata[30]) );
  INVX1 U1005 ( .A(fft_man_wdata[30]), .Y(n490) );
  INVX1 U1006 ( .A(cpu_wdata[30]), .Y(n489) );
  OAI22X1 U1007 ( .A(n429), .B(n491), .C(n431), .D(n492), .Y(fft_sub_wdata[2])
         );
  INVX1 U1008 ( .A(fft_man_wdata[2]), .Y(n492) );
  INVX1 U1009 ( .A(cpu_wdata[2]), .Y(n491) );
  OAI22X1 U1010 ( .A(n429), .B(n493), .C(n431), .D(n494), .Y(fft_sub_wdata[29]) );
  INVX1 U1011 ( .A(fft_man_wdata[29]), .Y(n494) );
  INVX1 U1012 ( .A(cpu_wdata[29]), .Y(n493) );
  OAI22X1 U1013 ( .A(n429), .B(n495), .C(n431), .D(n496), .Y(fft_sub_wdata[28]) );
  INVX1 U1014 ( .A(fft_man_wdata[28]), .Y(n496) );
  INVX1 U1015 ( .A(cpu_wdata[28]), .Y(n495) );
  OAI22X1 U1016 ( .A(n429), .B(n497), .C(n431), .D(n498), .Y(fft_sub_wdata[27]) );
  INVX1 U1017 ( .A(fft_man_wdata[27]), .Y(n498) );
  INVX1 U1018 ( .A(cpu_wdata[27]), .Y(n497) );
  OAI22X1 U1019 ( .A(n429), .B(n499), .C(n431), .D(n500), .Y(fft_sub_wdata[26]) );
  INVX1 U1020 ( .A(fft_man_wdata[26]), .Y(n500) );
  INVX1 U1021 ( .A(cpu_wdata[26]), .Y(n499) );
  OAI22X1 U1022 ( .A(n429), .B(n501), .C(n431), .D(n502), .Y(fft_sub_wdata[25]) );
  INVX1 U1023 ( .A(fft_man_wdata[25]), .Y(n502) );
  INVX1 U1024 ( .A(cpu_wdata[25]), .Y(n501) );
  OAI22X1 U1025 ( .A(n429), .B(n503), .C(n431), .D(n504), .Y(fft_sub_wdata[24]) );
  INVX1 U1026 ( .A(fft_man_wdata[24]), .Y(n504) );
  INVX1 U1027 ( .A(cpu_wdata[24]), .Y(n503) );
  OAI22X1 U1028 ( .A(n429), .B(n505), .C(n431), .D(n506), .Y(fft_sub_wdata[23]) );
  INVX1 U1029 ( .A(fft_man_wdata[23]), .Y(n506) );
  INVX1 U1030 ( .A(cpu_wdata[23]), .Y(n505) );
  OAI22X1 U1031 ( .A(n429), .B(n507), .C(n431), .D(n508), .Y(fft_sub_wdata[22]) );
  INVX1 U1032 ( .A(fft_man_wdata[22]), .Y(n508) );
  INVX1 U1033 ( .A(cpu_wdata[22]), .Y(n507) );
  OAI22X1 U1034 ( .A(n429), .B(n509), .C(n431), .D(n510), .Y(fft_sub_wdata[21]) );
  INVX1 U1035 ( .A(fft_man_wdata[21]), .Y(n510) );
  INVX1 U1036 ( .A(cpu_wdata[21]), .Y(n509) );
  OAI22X1 U1037 ( .A(n429), .B(n511), .C(n431), .D(n512), .Y(fft_sub_wdata[20]) );
  INVX1 U1038 ( .A(fft_man_wdata[20]), .Y(n512) );
  INVX1 U1039 ( .A(cpu_wdata[20]), .Y(n511) );
  OAI22X1 U1040 ( .A(n429), .B(n513), .C(n431), .D(n514), .Y(fft_sub_wdata[1])
         );
  INVX1 U1041 ( .A(fft_man_wdata[1]), .Y(n514) );
  INVX1 U1042 ( .A(cpu_wdata[1]), .Y(n513) );
  OAI22X1 U1043 ( .A(n429), .B(n515), .C(n431), .D(n516), .Y(fft_sub_wdata[19]) );
  INVX1 U1044 ( .A(fft_man_wdata[19]), .Y(n516) );
  INVX1 U1045 ( .A(cpu_wdata[19]), .Y(n515) );
  OAI22X1 U1046 ( .A(n429), .B(n517), .C(n431), .D(n518), .Y(fft_sub_wdata[18]) );
  INVX1 U1047 ( .A(fft_man_wdata[18]), .Y(n518) );
  INVX1 U1048 ( .A(cpu_wdata[18]), .Y(n517) );
  OAI22X1 U1049 ( .A(n429), .B(n519), .C(n431), .D(n520), .Y(fft_sub_wdata[17]) );
  INVX1 U1050 ( .A(fft_man_wdata[17]), .Y(n520) );
  INVX1 U1051 ( .A(cpu_wdata[17]), .Y(n519) );
  OAI22X1 U1052 ( .A(n429), .B(n521), .C(n431), .D(n522), .Y(fft_sub_wdata[16]) );
  INVX1 U1053 ( .A(fft_man_wdata[16]), .Y(n522) );
  INVX1 U1054 ( .A(cpu_wdata[16]), .Y(n521) );
  OAI22X1 U1055 ( .A(n429), .B(n523), .C(n431), .D(n524), .Y(fft_sub_wdata[15]) );
  INVX1 U1056 ( .A(fft_man_wdata[15]), .Y(n524) );
  INVX1 U1057 ( .A(cpu_wdata[15]), .Y(n523) );
  OAI22X1 U1058 ( .A(n429), .B(n525), .C(n431), .D(n526), .Y(fft_sub_wdata[14]) );
  INVX1 U1059 ( .A(fft_man_wdata[14]), .Y(n526) );
  INVX1 U1060 ( .A(cpu_wdata[14]), .Y(n525) );
  OAI22X1 U1061 ( .A(n429), .B(n527), .C(n431), .D(n528), .Y(fft_sub_wdata[13]) );
  INVX1 U1062 ( .A(fft_man_wdata[13]), .Y(n528) );
  INVX1 U1063 ( .A(cpu_wdata[13]), .Y(n527) );
  OAI22X1 U1064 ( .A(n429), .B(n529), .C(n431), .D(n530), .Y(fft_sub_wdata[12]) );
  INVX1 U1065 ( .A(fft_man_wdata[12]), .Y(n530) );
  INVX1 U1066 ( .A(cpu_wdata[12]), .Y(n529) );
  OAI22X1 U1067 ( .A(n429), .B(n531), .C(n431), .D(n532), .Y(fft_sub_wdata[11]) );
  INVX1 U1068 ( .A(fft_man_wdata[11]), .Y(n532) );
  INVX1 U1069 ( .A(cpu_wdata[11]), .Y(n531) );
  OAI22X1 U1070 ( .A(n429), .B(n533), .C(n431), .D(n534), .Y(fft_sub_wdata[10]) );
  INVX1 U1071 ( .A(fft_man_wdata[10]), .Y(n534) );
  INVX1 U1072 ( .A(cpu_wdata[10]), .Y(n533) );
  OAI22X1 U1073 ( .A(n429), .B(n535), .C(n431), .D(n536), .Y(fft_sub_wdata[0])
         );
  INVX1 U1074 ( .A(fft_man_wdata[0]), .Y(n536) );
  INVX1 U1075 ( .A(cpu_wdata[0]), .Y(n535) );
  OAI22X1 U1076 ( .A(n538), .B(n421), .C(n540), .D(n423), .Y(fft_sub_rready)
         );
  INVX1 U1077 ( .A(fft_man_rready), .Y(n540) );
  INVX1 U1078 ( .A(cpu_rready), .Y(n538) );
  OAI22X1 U1079 ( .A(n429), .B(n541), .C(n431), .D(n542), .Y(fft_sub_bready)
         );
  INVX1 U1080 ( .A(fft_man_bready), .Y(n542) );
  INVX1 U1081 ( .A(cpu_bready), .Y(n541) );
  OAI22X1 U1082 ( .A(n439), .B(n429), .C(n431), .D(n543), .Y(fft_sub_awvalid)
         );
  INVX1 U1083 ( .A(fft_man_awvalid), .Y(n543) );
  INVX1 U1084 ( .A(cpu_awvalid), .Y(n439) );
  OAI22X1 U1085 ( .A(n429), .B(n544), .C(n431), .D(n545), .Y(fft_sub_awlen[9])
         );
  INVX1 U1086 ( .A(fft_man_awlen[9]), .Y(n545) );
  INVX1 U1087 ( .A(cpu_awlen[9]), .Y(n544) );
  OAI22X1 U1088 ( .A(n429), .B(n546), .C(n431), .D(n547), .Y(fft_sub_awlen[8])
         );
  INVX1 U1089 ( .A(fft_man_awlen[8]), .Y(n547) );
  INVX1 U1090 ( .A(cpu_awlen[8]), .Y(n546) );
  OAI22X1 U1091 ( .A(n429), .B(n548), .C(n431), .D(n549), .Y(fft_sub_awlen[7])
         );
  INVX1 U1092 ( .A(fft_man_awlen[7]), .Y(n549) );
  INVX1 U1093 ( .A(cpu_awlen[7]), .Y(n548) );
  OAI22X1 U1094 ( .A(n429), .B(n550), .C(n431), .D(n551), .Y(fft_sub_awlen[6])
         );
  INVX1 U1095 ( .A(fft_man_awlen[6]), .Y(n551) );
  INVX1 U1096 ( .A(cpu_awlen[6]), .Y(n550) );
  OAI22X1 U1097 ( .A(n429), .B(n552), .C(n431), .D(n553), .Y(fft_sub_awlen[5])
         );
  INVX1 U1098 ( .A(fft_man_awlen[5]), .Y(n553) );
  INVX1 U1099 ( .A(cpu_awlen[5]), .Y(n552) );
  OAI22X1 U1100 ( .A(n429), .B(n554), .C(n431), .D(n555), .Y(fft_sub_awlen[4])
         );
  INVX1 U1101 ( .A(fft_man_awlen[4]), .Y(n555) );
  INVX1 U1102 ( .A(cpu_awlen[4]), .Y(n554) );
  OAI22X1 U1103 ( .A(n429), .B(n556), .C(n431), .D(n557), .Y(fft_sub_awlen[3])
         );
  INVX1 U1104 ( .A(fft_man_awlen[3]), .Y(n557) );
  INVX1 U1105 ( .A(cpu_awlen[3]), .Y(n556) );
  OAI22X1 U1106 ( .A(n429), .B(n558), .C(n431), .D(n559), .Y(fft_sub_awlen[2])
         );
  INVX1 U1107 ( .A(fft_man_awlen[2]), .Y(n559) );
  INVX1 U1108 ( .A(cpu_awlen[2]), .Y(n558) );
  OAI22X1 U1109 ( .A(n429), .B(n560), .C(n431), .D(n561), .Y(fft_sub_awlen[1])
         );
  INVX1 U1110 ( .A(fft_man_awlen[1]), .Y(n561) );
  INVX1 U1111 ( .A(cpu_awlen[1]), .Y(n560) );
  OAI22X1 U1112 ( .A(n429), .B(n562), .C(n431), .D(n563), .Y(fft_sub_awlen[0])
         );
  INVX1 U1113 ( .A(fft_man_awlen[0]), .Y(n563) );
  INVX1 U1114 ( .A(cpu_awlen[0]), .Y(n562) );
  OAI22X1 U1115 ( .A(n429), .B(n564), .C(n431), .D(n565), .Y(fft_sub_awaddr[9]) );
  INVX1 U1116 ( .A(fft_man_awaddr[9]), .Y(n565) );
  INVX1 U1117 ( .A(cpu_awaddr[9]), .Y(n564) );
  OAI22X1 U1118 ( .A(n429), .B(n566), .C(n431), .D(n567), .Y(fft_sub_awaddr[8]) );
  INVX1 U1119 ( .A(fft_man_awaddr[8]), .Y(n567) );
  INVX1 U1120 ( .A(cpu_awaddr[8]), .Y(n566) );
  OAI22X1 U1121 ( .A(n429), .B(n568), .C(n431), .D(n569), .Y(fft_sub_awaddr[7]) );
  INVX1 U1122 ( .A(fft_man_awaddr[7]), .Y(n569) );
  INVX1 U1123 ( .A(cpu_awaddr[7]), .Y(n568) );
  OAI22X1 U1124 ( .A(n429), .B(n570), .C(n431), .D(n571), .Y(fft_sub_awaddr[6]) );
  INVX1 U1125 ( .A(fft_man_awaddr[6]), .Y(n571) );
  INVX1 U1126 ( .A(cpu_awaddr[6]), .Y(n570) );
  OAI22X1 U1127 ( .A(n429), .B(n462), .C(n431), .D(n450), .Y(fft_sub_awaddr[5]) );
  INVX1 U1128 ( .A(fft_man_awaddr[5]), .Y(n450) );
  INVX1 U1129 ( .A(cpu_awaddr[5]), .Y(n462) );
  OAI22X1 U1130 ( .A(n429), .B(n461), .C(n431), .D(n449), .Y(fft_sub_awaddr[4]) );
  INVX1 U1131 ( .A(fft_man_awaddr[4]), .Y(n449) );
  INVX1 U1132 ( .A(cpu_awaddr[4]), .Y(n461) );
  OAI22X1 U1133 ( .A(n572), .B(n429), .C(n573), .D(n431), .Y(fft_sub_awaddr[3]) );
  INVX1 U1134 ( .A(fft_man_awaddr[3]), .Y(n573) );
  INVX1 U1135 ( .A(cpu_awaddr[3]), .Y(n572) );
  OAI22X1 U1136 ( .A(n429), .B(n574), .C(n431), .D(n575), .Y(
        fft_sub_awaddr[31]) );
  INVX1 U1137 ( .A(fft_man_awaddr[31]), .Y(n575) );
  INVX1 U1138 ( .A(cpu_awaddr[31]), .Y(n574) );
  OAI22X1 U1139 ( .A(n429), .B(n576), .C(n431), .D(n577), .Y(
        fft_sub_awaddr[30]) );
  INVX1 U1140 ( .A(fft_man_awaddr[30]), .Y(n577) );
  INVX1 U1141 ( .A(cpu_awaddr[30]), .Y(n576) );
  OAI22X1 U1142 ( .A(n578), .B(n429), .C(n579), .D(n431), .Y(fft_sub_awaddr[2]) );
  INVX1 U1143 ( .A(fft_man_awaddr[2]), .Y(n579) );
  INVX1 U1144 ( .A(cpu_awaddr[2]), .Y(n578) );
  OAI22X1 U1145 ( .A(n429), .B(n580), .C(n431), .D(n581), .Y(
        fft_sub_awaddr[29]) );
  INVX1 U1146 ( .A(fft_man_awaddr[29]), .Y(n581) );
  INVX1 U1147 ( .A(cpu_awaddr[29]), .Y(n580) );
  OAI22X1 U1148 ( .A(n429), .B(n582), .C(n431), .D(n583), .Y(
        fft_sub_awaddr[28]) );
  INVX1 U1149 ( .A(fft_man_awaddr[28]), .Y(n583) );
  INVX1 U1150 ( .A(cpu_awaddr[28]), .Y(n582) );
  OAI22X1 U1151 ( .A(n429), .B(n584), .C(n431), .D(n585), .Y(
        fft_sub_awaddr[27]) );
  INVX1 U1152 ( .A(fft_man_awaddr[27]), .Y(n585) );
  INVX1 U1153 ( .A(cpu_awaddr[27]), .Y(n584) );
  OAI22X1 U1154 ( .A(n429), .B(n586), .C(n431), .D(n587), .Y(
        fft_sub_awaddr[26]) );
  INVX1 U1155 ( .A(fft_man_awaddr[26]), .Y(n587) );
  INVX1 U1156 ( .A(cpu_awaddr[26]), .Y(n586) );
  OAI22X1 U1157 ( .A(n429), .B(n588), .C(n431), .D(n589), .Y(
        fft_sub_awaddr[25]) );
  INVX1 U1158 ( .A(fft_man_awaddr[25]), .Y(n589) );
  INVX1 U1159 ( .A(cpu_awaddr[25]), .Y(n588) );
  OAI22X1 U1160 ( .A(n429), .B(n590), .C(n431), .D(n591), .Y(
        fft_sub_awaddr[24]) );
  INVX1 U1161 ( .A(fft_man_awaddr[24]), .Y(n591) );
  INVX1 U1162 ( .A(cpu_awaddr[24]), .Y(n590) );
  OAI22X1 U1163 ( .A(n429), .B(n592), .C(n431), .D(n593), .Y(
        fft_sub_awaddr[23]) );
  INVX1 U1164 ( .A(fft_man_awaddr[23]), .Y(n593) );
  INVX1 U1165 ( .A(cpu_awaddr[23]), .Y(n592) );
  OAI22X1 U1166 ( .A(n429), .B(n594), .C(n431), .D(n595), .Y(
        fft_sub_awaddr[22]) );
  INVX1 U1167 ( .A(fft_man_awaddr[22]), .Y(n595) );
  INVX1 U1168 ( .A(cpu_awaddr[22]), .Y(n594) );
  OAI22X1 U1169 ( .A(n429), .B(n596), .C(n431), .D(n597), .Y(
        fft_sub_awaddr[21]) );
  INVX1 U1170 ( .A(fft_man_awaddr[21]), .Y(n597) );
  INVX1 U1171 ( .A(cpu_awaddr[21]), .Y(n596) );
  OAI22X1 U1172 ( .A(n429), .B(n598), .C(n431), .D(n599), .Y(
        fft_sub_awaddr[20]) );
  INVX1 U1173 ( .A(fft_man_awaddr[20]), .Y(n599) );
  INVX1 U1174 ( .A(cpu_awaddr[20]), .Y(n598) );
  OAI22X1 U1175 ( .A(n456), .B(n429), .C(n445), .D(n431), .Y(fft_sub_awaddr[1]) );
  INVX1 U1176 ( .A(fft_man_awaddr[1]), .Y(n445) );
  INVX1 U1177 ( .A(cpu_awaddr[1]), .Y(n456) );
  OAI22X1 U1178 ( .A(n429), .B(n600), .C(n431), .D(n601), .Y(
        fft_sub_awaddr[19]) );
  INVX1 U1179 ( .A(fft_man_awaddr[19]), .Y(n601) );
  INVX1 U1180 ( .A(cpu_awaddr[19]), .Y(n600) );
  OAI22X1 U1181 ( .A(n429), .B(n602), .C(n431), .D(n603), .Y(
        fft_sub_awaddr[18]) );
  INVX1 U1182 ( .A(fft_man_awaddr[18]), .Y(n603) );
  INVX1 U1183 ( .A(cpu_awaddr[18]), .Y(n602) );
  OAI22X1 U1184 ( .A(n429), .B(n604), .C(n431), .D(n605), .Y(
        fft_sub_awaddr[17]) );
  INVX1 U1185 ( .A(fft_man_awaddr[17]), .Y(n605) );
  INVX1 U1186 ( .A(cpu_awaddr[17]), .Y(n604) );
  OAI22X1 U1187 ( .A(n429), .B(n606), .C(n431), .D(n607), .Y(
        fft_sub_awaddr[16]) );
  INVX1 U1188 ( .A(fft_man_awaddr[16]), .Y(n607) );
  INVX1 U1189 ( .A(cpu_awaddr[16]), .Y(n606) );
  OAI22X1 U1190 ( .A(n429), .B(n608), .C(n431), .D(n609), .Y(
        fft_sub_awaddr[15]) );
  INVX1 U1191 ( .A(fft_man_awaddr[15]), .Y(n609) );
  INVX1 U1192 ( .A(cpu_awaddr[15]), .Y(n608) );
  OAI22X1 U1193 ( .A(n429), .B(n610), .C(n431), .D(n611), .Y(
        fft_sub_awaddr[14]) );
  INVX1 U1194 ( .A(fft_man_awaddr[14]), .Y(n611) );
  INVX1 U1195 ( .A(cpu_awaddr[14]), .Y(n610) );
  OAI22X1 U1196 ( .A(n429), .B(n612), .C(n431), .D(n613), .Y(
        fft_sub_awaddr[13]) );
  INVX1 U1197 ( .A(fft_man_awaddr[13]), .Y(n613) );
  INVX1 U1198 ( .A(cpu_awaddr[13]), .Y(n612) );
  OAI22X1 U1199 ( .A(n429), .B(n614), .C(n431), .D(n615), .Y(
        fft_sub_awaddr[12]) );
  INVX1 U1200 ( .A(fft_man_awaddr[12]), .Y(n615) );
  INVX1 U1201 ( .A(cpu_awaddr[12]), .Y(n614) );
  OAI22X1 U1202 ( .A(n429), .B(n616), .C(n431), .D(n617), .Y(
        fft_sub_awaddr[11]) );
  INVX1 U1203 ( .A(fft_man_awaddr[11]), .Y(n617) );
  INVX1 U1204 ( .A(cpu_awaddr[11]), .Y(n616) );
  OAI22X1 U1205 ( .A(n429), .B(n458), .C(n431), .D(n447), .Y(
        fft_sub_awaddr[10]) );
  INVX1 U1206 ( .A(fft_man_awaddr[10]), .Y(n447) );
  INVX1 U1207 ( .A(cpu_awaddr[10]), .Y(n458) );
  OAI22X1 U1208 ( .A(n618), .B(n429), .C(n619), .D(n431), .Y(fft_sub_awaddr[0]) );
  INVX1 U1209 ( .A(fft_man_awaddr[0]), .Y(n619) );
  INVX1 U1210 ( .A(cpu_awaddr[0]), .Y(n618) );
  OAI22X1 U1211 ( .A(n620), .B(n421), .C(n621), .D(n423), .Y(fft_sub_arvalid)
         );
  INVX1 U1212 ( .A(fft_man_arvalid), .Y(n621) );
  INVX1 U1213 ( .A(cpu_arvalid), .Y(n620) );
  OAI22X1 U1214 ( .A(n622), .B(n421), .C(n623), .D(n423), .Y(fft_sub_arlen[9])
         );
  INVX1 U1215 ( .A(fft_man_arlen[9]), .Y(n623) );
  INVX1 U1216 ( .A(cpu_arlen[9]), .Y(n622) );
  OAI22X1 U1217 ( .A(n624), .B(n421), .C(n625), .D(n423), .Y(fft_sub_arlen[8])
         );
  INVX1 U1218 ( .A(fft_man_arlen[8]), .Y(n625) );
  INVX1 U1219 ( .A(cpu_arlen[8]), .Y(n624) );
  OAI22X1 U1220 ( .A(n626), .B(n421), .C(n627), .D(n423), .Y(fft_sub_arlen[7])
         );
  INVX1 U1221 ( .A(fft_man_arlen[7]), .Y(n627) );
  INVX1 U1222 ( .A(cpu_arlen[7]), .Y(n626) );
  OAI22X1 U1223 ( .A(n628), .B(n421), .C(n629), .D(n423), .Y(fft_sub_arlen[6])
         );
  INVX1 U1224 ( .A(fft_man_arlen[6]), .Y(n629) );
  INVX1 U1225 ( .A(cpu_arlen[6]), .Y(n628) );
  OAI22X1 U1226 ( .A(n630), .B(n421), .C(n631), .D(n423), .Y(fft_sub_arlen[5])
         );
  INVX1 U1227 ( .A(fft_man_arlen[5]), .Y(n631) );
  INVX1 U1228 ( .A(cpu_arlen[5]), .Y(n630) );
  OAI22X1 U1229 ( .A(n632), .B(n421), .C(n633), .D(n423), .Y(fft_sub_arlen[4])
         );
  INVX1 U1230 ( .A(fft_man_arlen[4]), .Y(n633) );
  INVX1 U1231 ( .A(cpu_arlen[4]), .Y(n632) );
  OAI22X1 U1232 ( .A(n634), .B(n421), .C(n635), .D(n423), .Y(fft_sub_arlen[3])
         );
  INVX1 U1233 ( .A(fft_man_arlen[3]), .Y(n635) );
  INVX1 U1234 ( .A(cpu_arlen[3]), .Y(n634) );
  OAI22X1 U1235 ( .A(n636), .B(n421), .C(n637), .D(n423), .Y(fft_sub_arlen[2])
         );
  INVX1 U1236 ( .A(fft_man_arlen[2]), .Y(n637) );
  INVX1 U1237 ( .A(cpu_arlen[2]), .Y(n636) );
  OAI22X1 U1238 ( .A(n638), .B(n421), .C(n639), .D(n423), .Y(fft_sub_arlen[1])
         );
  INVX1 U1239 ( .A(fft_man_arlen[1]), .Y(n639) );
  INVX1 U1240 ( .A(cpu_arlen[1]), .Y(n638) );
  OAI22X1 U1241 ( .A(n640), .B(n421), .C(n641), .D(n423), .Y(fft_sub_arlen[0])
         );
  INVX1 U1242 ( .A(fft_man_arlen[0]), .Y(n641) );
  INVX1 U1243 ( .A(cpu_arlen[0]), .Y(n640) );
  OAI22X1 U1244 ( .A(n642), .B(n421), .C(n643), .D(n423), .Y(fft_sub_araddr[9]) );
  INVX1 U1245 ( .A(fft_man_araddr[9]), .Y(n643) );
  INVX1 U1246 ( .A(cpu_araddr[9]), .Y(n642) );
  OAI22X1 U1247 ( .A(n644), .B(n421), .C(n645), .D(n423), .Y(fft_sub_araddr[8]) );
  INVX1 U1248 ( .A(fft_man_araddr[8]), .Y(n645) );
  INVX1 U1249 ( .A(cpu_araddr[8]), .Y(n644) );
  OAI22X1 U1250 ( .A(n646), .B(n421), .C(n647), .D(n423), .Y(fft_sub_araddr[7]) );
  INVX1 U1251 ( .A(fft_man_araddr[7]), .Y(n647) );
  INVX1 U1252 ( .A(cpu_araddr[7]), .Y(n646) );
  OAI22X1 U1253 ( .A(n648), .B(n421), .C(n649), .D(n423), .Y(fft_sub_araddr[6]) );
  INVX1 U1254 ( .A(fft_man_araddr[6]), .Y(n649) );
  INVX1 U1255 ( .A(cpu_araddr[6]), .Y(n648) );
  OAI22X1 U1256 ( .A(n650), .B(n421), .C(n651), .D(n423), .Y(fft_sub_araddr[5]) );
  INVX1 U1257 ( .A(fft_man_araddr[5]), .Y(n651) );
  INVX1 U1258 ( .A(cpu_araddr[5]), .Y(n650) );
  OAI22X1 U1259 ( .A(n652), .B(n421), .C(n653), .D(n423), .Y(fft_sub_araddr[4]) );
  INVX1 U1260 ( .A(fft_man_araddr[4]), .Y(n653) );
  INVX1 U1261 ( .A(cpu_araddr[4]), .Y(n652) );
  OAI22X1 U1262 ( .A(n654), .B(n421), .C(n655), .D(n423), .Y(fft_sub_araddr[3]) );
  INVX1 U1263 ( .A(fft_man_araddr[3]), .Y(n655) );
  INVX1 U1264 ( .A(cpu_araddr[3]), .Y(n654) );
  OAI22X1 U1265 ( .A(n656), .B(n421), .C(n657), .D(n423), .Y(
        fft_sub_araddr[31]) );
  INVX1 U1266 ( .A(fft_man_araddr[31]), .Y(n657) );
  INVX1 U1267 ( .A(cpu_araddr[31]), .Y(n656) );
  OAI22X1 U1268 ( .A(n658), .B(n421), .C(n659), .D(n423), .Y(
        fft_sub_araddr[30]) );
  INVX1 U1269 ( .A(fft_man_araddr[30]), .Y(n659) );
  INVX1 U1270 ( .A(cpu_araddr[30]), .Y(n658) );
  OAI22X1 U1271 ( .A(n660), .B(n421), .C(n661), .D(n423), .Y(fft_sub_araddr[2]) );
  INVX1 U1272 ( .A(fft_man_araddr[2]), .Y(n661) );
  INVX1 U1273 ( .A(cpu_araddr[2]), .Y(n660) );
  OAI22X1 U1274 ( .A(n662), .B(n421), .C(n663), .D(n423), .Y(
        fft_sub_araddr[29]) );
  INVX1 U1275 ( .A(fft_man_araddr[29]), .Y(n663) );
  INVX1 U1276 ( .A(cpu_araddr[29]), .Y(n662) );
  OAI22X1 U1277 ( .A(n664), .B(n421), .C(n665), .D(n423), .Y(
        fft_sub_araddr[28]) );
  INVX1 U1278 ( .A(fft_man_araddr[28]), .Y(n665) );
  INVX1 U1279 ( .A(cpu_araddr[28]), .Y(n664) );
  OAI22X1 U1280 ( .A(n666), .B(n421), .C(n667), .D(n423), .Y(
        fft_sub_araddr[27]) );
  INVX1 U1281 ( .A(fft_man_araddr[27]), .Y(n667) );
  INVX1 U1282 ( .A(cpu_araddr[27]), .Y(n666) );
  OAI22X1 U1283 ( .A(n668), .B(n421), .C(n669), .D(n423), .Y(
        fft_sub_araddr[26]) );
  INVX1 U1284 ( .A(fft_man_araddr[26]), .Y(n669) );
  INVX1 U1285 ( .A(cpu_araddr[26]), .Y(n668) );
  OAI22X1 U1286 ( .A(n670), .B(n421), .C(n671), .D(n423), .Y(
        fft_sub_araddr[25]) );
  INVX1 U1287 ( .A(fft_man_araddr[25]), .Y(n671) );
  INVX1 U1288 ( .A(cpu_araddr[25]), .Y(n670) );
  OAI22X1 U1289 ( .A(n672), .B(n421), .C(n673), .D(n423), .Y(
        fft_sub_araddr[24]) );
  INVX1 U1290 ( .A(fft_man_araddr[24]), .Y(n673) );
  INVX1 U1291 ( .A(cpu_araddr[24]), .Y(n672) );
  OAI22X1 U1292 ( .A(n674), .B(n421), .C(n675), .D(n423), .Y(
        fft_sub_araddr[23]) );
  INVX1 U1293 ( .A(fft_man_araddr[23]), .Y(n675) );
  INVX1 U1294 ( .A(cpu_araddr[23]), .Y(n674) );
  OAI22X1 U1295 ( .A(n676), .B(n421), .C(n677), .D(n423), .Y(
        fft_sub_araddr[22]) );
  INVX1 U1296 ( .A(fft_man_araddr[22]), .Y(n677) );
  INVX1 U1297 ( .A(cpu_araddr[22]), .Y(n676) );
  OAI22X1 U1298 ( .A(n678), .B(n421), .C(n679), .D(n423), .Y(
        fft_sub_araddr[21]) );
  INVX1 U1299 ( .A(fft_man_araddr[21]), .Y(n679) );
  INVX1 U1300 ( .A(cpu_araddr[21]), .Y(n678) );
  OAI22X1 U1301 ( .A(n680), .B(n421), .C(n681), .D(n423), .Y(
        fft_sub_araddr[20]) );
  INVX1 U1302 ( .A(fft_man_araddr[20]), .Y(n681) );
  INVX1 U1303 ( .A(cpu_araddr[20]), .Y(n680) );
  OAI22X1 U1304 ( .A(n682), .B(n421), .C(n683), .D(n423), .Y(fft_sub_araddr[1]) );
  INVX1 U1305 ( .A(fft_man_araddr[1]), .Y(n683) );
  INVX1 U1306 ( .A(cpu_araddr[1]), .Y(n682) );
  OAI22X1 U1307 ( .A(n684), .B(n421), .C(n685), .D(n423), .Y(
        fft_sub_araddr[19]) );
  INVX1 U1308 ( .A(fft_man_araddr[19]), .Y(n685) );
  INVX1 U1309 ( .A(cpu_araddr[19]), .Y(n684) );
  OAI22X1 U1310 ( .A(n686), .B(n421), .C(n687), .D(n423), .Y(
        fft_sub_araddr[18]) );
  INVX1 U1311 ( .A(fft_man_araddr[18]), .Y(n687) );
  INVX1 U1312 ( .A(cpu_araddr[18]), .Y(n686) );
  OAI22X1 U1313 ( .A(n688), .B(n421), .C(n689), .D(n423), .Y(
        fft_sub_araddr[17]) );
  INVX1 U1314 ( .A(fft_man_araddr[17]), .Y(n689) );
  INVX1 U1315 ( .A(cpu_araddr[17]), .Y(n688) );
  OAI22X1 U1316 ( .A(n690), .B(n421), .C(n691), .D(n423), .Y(
        fft_sub_araddr[16]) );
  INVX1 U1317 ( .A(fft_man_araddr[16]), .Y(n691) );
  INVX1 U1318 ( .A(cpu_araddr[16]), .Y(n690) );
  OAI22X1 U1319 ( .A(n692), .B(n421), .C(n693), .D(n423), .Y(
        fft_sub_araddr[15]) );
  INVX1 U1320 ( .A(fft_man_araddr[15]), .Y(n693) );
  INVX1 U1321 ( .A(cpu_araddr[15]), .Y(n692) );
  OAI22X1 U1322 ( .A(n694), .B(n421), .C(n695), .D(n423), .Y(
        fft_sub_araddr[14]) );
  INVX1 U1323 ( .A(fft_man_araddr[14]), .Y(n695) );
  INVX1 U1324 ( .A(cpu_araddr[14]), .Y(n694) );
  OAI22X1 U1325 ( .A(n696), .B(n421), .C(n697), .D(n423), .Y(
        fft_sub_araddr[13]) );
  INVX1 U1326 ( .A(fft_man_araddr[13]), .Y(n697) );
  INVX1 U1327 ( .A(cpu_araddr[13]), .Y(n696) );
  OAI22X1 U1328 ( .A(n698), .B(n421), .C(n699), .D(n423), .Y(
        fft_sub_araddr[12]) );
  INVX1 U1329 ( .A(fft_man_araddr[12]), .Y(n699) );
  INVX1 U1330 ( .A(cpu_araddr[12]), .Y(n698) );
  OAI22X1 U1331 ( .A(n700), .B(n421), .C(n701), .D(n423), .Y(
        fft_sub_araddr[11]) );
  INVX1 U1332 ( .A(fft_man_araddr[11]), .Y(n701) );
  INVX1 U1333 ( .A(cpu_araddr[11]), .Y(n700) );
  OAI22X1 U1334 ( .A(n702), .B(n421), .C(n703), .D(n423), .Y(
        fft_sub_araddr[10]) );
  INVX1 U1335 ( .A(fft_man_araddr[10]), .Y(n703) );
  INVX1 U1336 ( .A(cpu_araddr[10]), .Y(n702) );
  OAI22X1 U1337 ( .A(n704), .B(n421), .C(n705), .D(n423), .Y(fft_sub_araddr[0]) );
  INVX1 U1338 ( .A(fft_man_araddr[0]), .Y(n705) );
  INVX1 U1339 ( .A(cpu_araddr[0]), .Y(n704) );
  OAI21X1 U1340 ( .A(n431), .B(n752), .C(n753), .Y(fft_man_wready) );
  AOI21X1 U1341 ( .A(sram_wready), .B(n426), .C(n754), .Y(n753) );
  OAI21X1 U1342 ( .A(n755), .B(n423), .C(n756), .Y(fft_man_rvalid) );
  AOI21X1 U1343 ( .A(sram_rvalid), .B(n418), .C(n757), .Y(n756) );
  OAI21X1 U1344 ( .A(n423), .B(n758), .C(n759), .Y(fft_man_rresp) );
  AOI21X1 U1345 ( .A(sram_rresp), .B(n418), .C(n757), .Y(n759) );
  OAI21X1 U1346 ( .A(n760), .B(n423), .C(n761), .Y(fft_man_rlast) );
  AOI21X1 U1347 ( .A(sram_rlast), .B(n418), .C(n757), .Y(n761) );
  OAI22X1 U1348 ( .A(n423), .B(n762), .C(n419), .D(n763), .Y(fft_man_rdata[9])
         );
  OAI22X1 U1349 ( .A(n423), .B(n764), .C(n419), .D(n765), .Y(fft_man_rdata[8])
         );
  OAI22X1 U1350 ( .A(n423), .B(n766), .C(n419), .D(n767), .Y(fft_man_rdata[7])
         );
  OAI22X1 U1351 ( .A(n423), .B(n768), .C(n419), .D(n769), .Y(fft_man_rdata[6])
         );
  OAI22X1 U1352 ( .A(n423), .B(n770), .C(n419), .D(n771), .Y(fft_man_rdata[5])
         );
  OAI22X1 U1353 ( .A(n423), .B(n772), .C(n419), .D(n773), .Y(fft_man_rdata[4])
         );
  OAI22X1 U1354 ( .A(n423), .B(n774), .C(n419), .D(n775), .Y(fft_man_rdata[3])
         );
  OAI22X1 U1355 ( .A(n423), .B(n776), .C(n419), .D(n777), .Y(fft_man_rdata[31]) );
  OAI22X1 U1356 ( .A(n423), .B(n778), .C(n419), .D(n779), .Y(fft_man_rdata[30]) );
  OAI22X1 U1357 ( .A(n423), .B(n780), .C(n419), .D(n781), .Y(fft_man_rdata[2])
         );
  OAI22X1 U1358 ( .A(n423), .B(n782), .C(n419), .D(n783), .Y(fft_man_rdata[29]) );
  OAI22X1 U1359 ( .A(n423), .B(n784), .C(n419), .D(n785), .Y(fft_man_rdata[28]) );
  OAI22X1 U1360 ( .A(n423), .B(n786), .C(n419), .D(n787), .Y(fft_man_rdata[27]) );
  OAI22X1 U1361 ( .A(n423), .B(n788), .C(n419), .D(n789), .Y(fft_man_rdata[26]) );
  OAI22X1 U1362 ( .A(n423), .B(n790), .C(n419), .D(n791), .Y(fft_man_rdata[25]) );
  OAI22X1 U1363 ( .A(n423), .B(n792), .C(n419), .D(n793), .Y(fft_man_rdata[24]) );
  OAI22X1 U1364 ( .A(n423), .B(n794), .C(n419), .D(n795), .Y(fft_man_rdata[23]) );
  OAI22X1 U1365 ( .A(n423), .B(n796), .C(n419), .D(n797), .Y(fft_man_rdata[22]) );
  OAI22X1 U1366 ( .A(n423), .B(n798), .C(n419), .D(n799), .Y(fft_man_rdata[21]) );
  OAI22X1 U1367 ( .A(n423), .B(n800), .C(n419), .D(n801), .Y(fft_man_rdata[20]) );
  OAI22X1 U1368 ( .A(n423), .B(n802), .C(n419), .D(n803), .Y(fft_man_rdata[1])
         );
  OAI22X1 U1369 ( .A(n423), .B(n804), .C(n419), .D(n805), .Y(fft_man_rdata[19]) );
  OAI22X1 U1370 ( .A(n423), .B(n806), .C(n419), .D(n807), .Y(fft_man_rdata[18]) );
  OAI22X1 U1371 ( .A(n423), .B(n808), .C(n419), .D(n809), .Y(fft_man_rdata[17]) );
  OAI22X1 U1372 ( .A(n423), .B(n810), .C(n419), .D(n811), .Y(fft_man_rdata[16]) );
  OAI22X1 U1373 ( .A(n423), .B(n812), .C(n419), .D(n813), .Y(fft_man_rdata[15]) );
  OAI22X1 U1374 ( .A(n423), .B(n814), .C(n419), .D(n815), .Y(fft_man_rdata[14]) );
  OAI22X1 U1375 ( .A(n423), .B(n816), .C(n419), .D(n817), .Y(fft_man_rdata[13]) );
  OAI22X1 U1376 ( .A(n423), .B(n818), .C(n419), .D(n819), .Y(fft_man_rdata[12]) );
  OAI22X1 U1377 ( .A(n423), .B(n820), .C(n419), .D(n821), .Y(fft_man_rdata[11]) );
  OAI22X1 U1378 ( .A(n423), .B(n822), .C(n419), .D(n823), .Y(fft_man_rdata[10]) );
  OAI22X1 U1379 ( .A(n423), .B(n824), .C(n419), .D(n825), .Y(fft_man_rdata[0])
         );
  OAI21X1 U1380 ( .A(n826), .B(n431), .C(n827), .Y(fft_man_bvalid) );
  AOI21X1 U1381 ( .A(n426), .B(sram_bvalid), .C(n754), .Y(n827) );
  OAI21X1 U1382 ( .A(n431), .B(n828), .C(n829), .Y(fft_man_bresp) );
  AOI21X1 U1383 ( .A(sram_bresp), .B(n426), .C(n754), .Y(n829) );
  OAI21X1 U1384 ( .A(n431), .B(n830), .C(n831), .Y(fft_man_awready) );
  AOI21X1 U1385 ( .A(sram_awready), .B(n426), .C(n754), .Y(n831) );
  INVX1 U1386 ( .A(n832), .Y(n754) );
  NAND3X1 U1387 ( .A(n833), .B(n740), .C(w_perms[1]), .Y(n832) );
  NAND3X1 U1388 ( .A(n834), .B(n740), .C(w_perms[1]), .Y(n465) );
  NAND3X1 U1389 ( .A(n835), .B(n740), .C(w_perms[1]), .Y(n749) );
  INVX1 U1390 ( .A(w_perms[0]), .Y(n740) );
  OAI21X1 U1391 ( .A(n423), .B(n836), .C(n837), .Y(fft_man_arready) );
  AOI21X1 U1392 ( .A(sram_arready), .B(n418), .C(n757), .Y(n837) );
  INVX1 U1393 ( .A(n838), .Y(n757) );
  NAND3X1 U1394 ( .A(r_perms[1]), .B(n729), .C(n839), .Y(n838) );
  NAND3X1 U1395 ( .A(n840), .B(n729), .C(r_perms[1]), .Y(n539) );
  NAND3X1 U1396 ( .A(r_perms[1]), .B(n729), .C(n841), .Y(n751) );
  INVX1 U1397 ( .A(r_perms[0]), .Y(n729) );
  OAI21X1 U1398 ( .A(n429), .B(n752), .C(n842), .Y(cpu_wready) );
  AOI21X1 U1399 ( .A(sram_wready), .B(n424), .C(n843), .Y(n842) );
  INVX1 U1400 ( .A(fft_sub_wready), .Y(n752) );
  OAI21X1 U1401 ( .A(n421), .B(n755), .C(n844), .Y(cpu_rvalid) );
  AOI21X1 U1402 ( .A(sram_rvalid), .B(n416), .C(n845), .Y(n844) );
  INVX1 U1403 ( .A(fft_sub_rvalid), .Y(n755) );
  OAI21X1 U1404 ( .A(n421), .B(n758), .C(n846), .Y(cpu_rresp) );
  AOI21X1 U1405 ( .A(sram_rresp), .B(n416), .C(n845), .Y(n846) );
  INVX1 U1406 ( .A(fft_sub_rresp), .Y(n758) );
  OAI21X1 U1407 ( .A(n421), .B(n760), .C(n847), .Y(cpu_rlast) );
  AOI21X1 U1408 ( .A(sram_rlast), .B(n416), .C(n845), .Y(n847) );
  INVX1 U1409 ( .A(fft_sub_rlast), .Y(n760) );
  OAI22X1 U1410 ( .A(n421), .B(n762), .C(n417), .D(n763), .Y(cpu_rdata[9]) );
  INVX1 U1411 ( .A(sram_rdata[9]), .Y(n763) );
  INVX1 U1412 ( .A(fft_sub_rdata[9]), .Y(n762) );
  OAI22X1 U1413 ( .A(n421), .B(n764), .C(n417), .D(n765), .Y(cpu_rdata[8]) );
  INVX1 U1414 ( .A(sram_rdata[8]), .Y(n765) );
  INVX1 U1415 ( .A(fft_sub_rdata[8]), .Y(n764) );
  OAI22X1 U1416 ( .A(n421), .B(n766), .C(n417), .D(n767), .Y(cpu_rdata[7]) );
  INVX1 U1417 ( .A(sram_rdata[7]), .Y(n767) );
  INVX1 U1418 ( .A(fft_sub_rdata[7]), .Y(n766) );
  OAI22X1 U1419 ( .A(n421), .B(n768), .C(n417), .D(n769), .Y(cpu_rdata[6]) );
  INVX1 U1420 ( .A(sram_rdata[6]), .Y(n769) );
  INVX1 U1421 ( .A(fft_sub_rdata[6]), .Y(n768) );
  OAI22X1 U1422 ( .A(n421), .B(n770), .C(n417), .D(n771), .Y(cpu_rdata[5]) );
  INVX1 U1423 ( .A(sram_rdata[5]), .Y(n771) );
  INVX1 U1424 ( .A(fft_sub_rdata[5]), .Y(n770) );
  OAI22X1 U1425 ( .A(n421), .B(n772), .C(n417), .D(n773), .Y(cpu_rdata[4]) );
  INVX1 U1426 ( .A(sram_rdata[4]), .Y(n773) );
  INVX1 U1427 ( .A(fft_sub_rdata[4]), .Y(n772) );
  OAI22X1 U1428 ( .A(n421), .B(n774), .C(n417), .D(n775), .Y(cpu_rdata[3]) );
  INVX1 U1429 ( .A(sram_rdata[3]), .Y(n775) );
  INVX1 U1430 ( .A(fft_sub_rdata[3]), .Y(n774) );
  OAI22X1 U1431 ( .A(n421), .B(n776), .C(n417), .D(n777), .Y(cpu_rdata[31]) );
  INVX1 U1432 ( .A(sram_rdata[31]), .Y(n777) );
  INVX1 U1433 ( .A(fft_sub_rdata[31]), .Y(n776) );
  OAI22X1 U1434 ( .A(n421), .B(n778), .C(n417), .D(n779), .Y(cpu_rdata[30]) );
  INVX1 U1435 ( .A(sram_rdata[30]), .Y(n779) );
  INVX1 U1436 ( .A(fft_sub_rdata[30]), .Y(n778) );
  OAI22X1 U1437 ( .A(n421), .B(n780), .C(n417), .D(n781), .Y(cpu_rdata[2]) );
  INVX1 U1438 ( .A(sram_rdata[2]), .Y(n781) );
  INVX1 U1439 ( .A(fft_sub_rdata[2]), .Y(n780) );
  OAI22X1 U1440 ( .A(n421), .B(n782), .C(n417), .D(n783), .Y(cpu_rdata[29]) );
  INVX1 U1441 ( .A(sram_rdata[29]), .Y(n783) );
  INVX1 U1442 ( .A(fft_sub_rdata[29]), .Y(n782) );
  OAI22X1 U1443 ( .A(n421), .B(n784), .C(n417), .D(n785), .Y(cpu_rdata[28]) );
  INVX1 U1444 ( .A(sram_rdata[28]), .Y(n785) );
  INVX1 U1445 ( .A(fft_sub_rdata[28]), .Y(n784) );
  OAI22X1 U1446 ( .A(n421), .B(n786), .C(n417), .D(n787), .Y(cpu_rdata[27]) );
  INVX1 U1447 ( .A(sram_rdata[27]), .Y(n787) );
  INVX1 U1448 ( .A(fft_sub_rdata[27]), .Y(n786) );
  OAI22X1 U1449 ( .A(n421), .B(n788), .C(n417), .D(n789), .Y(cpu_rdata[26]) );
  INVX1 U1450 ( .A(sram_rdata[26]), .Y(n789) );
  INVX1 U1451 ( .A(fft_sub_rdata[26]), .Y(n788) );
  OAI22X1 U1452 ( .A(n421), .B(n790), .C(n417), .D(n791), .Y(cpu_rdata[25]) );
  INVX1 U1453 ( .A(sram_rdata[25]), .Y(n791) );
  INVX1 U1454 ( .A(fft_sub_rdata[25]), .Y(n790) );
  OAI22X1 U1455 ( .A(n421), .B(n792), .C(n417), .D(n793), .Y(cpu_rdata[24]) );
  INVX1 U1456 ( .A(sram_rdata[24]), .Y(n793) );
  INVX1 U1457 ( .A(fft_sub_rdata[24]), .Y(n792) );
  OAI22X1 U1458 ( .A(n421), .B(n794), .C(n417), .D(n795), .Y(cpu_rdata[23]) );
  INVX1 U1459 ( .A(sram_rdata[23]), .Y(n795) );
  INVX1 U1460 ( .A(fft_sub_rdata[23]), .Y(n794) );
  OAI22X1 U1461 ( .A(n421), .B(n796), .C(n417), .D(n797), .Y(cpu_rdata[22]) );
  INVX1 U1462 ( .A(sram_rdata[22]), .Y(n797) );
  INVX1 U1463 ( .A(fft_sub_rdata[22]), .Y(n796) );
  OAI22X1 U1464 ( .A(n421), .B(n798), .C(n417), .D(n799), .Y(cpu_rdata[21]) );
  INVX1 U1465 ( .A(sram_rdata[21]), .Y(n799) );
  INVX1 U1466 ( .A(fft_sub_rdata[21]), .Y(n798) );
  OAI22X1 U1467 ( .A(n421), .B(n800), .C(n417), .D(n801), .Y(cpu_rdata[20]) );
  INVX1 U1468 ( .A(sram_rdata[20]), .Y(n801) );
  INVX1 U1469 ( .A(fft_sub_rdata[20]), .Y(n800) );
  OAI22X1 U1470 ( .A(n421), .B(n802), .C(n417), .D(n803), .Y(cpu_rdata[1]) );
  INVX1 U1471 ( .A(sram_rdata[1]), .Y(n803) );
  INVX1 U1472 ( .A(fft_sub_rdata[1]), .Y(n802) );
  OAI22X1 U1473 ( .A(n421), .B(n804), .C(n417), .D(n805), .Y(cpu_rdata[19]) );
  INVX1 U1474 ( .A(sram_rdata[19]), .Y(n805) );
  INVX1 U1475 ( .A(fft_sub_rdata[19]), .Y(n804) );
  OAI22X1 U1476 ( .A(n421), .B(n806), .C(n417), .D(n807), .Y(cpu_rdata[18]) );
  INVX1 U1477 ( .A(sram_rdata[18]), .Y(n807) );
  INVX1 U1478 ( .A(fft_sub_rdata[18]), .Y(n806) );
  OAI22X1 U1479 ( .A(n421), .B(n808), .C(n417), .D(n809), .Y(cpu_rdata[17]) );
  INVX1 U1480 ( .A(sram_rdata[17]), .Y(n809) );
  INVX1 U1481 ( .A(fft_sub_rdata[17]), .Y(n808) );
  OAI22X1 U1482 ( .A(n421), .B(n810), .C(n417), .D(n811), .Y(cpu_rdata[16]) );
  INVX1 U1483 ( .A(sram_rdata[16]), .Y(n811) );
  INVX1 U1484 ( .A(fft_sub_rdata[16]), .Y(n810) );
  OAI22X1 U1485 ( .A(n421), .B(n812), .C(n417), .D(n813), .Y(cpu_rdata[15]) );
  INVX1 U1486 ( .A(sram_rdata[15]), .Y(n813) );
  INVX1 U1487 ( .A(fft_sub_rdata[15]), .Y(n812) );
  OAI22X1 U1488 ( .A(n421), .B(n814), .C(n417), .D(n815), .Y(cpu_rdata[14]) );
  INVX1 U1489 ( .A(sram_rdata[14]), .Y(n815) );
  INVX1 U1490 ( .A(fft_sub_rdata[14]), .Y(n814) );
  OAI22X1 U1491 ( .A(n421), .B(n816), .C(n417), .D(n817), .Y(cpu_rdata[13]) );
  INVX1 U1492 ( .A(sram_rdata[13]), .Y(n817) );
  INVX1 U1493 ( .A(fft_sub_rdata[13]), .Y(n816) );
  OAI22X1 U1494 ( .A(n421), .B(n818), .C(n417), .D(n819), .Y(cpu_rdata[12]) );
  INVX1 U1495 ( .A(sram_rdata[12]), .Y(n819) );
  INVX1 U1496 ( .A(fft_sub_rdata[12]), .Y(n818) );
  OAI22X1 U1497 ( .A(n421), .B(n820), .C(n417), .D(n821), .Y(cpu_rdata[11]) );
  INVX1 U1498 ( .A(sram_rdata[11]), .Y(n821) );
  INVX1 U1499 ( .A(fft_sub_rdata[11]), .Y(n820) );
  OAI22X1 U1500 ( .A(n421), .B(n822), .C(n417), .D(n823), .Y(cpu_rdata[10]) );
  INVX1 U1501 ( .A(sram_rdata[10]), .Y(n823) );
  INVX1 U1502 ( .A(fft_sub_rdata[10]), .Y(n822) );
  OAI22X1 U1503 ( .A(n421), .B(n824), .C(n417), .D(n825), .Y(cpu_rdata[0]) );
  INVX1 U1504 ( .A(sram_rdata[0]), .Y(n825) );
  INVX1 U1505 ( .A(fft_sub_rdata[0]), .Y(n824) );
  OAI21X1 U1506 ( .A(n429), .B(n826), .C(n848), .Y(cpu_bvalid) );
  AOI21X1 U1507 ( .A(sram_bvalid), .B(n424), .C(n843), .Y(n848) );
  INVX1 U1508 ( .A(fft_sub_bvalid), .Y(n826) );
  OAI21X1 U1509 ( .A(n429), .B(n828), .C(n849), .Y(cpu_bresp) );
  AOI21X1 U1510 ( .A(sram_bresp), .B(n424), .C(n843), .Y(n849) );
  INVX1 U1511 ( .A(fft_sub_bresp), .Y(n828) );
  OAI21X1 U1512 ( .A(n429), .B(n830), .C(n850), .Y(cpu_awready) );
  AOI21X1 U1513 ( .A(sram_awready), .B(n424), .C(n843), .Y(n850) );
  INVX1 U1514 ( .A(n851), .Y(n843) );
  NAND3X1 U1515 ( .A(n833), .B(n744), .C(w_perms[0]), .Y(n851) );
  NOR3X1 U1516 ( .A(n835), .B(n834), .C(n743), .Y(n833) );
  INVX1 U1517 ( .A(w_state), .Y(n743) );
  NAND3X1 U1518 ( .A(w_perms[0]), .B(n744), .C(n834), .Y(n463) );
  NOR2X1 U1519 ( .A(n432), .B(w_dest[0]), .Y(n834) );
  INVX1 U1520 ( .A(w_dest[1]), .Y(n432) );
  INVX1 U1521 ( .A(fft_sub_awready), .Y(n830) );
  NAND3X1 U1522 ( .A(w_perms[0]), .B(n744), .C(n835), .Y(n748) );
  NOR2X1 U1523 ( .A(n435), .B(w_dest[1]), .Y(n835) );
  INVX1 U1524 ( .A(w_dest[0]), .Y(n435) );
  INVX1 U1525 ( .A(w_perms[1]), .Y(n744) );
  OAI21X1 U1526 ( .A(n421), .B(n836), .C(n852), .Y(cpu_arready) );
  AOI21X1 U1527 ( .A(sram_arready), .B(n416), .C(n845), .Y(n852) );
  INVX1 U1528 ( .A(n853), .Y(n845) );
  NAND3X1 U1529 ( .A(r_perms[0]), .B(n734), .C(n839), .Y(n853) );
  NOR3X1 U1530 ( .A(n840), .B(n841), .C(n732), .Y(n839) );
  INVX1 U1531 ( .A(r_state), .Y(n732) );
  NAND3X1 U1532 ( .A(n840), .B(n734), .C(r_perms[0]), .Y(n537) );
  NOR2X1 U1533 ( .A(n706), .B(r_dest[0]), .Y(n840) );
  INVX1 U1534 ( .A(r_dest[1]), .Y(n706) );
  INVX1 U1535 ( .A(fft_sub_arready), .Y(n836) );
  NAND3X1 U1536 ( .A(r_perms[0]), .B(n734), .C(n841), .Y(n750) );
  NOR2X1 U1537 ( .A(n709), .B(r_dest[1]), .Y(n841) );
  INVX1 U1538 ( .A(r_dest[0]), .Y(n709) );
  INVX1 U1539 ( .A(r_perms[1]), .Y(n734) );
endmodule

