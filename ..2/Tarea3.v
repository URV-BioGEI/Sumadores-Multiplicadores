//: version "1.8.7"

module PFA2(Si, Ci, Bi, Gi, Pi, Ai);
//: interface  /sz:(40, 40) /bd:[ ]
output Gi;    //: /sn:0 {0}(482,170)(374,170){1}
input Bi;    //: /sn:0 /dp:1 {0}(327,90)(300,90)(300,112)(251,112){1}
//: {2}(247,112)(214,112){3}
//: {4}(249,114)(249,172)(353,172){5}
input Ai;    //: /sn:0 {0}(214,70)(274,70){1}
//: {2}(278,70)(298,70)(298,85)(327,85){3}
//: {4}(276,72)(276,167)(353,167){5}
output Si;    //: /sn:0 {0}(479,117)(423,117){1}
output Pi;    //: /sn:0 {0}(478,88)(377,88){1}
//: {2}(373,88)(348,88){3}
//: {4}(375,90)(375,114)(402,114){5}
input Ci;    //: /sn:0 {0}(216,157)(313,157)(313,119)(402,119){1}
//: enddecls

  //: output g8 (Si) @(476,117) /sn:0 /w:[ 0 ]
  xor g4 (.I0(Pi), .I1(Ci), .Z(Si));   //: @(413,117) /sn:0 /w:[ 5 1 1 ]
  xor g3 (.I0(Ai), .I1(Bi), .Z(Pi));   //: @(338,88) /sn:0 /w:[ 3 0 3 ]
  //: input g2 (Ci) @(214,157) /sn:0 /w:[ 0 ]
  //: input g1 (Bi) @(212,112) /sn:0 /w:[ 3 ]
  //: output g11 (Gi) @(479,170) /sn:0 /w:[ 0 ]
  //: joint g10 (Bi) @(249, 112) /w:[ 1 -1 2 4 ]
  //: output g6 (Pi) @(475,88) /sn:0 /w:[ 0 ]
  //: joint g9 (Ai) @(276, 70) /w:[ 2 -1 1 4 ]
  //: joint g7 (Pi) @(375, 88) /w:[ 1 -1 2 4 ]
  and g5 (.I0(Ai), .I1(Bi), .Z(Gi));   //: @(364,170) /sn:0 /w:[ 5 5 1 ]
  //: input g0 (Ai) @(212,70) /sn:0 /w:[ 0 ]

endmodule

