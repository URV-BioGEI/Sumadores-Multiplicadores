//: version "1.8.7"

module ha(S, CO, B, A);
//: interface  /sz:(55, 65) /bd:[ Li0>B(35/65) Li1>A(20/65) Ro0<CO(41/65) Ro1<S(21/65) ]
input B;    //: /sn:0 {0}(170,290)(233,290)(233,291)(292,291){1}
//: {2}(296,291)(373,291)(373,258)(377,258){3}
//: {4}(294,289)(294,259)(302,259){5}
input A;    //: /sn:0 {0}(171,218)(275,218){1}
//: {2}(279,218)(365,218)(365,253)(377,253){3}
//: {4}(277,220)(277,254)(302,254){5}
output CO;    //: /sn:0 /dp:1 {0}(323,257)(352,257){1}
output S;    //: /sn:0 {0}(428,255)(407,255)(407,256)(398,256){1}
//: enddecls

  xor g4 (.I0(A), .I1(B), .Z(S));   //: @(388,256) /sn:0 /delay:" 2" /w:[ 3 3 1 ]
  //: output g3 (S) @(425,255) /sn:0 /w:[ 0 ]
  //: output g2 (CO) @(349,257) /sn:0 /w:[ 1 ]
  //: input g1 (B) @(168,290) /sn:0 /w:[ 0 ]
  //: joint g6 (A) @(277, 218) /w:[ 2 -1 1 4 ]
  //: joint g7 (B) @(294, 291) /w:[ 2 4 1 -1 ]
  and g5 (.I0(A), .I1(B), .Z(CO));   //: @(313,257) /sn:0 /tech:unit /w:[ 5 5 0 ]
  //: input g0 (A) @(169,218) /sn:0 /w:[ 0 ]

endmodule

