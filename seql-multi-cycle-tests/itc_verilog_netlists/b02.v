
module b02 ( linea, stato_reg_2_, stato_reg_1_, stato_reg_0_, u31, u33, u38,
u32 );
input linea, stato_reg_2_, stato_reg_1_, stato_reg_0_;
output u31, u33, u38, u32;
wire   n52, n25, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51;

   not U29 ( n25,n52 );
   not U30 ( u31,n25 );
   not U31 ( u38,n27 );
   nor U32 ( n27,n28,n29 );
   nor U33 ( n29,stato_reg_0_,n30 );
   not U34 ( n30,n31 );
   nor U35 ( n31,stato_reg_2_,n32 );
   nor U36 ( n28,n33,n34 );
   nor U37 ( n33,n35,stato_reg_2_ );
   nor U38 ( n35,stato_reg_1_,linea );
   not U39 ( u33,n36 );
   nor U40 ( n36,n37,n38 );
   nor U41 ( n38,n39,n32 );
   nor U42 ( n39,stato_reg_0_,n40 );
   xor U43 ( n40,stato_reg_2_,linea );
   nor U44 ( n37,n41,n34 );
   nor U45 ( n41,linea,stato_reg_2_ );
   not U46 ( u32,n42 );
   nor U47 ( n42,n43,n44 );
   nor U48 ( n43,stato_reg_2_,n45 );
   not U49 ( n45,n46 );
   nor U50 ( n46,n47,n48 );
   nor U51 ( n48,n32,n49 );
   not U52 ( n49,linea );
   not U53 ( n32,stato_reg_1_ );
   nor U54 ( n47,linea,n34 );
   not U55 ( n34,stato_reg_0_ );
   nor U56 ( n52,n50,n51 );
   not U57 ( n51,n44 );
   nor U58 ( n44,stato_reg_1_,stato_reg_0_ );
   not U59 ( n50,stato_reg_2_ );
endmodule
