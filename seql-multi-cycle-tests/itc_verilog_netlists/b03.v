
module b03 ( request1, request2, request3, request4, coda0_reg_2, coda0_reg_1,
coda0_reg_0, coda1_reg_2, coda1_reg_1, coda1_reg_0, coda2_reg_2,
coda2_reg_1, coda2_reg_0, coda3_reg_2, coda3_reg_1, coda3_reg_0,
grant_reg_3, grant_reg_2, grant_reg_1, grant_reg_0, ru3_reg, fu1_reg,
fu3_reg, ru1_reg, ru4_reg, fu2_reg, fu4_reg, ru2_reg, stato_reg_1,
u203, u217, u216, u215, u214, u213, u212, u211, u210, u209, u208, u207,
u206, u229, u230, u231, u232, u233, u234, u235, u236, u237, u205, u238,
u204, u239, u240, u241, u242 );
input request1, request2, request3, request4, coda0_reg_2, coda0_reg_1,
coda0_reg_0, coda1_reg_2, coda1_reg_1, coda1_reg_0, coda2_reg_2,
coda2_reg_1, coda2_reg_0, coda3_reg_2, coda3_reg_1, coda3_reg_0,
grant_reg_3, grant_reg_2, grant_reg_1, grant_reg_0, ru3_reg, fu1_reg,
fu3_reg, ru1_reg, ru4_reg, fu2_reg, fu4_reg, ru2_reg, stato_reg_1;
output u203, u217, u216, u215, u214, u213, u212, u211, u210, u209, u208,
u207, u206, u229, u230, u231, u232, u233, u234, u235, u236, u237,
u205, u238, u204, u239, u240, u241, u242;
wire   n167, n168, n169, u237, u205, u238, u204, u239, u240, u241, u242, n80,
n81, n83, n85, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
n165, n166;
assign u237 = request3;
assign u205 = fu1_reg;
assign u238 = fu3_reg;
assign u204 = request1;
assign u239 = request4;
assign u240 = fu2_reg;
assign u241 = fu4_reg;
assign u242 = request2;
assign u203 = 1'b1;
assign u236 = 1'b0;
assign u235 = 1'b0;
assign u234 = 1'b0;
assign u233 = 1'b0;

   not U97 ( n80,n91 );
   not U98 ( n81,n167 );
   not U99 ( u208,n81 );
   not U100 ( n83,n168 );
   not U101 ( u207,n83 );
   not U102 ( n85,n169 );
   not U103 ( u206,n85 );
   buf U104 ( n87,n91 );
   not U105 ( u232,n88 );
   nor U106 ( n88,n89,n90 );
   nor U107 ( n90,n91,n92 );
   not U108 ( n92,n93 );
   nor U109 ( n93,n94,n95 );
   not U110 ( n95,n96 );
   nor U111 ( n96,n97,n98 );
   nor U112 ( n89,n99,n100 );
   not U113 ( n100,grant_reg_0 );
   not U114 ( u231,n101 );
   nor U115 ( n101,n102,n103 );
   nor U116 ( n103,n91,n104 );
   not U117 ( n104,n105 );
   nor U118 ( n105,n97,n106 );
   not U119 ( n106,n107 );
   nor U120 ( n107,coda0_reg_2,coda0_reg_1 );
   nor U121 ( n102,n99,n108 );
   not U122 ( n108,grant_reg_1 );
   not U123 ( u230,n109 );
   nor U124 ( n109,n110,n111 );
   nor U125 ( n111,n91,n112 );
   not U126 ( n112,n113 );
   nor U127 ( n113,n98,n114 );
   not U128 ( n114,n115 );
   nor U129 ( n115,coda0_reg_2,coda0_reg_0 );
   nor U130 ( n110,n99,n116 );
   not U131 ( n116,grant_reg_2 );
   not U132 ( u229,n117 );
   nor U133 ( n117,n118,n119 );
   nor U134 ( n119,n91,n120 );
   not U135 ( n120,n121 );
   nor U136 ( n121,n94,n122 );
   not U137 ( n122,n123 );
   nor U138 ( n123,coda0_reg_1,coda0_reg_0 );
   nor U139 ( n118,n99,n124 );
   not U140 ( n124,grant_reg_3 );
   not U141 ( u217,n125 );
   nor U142 ( n125,n126,n127 );
   nor U143 ( n127,n91,n128 );
   nor U144 ( n126,n99,n94 );
   not U145 ( n94,coda0_reg_2 );
   not U146 ( u216,n129 );
   nor U147 ( n129,n130,n131 );
   nor U148 ( n131,n91,n132 );
   nor U149 ( n130,n80,n98 );
   not U150 ( n98,coda0_reg_1 );
   not U151 ( u215,n133 );
   nor U152 ( n133,n134,n135 );
   nor U153 ( n135,n87,n136 );
   nor U154 ( n134,n99,n97 );
   not U155 ( n97,coda0_reg_0 );
   not U156 ( u214,n137 );
   nor U157 ( n137,n138,n139 );
   nor U158 ( n139,n91,n140 );
   nor U159 ( n138,n99,n128 );
   not U160 ( n128,coda1_reg_2 );
   not U161 ( u213,n141 );
   nor U162 ( n141,n142,n143 );
   nor U163 ( n143,n91,n144 );
   nor U164 ( n142,n99,n132 );
   not U165 ( n132,coda1_reg_1 );
   not U166 ( u212,n145 );
   nor U167 ( n145,n146,n147 );
   nor U168 ( n147,n91,n148 );
   nor U169 ( n146,n80,n136 );
   not U170 ( n136,coda1_reg_0 );
   not U171 ( u211,n149 );
   nor U172 ( n149,n150,n151 );
   nor U173 ( n151,n152,n87 );
   nor U174 ( n150,n80,n140 );
   not U175 ( n140,coda2_reg_2 );
   not U176 ( u210,n153 );
   nor U177 ( n153,n154,n155 );
   nor U178 ( n155,n156,n87 );
   nor U179 ( n154,n80,n144 );
   not U180 ( n144,coda2_reg_1 );
   not U181 ( u209,n157 );
   nor U182 ( n157,n158,n159 );
   nor U183 ( n159,n160,n87 );
   not U184 ( n91,n99 );
   nor U185 ( n158,n80,n148 );
   not U186 ( n148,coda2_reg_0 );
   nor U187 ( n167,n80,n152 );
   not U188 ( n152,coda3_reg_2 );
   nor U189 ( n168,n80,n156 );
   not U190 ( n156,coda3_reg_1 );
   nor U191 ( n169,n99,n160 );
   not U192 ( n160,coda3_reg_0 );
   nor U193 ( n99,n161,n162 );
   not U194 ( n162,stato_reg_1 );
   nor U195 ( n161,n163,n164 );
   not U196 ( n164,n165 );
   nor U197 ( n165,u238,u205 );
   not U198 ( n163,n166 );
   nor U199 ( n166,u241,u240 );
endmodule