module RCA_4b(Z0, Y0, X3, X2, X1, Z2, Y2, Z1, Y3, Z4, Z6, Z3, Y1, Z7, X0, Z5);
//: interface  /sz:(128, 136) /bd:[ Ti0>X0(116/128) Ti1>X1(107/128) Ti2>X2(98/128) Ti3>X3(87/128) Ti4>Y0(47/128) Ti5>Y1(34/128) Ti6>Y2(25/128) Ti7>Y3(14/128) Bo0<Z0(116/128) Bo1<Z1(104/128) Bo2<Z2(92/128) Bo3<Z3(81/128) Bo4<Z4(70/128) Bo5<Z5(60/128) Bo6<Z6(51/128) Bo7<Z7(41/128) ]
input Y3;    //: /sn:0 {0}(557,574)(268,574){1}
//: {2}(264,574)(202,574){3}
//: {4}(198,574)(123,574){5}
//: {6}(119,574)(52,574)(52,588){7}
//: {8}(121,576)(121,587){9}
//: {10}(200,576)(200,585){11}
//: {12}(266,576)(266,586){13}
input X1;    //: /sn:0 /dp:1 {0}(335,159)(335,123){1}
//: {2}(335,119)(335,79){3}
//: {4}(333,121)(295,121){5}
//: {6}(291,121)(240,121)(240,426){7}
//: {8}(238,428)(195,428)(195,585){9}
//: {10}(240,430)(240,433){11}
//: {12}(293,123)(293,226){13}
input Y2;    //: /sn:0 {0}(547,414)(325,414){1}
//: {2}(321,414)(247,414){3}
//: {4}(243,414)(179,414){5}
//: {6}(175,414)(100,414)(100,440){7}
//: {8}(177,416)(177,438){9}
//: {10}(245,416)(245,433){11}
//: {12}(323,416)(323,434){13}
output Z0;    //: /sn:0 /dp:1 {0}(426,177)(426,849){1}
output Z3;    //: /sn:0 /dp:1 {0}(263,704)(263,852){1}
input X2;    //: /sn:0 /dp:1 {0}(252,159)(252,129){1}
//: {2}(252,125)(252,80){3}
//: {4}(250,127)(206,127){5}
//: {6}(202,127)(172,127)(172,431){7}
//: {8}(170,433)(116,433)(116,587){9}
//: {10}(172,435)(172,438){11}
//: {12}(204,129)(204,224){13}
output Z6;    //: /sn:0 /dp:1 {0}(-4,708)(-4,844){1}
output Z4;    //: /sn:0 /dp:1 {0}(169,711)(169,848){1}
output Z5;    //: /sn:0 /dp:1 {0}(78,706)(78,846){1}
output Z7;    //: /sn:0 /dp:1 {0}(-30,685)(-60,685)(-60,845){1}
input X0;    //: /sn:0 {0}(424,78)(424,123){1}
//: {2}(422,125)(379,125){3}
//: {4}(375,125)(318,125)(318,426){5}
//: {6}(316,428)(261,428)(261,586){7}
//: {8}(318,430)(318,434){9}
//: {10}(377,127)(377,224){11}
//: {12}(424,127)(424,156){13}
output Z2;    //: /sn:0 /dp:1 {0}(308,532)(308,848){1}
output Z1;    //: /sn:0 /dp:1 {0}(378,351)(378,847){1}
input Y0;    //: /sn:0 {0}(544,146)(431,146){1}
//: {2}(427,146)(342,146){3}
//: {4}(338,146)(259,146){5}
//: {6}(255,146)(176,146)(176,160){7}
//: {8}(257,148)(257,159){9}
//: {10}(340,148)(340,159){11}
//: {12}(429,148)(429,156){13}
input Y1;    //: /sn:0 /dp:1 {0}(382,224)(382,217){1}
//: {2}(384,215)(546,215){3}
//: {4}(380,215)(300,215){5}
//: {6}(296,215)(211,215){7}
//: {8}(207,215)(133,215)(133,224){9}
//: {10}(209,217)(209,224){11}
//: {12}(298,217)(298,226){13}
input X3;    //: /sn:0 /dp:1 {0}(171,160)(171,121){1}
//: {2}(171,117)(171,80){3}
//: {4}(169,119)(131,119){5}
//: {6}(127,119)(95,119)(95,426){7}
//: {8}(93,428)(47,428)(47,588){9}
//: {10}(95,430)(95,440){11}
//: {12}(129,121)(129,170)(128,170)(128,224){13}
wire w16;    //: /sn:0 {0}(321,532)(321,542)(287,542)(287,514)(257,514){1}
wire w6;    //: /sn:0 {0}(337,180)(337,284)(364,284)(364,294){1}
wire w13;    //: /sn:0 {0}(128,354)(128,403)(69,403)(69,494){1}
wire w7;    //: /sn:0 {0}(379,245)(379,294){1}
wire w25;    //: /sn:0 {0}(97,461)(97,484)(92,484)(92,494){1}
wire w4;    //: /sn:0 {0}(256,328)(226,328){1}
wire w22;    //: /sn:0 {0}(174,459)(174,486)(166,486)(166,496){1}
wire w3;    //: /sn:0 {0}(356,351)(356,360)(326,360)(326,324)(302,324){1}
wire w36;    //: /sn:0 {0}(49,609)(49,652)(7,652)(7,662){1}
wire w20;    //: /sn:0 {0}(104,517)(132,517){1}
wire w30;    //: /sn:0 {0}(197,606)(197,645)(184,645)(184,655){1}
wire w29;    //: /sn:0 {0}(243,704)(243,715)(216,715)(216,680)(203,680){1}
wire w19;    //: /sn:0 {0}(242,454)(242,483)(243,483)(243,493){1}
wire w12;    //: /sn:0 {0}(173,181)(173,299)(178,299)(178,309){1}
wire w18;    //: /sn:0 {0}(130,245)(130,279)(113,279)(113,311){1}
wire w10;    //: /sn:0 {0}(198,351)(198,483)(215,483)(215,493){1}
wire w23;    //: /sn:0 {0}(263,607)(263,637)(264,637)(264,647){1}
wire w24;    //: /sn:0 {0}(156,538)(156,645)(145,645)(145,655){1}
wire w21;    //: /sn:0 {0}(233,537)(233,637)(249,637)(249,647){1}
wire w31;    //: /sn:0 {0}(22,683)(38,683)(38,684)(48,684){1}
wire w8;    //: /sn:0 {0}(169,330)(153,330)(153,301)(123,301)(123,311){1}
wire w27;    //: /sn:0 {0}(83,536)(83,653)(58,653)(58,663){1}
wire w17;    //: /sn:0 {0}(180,515)(207,515){1}
wire w33;    //: /sn:0 {0}(118,608)(118,653)(91,653)(91,663){1}
wire w28;    //: /sn:0 {0}(107,682)(124,682)(124,683)(134,683){1}
wire w14;    //: /sn:0 {0}(320,455)(320,480)(317,480)(317,490){1}
wire w11;    //: /sn:0 {0}(295,247)(295,294)(289,294)(289,304){1}
wire w2;    //: /sn:0 {0}(113,354)(113,388)(140,388)(140,496){1}
wire w15;    //: /sn:0 {0}(206,245)(206,299)(210,299)(210,309){1}
wire w5;    //: /sn:0 {0}(278,349)(278,480)(308,480)(308,490){1}
wire w26;    //: /sn:0 {0}(62,518)(-21,518)(-21,662){1}
wire w9;    //: /sn:0 {0}(254,180)(254,294)(264,294)(264,304){1}
//: enddecls

  //: joint g44 (X1) @(293, 121) /w:[ 5 -1 6 12 ]
  //: output g8 (Z0) @(426,846) /sn:0 /R:3 /w:[ 1 ]
  //: input g4 (Y0) @(546,146) /sn:0 /R:2 /w:[ 0 ]
  //: joint g47 (Y2) @(245, 414) /w:[ 3 -1 4 10 ]
  and g16 (.I0(Y0), .I1(X0), .Z(Z0));   //: @(426,167) /sn:0 /R:3 /tech:unit /w:[ 13 13 0 ]
  //: input g3 (X3) @(171,78) /sn:0 /R:3 /w:[ 3 ]
  ha g17 (.B(w6), .A(w7), .CO(w3), .S(Z1));   //: @(335, 295) /sz:(65, 55) /sn:0 /p:[ Ti0>1 Ti1>1 Bo0<0 Bo1<0 ]
  and g26 (.I0(Y1), .I1(X2), .Z(w15));   //: @(206,235) /sn:0 /R:3 /tech:unit /w:[ 11 13 0 ]
  //: input g2 (X2) @(252,78) /sn:0 /R:3 /w:[ 3 ]
  //: joint g23 (Y0) @(257, 146) /w:[ 5 -1 6 8 ]
  //: joint g30 (Y1) @(209, 215) /w:[ 7 -1 8 10 ]
  and g39 (.I0(Y2), .I1(X1), .Z(w19));   //: @(242,444) /sn:0 /R:3 /tech:unit /w:[ 11 11 0 ]
  //: input g1 (X1) @(335,77) /sn:0 /R:3 /w:[ 3 ]
  and g24 (.I0(Y1), .I1(X0), .Z(w7));   //: @(379,235) /sn:0 /R:3 /tech:unit /w:[ 0 11 0 ]
  //: joint g29 (Y1) @(298, 215) /w:[ 5 -1 6 12 ]
  //: joint g60 (X0) @(318, 428) /w:[ -1 5 6 8 ]
  FA g51 (.B(w22), .A(w2), .Cin(w17), .Cout(w20), .S(w24));   //: @(133, 497) /sz:(46, 40) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>0 Lo0<1 Bo0<0 ]
  and g18 (.I0(Y0), .I1(X1), .Z(w6));   //: @(337,170) /sn:0 /R:3 /tech:unit /w:[ 11 0 0 ]
  //: output g10 (Z2) @(308,845) /sn:0 /R:3 /w:[ 1 ]
  and g25 (.I0(Y1), .I1(X1), .Z(w11));   //: @(295,237) /sn:0 /R:3 /tech:unit /w:[ 13 13 0 ]
  FA g65 (.A(w24), .B(w30), .Cin(w29), .Cout(w28), .S(Z4));   //: @(135, 656) /sz:(67, 54) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>1 Lo0<1 Bo0<0 ]
  ha g64 (.B(w21), .A(w23), .CO(w29), .S(Z3));   //: @(220, 648) /sz:(65, 55) /sn:0 /p:[ Ti0>1 Ti1>1 Bo0<0 Bo1<0 ]
  ha g49 (.A(w5), .B(w14), .S(Z2), .CO(w16));   //: @(296, 491) /sz:(40, 40) /sn:0 /p:[ Ti0>1 Ti1>1 Bo0<0 Bo1<0 ]
  FA g50 (.B(w19), .A(w10), .Cin(w16), .Cout(w17), .S(w21));   //: @(208, 494) /sz:(48, 42) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>1 Lo0<1 Bo0<0 ]
  //: input g6 (Y2) @(549,414) /sn:0 /R:2 /w:[ 0 ]
  //: output g9 (Z1) @(378,844) /sn:0 /R:3 /w:[ 1 ]
  //: input g7 (Y3) @(559,574) /sn:0 /R:2 /w:[ 0 ]
  FA g35 (.A(w9), .B(w11), .Cin(w3), .Cout(w4), .S(w5));   //: @(257, 305) /sz:(44, 43) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>1 Lo0<0 Bo0<0 ]
  and g56 (.I0(Y3), .I1(X3), .Z(w36));   //: @(49,599) /sn:0 /R:3 /tech:unit /w:[ 7 9 0 ]
  //: joint g58 (X2) @(172, 433) /w:[ -1 7 8 10 ]
  //: joint g22 (Y0) @(340, 146) /w:[ 3 -1 4 10 ]
  //: joint g31 (X3) @(171, 119) /w:[ -1 2 4 1 ]
  //: joint g59 (X1) @(240, 428) /w:[ -1 7 8 10 ]
  FA g67 (.A(w26), .B(w36), .Cin(w31), .Cout(Z7), .S(Z6));   //: @(-29, 663) /sz:(50, 44) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>0 Lo0<0 Bo0<0 ]
  //: joint g45 (X0) @(377, 125) /w:[ 3 -1 4 10 ]
  and g41 (.I0(Y2), .I1(X3), .Z(w25));   //: @(97,451) /sn:0 /R:3 /tech:unit /w:[ 7 11 0 ]
  //: joint g33 (X1) @(335, 121) /w:[ -1 2 4 1 ]
  FA g36 (.A(w12), .B(w15), .Cin(w4), .Cout(w8), .S(w10));   //: @(170, 310) /sz:(55, 40) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>1 Lo0<0 Bo0<0 ]
  and g54 (.I0(Y3), .I1(X1), .Z(w30));   //: @(197,596) /sn:0 /R:3 /tech:unit /w:[ 11 9 0 ]
  FA g52 (.B(w25), .A(w13), .Cin(w20), .Cout(w26), .S(w27));   //: @(63, 495) /sz:(40, 40) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>0 Lo0<0 Bo0<0 ]
  //: joint g42 (X3) @(129, 119) /w:[ 5 -1 6 12 ]
  and g40 (.I0(Y2), .I1(X2), .Z(w22));   //: @(174,449) /sn:0 /R:3 /tech:unit /w:[ 9 11 0 ]
  FA g66 (.A(w27), .B(w33), .Cin(w28), .Cout(w31), .S(Z5));   //: @(49, 664) /sz:(57, 41) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>0 Lo0<1 Bo0<0 ]
  //: output g12 (Z4) @(169,845) /sn:0 /R:3 /w:[ 1 ]
  //: joint g46 (Y2) @(323, 414) /w:[ 1 -1 2 12 ]
  //: joint g28 (Y1) @(382, 215) /w:[ 2 -1 4 1 ]
  //: joint g34 (X0) @(424, 125) /w:[ -1 1 2 12 ]
  //: joint g57 (X3) @(95, 428) /w:[ -1 7 8 10 ]
  //: output g14 (Z6) @(-4,841) /sn:0 /R:3 /w:[ 1 ]
  //: output g11 (Z3) @(263,849) /sn:0 /R:3 /w:[ 1 ]
  //: input g5 (Y1) @(548,215) /sn:0 /R:2 /w:[ 3 ]
  and g19 (.I0(Y0), .I1(X2), .Z(w9));   //: @(254,170) /sn:0 /R:3 /tech:unit /w:[ 9 0 0 ]
  //: joint g21 (Y0) @(429, 146) /w:[ 1 -1 2 12 ]
  //: joint g61 (Y3) @(266, 574) /w:[ 1 -1 2 12 ]
  and g20 (.I0(Y0), .I1(X3), .Z(w12));   //: @(173,171) /sn:0 /R:3 /tech:unit /w:[ 7 0 0 ]
  //: joint g32 (X2) @(252, 127) /w:[ -1 2 4 1 ]
  //: joint g63 (Y3) @(121, 574) /w:[ 5 -1 6 8 ]
  //: joint g43 (X2) @(204, 127) /w:[ 5 -1 6 12 ]
  and g38 (.I0(Y2), .I1(X0), .Z(w14));   //: @(320,445) /sn:0 /R:3 /tech:unit /w:[ 13 9 0 ]
  //: output g15 (Z7) @(-60,842) /sn:0 /R:3 /w:[ 1 ]
  //: input g0 (X0) @(424,76) /sn:0 /R:3 /w:[ 0 ]
  //: joint g48 (Y2) @(177, 414) /w:[ 5 -1 6 8 ]
  and g27 (.I0(Y1), .I1(X3), .Z(w18));   //: @(130,235) /sn:0 /R:3 /tech:unit /w:[ 9 13 0 ]
  ha g37 (.B(w8), .A(w18), .CO(w13), .S(w2));   //: @(99, 312) /sz:(46, 41) /sn:0 /p:[ Ti0>1 Ti1>1 Bo0<0 Bo1<0 ]
  //: joint g62 (Y3) @(200, 574) /w:[ 3 -1 4 10 ]
  and g55 (.I0(Y3), .I1(X2), .Z(w33));   //: @(118,598) /sn:0 /R:3 /tech:unit /w:[ 9 9 0 ]
  //: output g13 (Z5) @(78,843) /sn:0 /R:3 /w:[ 1 ]
  and g53 (.I0(Y3), .I1(X0), .Z(w23));   //: @(263,597) /sn:0 /R:3 /tech:unit /w:[ 13 7 0 ]

