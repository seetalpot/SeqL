
module b01 ( line1, line2, stato_reg_2, stato_reg_1, stato_reg_0, u34, u45,
u36, u35, u44 );
input line1, line2, stato_reg_2, stato_reg_1, stato_reg_0;
output u34, u45, u36, u35, u44;
wire   n104, n105, n52, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103;

   not U57 ( n52,n105 );
   not U58 ( u44,n52 );
   not U59 ( u34,n99 );
   not U60 ( u45,n55 );
   nor U61 ( n55,n56,n57 );
   nor U62 ( n57,n58,n59 );
   not U63 ( n59,n60 );
   nor U64 ( n60,stato_reg_1,n61 );
   nor U65 ( n61,stato_reg_0,n62 );
   nor U66 ( n56,stato_reg_2,n63 );
   nor U67 ( n63,n64,n65 );
   xor U68 ( n105,n66,n67 );
   nor U69 ( n66,n68,n65 );
   not U70 ( u36,n69 );
   nor U71 ( n69,n70,n71 );
   not U72 ( n71,n72 );
   nor U73 ( n72,n73,n74 );
   nor U74 ( n74,n75,n76 );
   nor U75 ( n75,n65,n58 );
   nor U76 ( n73,n77,n78 );
   not U77 ( n78,n79 );
   nor U78 ( n79,stato_reg_1,n65 );
   nor U79 ( n70,n58,n80 );
   not U80 ( n80,n81 );
   nor U81 ( n81,n82,n83 );
   nor U82 ( n83,stato_reg_0,n68 );
   nor U83 ( n82,n62,n84 );
   not U84 ( n62,n68 );
   not U85 ( u35,n85 );
   nor U86 ( n85,n86,n87 );
   not U87 ( n87,n88 );
   nor U88 ( n88,n89,n90 );
   nor U89 ( n90,n68,n91 );
   not U90 ( n91,n67 );
   nor U91 ( n67,n64,n58 );
   not U92 ( n58,stato_reg_2 );
   nor U93 ( n68,line2,line1 );
   nor U94 ( n89,n92,n93 );
   not U95 ( n93,n94 );
   nor U96 ( n94,stato_reg_2,stato_reg_1 );
   xor U97 ( n92,stato_reg_0,n65 );
   not U98 ( n86,n95 );
   nor U99 ( n95,n96,n97 );
   nor U100 ( n97,n76,n98 );
   not U101 ( n98,n65 );
   not U102 ( n76,n64 );
   nor U103 ( n64,stato_reg_0,n84 );
   nor U104 ( n96,n65,n99 );
   not U105 ( n99,n104 );
   nor U106 ( n65,n100,n101 );
   not U107 ( n101,line2 );
   not U108 ( n100,line1 );
   nor U109 ( n104,n77,n102 );
   not U110 ( n102,n103 );
   nor U111 ( n103,stato_reg_2,n84 );
   not U112 ( n84,stato_reg_1 );
   not U113 ( n77,stato_reg_0 );
endmodule