module CPA4b(C0, C4, Sout, B, A);
//: interface  /sz:(104, 40) /bd:[ Ti0>A[3:0](21/104) Ti1>B[3:0](67/104) Ri0>C0(18/40) Lo0<C4(20/40) Bo0<S[3:0](46/104) ]
input [3:0] B;    //: /sn:0 {0}(-59,44)(42,44){1}
//: {2}(43,44)(168,44){3}
//: {4}(169,44)(299,44){5}
//: {6}(300,44)(443,44){7}
//: {8}(444,44)(487,44){9}
input C0;    //: /sn:0 {0}(525,158)(465,158){1}
input [3:0] A;    //: /sn:0 {0}(-59,14)(-2,14){1}
//: {2}(-1,14)(124,14){3}
//: {4}(125,14)(255,14){5}
//: {6}(256,14)(399,14){7}
//: {8}(400,14)(495,14){9}
output [3:0] Sout;    //: /sn:0 {0}(-115,321)(-23,321)(-23,321)(-23,321){1}
output C4;    //: /sn:0 {0}(-62,150)(-21,150){1}
wire w6;    //: /sn:0 {0}(444,48)(444,115){1}
wire S1;    //: /sn:0 {0}(-17,316)(280,316)(280,198){1}
wire w7;    //: /sn:0 {0}(400,18)(400,115){1}
wire w16;    //: /sn:0 {0}(64,152)(105,152){1}
wire w4;    //: /sn:0 {0}(256,18)(256,113){1}
wire w3;    //: /sn:0 {0}(169,48)(169,111){1}
wire w0;    //: /sn:0 {0}(-1,18)(-1,109){1}
wire w24;    //: /sn:0 {0}(236,154)(190,154){1}
wire w23;    //: /sn:0 {0}(321,156)(380,156){1}
wire S0;    //: /sn:0 {0}(-17,306)(424,306)(424,200){1}
wire w8;    //: /sn:0 {0}(43,48)(43,109){1}
wire w2;    //: /sn:0 {0}(125,18)(125,111){1}
wire w5;    //: /sn:0 {0}(300,48)(300,113){1}
wire w9;    //: /sn:0 {0}(-17,336)(22,336)(22,194){1}
wire S2;    //: /sn:0 {0}(-17,326)(149,326)(149,196){1}
//: enddecls

  tran g4(.Z(w3), .I(B[2]));   //: @(169,42) /sn:0 /R:1 /w:[ 0 3 4 ] /ss:1
  //: input g8 (C0) @(527,158) /sn:0 /R:2 /w:[ 0 ]
  tran g3(.Z(w8), .I(B[3]));   //: @(43,42) /sn:0 /R:1 /w:[ 0 1 2 ] /ss:1
  //: output g13 (C4) @(-59,150) /sn:0 /R:2 /w:[ 0 ]
  tran g2(.Z(w2), .I(A[2]));   //: @(125,12) /sn:0 /R:1 /w:[ 0 3 4 ] /ss:1
  tran g1(.Z(w4), .I(A[1]));   //: @(256,12) /sn:0 /R:1 /w:[ 0 5 6 ] /ss:1
  FullAdd g28 (.B(w5), .A(w4), .Cin(w23), .Cout(w24), .S(S1));   //: @(237, 114) /sz:(83, 83) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>0 Lo0<0 Bo0<1 ]
  FullAdd g27 (.B(w3), .A(w2), .Cin(w24), .Cout(w16), .S(S2));   //: @(106, 112) /sz:(83, 83) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>1 Lo0<1 Bo0<1 ]
  tran g6(.Z(w7), .I(A[0]));   //: @(400,12) /sn:0 /R:1 /w:[ 0 7 8 ] /ss:1
  //: output g9 (Sout) @(-112,321) /sn:0 /R:2 /w:[ 0 ]
  tran g7(.Z(w6), .I(B[0]));   //: @(444,42) /sn:0 /R:1 /w:[ 0 7 8 ] /ss:1
  //: input g15 (B) @(-61,44) /sn:0 /w:[ 0 ]
  concat g17 (.I0(S0), .I1(S1), .I2(S2), .I3(w9), .Z(Sout));   //: @(-22,321) /sn:0 /R:2 /w:[ 0 0 0 0 1 ] /dr:0
  FullAdd g29 (.B(w6), .A(w7), .Cin(C0), .Cout(w23), .S(S0));   //: @(381, 116) /sz:(83, 83) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>1 Lo0<1 Bo0<1 ]
  tran g5(.Z(w5), .I(B[1]));   //: @(300,42) /sn:0 /R:1 /w:[ 0 5 6 ] /ss:1
  //: input g14 (A) @(-61,14) /sn:0 /w:[ 0 ]
  tran g0(.Z(w0), .I(A[3]));   //: @(-1,12) /sn:0 /R:1 /w:[ 0 1 2 ] /ss:1
  FullAdd g26 (.B(w8), .A(w0), .Cin(w16), .Cout(C4), .S(w9));   //: @(-20, 110) /sz:(83, 83) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>0 Lo0<1 Bo0<1 ]

endmodule