endmodule

module FA(Cout, S, Cin, B, A);
//: interface  /sz:(225, 114) /bd:[ Ti0>A(36/225) Ti1>B(166/225) Ri0>Cin(52/114) Lo0<Cout(58/114) Bo0<S(117/225) ]
input B;    //: /sn:0 {0}(143,173)(159,173){1}
//: {2}(163,173)(176,173)(176,104)(186,104){3}
//: {4}(161,175)(161,176)(242,176)(242,152)(252,152){5}
input A;    //: /sn:0 {0}(130,98)(150,98){1}
//: {2}(154,98)(176,98)(176,99)(186,99){3}
//: {4}(152,100)(152,147)(252,147){5}
input Cin;    //: /sn:0 {0}(143,199)(213,199)(213,125){1}
//: {2}(215,123)(225,123)(225,124)(253,124){3}
//: {4}(213,121)(213,107)(223,107){5}
output Cout;    //: /sn:0 /dp:1 {0}(324,137)(347,137)(347,136)(357,136){1}
output S;    //: /sn:0 /dp:1 {0}(244,105)(348,105){1}
wire w4;    //: /sn:0 {0}(274,127)(293,127)(293,134)(303,134){1}
wire w2;    //: /sn:0 {0}(207,102)(215,102){1}
//: {2}(219,102)(223,102){3}
//: {4}(217,104)(217,129)(253,129){5}
wire w5;    //: /sn:0 {0}(273,150)(293,150)(293,139)(303,139){1}
//: enddecls

  //: output g4 (Cout) @(354,136) /sn:0 /w:[ 1 ]
  //: joint g8 (Cin) @(213, 123) /w:[ 2 4 -1 1 ]
  //: output g3 (S) @(345,105) /sn:0 /w:[ 1 ]
  //: input g2 (Cin) @(141,199) /sn:0 /w:[ 0 ]
  //: input g1 (B) @(141,173) /sn:0 /w:[ 0 ]
  and g10 (.I0(A), .I1(B), .Z(w5));   //: @(263,150) /sn:0 /tech:unit /w:[ 5 5 0 ]
  xor g6 (.I0(w2), .I1(Cin), .Z(S));   //: @(234,105) /sn:0 /delay:" 2" /w:[ 3 5 0 ]
  and g7 (.I0(Cin), .I1(w2), .Z(w4));   //: @(264,127) /sn:0 /tech:unit /w:[ 3 5 0 ]
  //: joint g9 (w2) @(217, 102) /w:[ 2 -1 1 4 ]
  //: joint g12 (B) @(161, 173) /w:[ 2 -1 1 4 ]
  xor g5 (.I0(A), .I1(B), .Z(w2));   //: @(197,102) /sn:0 /delay:" 2" /w:[ 3 3 0 ]
  //: joint g11 (A) @(152, 98) /w:[ 2 -1 1 4 ]
  //: input g0 (A) @(128,98) /sn:0 /w:[ 0 ]
  or g13 (.I0(w4), .I1(w5), .Z(Cout));   //: @(314,137) /sn:0 /tech:unit /w:[ 1 1 0 ]

