/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4
// Date      : Tue Apr 21 18:08:32 2026
/////////////////////////////////////////////////////////////


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
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
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
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, n532,
         n533, n534, n535, n536, n537, n538, n539, n540, n541, n542, n543,
         n544, n545, n546, n547, n548, n549, n550, n551, n552, n553, n554,
         n555, n556, n557, n558, n559, n560, n561, n562, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n579, n580, n581, n582, n583, n584, n585, n586, n587,
         n588, n589, n590, n591, n592, n593, n594, n595, n596, n597, n598,
         n599, n600, n601, n602, n603, n604, n605, n606, n607, n608, n609,
         n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, n620,
         n621, n622, n623, n624, n625, n626, n627, n628, n629, n630, n631,
         n632, n633, n634, n635, n636, n637, n638, n639, n640, n641, n642,
         n643, n644, n645, n646, n647, n648, n649, n650, n651, n652, n653,
         n654, n655, n656, n657, n658, n659, n660, n661, n662, n663, n664,
         n665, n666, n667, n668, n669, n670, n671, n672, n673, n674, n675,
         n676, n677, n678, n679, n680, n681, n682, n683, n684, n685, n686,
         n687, n688, n689, n690, n691, n692, n693, n694, n695, n696, n697,
         n698, n699, n700, n701, n702, n703;
  wire   [1:0] read_state;
  wire   [1:0] write_state;
  wire   [1:0] next_read;
  wire   [1:0] next_write;
  wire   [1:0] wstrb_reg;
  wire   [10:0] waddr_reg;
  wire   [9:0] wlen_reg;
  wire   [10:0] raddr_reg;
  wire   [9:0] rlen_reg;
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

  DFFSR sram_awready_reg ( .D(n670), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
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
  DFFSR \wdata_reg_reg[31]  ( .D(n671), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[31]) );
  DFFSR \wstrb_reg_reg[0]  ( .D(n280), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wstrb_reg[0]) );
  DFFSR \wstrb_reg_reg[1]  ( .D(n278), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        wstrb_reg[1]) );
  DFFSR \wdata_reg_reg[0]  ( .D(n702), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[0]) );
  DFFSR \wdata_reg_reg[1]  ( .D(n701), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[1]) );
  DFFSR \wdata_reg_reg[2]  ( .D(n700), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[2]) );
  DFFSR \wdata_reg_reg[3]  ( .D(n699), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[3]) );
  DFFSR \wdata_reg_reg[4]  ( .D(n698), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[4]) );
  DFFSR \wdata_reg_reg[5]  ( .D(n697), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[5]) );
  DFFSR \wdata_reg_reg[6]  ( .D(n696), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[6]) );
  DFFSR \wdata_reg_reg[7]  ( .D(n695), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[7]) );
  DFFSR \wdata_reg_reg[8]  ( .D(n694), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[8]) );
  DFFSR \wdata_reg_reg[9]  ( .D(n693), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[9]) );
  DFFSR \wdata_reg_reg[10]  ( .D(n692), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[10]) );
  DFFSR \wdata_reg_reg[11]  ( .D(n691), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[11]) );
  DFFSR \wdata_reg_reg[12]  ( .D(n690), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[12]) );
  DFFSR \wdata_reg_reg[13]  ( .D(n689), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[13]) );
  DFFSR \wdata_reg_reg[14]  ( .D(n688), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[14]) );
  DFFSR \wdata_reg_reg[15]  ( .D(n687), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[15]) );
  DFFSR \wdata_reg_reg[16]  ( .D(n686), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[16]) );
  DFFSR \wdata_reg_reg[17]  ( .D(n685), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[17]) );
  DFFSR \wdata_reg_reg[18]  ( .D(n684), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[18]) );
  DFFSR \wdata_reg_reg[19]  ( .D(n683), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[19]) );
  DFFSR \wdata_reg_reg[20]  ( .D(n682), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[20]) );
  DFFSR \wdata_reg_reg[21]  ( .D(n681), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[21]) );
  DFFSR \wdata_reg_reg[22]  ( .D(n680), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[22]) );
  DFFSR \wdata_reg_reg[23]  ( .D(n679), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[23]) );
  DFFSR \wdata_reg_reg[24]  ( .D(n678), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[24]) );
  DFFSR \wdata_reg_reg[25]  ( .D(n677), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[25]) );
  DFFSR \wdata_reg_reg[26]  ( .D(n676), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[26]) );
  DFFSR \wdata_reg_reg[27]  ( .D(n675), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[27]) );
  DFFSR \wdata_reg_reg[28]  ( .D(n674), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[28]) );
  DFFSR \wdata_reg_reg[29]  ( .D(n673), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[29]) );
  DFFSR \wdata_reg_reg[30]  ( .D(n672), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        write_data[30]) );
  DFFSR sram_bvalid_reg ( .D(N136), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_bvalid) );
  DFFSR sram_arready_reg ( .D(n703), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
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
  INVX2 U359 ( .A(n506), .Y(n492) );
  INVX2 U360 ( .A(n584), .Y(n353) );
  INVX2 U361 ( .A(n571), .Y(n354) );
  INVX2 U362 ( .A(n493), .Y(n355) );
  NAND2X1 U363 ( .A(sram_wready), .B(sram_wvalid), .Y(n426) );
  INVX4 U364 ( .A(n426), .Y(n356) );
  XNOR2X1 U365 ( .A(waddr_reg[9]), .B(n357), .Y(write_addr[9]) );
  OAI21X1 U366 ( .A(n358), .B(n359), .C(n357), .Y(write_addr[8]) );
  INVX1 U367 ( .A(n360), .Y(write_addr[7]) );
  AOI21X1 U368 ( .A(n361), .B(waddr_reg[7]), .C(n358), .Y(n360) );
  OAI21X1 U369 ( .A(n362), .B(n363), .C(n361), .Y(write_addr[6]) );
  INVX1 U370 ( .A(n364), .Y(write_addr[5]) );
  AOI21X1 U371 ( .A(n365), .B(waddr_reg[5]), .C(n362), .Y(n364) );
  OAI21X1 U372 ( .A(n366), .B(n367), .C(n365), .Y(write_addr[4]) );
  OR2X1 U373 ( .A(n368), .B(n369), .Y(n367) );
  XNOR2X1 U374 ( .A(waddr_reg[3]), .B(n369), .Y(write_addr[3]) );
  XNOR2X1 U375 ( .A(waddr_reg[2]), .B(n370), .Y(write_addr[2]) );
  NAND2X1 U376 ( .A(waddr_reg[1]), .B(waddr_reg[0]), .Y(n370) );
  XNOR2X1 U377 ( .A(waddr_reg[1]), .B(write_addr[0]), .Y(write_addr[1]) );
  NAND2X1 U378 ( .A(n371), .B(n372), .Y(write_addr[10]) );
  OAI21X1 U379 ( .A(waddr_reg[9]), .B(n357), .C(waddr_reg[10]), .Y(n372) );
  INVX1 U380 ( .A(\write_addr[31] ), .Y(n371) );
  NOR3X1 U381 ( .A(waddr_reg[10]), .B(waddr_reg[9]), .C(n357), .Y(
        \write_addr[31] ) );
  NAND2X1 U382 ( .A(n358), .B(n359), .Y(n357) );
  INVX1 U383 ( .A(waddr_reg[8]), .Y(n359) );
  NOR2X1 U384 ( .A(n361), .B(waddr_reg[7]), .Y(n358) );
  NAND2X1 U385 ( .A(n362), .B(n363), .Y(n361) );
  INVX1 U386 ( .A(waddr_reg[6]), .Y(n363) );
  NOR2X1 U387 ( .A(n365), .B(waddr_reg[5]), .Y(n362) );
  OAI21X1 U388 ( .A(n369), .B(n368), .C(n366), .Y(n365) );
  INVX1 U389 ( .A(waddr_reg[4]), .Y(n366) );
  INVX1 U390 ( .A(waddr_reg[3]), .Y(n368) );
  NAND3X1 U391 ( .A(waddr_reg[1]), .B(waddr_reg[0]), .C(waddr_reg[2]), .Y(n369) );
  INVX1 U392 ( .A(n373), .Y(wen[3]) );
  MUX2X1 U393 ( .B(n374), .A(n373), .S(wstrb_reg[1]), .Y(wen[1]) );
  NAND2X1 U394 ( .A(wstrb_reg[0]), .B(n375), .Y(n373) );
  NAND2X1 U395 ( .A(n375), .B(n376), .Y(n374) );
  INVX1 U396 ( .A(wstrb_reg[0]), .Y(n376) );
  INVX1 U397 ( .A(n377), .Y(read_addr[9]) );
  AOI21X1 U398 ( .A(n378), .B(raddr_reg[9]), .C(\read_addr[31] ), .Y(n377) );
  OAI21X1 U399 ( .A(n379), .B(n380), .C(n378), .Y(read_addr[8]) );
  INVX1 U400 ( .A(n381), .Y(read_addr[7]) );
  AOI21X1 U401 ( .A(n382), .B(raddr_reg[7]), .C(n379), .Y(n381) );
  OAI21X1 U402 ( .A(n383), .B(n384), .C(n382), .Y(read_addr[6]) );
  INVX1 U403 ( .A(n385), .Y(read_addr[5]) );
  AOI21X1 U404 ( .A(n386), .B(raddr_reg[5]), .C(n383), .Y(n385) );
  OAI21X1 U405 ( .A(n387), .B(n388), .C(n386), .Y(read_addr[4]) );
  OR2X1 U406 ( .A(n389), .B(n390), .Y(n388) );
  XNOR2X1 U407 ( .A(raddr_reg[3]), .B(n390), .Y(read_addr[3]) );
  NOR2X1 U408 ( .A(n378), .B(raddr_reg[9]), .Y(\read_addr[31] ) );
  NAND2X1 U409 ( .A(n379), .B(n380), .Y(n378) );
  INVX1 U410 ( .A(raddr_reg[8]), .Y(n380) );
  NOR2X1 U411 ( .A(n382), .B(raddr_reg[7]), .Y(n379) );
  NAND2X1 U412 ( .A(n383), .B(n384), .Y(n382) );
  INVX1 U413 ( .A(raddr_reg[6]), .Y(n384) );
  NOR2X1 U414 ( .A(n386), .B(raddr_reg[5]), .Y(n383) );
  OAI21X1 U415 ( .A(n390), .B(n389), .C(n387), .Y(n386) );
  INVX1 U416 ( .A(raddr_reg[4]), .Y(n387) );
  INVX1 U417 ( .A(raddr_reg[3]), .Y(n389) );
  NAND3X1 U418 ( .A(raddr_reg[1]), .B(raddr_reg[0]), .C(raddr_reg[2]), .Y(n390) );
  XNOR2X1 U419 ( .A(raddr_reg[2]), .B(n391), .Y(read_addr[2]) );
  NAND2X1 U420 ( .A(raddr_reg[1]), .B(raddr_reg[0]), .Y(n391) );
  XNOR2X1 U421 ( .A(raddr_reg[1]), .B(read_addr[0]), .Y(read_addr[1]) );
  NOR2X1 U422 ( .A(n392), .B(n393), .Y(next_rlast) );
  AOI21X1 U423 ( .A(n394), .B(n395), .C(n396), .Y(n670) );
  NAND2X1 U424 ( .A(n397), .B(n398), .Y(n396) );
  NOR2X1 U425 ( .A(n399), .B(n400), .Y(n395) );
  NAND3X1 U426 ( .A(n401), .B(n402), .C(n403), .Y(n400) );
  NOR2X1 U427 ( .A(sram_awaddr[23]), .B(n404), .Y(n403) );
  OR2X1 U428 ( .A(sram_awaddr[25]), .B(sram_awaddr[24]), .Y(n404) );
  NOR2X1 U429 ( .A(sram_awaddr[29]), .B(sram_awaddr[28]), .Y(n402) );
  NOR2X1 U430 ( .A(sram_awaddr[27]), .B(sram_awaddr[26]), .Y(n401) );
  OR2X1 U431 ( .A(n405), .B(n406), .Y(n399) );
  NAND3X1 U432 ( .A(n407), .B(n408), .C(n409), .Y(n406) );
  NOR2X1 U433 ( .A(sram_awaddr[31]), .B(sram_awaddr[30]), .Y(n409) );
  INVX1 U434 ( .A(sram_awaddr[5]), .Y(n408) );
  INVX1 U435 ( .A(sram_awaddr[4]), .Y(n407) );
  NAND3X1 U436 ( .A(n410), .B(n411), .C(n412), .Y(n405) );
  NOR2X1 U437 ( .A(sram_awaddr[9]), .B(sram_awaddr[8]), .Y(n412) );
  INVX1 U438 ( .A(sram_awaddr[7]), .Y(n411) );
  INVX1 U439 ( .A(sram_awaddr[6]), .Y(n410) );
  NOR2X1 U440 ( .A(n413), .B(n414), .Y(n394) );
  NAND3X1 U441 ( .A(n415), .B(n416), .C(n417), .Y(n414) );
  AOI21X1 U442 ( .A(n418), .B(n419), .C(n420), .Y(n417) );
  OR2X1 U443 ( .A(sram_awaddr[11]), .B(sram_awaddr[10]), .Y(n420) );
  AND2X1 U444 ( .A(sram_awaddr[0]), .B(sram_awaddr[1]), .Y(n419) );
  AND2X1 U445 ( .A(sram_awaddr[2]), .B(sram_awaddr[3]), .Y(n418) );
  NOR2X1 U446 ( .A(sram_awaddr[15]), .B(sram_awaddr[14]), .Y(n416) );
  NOR2X1 U447 ( .A(sram_awaddr[13]), .B(sram_awaddr[12]), .Y(n415) );
  NAND3X1 U448 ( .A(n421), .B(n422), .C(n423), .Y(n413) );
  NOR2X1 U449 ( .A(sram_awaddr[16]), .B(n424), .Y(n423) );
  OR2X1 U450 ( .A(sram_awaddr[18]), .B(sram_awaddr[17]), .Y(n424) );
  NOR2X1 U451 ( .A(sram_awaddr[22]), .B(sram_awaddr[21]), .Y(n422) );
  NOR2X1 U452 ( .A(sram_awaddr[20]), .B(sram_awaddr[19]), .Y(n421) );
  INVX1 U453 ( .A(n425), .Y(n671) );
  MUX2X1 U454 ( .B(write_data[31]), .A(sram_wdata[31]), .S(n356), .Y(n425) );
  INVX1 U455 ( .A(n427), .Y(n672) );
  MUX2X1 U456 ( .B(write_data[30]), .A(sram_wdata[30]), .S(n356), .Y(n427) );
  INVX1 U457 ( .A(n428), .Y(n673) );
  MUX2X1 U458 ( .B(write_data[29]), .A(sram_wdata[29]), .S(n356), .Y(n428) );
  INVX1 U459 ( .A(n429), .Y(n674) );
  MUX2X1 U460 ( .B(write_data[28]), .A(sram_wdata[28]), .S(n356), .Y(n429) );
  INVX1 U461 ( .A(n430), .Y(n675) );
  MUX2X1 U462 ( .B(write_data[27]), .A(sram_wdata[27]), .S(n356), .Y(n430) );
  INVX1 U463 ( .A(n431), .Y(n676) );
  MUX2X1 U464 ( .B(write_data[26]), .A(sram_wdata[26]), .S(n356), .Y(n431) );
  INVX1 U465 ( .A(n432), .Y(n677) );
  MUX2X1 U466 ( .B(write_data[25]), .A(sram_wdata[25]), .S(n356), .Y(n432) );
  INVX1 U467 ( .A(n433), .Y(n678) );
  MUX2X1 U468 ( .B(write_data[24]), .A(sram_wdata[24]), .S(n356), .Y(n433) );
  INVX1 U469 ( .A(n434), .Y(n679) );
  MUX2X1 U470 ( .B(write_data[23]), .A(sram_wdata[23]), .S(n356), .Y(n434) );
  INVX1 U471 ( .A(n435), .Y(n680) );
  MUX2X1 U472 ( .B(write_data[22]), .A(sram_wdata[22]), .S(n356), .Y(n435) );
  INVX1 U473 ( .A(n436), .Y(n681) );
  MUX2X1 U474 ( .B(write_data[21]), .A(sram_wdata[21]), .S(n356), .Y(n436) );
  INVX1 U475 ( .A(n437), .Y(n682) );
  MUX2X1 U476 ( .B(write_data[20]), .A(sram_wdata[20]), .S(n356), .Y(n437) );
  INVX1 U477 ( .A(n438), .Y(n683) );
  MUX2X1 U478 ( .B(write_data[19]), .A(sram_wdata[19]), .S(n356), .Y(n438) );
  INVX1 U479 ( .A(n439), .Y(n684) );
  MUX2X1 U480 ( .B(write_data[18]), .A(sram_wdata[18]), .S(n356), .Y(n439) );
  INVX1 U481 ( .A(n440), .Y(n685) );
  MUX2X1 U482 ( .B(write_data[17]), .A(sram_wdata[17]), .S(n356), .Y(n440) );
  INVX1 U483 ( .A(n441), .Y(n686) );
  MUX2X1 U484 ( .B(write_data[16]), .A(sram_wdata[16]), .S(n356), .Y(n441) );
  INVX1 U485 ( .A(n442), .Y(n687) );
  MUX2X1 U486 ( .B(write_data[15]), .A(sram_wdata[15]), .S(n356), .Y(n442) );
  INVX1 U487 ( .A(n443), .Y(n688) );
  MUX2X1 U488 ( .B(write_data[14]), .A(sram_wdata[14]), .S(n356), .Y(n443) );
  INVX1 U489 ( .A(n444), .Y(n689) );
  MUX2X1 U490 ( .B(write_data[13]), .A(sram_wdata[13]), .S(n356), .Y(n444) );
  INVX1 U491 ( .A(n445), .Y(n690) );
  MUX2X1 U492 ( .B(write_data[12]), .A(sram_wdata[12]), .S(n356), .Y(n445) );
  INVX1 U493 ( .A(n446), .Y(n691) );
  MUX2X1 U494 ( .B(write_data[11]), .A(sram_wdata[11]), .S(n356), .Y(n446) );
  INVX1 U495 ( .A(n447), .Y(n692) );
  MUX2X1 U496 ( .B(write_data[10]), .A(sram_wdata[10]), .S(n356), .Y(n447) );
  INVX1 U497 ( .A(n448), .Y(n693) );
  MUX2X1 U498 ( .B(write_data[9]), .A(sram_wdata[9]), .S(n356), .Y(n448) );
  INVX1 U499 ( .A(n449), .Y(n694) );
  MUX2X1 U500 ( .B(write_data[8]), .A(sram_wdata[8]), .S(n356), .Y(n449) );
  INVX1 U501 ( .A(n450), .Y(n695) );
  MUX2X1 U502 ( .B(write_data[7]), .A(sram_wdata[7]), .S(n356), .Y(n450) );
  INVX1 U503 ( .A(n451), .Y(n696) );
  MUX2X1 U504 ( .B(write_data[6]), .A(sram_wdata[6]), .S(n356), .Y(n451) );
  INVX1 U505 ( .A(n452), .Y(n697) );
  MUX2X1 U506 ( .B(write_data[5]), .A(sram_wdata[5]), .S(n356), .Y(n452) );
  INVX1 U507 ( .A(n453), .Y(n698) );
  MUX2X1 U508 ( .B(write_data[4]), .A(sram_wdata[4]), .S(n356), .Y(n453) );
  INVX1 U509 ( .A(n454), .Y(n699) );
  MUX2X1 U510 ( .B(write_data[3]), .A(sram_wdata[3]), .S(n356), .Y(n454) );
  INVX1 U511 ( .A(n455), .Y(n700) );
  MUX2X1 U512 ( .B(write_data[2]), .A(sram_wdata[2]), .S(n356), .Y(n455) );
  INVX1 U513 ( .A(n456), .Y(n701) );
  MUX2X1 U514 ( .B(write_data[1]), .A(sram_wdata[1]), .S(n356), .Y(n456) );
  INVX1 U515 ( .A(n457), .Y(n702) );
  MUX2X1 U516 ( .B(write_data[0]), .A(sram_wdata[0]), .S(n356), .Y(n457) );
  NOR2X1 U517 ( .A(next_read[0]), .B(n458), .Y(n703) );
  OAI21X1 U518 ( .A(n459), .B(n460), .C(n461), .Y(n458) );
  NAND3X1 U519 ( .A(n462), .B(n463), .C(n464), .Y(n460) );
  NOR2X1 U520 ( .A(n465), .B(n466), .Y(n464) );
  OAI21X1 U521 ( .A(n467), .B(n468), .C(n469), .Y(n466) );
  NOR2X1 U522 ( .A(sram_araddr[11]), .B(sram_araddr[10]), .Y(n469) );
  NAND2X1 U523 ( .A(sram_araddr[3]), .B(sram_araddr[2]), .Y(n468) );
  NAND2X1 U524 ( .A(sram_araddr[1]), .B(sram_araddr[0]), .Y(n467) );
  NAND2X1 U525 ( .A(n470), .B(n471), .Y(n465) );
  NOR2X1 U526 ( .A(sram_araddr[15]), .B(sram_araddr[14]), .Y(n471) );
  NOR2X1 U527 ( .A(sram_araddr[13]), .B(sram_araddr[12]), .Y(n470) );
  AND2X1 U528 ( .A(n472), .B(n473), .Y(n463) );
  NOR2X1 U529 ( .A(sram_araddr[22]), .B(sram_araddr[21]), .Y(n473) );
  NOR2X1 U530 ( .A(sram_araddr[20]), .B(sram_araddr[19]), .Y(n472) );
  NOR2X1 U531 ( .A(sram_araddr[16]), .B(n474), .Y(n462) );
  OR2X1 U532 ( .A(sram_araddr[18]), .B(sram_araddr[17]), .Y(n474) );
  NAND3X1 U533 ( .A(n475), .B(n476), .C(n477), .Y(n459) );
  NOR2X1 U534 ( .A(n478), .B(n479), .Y(n477) );
  NAND3X1 U535 ( .A(n480), .B(n481), .C(n482), .Y(n479) );
  NOR2X1 U536 ( .A(sram_araddr[31]), .B(sram_araddr[30]), .Y(n482) );
  INVX1 U537 ( .A(sram_araddr[5]), .Y(n481) );
  INVX1 U538 ( .A(sram_araddr[4]), .Y(n480) );
  NAND3X1 U539 ( .A(n483), .B(n484), .C(n485), .Y(n478) );
  NOR2X1 U540 ( .A(sram_araddr[9]), .B(sram_araddr[8]), .Y(n485) );
  INVX1 U541 ( .A(sram_araddr[7]), .Y(n484) );
  INVX1 U542 ( .A(sram_araddr[6]), .Y(n483) );
  AND2X1 U543 ( .A(n486), .B(n487), .Y(n476) );
  NOR2X1 U544 ( .A(sram_araddr[29]), .B(sram_araddr[28]), .Y(n487) );
  NOR2X1 U545 ( .A(sram_araddr[27]), .B(sram_araddr[26]), .Y(n486) );
  NOR2X1 U546 ( .A(sram_araddr[23]), .B(n488), .Y(n475) );
  OR2X1 U547 ( .A(sram_araddr[25]), .B(sram_araddr[24]), .Y(n488) );
  NOR2X1 U548 ( .A(next_write[1]), .B(n397), .Y(n352) );
  OAI21X1 U549 ( .A(n489), .B(n490), .C(n491), .Y(n351) );
  MUX2X1 U550 ( .B(n492), .A(n493), .S(n494), .Y(n491) );
  INVX1 U551 ( .A(sram_awlen[0]), .Y(n490) );
  OAI21X1 U552 ( .A(n489), .B(n495), .C(n496), .Y(n350) );
  MUX2X1 U553 ( .B(n497), .A(n498), .S(n499), .Y(n496) );
  NOR2X1 U554 ( .A(wlen_reg[0]), .B(n355), .Y(n498) );
  INVX1 U555 ( .A(sram_awlen[1]), .Y(n495) );
  OAI21X1 U556 ( .A(n489), .B(n501), .C(n502), .Y(n349) );
  AOI22X1 U557 ( .A(wlen_reg[2]), .B(n503), .C(n493), .D(n504), .Y(n502) );
  OAI21X1 U558 ( .A(n355), .B(n499), .C(n505), .Y(n503) );
  INVX1 U559 ( .A(n497), .Y(n505) );
  OAI21X1 U560 ( .A(n355), .B(n494), .C(n506), .Y(n497) );
  INVX1 U561 ( .A(sram_awlen[2]), .Y(n501) );
  OAI21X1 U562 ( .A(n489), .B(n507), .C(n508), .Y(n348) );
  MUX2X1 U563 ( .B(n509), .A(n510), .S(n511), .Y(n508) );
  NOR2X1 U564 ( .A(n512), .B(n355), .Y(n510) );
  INVX1 U565 ( .A(sram_awlen[3]), .Y(n507) );
  OAI21X1 U566 ( .A(n489), .B(n513), .C(n514), .Y(n347) );
  AOI22X1 U567 ( .A(wlen_reg[4]), .B(n515), .C(n493), .D(n516), .Y(n514) );
  OAI21X1 U568 ( .A(n355), .B(n511), .C(n517), .Y(n515) );
  INVX1 U569 ( .A(n509), .Y(n517) );
  OAI21X1 U570 ( .A(n504), .B(n500), .C(n506), .Y(n509) );
  INVX1 U571 ( .A(sram_awlen[4]), .Y(n513) );
  OAI21X1 U572 ( .A(n489), .B(n518), .C(n519), .Y(n346) );
  MUX2X1 U573 ( .B(n520), .A(n521), .S(wlen_reg[5]), .Y(n519) );
  NOR2X1 U574 ( .A(n522), .B(n355), .Y(n520) );
  INVX1 U575 ( .A(sram_awlen[5]), .Y(n518) );
  OAI21X1 U576 ( .A(n489), .B(n523), .C(n524), .Y(n345) );
  AOI22X1 U577 ( .A(wlen_reg[6]), .B(n525), .C(n493), .D(n526), .Y(n524) );
  INVX1 U578 ( .A(n527), .Y(n525) );
  AOI21X1 U579 ( .A(n493), .B(wlen_reg[5]), .C(n521), .Y(n527) );
  OAI21X1 U580 ( .A(n516), .B(n500), .C(n506), .Y(n521) );
  INVX1 U581 ( .A(n522), .Y(n516) );
  INVX1 U582 ( .A(sram_awlen[6]), .Y(n523) );
  OAI21X1 U583 ( .A(n489), .B(n528), .C(n529), .Y(n344) );
  AOI21X1 U584 ( .A(wlen_reg[7]), .B(n530), .C(n531), .Y(n529) );
  INVX1 U585 ( .A(sram_awlen[7]), .Y(n528) );
  INVX1 U586 ( .A(n532), .Y(n343) );
  AOI21X1 U587 ( .A(n533), .B(sram_awlen[8]), .C(n534), .Y(n532) );
  MUX2X1 U588 ( .B(n535), .A(n536), .S(n537), .Y(n534) );
  OAI21X1 U589 ( .A(n489), .B(n538), .C(n539), .Y(n342) );
  AOI21X1 U590 ( .A(wlen_reg[9]), .B(n540), .C(n541), .Y(n539) );
  INVX1 U591 ( .A(n542), .Y(n541) );
  OAI21X1 U592 ( .A(n355), .B(n537), .C(n535), .Y(n540) );
  AOI21X1 U593 ( .A(n493), .B(wlen_reg[7]), .C(n530), .Y(n535) );
  OAI21X1 U594 ( .A(n526), .B(n500), .C(n506), .Y(n530) );
  INVX1 U595 ( .A(sram_awlen[9]), .Y(n538) );
  OAI21X1 U596 ( .A(n543), .B(n489), .C(n544), .Y(n341) );
  MUX2X1 U597 ( .B(n492), .A(n493), .S(write_addr[0]), .Y(n544) );
  INVX1 U598 ( .A(waddr_reg[0]), .Y(write_addr[0]) );
  INVX1 U599 ( .A(n533), .Y(n489) );
  INVX1 U600 ( .A(sram_awaddr[0]), .Y(n543) );
  OAI21X1 U601 ( .A(n355), .B(n545), .C(n546), .Y(n340) );
  AOI22X1 U602 ( .A(n533), .B(sram_awaddr[1]), .C(n492), .D(waddr_reg[1]), .Y(
        n546) );
  INVX1 U603 ( .A(N85), .Y(n545) );
  OAI21X1 U604 ( .A(n355), .B(n547), .C(n548), .Y(n339) );
  AOI22X1 U605 ( .A(n533), .B(sram_awaddr[2]), .C(n492), .D(waddr_reg[2]), .Y(
        n548) );
  INVX1 U606 ( .A(N86), .Y(n547) );
  OAI21X1 U607 ( .A(n500), .B(n549), .C(n550), .Y(n338) );
  AOI22X1 U608 ( .A(n533), .B(sram_awaddr[3]), .C(n492), .D(waddr_reg[3]), .Y(
        n550) );
  INVX1 U609 ( .A(N87), .Y(n549) );
  OAI21X1 U610 ( .A(n500), .B(n551), .C(n552), .Y(n337) );
  AOI22X1 U611 ( .A(sram_awaddr[4]), .B(n533), .C(n492), .D(waddr_reg[4]), .Y(
        n552) );
  INVX1 U612 ( .A(N88), .Y(n551) );
  OAI21X1 U613 ( .A(n500), .B(n553), .C(n554), .Y(n336) );
  AOI22X1 U614 ( .A(sram_awaddr[5]), .B(n533), .C(n492), .D(waddr_reg[5]), .Y(
        n554) );
  INVX1 U615 ( .A(N89), .Y(n553) );
  OAI21X1 U616 ( .A(n500), .B(n555), .C(n556), .Y(n335) );
  AOI22X1 U617 ( .A(sram_awaddr[6]), .B(n533), .C(n492), .D(waddr_reg[6]), .Y(
        n556) );
  INVX1 U618 ( .A(N90), .Y(n555) );
  OAI21X1 U619 ( .A(n500), .B(n557), .C(n558), .Y(n334) );
  AOI22X1 U620 ( .A(sram_awaddr[7]), .B(n533), .C(n492), .D(waddr_reg[7]), .Y(
        n558) );
  INVX1 U621 ( .A(N91), .Y(n557) );
  OAI21X1 U622 ( .A(n500), .B(n559), .C(n560), .Y(n333) );
  AOI22X1 U623 ( .A(sram_awaddr[8]), .B(n533), .C(n492), .D(waddr_reg[8]), .Y(
        n560) );
  INVX1 U624 ( .A(N92), .Y(n559) );
  OAI21X1 U625 ( .A(n500), .B(n561), .C(n562), .Y(n332) );
  AOI22X1 U626 ( .A(sram_awaddr[9]), .B(n533), .C(n492), .D(waddr_reg[9]), .Y(
        n562) );
  INVX1 U627 ( .A(N93), .Y(n561) );
  OAI21X1 U628 ( .A(n500), .B(n563), .C(n564), .Y(n331) );
  AOI22X1 U629 ( .A(sram_awaddr[10]), .B(n533), .C(n492), .D(waddr_reg[10]), 
        .Y(n564) );
  NOR2X1 U630 ( .A(n492), .B(n493), .Y(n533) );
  OAI21X1 U631 ( .A(n565), .B(n566), .C(n355), .Y(n506) );
  INVX1 U632 ( .A(N94), .Y(n563) );
  OAI21X1 U633 ( .A(n567), .B(n568), .C(n569), .Y(n330) );
  MUX2X1 U634 ( .B(n353), .A(n571), .S(n572), .Y(n569) );
  INVX1 U635 ( .A(sram_arlen[0]), .Y(n568) );
  OAI21X1 U636 ( .A(n567), .B(n573), .C(n574), .Y(n329) );
  MUX2X1 U637 ( .B(n575), .A(n576), .S(n577), .Y(n574) );
  NOR2X1 U638 ( .A(rlen_reg[0]), .B(n354), .Y(n576) );
  INVX1 U639 ( .A(sram_arlen[1]), .Y(n573) );
  OAI21X1 U640 ( .A(n567), .B(n579), .C(n580), .Y(n328) );
  AOI22X1 U641 ( .A(rlen_reg[2]), .B(n581), .C(n571), .D(n582), .Y(n580) );
  OAI21X1 U642 ( .A(n354), .B(n577), .C(n583), .Y(n581) );
  INVX1 U643 ( .A(n575), .Y(n583) );
  OAI21X1 U644 ( .A(n572), .B(n578), .C(n584), .Y(n575) );
  INVX1 U645 ( .A(sram_arlen[2]), .Y(n579) );
  OAI21X1 U646 ( .A(n567), .B(n585), .C(n586), .Y(n327) );
  MUX2X1 U647 ( .B(n587), .A(n588), .S(n589), .Y(n586) );
  NOR2X1 U648 ( .A(n590), .B(n354), .Y(n588) );
  INVX1 U649 ( .A(sram_arlen[3]), .Y(n585) );
  OAI21X1 U650 ( .A(n567), .B(n591), .C(n592), .Y(n326) );
  AOI22X1 U651 ( .A(rlen_reg[4]), .B(n593), .C(n571), .D(n594), .Y(n592) );
  OAI21X1 U652 ( .A(n354), .B(n589), .C(n595), .Y(n593) );
  INVX1 U653 ( .A(n587), .Y(n595) );
  OAI21X1 U654 ( .A(n582), .B(n578), .C(n584), .Y(n587) );
  INVX1 U655 ( .A(sram_arlen[4]), .Y(n591) );
  OAI21X1 U656 ( .A(n567), .B(n596), .C(n597), .Y(n325) );
  MUX2X1 U657 ( .B(n598), .A(n599), .S(rlen_reg[5]), .Y(n597) );
  NOR2X1 U658 ( .A(n600), .B(n354), .Y(n598) );
  INVX1 U659 ( .A(sram_arlen[5]), .Y(n596) );
  OAI21X1 U660 ( .A(n567), .B(n601), .C(n602), .Y(n324) );
  AOI21X1 U661 ( .A(rlen_reg[6]), .B(n603), .C(n604), .Y(n602) );
  INVX1 U662 ( .A(n605), .Y(n603) );
  AOI21X1 U663 ( .A(n571), .B(rlen_reg[5]), .C(n599), .Y(n605) );
  OAI21X1 U664 ( .A(n594), .B(n578), .C(n584), .Y(n599) );
  INVX1 U665 ( .A(n600), .Y(n594) );
  INVX1 U666 ( .A(sram_arlen[6]), .Y(n601) );
  OAI21X1 U667 ( .A(n567), .B(n606), .C(n607), .Y(n323) );
  MUX2X1 U668 ( .B(n608), .A(n604), .S(n609), .Y(n607) );
  INVX1 U669 ( .A(n610), .Y(n604) );
  INVX1 U670 ( .A(sram_arlen[7]), .Y(n606) );
  OAI21X1 U671 ( .A(n567), .B(n611), .C(n612), .Y(n322) );
  MUX2X1 U672 ( .B(n613), .A(n614), .S(n615), .Y(n612) );
  NOR2X1 U673 ( .A(rlen_reg[7]), .B(n610), .Y(n614) );
  NAND2X1 U674 ( .A(n571), .B(n616), .Y(n610) );
  INVX1 U675 ( .A(n617), .Y(n613) );
  INVX1 U676 ( .A(sram_arlen[8]), .Y(n611) );
  OAI21X1 U677 ( .A(n392), .B(n578), .C(n618), .Y(n321) );
  AOI22X1 U678 ( .A(rlen_reg[9]), .B(n619), .C(sram_arlen[9]), .D(n620), .Y(
        n618) );
  OAI21X1 U679 ( .A(n354), .B(n615), .C(n617), .Y(n619) );
  AOI21X1 U680 ( .A(n571), .B(rlen_reg[7]), .C(n608), .Y(n617) );
  OAI21X1 U681 ( .A(n616), .B(n578), .C(n584), .Y(n608) );
  INVX1 U682 ( .A(n570), .Y(n584) );
  INVX1 U683 ( .A(rlen_reg[8]), .Y(n615) );
  OAI21X1 U684 ( .A(n621), .B(n567), .C(n622), .Y(n320) );
  MUX2X1 U685 ( .B(n353), .A(n571), .S(read_addr[0]), .Y(n622) );
  INVX1 U686 ( .A(raddr_reg[0]), .Y(read_addr[0]) );
  INVX1 U687 ( .A(n620), .Y(n567) );
  INVX1 U688 ( .A(sram_araddr[0]), .Y(n621) );
  OAI21X1 U689 ( .A(n354), .B(n623), .C(n624), .Y(n319) );
  AOI22X1 U690 ( .A(n620), .B(sram_araddr[1]), .C(n570), .D(raddr_reg[1]), .Y(
        n624) );
  INVX1 U691 ( .A(N108), .Y(n623) );
  OAI21X1 U692 ( .A(n354), .B(n625), .C(n626), .Y(n318) );
  AOI22X1 U693 ( .A(n620), .B(sram_araddr[2]), .C(n570), .D(raddr_reg[2]), .Y(
        n626) );
  INVX1 U694 ( .A(N109), .Y(n625) );
  OAI21X1 U695 ( .A(n354), .B(n627), .C(n628), .Y(n317) );
  AOI22X1 U696 ( .A(n620), .B(sram_araddr[3]), .C(n570), .D(raddr_reg[3]), .Y(
        n628) );
  INVX1 U697 ( .A(N110), .Y(n627) );
  OAI21X1 U698 ( .A(n578), .B(n629), .C(n630), .Y(n316) );
  AOI22X1 U699 ( .A(sram_araddr[4]), .B(n620), .C(n570), .D(raddr_reg[4]), .Y(
        n630) );
  INVX1 U700 ( .A(N111), .Y(n629) );
  OAI21X1 U701 ( .A(n578), .B(n631), .C(n632), .Y(n315) );
  AOI22X1 U702 ( .A(sram_araddr[5]), .B(n620), .C(n570), .D(raddr_reg[5]), .Y(
        n632) );
  INVX1 U703 ( .A(N112), .Y(n631) );
  OAI21X1 U704 ( .A(n578), .B(n633), .C(n634), .Y(n314) );
  AOI22X1 U705 ( .A(sram_araddr[6]), .B(n620), .C(n570), .D(raddr_reg[6]), .Y(
        n634) );
  INVX1 U706 ( .A(N113), .Y(n633) );
  OAI21X1 U707 ( .A(n578), .B(n635), .C(n636), .Y(n313) );
  AOI22X1 U708 ( .A(sram_araddr[7]), .B(n620), .C(n570), .D(raddr_reg[7]), .Y(
        n636) );
  INVX1 U709 ( .A(N114), .Y(n635) );
  OAI21X1 U710 ( .A(n578), .B(n637), .C(n638), .Y(n312) );
  AOI22X1 U711 ( .A(sram_araddr[8]), .B(n620), .C(n570), .D(raddr_reg[8]), .Y(
        n638) );
  INVX1 U712 ( .A(N115), .Y(n637) );
  OAI21X1 U713 ( .A(n578), .B(n639), .C(n640), .Y(n311) );
  AOI22X1 U714 ( .A(sram_araddr[9]), .B(n620), .C(n570), .D(raddr_reg[9]), .Y(
        n640) );
  INVX1 U715 ( .A(N116), .Y(n639) );
  OAI21X1 U716 ( .A(n578), .B(n641), .C(n642), .Y(n310) );
  AOI22X1 U717 ( .A(sram_araddr[10]), .B(n620), .C(raddr_reg[10]), .D(n570), 
        .Y(n642) );
  NOR2X1 U718 ( .A(n571), .B(n353), .Y(n620) );
  AOI21X1 U719 ( .A(sram_arready), .B(sram_arvalid), .C(n571), .Y(n570) );
  INVX1 U720 ( .A(n578), .Y(n571) );
  INVX1 U721 ( .A(N117), .Y(n641) );
  NAND3X1 U722 ( .A(sram_rvalid), .B(sram_rready), .C(n643), .Y(n578) );
  NOR2X1 U723 ( .A(n644), .B(n645), .Y(n643) );
  INVX1 U724 ( .A(n646), .Y(n280) );
  MUX2X1 U725 ( .B(wstrb_reg[0]), .A(sram_wstrb[0]), .S(n356), .Y(n646) );
  INVX1 U726 ( .A(n647), .Y(n278) );
  MUX2X1 U727 ( .B(wstrb_reg[1]), .A(sram_wstrb[1]), .S(n356), .Y(n647) );
  NOR2X1 U728 ( .A(n398), .B(n397), .Y(N136) );
  INVX1 U729 ( .A(next_write[0]), .Y(n397) );
  OAI21X1 U730 ( .A(write_state[1]), .B(n648), .C(n649), .Y(next_write[0]) );
  AND2X1 U731 ( .A(n355), .B(n650), .Y(n649) );
  MUX2X1 U732 ( .B(n651), .A(n652), .S(write_state[0]), .Y(n648) );
  INVX1 U733 ( .A(sram_wvalid), .Y(n652) );
  NOR2X1 U734 ( .A(n565), .B(n566), .Y(n651) );
  INVX1 U735 ( .A(sram_awvalid), .Y(n566) );
  INVX1 U736 ( .A(sram_awready), .Y(n565) );
  INVX1 U737 ( .A(next_write[1]), .Y(n398) );
  NAND3X1 U738 ( .A(n650), .B(n542), .C(n653), .Y(next_write[1]) );
  AOI22X1 U739 ( .A(n654), .B(sram_wvalid), .C(n375), .D(n655), .Y(n653) );
  INVX1 U740 ( .A(write_valid), .Y(n655) );
  AND2X1 U741 ( .A(n656), .B(write_state[0]), .Y(n654) );
  NAND3X1 U742 ( .A(n537), .B(n657), .C(n531), .Y(n542) );
  INVX1 U743 ( .A(n536), .Y(n531) );
  NAND3X1 U744 ( .A(n526), .B(n658), .C(n493), .Y(n536) );
  INVX1 U745 ( .A(n500), .Y(n493) );
  NAND2X1 U746 ( .A(write_valid), .B(n375), .Y(n500) );
  NOR2X1 U747 ( .A(n656), .B(write_state[0]), .Y(n375) );
  INVX1 U748 ( .A(wlen_reg[7]), .Y(n658) );
  NOR3X1 U749 ( .A(wlen_reg[5]), .B(wlen_reg[6]), .C(n522), .Y(n526) );
  NAND3X1 U750 ( .A(n511), .B(n659), .C(n504), .Y(n522) );
  INVX1 U751 ( .A(n512), .Y(n504) );
  NAND3X1 U752 ( .A(n499), .B(n660), .C(n494), .Y(n512) );
  INVX1 U753 ( .A(wlen_reg[0]), .Y(n494) );
  INVX1 U754 ( .A(wlen_reg[2]), .Y(n660) );
  INVX1 U755 ( .A(wlen_reg[1]), .Y(n499) );
  INVX1 U756 ( .A(wlen_reg[4]), .Y(n659) );
  INVX1 U757 ( .A(wlen_reg[3]), .Y(n511) );
  INVX1 U758 ( .A(wlen_reg[9]), .Y(n657) );
  INVX1 U759 ( .A(wlen_reg[8]), .Y(n537) );
  NAND2X1 U760 ( .A(n661), .B(write_state[0]), .Y(n650) );
  NOR2X1 U761 ( .A(sram_bready), .B(n656), .Y(n661) );
  INVX1 U762 ( .A(write_state[1]), .Y(n656) );
  INVX1 U763 ( .A(n393), .Y(N132) );
  NAND2X1 U764 ( .A(next_read[0]), .B(next_read[1]), .Y(n393) );
  INVX1 U765 ( .A(n461), .Y(next_read[1]) );
  NOR2X1 U766 ( .A(n662), .B(ren), .Y(n461) );
  NOR2X1 U767 ( .A(n644), .B(read_state[1]), .Y(ren) );
  MUX2X1 U768 ( .B(n645), .A(sram_rready), .S(read_state[0]), .Y(n662) );
  MUX2X1 U769 ( .B(n663), .A(n664), .S(n645), .Y(next_read[0]) );
  INVX1 U770 ( .A(read_state[1]), .Y(n645) );
  NAND3X1 U771 ( .A(sram_arready), .B(n644), .C(sram_arvalid), .Y(n664) );
  MUX2X1 U772 ( .B(n665), .A(read_valid), .S(n644), .Y(n663) );
  INVX1 U773 ( .A(read_state[0]), .Y(n644) );
  NAND2X1 U774 ( .A(sram_rready), .B(n666), .Y(n665) );
  INVX1 U775 ( .A(n392), .Y(n666) );
  NAND3X1 U776 ( .A(n616), .B(n609), .C(n667), .Y(n392) );
  NOR2X1 U777 ( .A(rlen_reg[9]), .B(rlen_reg[8]), .Y(n667) );
  INVX1 U778 ( .A(rlen_reg[7]), .Y(n609) );
  NOR3X1 U779 ( .A(rlen_reg[5]), .B(rlen_reg[6]), .C(n600), .Y(n616) );
  NAND3X1 U780 ( .A(n589), .B(n668), .C(n582), .Y(n600) );
  INVX1 U781 ( .A(n590), .Y(n582) );
  NAND3X1 U782 ( .A(n577), .B(n669), .C(n572), .Y(n590) );
  INVX1 U783 ( .A(rlen_reg[0]), .Y(n572) );
  INVX1 U784 ( .A(rlen_reg[2]), .Y(n669) );
  INVX1 U785 ( .A(rlen_reg[1]), .Y(n577) );
  INVX1 U786 ( .A(rlen_reg[4]), .Y(n668) );
  INVX1 U787 ( .A(rlen_reg[3]), .Y(n589) );
endmodule