module HalfAdd(B, A, S, C);
//: interface  /sz:(88, 71) /bd:[ Li0>A(16/71) Li1>B(55/71) Ro0<S(12/71) Ro1<C(59/71) ]
input B;    //: /sn:0 {0}(158,202)(250,202){1}
//: {2}(254,202)(320,202)(320,184)(328,184){3}
//: {4}(252,204)(252,248)(337,248){5}
input A;    //: /sn:0 {0}(157,155)(280,155){1}
//: {2}(284,155)(320,155)(320,179)(328,179){3}
//: {4}(282,157)(282,243)(337,243){5}
output C;    //: /sn:0 {0}(449,246)(358,246){1}
output S;    //: /sn:0 {0}(445,182)(349,182){1}
//: enddecls

  //: joint g4 (A) @(282, 155) /w:[ 2 -1 1 4 ]
  //: input g3 (B) @(156,202) /sn:0 /w:[ 0 ]
  //: input g2 (A) @(155,155) /sn:0 /w:[ 0 ]
  xor g1 (.I0(A), .I1(B), .Z(S));   //: @(339,182) /sn:0 /delay:" 2" /w:[ 3 3 1 ]
  //: output g6 (S) @(442,182) /sn:0 /w:[ 0 ]
  //: output g7 (C) @(446,246) /sn:0 /w:[ 0 ]
  //: joint g5 (B) @(252, 202) /w:[ 2 -1 1 4 ]
  and g0 (.I0(A), .I1(B), .Z(C));   //: @(348,246) /sn:0 /delay:" 1" /w:[ 5 5 1 ]

endmodule

module PFA1(A, Gi, Cin, S, B, Pi);
//: interface  /sz:(68, 63) /bd:[ Ti0>A(12/68) Ti1>B(52/68) Ri0>Ci(34/63) Bo0<S(57/68) Bo1<Pi(36/68) Bo2<Gi(9/68) ]
input B;    //: /sn:0 {0}(120,118)(132,118){1}
//: {2}(136,118)(157,118)(157,102)(166,102){3}
//: {4}(134,120)(134,197){5}
//: {6}(136,199)(194,199)(194,184)(252,184){7}
//: {8}(134,201)(134,242)(257,242){9}
output Gi;    //: /sn:0 {0}(378,240)(278,240){1}
input A;    //: /sn:0 {0}(122,88)(144,88){1}
//: {2}(148,88)(154,88)(154,97)(166,97){3}
//: {4}(146,90)(146,179)(171,179){5}
//: {6}(175,179)(252,179){7}
//: {8}(173,181)(173,237)(257,237){9}
output Pi;    //: /sn:0 {0}(374,182)(273,182){1}
input Cin;    //: /sn:0 {0}(122,152)(253,152)(253,115)(300,115){1}
output S;    //: /sn:0 {0}(394,113)(321,113){1}
wire w3;    //: /sn:0 {0}(300,110)(203,110)(203,100)(187,100){1}
//: enddecls

  //: joint g8 (A) @(146, 88) /w:[ 2 -1 1 4 ]
  //: input g4 (A) @(120,88) /sn:0 /w:[ 0 ]
  //: output g13 (Gi) @(375,240) /sn:0 /w:[ 0 ]
  and g3 (.I0(A), .I1(B), .Z(Gi));   //: @(268,240) /sn:0 /w:[ 9 9 1 ]
  or g2 (.I0(A), .I1(B), .Z(Pi));   //: @(263,182) /sn:0 /w:[ 7 7 1 ]
  xor g1 (.I0(w3), .I1(Cin), .Z(S));   //: @(311,113) /sn:0 /w:[ 0 1 1 ]
  //: joint g11 (B) @(134, 199) /w:[ 6 5 -1 8 ]
  //: joint g10 (B) @(134, 118) /w:[ 2 -1 1 4 ]
  //: input g6 (Cin) @(120,152) /sn:0 /w:[ 0 ]
  //: joint g9 (A) @(173, 179) /w:[ 6 -1 5 8 ]
  //: output g7 (S) @(391,113) /sn:0 /w:[ 0 ]
  //: input g5 (B) @(118,118) /sn:0 /w:[ 0 ]
  xor g0 (.I0(A), .I1(B), .Z(w3));   //: @(177,100) /sn:0 /w:[ 3 3 1 ]
  //: output g12 (Pi) @(371,182) /sn:0 /w:[ 0 ]

