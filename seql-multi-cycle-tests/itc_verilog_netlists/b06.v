
module b06 ( eql, cont_eql, state_reg_2_, state_reg_1_, state_reg_0_, u62, u57,
u56, u55, u59, u58, u61, u60 );
input eql, cont_eql, state_reg_2_, state_reg_1_, state_reg_0_;
output u62, u57, u56, u55, u59, u58, u61, u60;
wire   n47, n49, n51, n53, n55, n57, n59, n61, n63, n64, n65, n66, n67, n68,
n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
n97, n98, n99, n100, n101, n102, n103, n104, n105, n106;

   and U55 ( n47,n63,n64 );
   not U56 ( u62,n47 );
   and U57 ( n49,n90,n91 );
   not U58 ( u57,n49 );
   and U59 ( n51,n95,n96 );
   not U60 ( u56,n51 );
   and U61 ( n53,n102,n103 );
   not U62 ( u55,n53 );
   and U63 ( n55,n80,n81 );
   not U64 ( u59,n55 );
   and U65 ( n57,n85,n68 );
   not U66 ( u58,n57 );
   and U67 ( n59,n71,n72 );
   not U68 ( u61,n59 );
   and U69 ( n61,n76,eql );
   not U70 ( u60,n61 );
   nand U71 ( n64,n65,n66 );
   nor U72 ( n66,eql,n67 );
   nor U73 ( n65,n68,n69 );
   or U74 ( n63,cont_eql,n70 );
   and U75 ( n70,state_reg_1_,n67 );
   nand U76 ( n72,n73,state_reg_1_ );
   nand U77 ( n71,n74,n75 );
   xor U78 ( n76,n77,n69 );
   nor U79 ( n77,n67,n68 );
   nor U80 ( n67,n78,n79 );
   nor U81 ( n80,n82,n83 );
   nor U82 ( n83,n69,n84 );
   and U83 ( n82,n69,n68 );
   nand U84 ( n68,n86,n87 );
   nand U85 ( n87,state_reg_2_,n78 );
   nor U86 ( n85,n88,n89 );
   and U87 ( n89,n84,state_reg_1_ );
   nor U88 ( n88,state_reg_1_,n75 );
   nand U89 ( n91,n92,n93 );
   not U90 ( n93,n86 );
   nor U91 ( n92,state_reg_1_,eql );
   nor U92 ( n90,n74,n73 );
   not U93 ( n73,n81 );
   nand U94 ( n81,eql,state_reg_2_ );
   not U95 ( n74,n94 );
   nand U96 ( n96,state_reg_1_,n97 );
   nand U97 ( n97,n75,n98 );
   nand U98 ( n98,n78,n79 );
   nor U99 ( n95,n99,n100 );
   nor U100 ( n100,n75,n86 );
   nand U101 ( n86,state_reg_0_,n79 );
   not U102 ( n75,eql );
   nor U103 ( n99,eql,n94 );
   nand U104 ( n94,n101,state_reg_2_ );
   nor U105 ( n101,state_reg_1_,state_reg_0_ );
   nand U106 ( n103,state_reg_1_,n84 );
   nand U107 ( n84,eql,n78 );
   nor U108 ( n102,n104,n105 );
   nor U109 ( n105,eql,n78 );
   not U110 ( n78,state_reg_0_ );
   nor U111 ( n104,state_reg_0_,n106 );
   nand U112 ( n106,n69,n79 );
   not U113 ( n79,state_reg_2_ );
   not U114 ( n69,state_reg_1_ );
endmodule
