
module b10 ( r_button, g_button, key, start, test, rts, rtr, v_in_3_, v_in_2_,
v_in_1_, v_in_0_, voto0_reg, stato_reg_3_, stato_reg_2_, stato_reg_1_,
stato_reg_0_, v_out_reg_3_, v_out_reg_2_, v_out_reg_1_, v_out_reg_0_,
sign_reg_3_, voto1_reg, ctr_reg, voto3_reg, last_r_reg, cts_reg,
voto2_reg, last_g_reg, u243, u212, u211, u210, u233, u234, u235, u236,
u237, u209, u238, u208, u239, u240, u207, u241, u242 );
input r_button, g_button, key, start, test, rts, rtr, v_in_3_, v_in_2_,
v_in_1_, v_in_0_, voto0_reg, stato_reg_3_, stato_reg_2_, stato_reg_1_,
stato_reg_0_, v_out_reg_3_, v_out_reg_2_, v_out_reg_1_, v_out_reg_0_,
sign_reg_3_, voto1_reg, ctr_reg, voto3_reg, last_r_reg, cts_reg,
voto2_reg, last_g_reg;
output u243, u212, u211, u210, u233, u234, u235, u236, u237, u209, u238,
u208, u239, u240, u207, u241, u242;
wire   n181, n183, n185, n187, n189, n191, n193, n195, n197, n199, n201,
n203, n205, n207, n209, n211, n213, n215, n216, n217, n218, n219,
n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
n396, n397;

   and U198 ( n181,n215,n216 );
   not U199 ( u243,n181 );
   and U200 ( n183,n318,n319 );
   not U201 ( u212,n183 );
   and U202 ( n185,n329,n330 );
   not U203 ( u211,n185 );
   and U204 ( n187,n340,n341 );
   not U205 ( u210,n187 );
   and U206 ( n189,n308,n309 );
   not U207 ( u233,n189 );
   and U208 ( n191,n306,n307 );
   not U209 ( u234,n191 );
   and U210 ( n193,n304,n305 );
   not U211 ( u235,n193 );
   and U212 ( n195,n302,n303 );
   not U213 ( u236,n195 );
   and U214 ( n197,n298,n299 );
   not U215 ( u237,n197 );
   and U216 ( n199,n319,n370 );
   not U217 ( u209,n199 );
   and U218 ( n201,n276,n277 );
   not U219 ( u238,n201 );
   and U220 ( n203,n349,n374 );
   not U221 ( u208,n203 );
   and U222 ( n205,n261,n262 );
   not U223 ( u239,n205 );
   and U224 ( n207,n256,n257 );
   not U225 ( u240,n207 );
   and U226 ( n209,n381,n382 );
   not U227 ( u207,n209 );
   and U228 ( n211,n240,n241 );
   not U229 ( u241,n211 );
   and U230 ( n213,n236,n237 );
   not U231 ( u242,n213 );
   or U232 ( n216,n217,n218 );
   nand U233 ( n215,n219,n218 );
   nand U234 ( n218,n220,n221 );
   nor U235 ( n221,n222,n223 );
   nor U236 ( n220,n224,n225 );
   nor U237 ( n224,n226,n227 );
   nand U238 ( n219,n228,n229 );
   nand U239 ( n229,stato_reg_1_,n230 );
   nand U240 ( n230,n231,n232 );
   nand U241 ( n232,key,n233 );
   or U242 ( n231,n234,sign_reg_3_ );
   nand U243 ( n228,v_in_0_,n235 );
   nand U244 ( n237,last_g_reg,n238 );
   nand U245 ( n236,n239,g_button );
   or U246 ( n241,n242,n243 );
   nand U247 ( n240,n244,n242 );
   nand U248 ( n242,n245,n246 );
   nor U249 ( n245,n247,n248 );
   nor U250 ( n248,n249,n250 );
   nand U251 ( n250,n251,n252 );
   not U252 ( n252,last_r_reg );
   not U253 ( n249,r_button );
   nand U254 ( n244,n253,n254 );
   nand U255 ( n254,n255,key );
   nor U256 ( n255,voto2_reg,n226 );
   nand U257 ( n253,v_in_2_,n235 );
   nand U258 ( n257,last_r_reg,n238 );
   nand U259 ( n256,n239,r_button );
   not U260 ( n239,n238 );
   nand U261 ( n238,n258,n251 );
   nor U262 ( n258,n259,n260 );
   nand U263 ( n262,voto3_reg,n263 );
   not U264 ( n263,n264 );
   nand U265 ( n261,n265,n264 );
   nand U266 ( n264,n266,n246 );
   nor U267 ( n266,n267,n268 );
   nor U268 ( n268,key,n269 );
   nor U269 ( n267,n226,n270 );
   nand U270 ( n270,stato_reg_0_,n234 );
   nand U271 ( n265,n271,n272 );
   nand U272 ( n272,n273,stato_reg_0_ );
   nor U273 ( n273,n274,n259 );
   xor U274 ( n274,n275,n217 );
   not U275 ( n217,voto0_reg );
   xor U276 ( n275,voto2_reg,voto1_reg );
   nand U277 ( n271,v_in_3_,n235 );
   or U278 ( n277,n278,n279 );
   nand U279 ( n276,n280,n278 );
   nand U280 ( n278,n281,n246 );
   nor U281 ( n246,n282,n225 );
   or U282 ( n282,n223,n283 );
   nor U283 ( n283,n284,n285 );
   nand U284 ( n285,start,n286 );
   not U285 ( n223,n287 );
   nor U286 ( n281,n247,n288 );
   nor U287 ( n288,n289,n290 );
   nand U288 ( n290,n251,n291 );
   not U289 ( n291,last_g_reg );
   not U290 ( n289,g_button );
   and U291 ( n247,n251,n260 );
   not U292 ( n260,key );
   and U293 ( n251,n233,start );
   nand U294 ( n280,n292,n293 );
   nand U295 ( n293,n294,key );
   nor U296 ( n294,voto1_reg,n226 );
   nand U297 ( n292,v_in_1_,n235 );
   nand U298 ( n235,n287,n295 );
   nand U299 ( n295,n296,n234 );
   nand U300 ( n287,n297,stato_reg_3_ );
   nor U301 ( n297,stato_reg_2_,n284 );
   nand U302 ( n299,v_out_reg_0_,n300 );
   nand U303 ( n298,n301,voto0_reg );
   nand U304 ( n303,v_out_reg_1_,n300 );
   nand U305 ( n302,n301,voto1_reg );
   nand U306 ( n305,v_out_reg_2_,n300 );
   nand U307 ( n304,n301,voto2_reg );
   nand U308 ( n307,v_out_reg_3_,n300 );
   nand U309 ( n306,n301,voto3_reg );
   nand U310 ( n309,n310,stato_reg_0_ );
   nand U311 ( n308,n311,n312 );
   nand U312 ( n311,n313,n314 );
   nand U313 ( n314,n315,n316 );
   nand U314 ( n316,n317,n234 );
   nor U315 ( n315,stato_reg_1_,stato_reg_0_ );
   nor U316 ( n313,n296,n233 );
   nor U317 ( n318,n320,n321 );
   nor U318 ( n321,n234,n312 );
   nor U319 ( n320,n310,n322 );
   nand U320 ( n322,n323,n259 );
   nand U321 ( n323,n324,n325 );
   nand U322 ( n325,n317,n326 );
   not U323 ( n317,n327 );
   nand U324 ( n324,n233,n328 );
   not U325 ( n328,test );
   nand U326 ( n330,stato_reg_2_,n331 );
   nand U327 ( n331,n332,n333 );
   nand U328 ( n333,n327,n334 );
   nand U329 ( n327,n335,n336 );
   nor U330 ( n336,voto3_reg,voto0_reg );
   nor U331 ( n335,n243,n279 );
   not U332 ( n279,voto1_reg );
   not U333 ( n243,voto2_reg );
   nor U334 ( n332,n337,n310 );
   nor U335 ( n329,n296,n338 );
   nor U336 ( n338,n259,n227 );
   nand U337 ( n227,n339,n319 );
   nand U338 ( n341,stato_reg_1_,n342 );
   nand U339 ( n342,n312,n339 );
   nor U340 ( n340,n296,n343 );
   nor U341 ( n343,n310,n344 );
   and U342 ( n344,n319,n284 );
   not U343 ( n310,n312 );
   nand U344 ( n312,n345,n346 );
   nor U345 ( n346,n347,n348 );
   nand U346 ( n348,n349,n300 );
   nor U347 ( n347,n350,n334 );
   nor U348 ( n350,n351,n222 );
   not U349 ( n222,n269 );
   nand U350 ( n269,start,n352 );
   nor U351 ( n351,n259,n353 );
   nand U352 ( n353,stato_reg_2_,n354 );
   nor U353 ( n345,n225,n355 );
   nand U354 ( n355,n356,n357 );
   nand U355 ( n357,n358,n234 );
   nor U356 ( n358,start,n226 );
   nand U357 ( n356,n359,stato_reg_3_ );
   nand U358 ( n359,n360,n361 );
   nand U359 ( n361,n362,n334 );
   nand U360 ( n362,n363,n226 );
   nand U361 ( n363,n259,n354 );
   nand U362 ( n360,n364,stato_reg_0_ );
   nor U363 ( n364,n365,n366 );
   nand U364 ( n366,v_in_1_,v_in_3_ );
   nand U365 ( n365,v_in_2_,v_in_0_ );
   nand U366 ( n225,n367,n368 );
   nand U367 ( n368,rts,n296 );
   nand U368 ( n367,n233,n259 );
   nor U369 ( n296,n259,n369 );
   nand U370 ( n370,sign_reg_3_,n371 );
   nand U371 ( n371,n372,n233 );
   nor U372 ( n233,n373,stato_reg_0_ );
   nor U373 ( n372,test,stato_reg_1_ );
   nand U374 ( n319,stato_reg_3_,stato_reg_0_ );
   nand U375 ( n374,ctr_reg,n375 );
   nand U376 ( n375,n376,n377 );
   nor U377 ( n377,n378,n379 );
   nor U378 ( n379,stato_reg_1_,n352 );
   not U379 ( n352,n373 );
   nor U380 ( n378,rts,n259 );
   and U381 ( n376,n334,n226 );
   nand U382 ( n349,n380,n337 );
   nor U383 ( n380,rts,n286 );
   nor U384 ( n382,n301,n383 );
   nor U385 ( n383,n234,n384 );
   nand U386 ( n384,n326,n259 );
   not U387 ( n326,n369 );
   not U388 ( n301,n300 );
   nand U389 ( n300,n385,rtr );
   nor U390 ( n385,stato_reg_1_,n369 );
   nand U391 ( n369,stato_reg_2_,n334 );
   nor U392 ( n381,n386,n387 );
   nor U393 ( n387,n388,n389 );
   not U394 ( n389,cts_reg );
   nor U395 ( n388,n390,n391 );
   nand U396 ( n391,n392,n226 );
   nand U397 ( n226,stato_reg_1_,n286 );
   nand U398 ( n392,stato_reg_3_,n337 );
   not U399 ( n337,n284 );
   nand U400 ( n390,n393,n394 );
   nand U401 ( n394,stato_reg_2_,n259 );
   nand U402 ( n393,stato_reg_1_,n334 );
   nor U403 ( n386,n395,n354 );
   not U404 ( n354,rtr );
   nor U405 ( n395,n396,n397 );
   nor U406 ( n397,n373,n284 );
   nand U407 ( n284,stato_reg_0_,n259 );
   not U408 ( n259,stato_reg_1_ );
   nand U409 ( n373,n286,n234 );
   not U410 ( n286,stato_reg_2_ );
   and U411 ( n396,n339,cts_reg );
   nand U412 ( n339,n234,n334 );
   not U413 ( n334,stato_reg_0_ );
   not U414 ( n234,stato_reg_3_ );
endmodule
