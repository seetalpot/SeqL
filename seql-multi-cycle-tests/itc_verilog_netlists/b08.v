
module b08 ( start, i_7_, i_6_, i_5_, i_4_, i_3_, i_2_, i_1_, i_0_, o_reg_0_,
stato_reg_1_, stato_reg_0_, mar_reg_2_, mar_reg_1_, mar_reg_0_,
in_r_reg_7_, in_r_reg_6_, in_r_reg_5_, in_r_reg_4_, in_r_reg_3_,
in_r_reg_2_, in_r_reg_1_, in_r_reg_0_, out_r_reg_3_, out_r_reg_2_,
out_r_reg_1_, out_r_reg_0_, o_reg_3_, o_reg_2_, o_reg_1_, u219, u189,
u188, u187, u206, u207, u208, u209, u210, u211, u212, u213, u214, u215,
u186, u185, u184, u183, u216, u217, u218 );
input start, i_7_, i_6_, i_5_, i_4_, i_3_, i_2_, i_1_, i_0_, o_reg_0_,
stato_reg_1_, stato_reg_0_, mar_reg_2_, mar_reg_1_, mar_reg_0_,
in_r_reg_7_, in_r_reg_6_, in_r_reg_5_, in_r_reg_4_, in_r_reg_3_,
in_r_reg_2_, in_r_reg_1_, in_r_reg_0_, out_r_reg_3_, out_r_reg_2_,
out_r_reg_1_, out_r_reg_0_, o_reg_3_, o_reg_2_, o_reg_1_;
output u219, u189, u188, u187, u206, u207, u208, u209, u210, u211, u212,
u213, u214, u215, u186, u185, u184, u183, u216, u217, u218;
wire   n159, n161, n163, n165, n167, n169, n171, n173, n175, n177, n179,
n181, n183, n185, n187, n189, n191, n193, n195, n197, n199, n201,
n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
n345, n346, n347, n348, n349, n350, n351, n352, n353, n354;

   and U180 ( n159,n201,n202 );
   not U181 ( u219,n159 );
   and U182 ( n161,n243,n235 );
   not U183 ( u189,n161 );
   and U184 ( n163,n247,n248 );
   not U185 ( u188,n163 );
   and U186 ( n165,n250,n251 );
   not U187 ( u187,n165 );
   and U188 ( n167,n236,n237 );
   not U189 ( u206,n167 );
   and U190 ( n169,n232,n233 );
   not U191 ( u207,n169 );
   and U192 ( n171,n230,n231 );
   not U193 ( u208,n171 );
   and U194 ( n173,n228,n229 );
   not U195 ( u209,n173 );
   and U196 ( n175,n226,n227 );
   not U197 ( u210,n175 );
   and U198 ( n177,n224,n225 );
   not U199 ( u211,n177 );
   and U200 ( n179,n222,n223 );
   not U201 ( u212,n179 );
   and U202 ( n181,n220,n221 );
   not U203 ( u213,n181 );
   and U204 ( n183,n218,n219 );
   not U205 ( u214,n183 );
   and U206 ( n185,n214,n215 );
   not U207 ( u215,n185 );
   and U208 ( n187,n255,n256 );
   not U209 ( u186,n187 );
   and U210 ( n189,n262,n263 );
   not U211 ( u185,n189 );
   and U212 ( n191,n266,n267 );
   not U213 ( u184,n191 );
   and U214 ( n193,n276,n277 );
   not U215 ( u183,n193 );
   and U216 ( n195,n209,n210 );
   not U217 ( u216,n195 );
   and U218 ( n197,n207,n208 );
   not U219 ( u217,n197 );
   and U220 ( n199,n205,n206 );
   not U221 ( u218,n199 );
   nand U222 ( n202,o_reg_0_,n203 );
   nand U223 ( n201,n204,out_r_reg_0_ );
   nand U224 ( n206,o_reg_1_,n203 );
   nand U225 ( n205,n204,out_r_reg_1_ );
   nand U226 ( n208,o_reg_2_,n203 );
   nand U227 ( n207,n204,out_r_reg_2_ );
   nand U228 ( n210,o_reg_3_,n203 );
   nand U229 ( n209,n204,out_r_reg_3_ );
   not U230 ( n204,n203 );
   nand U231 ( n203,n211,n212 );
   nor U232 ( n211,start,n213 );
   nand U233 ( n215,in_r_reg_0_,n216 );
   nand U234 ( n214,i_0_,n217 );
   nand U235 ( n219,in_r_reg_1_,n216 );
   nand U236 ( n218,i_1_,n217 );
   nand U237 ( n221,in_r_reg_2_,n216 );
   nand U238 ( n220,i_2_,n217 );
   nand U239 ( n223,in_r_reg_3_,n216 );
   nand U240 ( n222,i_3_,n217 );
   nand U241 ( n225,in_r_reg_4_,n216 );
   nand U242 ( n224,i_4_,n217 );
   nand U243 ( n227,in_r_reg_5_,n216 );
   nand U244 ( n226,i_5_,n217 );
   nand U245 ( n229,in_r_reg_6_,n216 );
   nand U246 ( n228,i_6_,n217 );
   nand U247 ( n231,in_r_reg_7_,n216 );
   nand U248 ( n230,i_7_,n217 );
   nand U249 ( n233,n212,n234 );
   nand U250 ( n232,n235,mar_reg_0_ );
   nand U251 ( n237,mar_reg_1_,n238 );
   nand U252 ( n238,n239,n240 );
   nand U253 ( n240,stato_reg_1_,n234 );
   nand U254 ( n236,n241,n242 );
   and U255 ( n241,mar_reg_0_,n212 );
   nor U256 ( n243,n244,n245 );
   and U257 ( n245,stato_reg_0_,start );
   nor U258 ( n244,stato_reg_0_,n246 );
   nand U259 ( n248,start,n235 );
   not U260 ( n235,n239 );
   nand U261 ( n247,stato_reg_1_,n249 );
   nand U262 ( n251,mar_reg_2_,n252 );
   nand U263 ( n252,n246,n239 );
   nand U264 ( n239,n216,n253 );
   nand U265 ( n253,stato_reg_0_,n213 );
   nand U266 ( n250,n254,n212 );
   nor U267 ( n212,n246,n249 );
   nand U268 ( n256,out_r_reg_3_,n257 );
   nor U269 ( n255,n258,n259 );
   nor U270 ( n259,n260,n261 );
   nand U271 ( n263,n264,n265 );
   nand U272 ( n262,out_r_reg_2_,n257 );
   nand U273 ( n267,out_r_reg_1_,n257 );
   nor U274 ( n266,n258,n268 );
   nor U275 ( n268,n269,n261 );
   nor U276 ( n269,n270,n271 );
   nand U277 ( n271,n272,n273 );
   nand U278 ( n270,n274,n275 );
   not U279 ( n258,n276 );
   nand U280 ( n277,out_r_reg_0_,n257 );
   nand U281 ( n257,n246,n278 );
   not U282 ( n246,stato_reg_1_ );
   nand U283 ( n276,n264,n279 );
   not U284 ( n264,n261 );
   nand U285 ( n261,stato_reg_1_,n278 );
   nand U286 ( n278,n216,n280 );
   nand U287 ( n280,n281,n282 );
   nor U288 ( n282,n283,n284 );
   nand U289 ( n284,n285,n286 );
   nand U290 ( n286,n287,n288 );
   nor U291 ( n287,n289,n290 );
   nor U292 ( n290,in_r_reg_1_,n291 );
   and U293 ( n291,n292,n274 );
   and U294 ( n289,in_r_reg_1_,n293 );
   nor U295 ( n285,n294,n295 );
   nor U296 ( n295,n296,n279 );
   nand U297 ( n279,n297,n292 );
   nor U298 ( n296,n298,n299 );
   nor U299 ( n299,n300,n301 );
   not U300 ( n300,in_r_reg_7_ );
   nor U301 ( n298,n302,n303 );
   nand U302 ( n303,n272,n275 );
   nand U303 ( n302,n213,n304 );
   not U304 ( n304,in_r_reg_0_ );
   nor U305 ( n294,n305,n306 );
   nand U306 ( n306,in_r_reg_0_,n274 );
   nand U307 ( n283,n307,n308 );
   nand U308 ( n308,n309,n310 );
   nor U309 ( n310,in_r_reg_7_,n311 );
   nor U310 ( n309,n312,n313 );
   nor U311 ( n307,stato_reg_0_,n314 );
   nor U312 ( n314,n315,n316 );
   nand U313 ( n316,n292,n213 );
   nor U314 ( n315,n317,n318 );
   nand U315 ( n318,n319,n320 );
   nand U316 ( n320,n321,n322 );
   not U317 ( n322,in_r_reg_5_ );
   nor U318 ( n321,n293,n301 );
   nand U319 ( n319,n323,in_r_reg_5_ );
   nor U320 ( n323,n324,n325 );
   nor U321 ( n317,n311,n326 );
   or U322 ( n326,n254,in_r_reg_3_ );
   nor U323 ( n281,n327,n328 );
   nand U324 ( n328,stato_reg_1_,n329 );
   nand U325 ( n329,n330,in_r_reg_6_ );
   not U326 ( n330,n331 );
   nand U327 ( n327,n332,n333 );
   nand U328 ( n333,n288,in_r_reg_2_ );
   not U329 ( n288,n305 );
   nand U330 ( n305,n260,n213 );
   nor U331 ( n332,n334,n335 );
   nor U332 ( n335,n336,n313 );
   or U333 ( n313,n265,n324 );
   not U334 ( n324,n274 );
   nand U335 ( n265,n337,n273 );
   and U336 ( n337,n213,n292 );
   nand U337 ( n292,n338,mar_reg_1_ );
   nor U338 ( n338,mar_reg_2_,mar_reg_0_ );
   nand U339 ( n213,n339,mar_reg_2_ );
   nor U340 ( n339,n234,n242 );
   nor U341 ( n336,n340,n341 );
   nor U342 ( n341,n254,n331 );
   nand U343 ( n331,n297,n342 );
   nand U344 ( n342,in_r_reg_6_,n325 );
   not U345 ( n325,n260 );
   nor U346 ( n260,n301,n312 );
   nor U347 ( n340,n293,n343 );
   nor U348 ( n343,n344,n345 );
   nor U349 ( n345,in_r_reg_2_,n312 );
   not U350 ( n312,n272 );
   nor U351 ( n344,n311,n346 );
   not U352 ( n293,n297 );
   nand U353 ( n297,n347,mar_reg_2_ );
   nor U354 ( n347,mar_reg_0_,n242 );
   not U355 ( n242,mar_reg_1_ );
   nor U356 ( n334,n346,n348 );
   nand U357 ( n348,in_r_reg_4_,n274 );
   nand U358 ( n274,n349,mar_reg_0_ );
   nand U359 ( n346,n272,n350 );
   nand U360 ( n350,in_r_reg_4_,n301 );
   nand U361 ( n301,n351,n273 );
   nand U362 ( n273,n352,mar_reg_2_ );
   nor U363 ( n352,mar_reg_1_,mar_reg_0_ );
   nor U364 ( n351,n254,n311 );
   and U365 ( n311,n353,mar_reg_2_ );
   nor U366 ( n353,mar_reg_1_,n234 );
   not U367 ( n254,n275 );
   nand U368 ( n275,n354,mar_reg_1_ );
   nor U369 ( n354,mar_reg_2_,n234 );
   nand U370 ( n272,n349,n234 );
   not U371 ( n234,mar_reg_0_ );
   nor U372 ( n349,mar_reg_2_,mar_reg_1_ );
   not U373 ( n216,n217 );
   nor U374 ( n217,n249,stato_reg_1_ );
   not U375 ( n249,stato_reg_0_ );
endmodule