endmodule

module CLA1(S1, S0, C0, B3, B0, A2, S3, B2, C4, A1, B1, S2, A3, A0);
//: interface  /sz:(40, 40) /bd:[ ]
input A0;    //: /sn:0 {0}(556,84)(556,127){1}
output S1;    //: /sn:0 {0}(436,246)(436,191){1}
input C0;    //: /sn:0 {0}(679,162)(654,162){1}
//: {2}(650,162)(613,162){3}
//: {4}(652,164)(652,312)(622,312){5}
input A3;    //: /sn:0 {0}(72,74)(72,139){1}
input A2;    //: /sn:0 {0}(227,78)(227,136){1}
input B2;    //: /sn:0 {0}(267,75)(267,136){1}
output C4;    //: /sn:0 {0}(-8,310)(42,310){1}
input B1;    //: /sn:0 {0}(431,77)(431,126){1}
output S0;    //: /sn:0 {0}(601,192)(601,252){1}
input A1;    //: /sn:0 {0}(391,76)(391,126){1}
input B3;    //: /sn:0 {0}(112,71)(112,139){1}
output S3;    //: /sn:0 {0}(117,247)(117,204){1}
input B0;    //: /sn:0 {0}(596,86)(596,127){1}
output S2;    //: /sn:0 {0}(272,251)(272,201){1}
wire g3;    //: /sn:0 /dp:1 {0}(69,283)(69,204){1}
wire g2;    //: /sn:0 {0}(224,283)(224,201){1}
wire g1;    //: /sn:0 {0}(388,283)(388,191){1}
wire c1;    //: /sn:0 {0}(502,283)(502,161)(448,161){1}
wire p3;    //: /sn:0 /dp:1 {0}(96,283)(96,204){1}
wire p2;    //: /sn:0 {0}(251,283)(251,201){1}
wire p1;    //: /sn:0 {0}(415,283)(415,191){1}
wire c3;    //: /sn:0 /dp:1 {0}(168,283)(168,174)(129,174){1}
wire p0;    //: /sn:0 {0}(580,283)(580,192){1}
wire c2;    //: /sn:0 {0}(338,283)(338,171)(284,171){1}
wire g0;    //: /sn:0 {0}(553,283)(553,192){1}
//: enddecls

  //: output g8 (S1) @(436,243) /sn:0 /R:3 /w:[ 0 ]
  //: output g4 (S0) @(601,249) /sn:0 /R:3 /w:[ 1 ]
  //: input g3 (C0) @(681,162) /sn:0 /R:2 /w:[ 0 ]
  //: input g13 (B3) @(112,69) /sn:0 /R:3 /w:[ 0 ]
  //: input g2 (B0) @(596,84) /sn:0 /R:3 /w:[ 0 ]
  PFA1 g1 (.B(B0), .A(A0), .Ci(C0), .Gi(g0), .Pi(p0), .S(S0));   //: @(544, 128) /sz:(68, 63) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>3 Bo0<1 Bo1<1 Bo2<0 ]
  //: input g11 (A2) @(227,76) /sn:0 /R:3 /w:[ 0 ]
  //: output g16 (S3) @(117,244) /sn:0 /R:3 /w:[ 0 ]
  //: input g10 (B2) @(267,73) /sn:0 /R:3 /w:[ 0 ]
  //: output g19 (C4) @(-5,310) /sn:0 /R:2 /w:[ 0 ]
  //: input g6 (A1) @(391,74) /sn:0 /R:3 /w:[ 0 ]
  PFA1 g9 (.B(B2), .A(A2), .Ci(c2), .Gi(g2), .Pi(p2), .S(S2));   //: @(215, 137) /sz:(68, 63) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>1 Bo0<1 Bo1<1 Bo2<1 ]
  //: input g7 (B1) @(431,75) /sn:0 /R:3 /w:[ 0 ]
  //: output g15 (S2) @(272,248) /sn:0 /R:3 /w:[ 0 ]
  CLL g17 (.G3(g3), .P3(p3), .G2(g2), .P2(p2), .P1(p1), .G1(g1), .G0(g0), .P0(p0), .C0(C0), .C3(c3), .C2(c2), .C1(c1), .C4(C4));   //: @(43, 284) /sz:(578, 51) /sn:0 /p:[ Ti0>0 Ti1>0 Ti2>0 Ti3>0 Ti4>0 Ti5>0 Ti6>0 Ti7>0 Ri0>5 To0<0 To1<0 To2<0 Lo0<1 ]
  PFA1 g5 (.B(B1), .A(A1), .Ci(c1), .Gi(g1), .Pi(p1), .S(S1));   //: @(379, 127) /sz:(68, 63) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>1 Bo0<1 Bo1<1 Bo2<1 ]
  //: input g14 (A3) @(72,72) /sn:0 /R:3 /w:[ 0 ]
  //: input g0 (A0) @(556,82) /sn:0 /R:3 /w:[ 0 ]
  PFA1 g12 (.A(A3), .B(B3), .Ci(c3), .S(S3), .Pi(p3), .Gi(g3));   //: @(60, 140) /sz:(68, 63) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>1 Bo0<1 Bo1<1 Bo2<1 ]
  //: joint g18 (C0) @(652, 162) /w:[ 1 -1 2 4 ]

