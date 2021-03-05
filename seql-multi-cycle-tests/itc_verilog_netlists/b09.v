
module b09 ( x, d_in_reg_0_, d_out_reg_7_, d_out_reg_6_, d_out_reg_5_,
d_out_reg_4_, d_out_reg_3_, d_out_reg_2_, d_out_reg_1_, d_out_reg_0_,
old_reg_7_, old_reg_6_, old_reg_5_, old_reg_4_, old_reg_3_, old_reg_2_,
old_reg_1_, old_reg_0_, y_reg, stato_reg_1_, stato_reg_0_, d_in_reg_8_,
d_in_reg_7_, d_in_reg_6_, d_in_reg_5_, d_in_reg_4_, d_in_reg_3_,
d_in_reg_2_, d_in_reg_1_, u93, u118, u117, u116, u115, u114, u113,
u112, u111, u110, u109, u108, u107, u106, u105, u104, u103, u102, u92,
u91, u101, u100, u99, u98, u97, u96, u95, u94 );
input x, d_in_reg_0_, d_out_reg_7_, d_out_reg_6_, d_out_reg_5_, d_out_reg_4_,
d_out_reg_3_, d_out_reg_2_, d_out_reg_1_, d_out_reg_0_, old_reg_7_,
old_reg_6_, old_reg_5_, old_reg_4_, old_reg_3_, old_reg_2_,
old_reg_1_, old_reg_0_, y_reg, stato_reg_1_, stato_reg_0_,
d_in_reg_8_, d_in_reg_7_, d_in_reg_6_, d_in_reg_5_, d_in_reg_4_,
d_in_reg_3_, d_in_reg_2_, d_in_reg_1_;
output u93, u118, u117, u116, u115, u114, u113, u112, u111, u110, u109, u108,
u107, u106, u105, u104, u103, u102, u92, u91, u101, u100, u99, u98,
u97, u96, u95, u94;
wire   n109, n111, n113, n115, n117, n119, n121, n123, n125, n127, n129,
n131, n133, n135, n137, n139, n141, n143, n145, n147, n149, n151,
n153, n155, n157, n159, n161, n163, n165, n166, n167, n168, n169,
n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
n269, n270;

   or U137 ( n109,n165,n172 );
   not U138 ( u93,n109 );
   and U139 ( n111,n183,n184 );
   not U140 ( u118,n111 );
   and U141 ( n113,n188,n189 );
   not U142 ( u117,n113 );
   and U143 ( n115,n194,n195 );
   not U144 ( u116,n115 );
   and U145 ( n117,n199,n200 );
   not U146 ( u115,n117 );
   and U147 ( n119,n204,n205 );
   not U148 ( u114,n119 );
   and U149 ( n121,n209,n210 );
   not U150 ( u113,n121 );
   and U151 ( n123,n214,n215 );
   not U152 ( u112,n123 );
   and U153 ( n125,n219,n220 );
   not U154 ( u111,n125 );
   and U155 ( n127,n230,n231 );
   not U156 ( u110,n127 );
   and U157 ( n129,n233,n234 );
   not U158 ( u109,n129 );
   and U159 ( n131,n235,n236 );
   not U160 ( u108,n131 );
   and U161 ( n133,n237,n238 );
   not U162 ( u107,n133 );
   and U163 ( n135,n239,n240 );
   not U164 ( u106,n135 );
   and U165 ( n137,n241,n242 );
   not U166 ( u105,n137 );
   and U167 ( n139,n243,n244 );
   not U168 ( u104,n139 );
   and U169 ( n141,n245,n246 );
   not U170 ( u103,n141 );
   and U171 ( n143,n247,n248 );
   not U172 ( u102,n143 );
   nor U173 ( n145,stato_reg_1_,n173 );
   not U174 ( u92,n145 );
   and U175 ( n147,n174,n175 );
   not U176 ( u91,n147 );
   and U177 ( n149,n248,n254 );
   not U178 ( u101,n149 );
   or U179 ( n151,n165,n186 );
   not U180 ( u100,n151 );
   or U181 ( n153,n165,n166 );
   not U182 ( u99,n153 );
   or U183 ( n155,n165,n167 );
   not U184 ( u98,n155 );
   or U185 ( n157,n165,n168 );
   not U186 ( u97,n157 );
   or U187 ( n159,n165,n169 );
   not U188 ( u96,n159 );
   or U189 ( n161,n165,n170 );
   not U190 ( u95,n161 );
   or U191 ( n163,n165,n171 );
   not U192 ( u94,n163 );
   nand U193 ( n175,stato_reg_0_,n176 );
   nand U194 ( n176,d_in_reg_0_,n177 );
   or U195 ( n177,n178,n179 );
   nand U196 ( n174,n180,n181 );
   nand U197 ( n180,stato_reg_1_,n182 );
   or U198 ( n184,n185,n186 );
   nand U199 ( n183,d_out_reg_7_,n187 );
   nand U200 ( n189,d_out_reg_6_,n187 );
   nor U201 ( n188,n190,n191 );
   nor U202 ( n191,n192,n193 );
   not U203 ( n192,d_out_reg_7_ );
   nor U204 ( n190,n166,n185 );
   nand U205 ( n195,d_out_reg_5_,n187 );
   nor U206 ( n194,n196,n197 );
   nor U207 ( n197,n193,n198 );
   not U208 ( n198,d_out_reg_6_ );
   nor U209 ( n196,n167,n185 );
   nand U210 ( n200,d_out_reg_4_,n187 );
   nor U211 ( n199,n201,n202 );
   nor U212 ( n202,n193,n203 );
   not U213 ( n203,d_out_reg_5_ );
   nor U214 ( n201,n168,n185 );
   nand U215 ( n205,d_out_reg_3_,n187 );
   nor U216 ( n204,n206,n207 );
   nor U217 ( n207,n193,n208 );
   not U218 ( n208,d_out_reg_4_ );
   nor U219 ( n206,n169,n185 );
   nand U220 ( n210,d_out_reg_2_,n187 );
   nor U221 ( n209,n211,n212 );
   nor U222 ( n212,n193,n213 );
   not U223 ( n213,d_out_reg_3_ );
   nor U224 ( n211,n170,n185 );
   nand U225 ( n215,d_out_reg_1_,n187 );
   nor U226 ( n214,n216,n217 );
   nor U227 ( n217,n193,n218 );
   not U228 ( n218,d_out_reg_2_ );
   nor U229 ( n216,n171,n185 );
   nand U230 ( n220,d_out_reg_0_,n187 );
   not U231 ( n187,n221 );
   nor U232 ( n219,n222,n223 );
   nor U233 ( n223,n193,n224 );
   not U234 ( n224,d_out_reg_1_ );
   nand U235 ( n193,n225,n221 );
   nor U236 ( n222,n172,n185 );
   nand U237 ( n185,stato_reg_0_,n221 );
   nand U238 ( n221,n226,n227 );
   nor U239 ( n226,n228,n229 );
   nor U240 ( n229,stato_reg_0_,d_in_reg_0_ );
   nor U241 ( n228,stato_reg_1_,n182 );
   nand U242 ( n231,n173,d_in_reg_8_ );
   nand U243 ( n230,old_reg_7_,n232 );
   nand U244 ( n234,n173,d_in_reg_7_ );
   nand U245 ( n233,old_reg_6_,n232 );
   nand U246 ( n236,n173,d_in_reg_6_ );
   nand U247 ( n235,old_reg_5_,n232 );
   nand U248 ( n238,n173,d_in_reg_5_ );
   nand U249 ( n237,old_reg_4_,n232 );
   nand U250 ( n240,n173,d_in_reg_4_ );
   nand U251 ( n239,old_reg_3_,n232 );
   nand U252 ( n242,n173,d_in_reg_3_ );
   nand U253 ( n241,old_reg_2_,n232 );
   nand U254 ( n244,n173,d_in_reg_2_ );
   nand U255 ( n243,old_reg_1_,n232 );
   nand U256 ( n246,n173,d_in_reg_1_ );
   nand U257 ( n245,old_reg_0_,n232 );
   nor U258 ( n247,n249,n250 );
   and U259 ( n250,n251,y_reg );
   nor U260 ( n251,stato_reg_1_,n181 );
   nor U261 ( n249,n252,n253 );
   nand U262 ( n253,n225,n182 );
   not U263 ( n252,d_out_reg_0_ );
   nand U264 ( n254,x,n232 );
   not U265 ( n232,n165 );
   and U266 ( n248,n227,n255 );
   nand U267 ( n255,n173,n179 );
   nand U268 ( n227,n173,n178 );
   nand U269 ( n178,n256,n257 );
   nor U270 ( n257,n258,n259 );
   nand U271 ( n259,n260,n261 );
   xor U272 ( n261,n172,old_reg_0_ );
   not U273 ( n172,d_in_reg_1_ );
   xor U274 ( n260,n171,old_reg_1_ );
   not U275 ( n171,d_in_reg_2_ );
   nand U276 ( n258,n262,n263 );
   xor U277 ( n263,n170,old_reg_2_ );
   not U278 ( n170,d_in_reg_3_ );
   xor U279 ( n262,n169,old_reg_3_ );
   not U280 ( n169,d_in_reg_4_ );
   nor U281 ( n256,n264,n265 );
   nand U282 ( n265,n266,n267 );
   xor U283 ( n267,n168,old_reg_4_ );
   not U284 ( n168,d_in_reg_5_ );
   xor U285 ( n266,n167,old_reg_5_ );
   not U286 ( n167,d_in_reg_6_ );
   nand U287 ( n264,n268,n269 );
   xor U288 ( n269,n166,old_reg_6_ );
   not U289 ( n166,d_in_reg_7_ );
   xor U290 ( n268,n186,old_reg_7_ );
   nor U291 ( n173,n182,n181 );
   not U292 ( n182,d_in_reg_0_ );
   not U293 ( n186,d_in_reg_8_ );
   nor U294 ( n165,n270,n225 );
   nor U295 ( n225,n179,stato_reg_0_ );
   not U296 ( n179,stato_reg_1_ );
   nor U297 ( n270,n181,d_in_reg_0_ );
   not U298 ( n181,stato_reg_0_ );
endmodule