endmodule

module main;    //: root_module
wire [3:0] w16;    //: /sn:0 {0}(277,52)(277,22){1}
//: {2}(277,21)(277,7){3}
//: {4}(277,6)(277,-3)(278,-3)(278,-11){5}
//: {6}(278,-12)(278,-20)(277,-20)(277,-28){7}
//: {8}(277,-29)(277,-73){9}
wire w13;    //: /sn:0 {0}(117,418)(117,295)(247,295)(247,266){1}
wire w6;    //: /sn:0 {0}(272,22)(242,22)(242,128){1}
wire w7;    //: /sn:0 {0}(141,-19)(202,-19)(202,128){1}
wire w25;    //: /sn:0 {0}(167,418)(167,362)(196,362)(196,266){1}
wire w4;    //: /sn:0 {0}(273,-11)(262,-11)(262,128){1}
wire [3:0] w0;    //: /sn:0 {0}(137,-76)(137,-20){1}
//: {2}(137,-19)(137,-2){3}
//: {4}(137,-1)(137,14){5}
//: {6}(137,15)(137,31){7}
//: {8}(137,32)(137,57){9}
wire w3;    //: /sn:0 {0}(97,418)(97,277)(271,277)(271,266){1}
wire w20;    //: /sn:0 {0}(147,418)(147,325)(215,325)(215,266){1}
wire [7:0] w12;    //: /sn:0 /dp:1 {0}(132,424)(132,445){1}
wire w10;    //: /sn:0 {0}(141,32)(169,32)(169,128){1}
wire w24;    //: /sn:0 {0}(157,418)(157,341)(206,341)(206,266){1}
wire w8;    //: /sn:0 {0}(141,-1)(189,-1)(189,128){1}
wire w14;    //: /sn:0 {0}(127,418)(127,305)(236,305)(236,266){1}
wire w11;    //: /sn:0 {0}(272,-28)(271,-28)(271,128){1}
wire w2;    //: /sn:0 {0}(107,418)(107,284)(259,284)(259,266){1}
wire w15;    //: /sn:0 {0}(137,418)(137,318)(225,318)(225,266){1}
wire w5;    //: /sn:0 {0}(272,7)(253,7)(253,128){1}
wire w9;    //: /sn:0 {0}(141,15)(180,15)(180,128){1}
//: enddecls

  tran g8(.Z(w8), .I(w0[1]));   //: @(135,-1) /sn:0 /R:2 /w:[ 0 4 3 ] /ss:1
  tran g4(.Z(w6), .I(w16[3]));   //: @(275,22) /sn:0 /R:2 /w:[ 0 1 2 ] /ss:0
  tran g3(.Z(w5), .I(w16[2]));   //: @(275,7) /sn:0 /R:2 /w:[ 0 3 4 ] /ss:0
  led g17 (.I(w12));   //: @(132,452) /sn:0 /R:2 /w:[ 1 ] /type:2
  tran g2(.Z(w4), .I(w16[1]));   //: @(276,-11) /sn:0 /R:2 /w:[ 0 5 6 ] /ss:0
  tran g1(.Z(w11), .I(w16[0]));   //: @(275,-28) /sn:0 /R:2 /w:[ 0 7 8 ] /ss:0
  concat g18 (.I0(w3), .I1(w2), .I2(w13), .I3(w14), .I4(w15), .I5(w20), .I6(w24), .I7(w25), .Z(w12));   //: @(132,423) /sn:0 /R:3 /w:[ 0 0 0 0 0 0 0 0 0 ] /dr:0
  tran g10(.Z(w7), .I(w0[0]));   //: @(135,-19) /sn:0 /R:2 /w:[ 0 2 1 ] /ss:1
  tran g6(.Z(w10), .I(w0[3]));   //: @(135,32) /sn:0 /R:2 /w:[ 0 8 7 ] /ss:1
  tran g7(.Z(w9), .I(w0[2]));   //: @(135,15) /sn:0 /R:2 /w:[ 0 6 5 ] /ss:1
  //: dip g9 (w16) @(277,-83) /sn:0 /w:[ 9 ] /st:4
  //: dip g5 (w0) @(137,-86) /sn:0 /w:[ 0 ] /st:8
  RCA_4b g0 (.Y3(w10), .Y2(w9), .Y1(w8), .Y0(w7), .X3(w6), .X2(w5), .X1(w4), .X0(w11), .Z7(w25), .Z6(w24), .Z5(w20), .Z4(w15), .Z3(w14), .Z2(w13), .Z1(w2), .Z0(w3));   //: @(155, 129) /sz:(128, 136) /sn:0 /p:[ Ti0>1 Ti1>1 Ti2>1 Ti3>1 Ti4>1 Ti5>1 Ti6>1 Ti7>1 Bo0<1 Bo1<1 Bo2<1 Bo3<1 Bo4<1 Bo5<1 Bo6<1 Bo7<1 ]

endmodule