endmodule

module main;    //: root_module
wire w4;    //: /sn:0 {0}(566,243)(603,243){1}
wire w3;    //: /sn:0 {0}(748,241)(709,241){1}
wire [3:0] w0;    //: /sn:0 /dp:1 {0}(587,157)(587,188)(625,188)(625,222){1}
wire [3:0] w1;    //: /sn:0 {0}(707,155)(707,183)(671,183)(671,222){1}
wire [3:0] w2;    //: /sn:0 {0}(650,293)(650,264){1}
//: enddecls

  //: switch g4 (w3) @(766,241) /sn:0 /R:2 /w:[ 0 ] /st:0
  led g3 (.I(w2));   //: @(650,300) /sn:0 /R:2 /w:[ 0 ] /type:3
  //: dip g2 (w1) @(707,145) /sn:0 /w:[ 0 ] /st:0
  //: dip g1 (w0) @(587,147) /sn:0 /w:[ 0 ] /st:0
  led g5 (.I(w4));   //: @(559,243) /sn:0 /R:1 /w:[ 0 ] /type:3
  CPA4b g0 (.B(w1), .A(w0), .C0(w3), .C4(w4), .Sout(w2));   //: @(604, 223) /sz:(104, 40) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>1 Lo0<1 Bo0<1 ]

endmodule

module FullAdd(S, Cout, Cin, B, A);
//: interface  /sz:(83, 83) /bd:[ Ti0>A(19/83) Ti1>B(63/83) Ri0>Cin(42/83) Lo0<Cout(40/83) Bo0<S(43/83) ]
input B;    //: /sn:0 {0}(163,178)(214,178)(214,168)(224,168){1}
input A;    //: /sn:0 {0}(161,128)(192,128)(192,132)(224,132){1}
output Cout;    //: /sn:0 {0}(606,274)(567,274){1}
input Cin;    //: /sn:0 {0}(394,222)(182,222)(182,246)(165,246){1}
output S;    //: /sn:0 {0}(565,137)(500,137)(500,185)(484,185){1}
wire w3;    //: /sn:0 /dp:1 {0}(546,276)(318,276)(318,172)(308,172){1}
wire w2;    //: /sn:0 /dp:1 {0}(546,271)(494,271)(494,225)(484,225){1}
wire w5;    //: /sn:0 {0}(308,129)(386,129)(386,188)(394,188){1}
//: enddecls

  //: output g4 (S) @(562,137) /sn:0 /w:[ 0 ]
  //: output g3 (Cout) @(603,274) /sn:0 /w:[ 0 ]
  //: input g2 (Cin) @(163,246) /sn:0 /w:[ 1 ]
  //: input g1 (B) @(161,178) /sn:0 /w:[ 0 ]
  HalfAdd g6 (.A(w5), .B(Cin), .S(S), .C(w2));   //: @(395, 174) /sz:(88, 62) /sn:0 /p:[ Li0>1 Li1>0 Ro0<1 Ro1<1 ]
  or g7 (.I0(w2), .I1(w3), .Z(Cout));   //: @(557,274) /sn:0 /delay:" 1" /w:[ 0 0 1 ]
  HalfAdd g5 (.A(A), .B(B), .S(w5), .C(w3));   //: @(225, 117) /sz:(82, 66) /sn:0 /p:[ Li0>1 Li1>1 Ro0<0 Ro1<1 ]
  //: input g0 (A) @(159,128) /sn:0 /w:[ 0 ]

