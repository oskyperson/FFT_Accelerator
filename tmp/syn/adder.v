/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4
// Date      : Mon Apr 13 17:59:32 2026
/////////////////////////////////////////////////////////////


module adder_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
;
  wire   [17:0] carry;

  FAX1 U2_16 ( .A(A[16]), .B(n1), .C(carry[16]), .YS(DIFF[16]) );
  FAX1 U2_15 ( .A(A[15]), .B(n1), .C(carry[15]), .YC(carry[16]), .YS(DIFF[15])
         );
  FAX1 U2_14 ( .A(A[14]), .B(n2), .C(carry[14]), .YC(carry[15]), .YS(DIFF[14])
         );
  FAX1 U2_13 ( .A(A[13]), .B(n3), .C(carry[13]), .YC(carry[14]), .YS(DIFF[13])
         );
  FAX1 U2_12 ( .A(A[12]), .B(n4), .C(carry[12]), .YC(carry[13]), .YS(DIFF[12])
         );
  FAX1 U2_11 ( .A(A[11]), .B(n5), .C(carry[11]), .YC(carry[12]), .YS(DIFF[11])
         );
  FAX1 U2_10 ( .A(A[10]), .B(n6), .C(carry[10]), .YC(carry[11]), .YS(DIFF[10])
         );
  FAX1 U2_9 ( .A(A[9]), .B(n7), .C(carry[9]), .YC(carry[10]), .YS(DIFF[9]) );
  FAX1 U2_8 ( .A(A[8]), .B(n8), .C(carry[8]), .YC(carry[9]), .YS(DIFF[8]) );
  FAX1 U2_7 ( .A(A[7]), .B(n9), .C(carry[7]), .YC(carry[8]), .YS(DIFF[7]) );
  FAX1 U2_6 ( .A(A[6]), .B(n10), .C(carry[6]), .YC(carry[7]), .YS(DIFF[6]) );
  FAX1 U2_5 ( .A(A[5]), .B(n11), .C(carry[5]), .YC(carry[6]), .YS(DIFF[5]) );
  FAX1 U2_4 ( .A(A[4]), .B(n12), .C(carry[4]), .YC(carry[5]), .YS(DIFF[4]) );
  FAX1 U2_3 ( .A(A[3]), .B(n13), .C(carry[3]), .YC(carry[4]), .YS(DIFF[3]) );
  FAX1 U2_2 ( .A(A[2]), .B(n14), .C(carry[2]), .YC(carry[3]), .YS(DIFF[2]) );
  FAX1 U2_1 ( .A(A[1]), .B(n15), .C(carry[1]), .YC(carry[2]), .YS(DIFF[1]) );
  OR2X1 U1 ( .A(A[0]), .B(n16), .Y(carry[1]) );
  XNOR2X1 U2 ( .A(n16), .B(A[0]), .Y(DIFF[0]) );
  INVX2 U3 ( .A(B[16]), .Y(n1) );
  INVX2 U4 ( .A(B[14]), .Y(n2) );
  INVX2 U5 ( .A(B[13]), .Y(n3) );
  INVX2 U6 ( .A(B[12]), .Y(n4) );
  INVX2 U7 ( .A(B[11]), .Y(n5) );
  INVX2 U8 ( .A(B[10]), .Y(n6) );
  INVX2 U9 ( .A(B[9]), .Y(n7) );
  INVX2 U10 ( .A(B[8]), .Y(n8) );
  INVX2 U11 ( .A(B[7]), .Y(n9) );
  INVX2 U12 ( .A(B[6]), .Y(n10) );
  INVX2 U13 ( .A(B[5]), .Y(n11) );
  INVX2 U14 ( .A(B[4]), .Y(n12) );
  INVX2 U15 ( .A(B[3]), .Y(n13) );
  INVX2 U16 ( .A(B[2]), .Y(n14) );
  INVX2 U17 ( .A(B[1]), .Y(n15) );
  INVX2 U18 ( .A(B[0]), .Y(n16) );
endmodule


module adder_DW01_add_0 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:1] carry;

  FAX1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .YS(SUM[16]) );
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


module adder ( a, b, sel, total );
  input [15:0] a;
  input [15:0] b;
  output [16:0] total;
  input sel;
  wire   N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31,
         N32, N33, N34, N35, N36, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58;

  adder_DW01_sub_0 sub_8 ( .A({a[15], a}), .B({b[15], b}), .CI(1'b0), .DIFF({
        N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, 
        N22, N21, N20}) );
  adder_DW01_add_0 add_8 ( .A({a[15], a}), .B({b[15], b}), .CI(1'b0), .SUM({
        N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, 
        N4, N3}) );
  INVX1 U40 ( .A(n42), .Y(total[16]) );
  MUX2X1 U41 ( .B(N36), .A(N19), .S(sel), .Y(n42) );
  INVX1 U42 ( .A(n43), .Y(total[15]) );
  MUX2X1 U43 ( .B(N35), .A(N18), .S(sel), .Y(n43) );
  INVX1 U44 ( .A(n44), .Y(total[14]) );
  MUX2X1 U45 ( .B(N34), .A(N17), .S(sel), .Y(n44) );
  INVX1 U46 ( .A(n45), .Y(total[13]) );
  MUX2X1 U47 ( .B(N33), .A(N16), .S(sel), .Y(n45) );
  INVX1 U48 ( .A(n46), .Y(total[12]) );
  MUX2X1 U49 ( .B(N32), .A(N15), .S(sel), .Y(n46) );
  INVX1 U50 ( .A(n47), .Y(total[11]) );
  MUX2X1 U51 ( .B(N31), .A(N14), .S(sel), .Y(n47) );
  INVX1 U52 ( .A(n48), .Y(total[10]) );
  MUX2X1 U53 ( .B(N30), .A(N13), .S(sel), .Y(n48) );
  INVX1 U54 ( .A(n49), .Y(total[9]) );
  MUX2X1 U55 ( .B(N29), .A(N12), .S(sel), .Y(n49) );
  INVX1 U56 ( .A(n50), .Y(total[8]) );
  MUX2X1 U57 ( .B(N28), .A(N11), .S(sel), .Y(n50) );
  INVX1 U58 ( .A(n51), .Y(total[7]) );
  MUX2X1 U59 ( .B(N27), .A(N10), .S(sel), .Y(n51) );
  INVX1 U60 ( .A(n52), .Y(total[6]) );
  MUX2X1 U61 ( .B(N26), .A(N9), .S(sel), .Y(n52) );
  INVX1 U62 ( .A(n53), .Y(total[5]) );
  MUX2X1 U63 ( .B(N25), .A(N8), .S(sel), .Y(n53) );
  INVX1 U64 ( .A(n54), .Y(total[4]) );
  MUX2X1 U65 ( .B(N24), .A(N7), .S(sel), .Y(n54) );
  INVX1 U66 ( .A(n55), .Y(total[3]) );
  MUX2X1 U67 ( .B(N23), .A(N6), .S(sel), .Y(n55) );
  INVX1 U68 ( .A(n56), .Y(total[2]) );
  MUX2X1 U69 ( .B(N22), .A(N5), .S(sel), .Y(n56) );
  INVX1 U70 ( .A(n57), .Y(total[1]) );
  MUX2X1 U71 ( .B(N21), .A(N4), .S(sel), .Y(n57) );
  INVX1 U72 ( .A(n58), .Y(total[0]) );
  MUX2X1 U73 ( .B(N20), .A(N3), .S(sel), .Y(n58) );
endmodule