endmodule

module CLL(G0, P0, P2, G3, P1, G1, C2, P3, G2, C1, C0, C3, C4);
//: interface  /sz:(40, 40) /bd:[ ]
input G2;    //: /sn:0 {0}(76,339)(153,339){1}
//: {2}(157,339)(341,339)(341,308)(388,308){3}
//: {4}(155,341)(155,454)(240,454){5}
input C0;    //: /sn:0 {0}(78,72)(137,72){1}
//: {2}(141,72)(281,72)(281,90)(289,90){3}
//: {4}(139,74)(139,180)(213,180){5}
//: {6}(217,180)(232,180){7}
//: {8}(215,182)(215,264)(230,264){9}
//: {10}(234,264)(239,264){11}
//: {12}(232,266)(232,353)(241,353){13}
input P1;    //: /sn:0 {0}(241,363)(215,363){1}
//: {2}(211,363)(199,363)(199,300){3}
//: {4}(201,298)(239,298){5}
//: {6}(197,298)(191,298)(191,276){7}
//: {8}(193,274)(239,274){9}
//: {10}(189,274)(148,274)(148,221){11}
//: {12}(150,219)(231,219){13}
//: {14}(146,219)(128,219)(128,192){15}
//: {16}(130,190)(232,190){17}
//: {18}(126,190)(78,190){19}
//: {20}(213,365)(213,398)(242,398){21}
output C3;    //: /sn:0 /dp:1 {0}(409,300)(579,300){1}
input G0;    //: /sn:0 {0}(78,148)(179,148){1}
//: {2}(183,148)(324,148)(324,107)(408,107){3}
//: {4}(181,150)(181,214)(202,214){5}
//: {6}(206,214)(231,214){7}
//: {8}(204,216)(204,293)(220,293){9}
//: {10}(224,293)(239,293){11}
//: {12}(222,295)(222,393)(242,393){13}
output C4;    //: /sn:0 /dp:1 {0}(414,402)(589,402){1}
output C2;    //: /sn:0 {0}(576,200)(493,200)(493,201)(408,201){1}
input P3;    //: /sn:0 {0}(241,434)(203,434)(203,410){1}
//: {2}(205,408)(242,408){3}
//: {4}(201,408)(187,408)(187,375){5}
//: {6}(189,373)(241,373){7}
//: {8}(185,373)(76,373){9}
input G1;    //: /sn:0 {0}(77,239)(138,239){1}
//: {2}(142,239)(290,239)(290,206)(387,206){3}
//: {4}(140,241)(140,321)(167,321){5}
//: {6}(171,321)(205,321)(205,321)(239,321){7}
//: {8}(169,323)(169,424)(241,424){9}
input G3;    //: /sn:0 {0}(78,436)(118,436)(118,459)(240,459){1}
output C1;    //: /sn:0 {0}(572,105)(429,105){1}
input P0;    //: /sn:0 {0}(78,111)(97,111){1}
//: {2}(101,111)(281,111)(281,95)(289,95){3}
//: {4}(99,113)(99,185)(159,185){5}
//: {6}(163,185)(232,185){7}
//: {8}(161,187)(161,269)(208,269){9}
//: {10}(212,269)(239,269){11}
//: {12}(210,271)(210,358)(241,358){13}
input P2;    //: /sn:0 {0}(242,403)(222,403){1}
//: {2}(218,403)(205,403)(205,370){3}
//: {4}(207,368)(241,368){5}
//: {6}(203,368)(191,368)(191,328){7}
//: {8}(193,326)(216,326)(216,326)(239,326){9}
//: {10}(189,326)(185,326)(185,305){11}
//: {12}(187,303)(239,303){13}
//: {14}(183,303)(175,303)(175,281){15}
//: {16}(177,279)(239,279){17}
//: {18}(173,279)(78,279){19}
//: {20}(220,405)(220,429)(241,429){21}
wire w6;    //: /sn:0 /dp:1 {0}(393,400)(263,400){1}
wire w7;    //: /sn:0 {0}(262,363)(383,363)(383,395)(393,395){1}
wire w14;    //: /sn:0 {0}(393,410)(357,410)(357,457)(261,457){1}
wire w4;    //: /sn:0 /dp:1 {0}(388,298)(260,298){1}
wire w3;    //: /sn:0 {0}(253,185)(377,185)(377,196)(387,196){1}
wire w1;    //: /sn:0 /dp:1 {0}(387,201)(265,201)(265,217)(252,217){1}
wire w2;    //: /sn:0 {0}(310,93)(398,93)(398,102)(408,102){1}
wire w10;    //: /sn:0 {0}(262,429)(327,429)(327,405)(393,405){1}
wire w5;    //: /sn:0 {0}(260,271)(378,271)(378,293)(388,293){1}
wire w9;    //: /sn:0 {0}(388,303)(323,303)(323,324)(260,324){1}
//: enddecls

  and g8 (.I0(C0), .I1(P0), .I2(P1), .Z(w3));   //: @(243,185) /sn:0 /delay:" 1" /w:[ 7 7 17 0 ]
  or g4 (.I0(w2), .I1(G0), .Z(C1));   //: @(419,105) /sn:0 /delay:" 1" /w:[ 1 3 1 ]
  //: joint g13 (G0) @(181, 148) /w:[ 2 -1 1 4 ]
  and g3 (.I0(C0), .I1(P0), .Z(w2));   //: @(300,93) /sn:0 /delay:" 1" /w:[ 3 3 0 ]
  and g34 (.I0(C0), .I1(P0), .I2(P1), .I3(P2), .I4(P3), .Z(w7));   //: @(252,363) /sn:0 /delay:" 1" /w:[ 13 13 0 5 7 0 ]
  //: joint g37 (P1) @(199, 298) /w:[ 4 -1 6 3 ]
  //: input g2 (G0) @(76,148) /sn:0 /w:[ 0 ]
  //: input g1 (P0) @(76,111) /sn:0 /w:[ 0 ]
  //: input g16 (P2) @(76,279) /sn:0 /w:[ 19 ]
  and g11 (.I0(G0), .I1(P1), .Z(w1));   //: @(242,217) /sn:0 /delay:" 1" /w:[ 7 13 1 ]
  //: joint g10 (C0) @(139, 72) /w:[ 2 -1 1 4 ]
  //: joint g28 (P2) @(185, 303) /w:[ 12 -1 14 11 ]
  or g50 (.I0(w7), .I1(w6), .I2(w10), .I3(w14), .Z(C4));   //: @(404,402) /sn:0 /delay:" 1" /w:[ 1 0 1 0 0 ]
  //: joint g19 (C0) @(215, 180) /w:[ 6 -1 5 8 ]
  //: joint g27 (G1) @(140, 239) /w:[ 2 -1 1 4 ]
  //: input g32 (G3) @(76,436) /sn:0 /w:[ 0 ]
  //: input g6 (P1) @(76,190) /sn:0 /w:[ 19 ]
  //: joint g38 (P2) @(191, 326) /w:[ 8 -1 10 7 ]
  //: joint g9 (P0) @(99, 111) /w:[ 2 -1 1 4 ]
  //: input g7 (G1) @(75,239) /sn:0 /w:[ 0 ]
  //: output g15 (C2) @(573,200) /sn:0 /w:[ 0 ]
  //: joint g20 (P0) @(161, 185) /w:[ 6 -1 5 8 ]
  //: input g31 (P3) @(74,373) /sn:0 /w:[ 9 ]
  and g39 (.I0(G0), .I1(P1), .I2(P2), .I3(P3), .Z(w6));   //: @(253,400) /sn:0 /delay:" 1" /w:[ 13 21 0 3 1 ]
  //: joint g43 (P3) @(187, 373) /w:[ 6 -1 8 5 ]
  and g48 (.I0(G2), .I1(G3), .Z(w14));   //: @(251,457) /sn:0 /delay:" 1" /w:[ 5 1 1 ]
  //: input g17 (G2) @(74,339) /sn:0 /w:[ 0 ]
  //: joint g25 (P2) @(175, 279) /w:[ 16 -1 18 15 ]
  or g29 (.I0(w5), .I1(w4), .I2(w9), .I3(G2), .Z(C3));   //: @(399,300) /sn:0 /delay:" 1" /w:[ 1 0 0 3 0 ]
  //: joint g42 (P2) @(205, 368) /w:[ 4 -1 6 3 ]
  or g14 (.I0(w3), .I1(w1), .I2(G1), .Z(C2));   //: @(398,201) /sn:0 /delay:" 1" /w:[ 1 0 3 1 ]
  //: output g5 (C1) @(569,105) /sn:0 /w:[ 0 ]
  and g44 (.I0(G1), .I1(P2), .I2(P3), .Z(w10));   //: @(252,429) /sn:0 /delay:" 1" /w:[ 9 21 0 0 ]
  //: joint g47 (P3) @(203, 408) /w:[ 2 -1 4 1 ]
  //: joint g21 (P1) @(148, 219) /w:[ 12 -1 14 11 ]
  //: joint g24 (P1) @(191, 274) /w:[ 8 -1 10 7 ]
  //: joint g36 (P0) @(210, 269) /w:[ 10 -1 9 12 ]
  //: joint g23 (G0) @(204, 214) /w:[ 6 -1 5 8 ]
  //: joint g41 (P1) @(213, 363) /w:[ 1 -1 2 20 ]
  //: joint g40 (G0) @(222, 293) /w:[ 10 -1 9 12 ]
  //: input g0 (C0) @(76,72) /sn:0 /w:[ 0 ]
  and g22 (.I0(G0), .I1(P1), .I2(P2), .Z(w4));   //: @(250,298) /sn:0 /delay:" 1" /w:[ 11 5 13 1 ]
  and g26 (.I0(G1), .I1(P2), .Z(w9));   //: @(250,324) /sn:0 /delay:" 1" /w:[ 7 9 1 ]
  //: joint g35 (C0) @(232, 264) /w:[ 10 -1 9 12 ]
  //: joint g45 (G1) @(169, 321) /w:[ 6 -1 5 8 ]
  //: joint g46 (P2) @(220, 403) /w:[ 1 -1 2 20 ]
  and g18 (.I0(C0), .I1(P0), .I2(P1), .I3(P2), .Z(w5));   //: @(250,271) /sn:0 /delay:" 1" /w:[ 11 11 9 17 0 ]
  //: joint g12 (P1) @(128, 190) /w:[ 16 -1 18 15 ]
  //: output g30 (C3) @(576,300) /sn:0 /w:[ 1 ]
  //: output g33 (C4) @(586,402) /sn:0 /w:[ 1 ]
  //: joint g49 (G2) @(155, 339) /w:[ 2 -1 1 4 ]

endmodule