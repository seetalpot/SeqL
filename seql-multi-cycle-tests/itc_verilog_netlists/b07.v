
module b07 ( start, punti_retta_reg_7_, punti_retta_reg_6_, punti_retta_reg_5_,
punti_retta_reg_4_, punti_retta_reg_3_, punti_retta_reg_2_,
punti_retta_reg_1_, punti_retta_reg_0_, cont_reg_7_, cont_reg_6_,
cont_reg_5_, cont_reg_4_, cont_reg_3_, cont_reg_2_, cont_reg_1_,
cont_reg_0_, mar_reg_7_, mar_reg_6_, mar_reg_5_, mar_reg_4_,
mar_reg_3_, mar_reg_2_, mar_reg_1_, mar_reg_0_, x_reg_7_, x_reg_6_,
x_reg_5_, x_reg_4_, x_reg_3_, x_reg_2_, x_reg_1_, x_reg_0_, y_reg_3_,
y_reg_1_, y_reg_5_, t_reg_3_, t_reg_5_, t_reg_1_, t_reg_0_, t_reg_4_,
t_reg_6_, t_reg_2_, y_reg_4_, y_reg_0_, y_reg_2_, y_reg_6_,
stato_reg_2_, stato_reg_1_, stato_reg_0_, u358, u357, u356, u355, u354,
u353, u352, u351, u350, u349, u348, u347, u346, u345, u344, u343, u342,
u341, u340, u339, u388, u389, u390, u391, u338, u337, u336, u335, u334,
u333, u332, u331, u330, u394, u329, u395, u396, u397, u398, u399, u400,
u401, u328, u402, u403, u327, u324, u325, u326 );
input start, punti_retta_reg_7_, punti_retta_reg_6_, punti_retta_reg_5_,
punti_retta_reg_4_, punti_retta_reg_3_, punti_retta_reg_2_,
punti_retta_reg_1_, punti_retta_reg_0_, cont_reg_7_, cont_reg_6_,
cont_reg_5_, cont_reg_4_, cont_reg_3_, cont_reg_2_, cont_reg_1_,
cont_reg_0_, mar_reg_7_, mar_reg_6_, mar_reg_5_, mar_reg_4_,
mar_reg_3_, mar_reg_2_, mar_reg_1_, mar_reg_0_, x_reg_7_, x_reg_6_,
x_reg_5_, x_reg_4_, x_reg_3_, x_reg_2_, x_reg_1_, x_reg_0_, y_reg_3_,
y_reg_1_, y_reg_5_, t_reg_3_, t_reg_5_, t_reg_1_, t_reg_0_, t_reg_4_,
t_reg_6_, t_reg_2_, y_reg_4_, y_reg_0_, y_reg_2_, y_reg_6_,
stato_reg_2_, stato_reg_1_, stato_reg_0_;
output u358, u357, u356, u355, u354, u353, u352, u351, u350, u349, u348,
u347, u346, u345, u344, u343, u342, u341, u340, u339, u388, u389,
u390, u391, u338, u337, u336, u335, u334, u333, u332, u331, u330,
u394, u329, u395, u396, u397, u398, u399, u400, u401, u328, u402,
u403, u327, u324, u325, u326;
wire   n340, n342, n344, n346, n348, n350, n352, n354, n356, n358, n360,
n362, n364, n366, n368, n370, n372, n374, n376, n378, n380, n382,
n384, n386, n388, n390, n392, n394, n396, n398, n400, n402, n404,
n406, n408, n410, n412, n414, n416, n418, n420, n422, n424, n426,
n428, n430, n432, n434, n436, n438, n439, n440, n441, n442, n443,
n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454,
n455, n456, n457, n458, n459, n460, n461, n462, n463, n464, n465,
n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, n476,
n477, n478, n479, n480, n481, n482, n483, n484, n485, n486, n487,
n488, n489, n490, n491, n492, n493, n494, n495, n496, n497, n498,
n499, n500, n501, n502, n503, n504, n505, n506, n507, n508, n509,
n510, n511, n512, n513, n514, n515, n516, n517, n518, n519, n520,
n521, n522, n523, n524, n525, n526, n527, n528, n529, n530, n531,
n532, n533, n534, n535, n536, n537, n538, n539, n540, n541, n542,
n543, n544, n545, n546, n547, n548, n549, n550, n551, n552, n553,
n554, n555, n556, n557, n558, n559, n560, n561, n562, n563, n564,
n565, n566, n567, n568, n569, n570, n571, n572, n573, n574, n575,
n576, n577, n578, n579, n580, n581, n582, n583, n584, n585, n586,
n587, n588, n589, n590, n591, n592, n593, n594, n595, n596, n597,
n598, n599, n600, n601, n602, n603, n604, n605, n606, n607, n608,
n609, n610, n611, n612, n613, n614, n615, n616, n617, n618, n619,
n620, n621, n622, n623, n624, n625, n626, n627, n628, n629, n630,
n631, n632, n633, n634, n635, n636, n637, n638, n639, n640, n641,
n642, n643, n644, n645, n646, n647, n648, n649, n650, n651, n652,
n653, n654, n655, n656, n657, n658, n659, n660, n661, n662, n663,
n664, n665, n666, n667, n668, n669, n670, n671, n672, n673, n674,
n675, n676, n677, n678, n679, n680, n681, n682, n683, n684, n685,
n686, n687, n688, n689, n690, n691, n692, n693, n694, n695, n696,
n697, n698, n699, n700, n701, n702, n703, n704, n705, n706, n707,
n708, n709, n710, n711, n712, n713, n714, n715, n716, n717, n718,
n719, n720, n721, n722, n723, n724, n725, n726, n727, n728, n729,
n730, n731, n732, n733, n734, n735, n736, n737, n738, n739, n740,
n741, n742, n743, n744, n745, n746, n747, n748, n749, n750, n751,
n752, n753, n754, n755, n756, n757, n758, n759, n760, n761, n762,
n763, n764, n765, n766, n767, n768, n769, n770;

   and U389 ( n340,n503,n504 );
   not U390 ( u358,n340 );
   and U391 ( n342,n512,n513 );
   not U392 ( u357,n342 );
   and U393 ( n344,n518,n519 );
   not U394 ( u356,n344 );
   and U395 ( n346,n524,n525 );
   not U396 ( u355,n346 );
   and U397 ( n348,n530,n531 );
   not U398 ( u354,n348 );
   and U399 ( n350,n536,n537 );
   not U400 ( u353,n350 );
   and U401 ( n352,n542,n543 );
   not U402 ( u352,n352 );
   and U403 ( n354,n548,n549 );
   not U404 ( u351,n354 );
   and U405 ( n356,n563,n564 );
   not U406 ( u350,n356 );
   and U407 ( n358,n568,n569 );
   not U408 ( u349,n358 );
   and U409 ( n360,n570,n571 );
   not U410 ( u348,n360 );
   and U411 ( n362,n572,n573 );
   not U412 ( u347,n362 );
   and U413 ( n364,n574,n575 );
   not U414 ( u346,n364 );
   and U415 ( n366,n576,n577 );
   not U416 ( u345,n366 );
   and U417 ( n368,n578,n579 );
   not U418 ( u344,n368 );
   and U419 ( n370,n580,n581 );
   not U420 ( u343,n370 );
   or U421 ( n372,n478,n598 );
   not U422 ( u342,n372 );
   or U423 ( n374,n478,n599 );
   not U424 ( u341,n374 );
   or U425 ( n376,n478,n600 );
   not U426 ( u340,n376 );
   or U427 ( n378,n478,n601 );
   not U428 ( u339,n378 );
   and U429 ( n380,n495,n496 );
   not U430 ( u388,n380 );
   and U431 ( n382,n485,n486 );
   not U432 ( u389,n382 );
   and U433 ( n384,n480,n481 );
   not U434 ( u390,n384 );
   and U435 ( n386,n475,n476 );
   not U436 ( u391,n386 );
   and U437 ( n388,n605,n606 );
   not U438 ( u338,n388 );
   and U439 ( n390,n620,n621 );
   not U440 ( u337,n390 );
   and U441 ( n392,n639,n640 );
   not U442 ( u336,n392 );
   and U443 ( n394,n654,n655 );
   not U444 ( u335,n394 );
   and U445 ( n396,n669,n670 );
   not U446 ( u334,n396 );
   and U447 ( n398,n684,n685 );
   not U448 ( u333,n398 );
   and U449 ( n400,n701,n702 );
   not U450 ( u332,n400 );
   and U451 ( n402,n720,n721 );
   not U452 ( u331,n402 );
   and U453 ( n404,n470,n743 );
   not U454 ( u330,n404 );
   and U455 ( n406,n469,n470 );
   not U456 ( u394,n406 );
   and U457 ( n408,n470,n744 );
   not U458 ( u329,n408 );
   and U459 ( n410,n466,n467 );
   not U460 ( u395,n410 );
   and U461 ( n412,n463,n464 );
   not U462 ( u396,n412 );
   and U463 ( n414,n460,n461 );
   not U464 ( u397,n414 );
   and U465 ( n416,n457,n458 );
   not U466 ( u398,n416 );
   and U467 ( n418,n454,n455 );
   not U468 ( u399,n418 );
   and U469 ( n420,n451,n452 );
   not U470 ( u400,n420 );
   and U471 ( n422,n446,n447 );
   not U472 ( u401,n422 );
   and U473 ( n424,n470,n745 );
   not U474 ( u328,n424 );
   and U475 ( n426,n442,n443 );
   not U476 ( u402,n426 );
   and U477 ( n428,n438,n439 );
   not U478 ( u403,n428 );
   and U479 ( n430,n470,n746 );
   not U480 ( u327,n430 );
   and U481 ( n432,n448,n763 );
   not U482 ( u324,n432 );
   and U483 ( n434,n756,n719 );
   not U484 ( u325,n434 );
   and U485 ( n436,n751,n752 );
   not U486 ( u326,n436 );
   nand U487 ( n439,y_reg_2_,n440 );
   or U488 ( n438,n440,n441 );
   nand U489 ( n443,y_reg_0_,n440 );
   nand U490 ( n442,n444,n445 );
   nand U491 ( n447,t_reg_2_,n448 );
   nand U492 ( n446,n449,n450 );
   nand U493 ( n452,t_reg_6_,n448 );
   nand U494 ( n451,n449,n453 );
   nand U495 ( n455,t_reg_4_,n448 );
   nand U496 ( n454,n449,n456 );
   nand U497 ( n458,t_reg_0_,n448 );
   nand U498 ( n457,n449,n459 );
   nand U499 ( n461,t_reg_1_,n448 );
   nand U500 ( n460,n449,n462 );
   nand U501 ( n464,t_reg_5_,n448 );
   nand U502 ( n463,n449,n465 );
   nand U503 ( n467,t_reg_3_,n448 );
   nand U504 ( n466,n449,n468 );
   nor U505 ( n469,n471,n472 );
   nor U506 ( n472,n473,n440 );
   nor U507 ( n471,n444,n474 );
   or U508 ( n476,n477,mar_reg_0_ );
   or U509 ( n475,n478,n479 );
   nand U510 ( n481,mar_reg_1_,n482 );
   nand U511 ( n480,n483,n484 );
   nor U512 ( n483,n479,n477 );
   nand U513 ( n486,mar_reg_2_,n487 );
   nand U514 ( n487,n488,n489 );
   nand U515 ( n489,n490,n484 );
   not U516 ( n488,n482 );
   nand U517 ( n482,n478,n491 );
   nand U518 ( n491,n490,n479 );
   nand U519 ( n485,n492,n493 );
   not U520 ( n493,mar_reg_2_ );
   nor U521 ( n492,n477,n494 );
   nand U522 ( n494,mar_reg_0_,mar_reg_1_ );
   nand U523 ( n496,mar_reg_3_,n497 );
   nand U524 ( n497,n478,n498 );
   nand U525 ( n498,n499,n490 );
   nand U526 ( n495,n500,n501 );
   nor U527 ( n500,n499,n477 );
   nand U528 ( n477,n478,n490 );
   not U529 ( n490,n502 );
   nand U530 ( n504,punti_retta_reg_7_,n505 );
   nor U531 ( n503,n506,n507 );
   nor U532 ( n507,n508,n509 );
   nor U533 ( n506,n510,n511 );
   not U534 ( n511,cont_reg_7_ );
   nand U535 ( n513,punti_retta_reg_6_,n505 );
   nor U536 ( n512,n514,n515 );
   nor U537 ( n515,n516,n509 );
   nor U538 ( n514,n517,n510 );
   not U539 ( n517,cont_reg_6_ );
   nand U540 ( n519,punti_retta_reg_5_,n505 );
   nor U541 ( n518,n520,n521 );
   nor U542 ( n521,n522,n509 );
   nor U543 ( n520,n523,n510 );
   not U544 ( n523,cont_reg_5_ );
   nand U545 ( n525,punti_retta_reg_4_,n505 );
   nor U546 ( n524,n526,n527 );
   nor U547 ( n527,n528,n509 );
   nor U548 ( n526,n529,n510 );
   not U549 ( n529,cont_reg_4_ );
   nand U550 ( n531,punti_retta_reg_3_,n505 );
   nor U551 ( n530,n532,n533 );
   nor U552 ( n533,n534,n509 );
   nor U553 ( n532,n535,n510 );
   not U554 ( n535,cont_reg_3_ );
   nand U555 ( n537,punti_retta_reg_2_,n505 );
   nor U556 ( n536,n538,n539 );
   nor U557 ( n539,n540,n509 );
   nor U558 ( n538,n541,n510 );
   not U559 ( n541,cont_reg_2_ );
   nand U560 ( n543,punti_retta_reg_1_,n505 );
   nor U561 ( n542,n544,n545 );
   nor U562 ( n545,n546,n509 );
   nor U563 ( n544,n547,n510 );
   not U564 ( n547,cont_reg_1_ );
   nand U565 ( n549,punti_retta_reg_0_,n505 );
   nor U566 ( n548,n550,n551 );
   nor U567 ( n551,n552,n510 );
   nand U568 ( n510,n553,n554 );
   not U569 ( n554,n505 );
   nor U570 ( n553,n555,n556 );
   not U571 ( n552,cont_reg_0_ );
   nor U572 ( n550,n557,n509 );
   nand U573 ( n509,n558,n555 );
   nor U574 ( n558,n556,n505 );
   nand U575 ( n505,n559,n560 );
   nand U576 ( n560,n561,n562 );
   nand U577 ( n561,n502,stato_reg_0_ );
   nand U578 ( n564,n565,n566 );
   not U579 ( n566,n508 );
   nand U580 ( n563,n567,cont_reg_7_ );
   nand U581 ( n569,n565,n453 );
   nand U582 ( n568,n567,cont_reg_6_ );
   nand U583 ( n571,n565,n465 );
   nand U584 ( n570,n567,cont_reg_5_ );
   nand U585 ( n573,n565,n456 );
   nand U586 ( n572,n567,cont_reg_4_ );
   nand U587 ( n575,n565,n468 );
   nand U588 ( n574,n567,cont_reg_3_ );
   nand U589 ( n577,n565,n450 );
   nand U590 ( n576,n567,cont_reg_2_ );
   nand U591 ( n579,n565,n462 );
   not U592 ( n462,n546 );
   nand U593 ( n578,n567,cont_reg_1_ );
   nand U594 ( n581,n565,n459 );
   not U595 ( n459,n557 );
   nor U596 ( n565,n556,n567 );
   nand U597 ( n580,n567,cont_reg_0_ );
   and U598 ( n567,n582,n583 );
   nand U599 ( n583,n584,n502 );
   nor U600 ( n584,n585,n559 );
   not U601 ( n559,start );
   nand U602 ( n582,n586,n555 );
   and U603 ( n555,n587,n588 );
   nor U604 ( n588,n589,n590 );
   nand U605 ( n590,n591,n592 );
   or U606 ( n589,x_reg_6_,x_reg_7_ );
   nor U607 ( n587,n593,n594 );
   nand U608 ( n594,x_reg_1_,n595 );
   nand U609 ( n593,n596,n597 );
   not U610 ( n600,mar_reg_5_ );
   nand U611 ( n478,n602,n603 );
   nand U612 ( n603,n604,start );
   nor U613 ( n604,stato_reg_2_,n585 );
   nor U614 ( n602,n449,n586 );
   nand U615 ( n606,x_reg_7_,n607 );
   nor U616 ( n605,n608,n609 );
   nor U617 ( n609,n508,n610 );
   xor U618 ( n508,n611,n612 );
   nand U619 ( n612,cont_reg_7_,n613 );
   nor U620 ( n611,n614,n615 );
   nor U621 ( n615,n616,n617 );
   nor U622 ( n614,n618,n619 );
   and U623 ( n618,n617,n616 );
   nand U624 ( n621,x_reg_6_,n607 );
   nor U625 ( n620,n608,n622 );
   nor U626 ( n622,n516,n610 );
   not U627 ( n516,n453 );
   xor U628 ( n453,n623,n616 );
   and U629 ( n616,n624,n625 );
   nand U630 ( n625,n626,n627 );
   nand U631 ( n627,n628,n629 );
   not U632 ( n626,n630 );
   or U633 ( n624,n628,n629 );
   xor U634 ( n623,n617,n619 );
   nand U635 ( n619,n631,n632 );
   nand U636 ( n632,x_reg_6_,n556 );
   nor U637 ( n631,n633,n634 );
   and U638 ( n634,n635,y_reg_6_ );
   and U639 ( n633,n636,t_reg_6_ );
   nand U640 ( n617,n637,n638 );
   not U641 ( n638,x_reg_6_ );
   nand U642 ( n637,cont_reg_6_,n613 );
   nand U643 ( n640,x_reg_5_,n607 );
   nor U644 ( n639,n608,n641 );
   nor U645 ( n641,n522,n610 );
   not U646 ( n522,n465 );
   xor U647 ( n465,n642,n629 );
   nand U648 ( n629,n643,n644 );
   nand U649 ( n644,n645,n646 );
   or U650 ( n645,n647,n648 );
   nand U651 ( n643,n648,n647 );
   xor U652 ( n642,n628,n630 );
   nand U653 ( n630,n649,n650 );
   nand U654 ( n650,x_reg_5_,n556 );
   nor U655 ( n649,n651,n652 );
   and U656 ( n652,n635,y_reg_5_ );
   and U657 ( n651,n636,t_reg_5_ );
   nand U658 ( n628,n592,n653 );
   nand U659 ( n653,cont_reg_5_,n613 );
   not U660 ( n592,x_reg_5_ );
   nand U661 ( n655,x_reg_4_,n607 );
   nor U662 ( n654,n608,n656 );
   nor U663 ( n656,n528,n610 );
   not U664 ( n528,n456 );
   xor U665 ( n456,n657,n648 );
   nand U666 ( n648,n658,n659 );
   nand U667 ( n659,n660,n661 );
   or U668 ( n660,n662,n663 );
   nand U669 ( n658,n663,n662 );
   xor U670 ( n657,n647,n646 );
   nand U671 ( n646,n664,n665 );
   nand U672 ( n665,x_reg_4_,n556 );
   nor U673 ( n664,n666,n667 );
   and U674 ( n667,n635,y_reg_4_ );
   and U675 ( n666,n636,t_reg_4_ );
   nand U676 ( n647,n591,n668 );
   nand U677 ( n668,cont_reg_4_,n613 );
   not U678 ( n591,x_reg_4_ );
   nand U679 ( n670,x_reg_3_,n607 );
   nor U680 ( n669,n608,n671 );
   nor U681 ( n671,n534,n610 );
   not U682 ( n534,n468 );
   xor U683 ( n468,n663,n672 );
   xor U684 ( n672,n662,n661 );
   nand U685 ( n661,n673,n674 );
   nand U686 ( n674,n675,n676 );
   or U687 ( n675,n677,n678 );
   nand U688 ( n673,n678,n677 );
   nand U689 ( n662,n679,n597 );
   not U690 ( n597,x_reg_3_ );
   nand U691 ( n679,cont_reg_3_,n613 );
   nand U692 ( n663,n680,n681 );
   nand U693 ( n681,x_reg_3_,n556 );
   nor U694 ( n680,n682,n683 );
   and U695 ( n683,n635,y_reg_3_ );
   and U696 ( n682,n636,t_reg_3_ );
   nand U697 ( n685,x_reg_2_,n607 );
   nor U698 ( n684,n686,n687 );
   nor U699 ( n687,n441,n688 );
   nor U700 ( n686,n540,n610 );
   not U701 ( n540,n450 );
   xor U702 ( n450,n689,n678 );
   and U703 ( n678,n690,n691 );
   nand U704 ( n691,n692,n693 );
   nand U705 ( n692,n694,n695 );
   or U706 ( n690,n694,n695 );
   xor U707 ( n689,n677,n676 );
   nand U708 ( n676,n696,n697 );
   nand U709 ( n697,x_reg_2_,n556 );
   nor U710 ( n696,n698,n699 );
   and U711 ( n699,y_reg_2_,n635 );
   and U712 ( n698,n636,t_reg_2_ );
   nand U713 ( n677,n700,n596 );
   not U714 ( n596,x_reg_2_ );
   nand U715 ( n700,cont_reg_2_,n613 );
   nor U716 ( n702,n608,n703 );
   nor U717 ( n703,n473,n688 );
   not U718 ( n688,n704 );
   and U719 ( n473,n705,n706 );
   or U720 ( n706,n499,n501 );
   not U721 ( n501,mar_reg_3_ );
   nand U722 ( n705,mar_reg_0_,n484 );
   and U723 ( n608,n704,n707 );
   nor U724 ( n701,n708,n709 );
   and U725 ( n709,n607,x_reg_1_ );
   nor U726 ( n708,n546,n610 );
   xor U727 ( n546,n710,n695 );
   nand U728 ( n695,n711,n712 );
   nand U729 ( n712,x_reg_1_,n713 );
   nand U730 ( n713,n714,stato_reg_2_ );
   nor U731 ( n714,n635,n636 );
   nand U732 ( n711,cont_reg_1_,n613 );
   xor U733 ( n710,n694,n693 );
   nand U734 ( n694,n715,n716 );
   nand U735 ( n716,x_reg_1_,n556 );
   nor U736 ( n715,n717,n718 );
   nor U737 ( n718,n719,n474 );
   not U738 ( n474,y_reg_1_ );
   and U739 ( n717,n636,t_reg_1_ );
   nand U740 ( n721,x_reg_0_,n607 );
   nor U741 ( n720,n722,n723 );
   and U742 ( n723,n445,n704 );
   nor U743 ( n704,n607,stato_reg_2_ );
   nand U744 ( n445,n441,n724 );
   nor U745 ( n441,n707,n725 );
   nor U746 ( n722,n557,n610 );
   or U747 ( n610,n607,n556 );
   nand U748 ( n607,n726,n727 );
   nor U749 ( n726,n449,n502 );
   nand U750 ( n557,n728,n693 );
   nand U751 ( n693,n729,n730 );
   nand U752 ( n730,n731,n732 );
   not U753 ( n732,n733 );
   nor U754 ( n731,n734,n735 );
   nand U755 ( n729,n736,n595 );
   not U756 ( n595,x_reg_0_ );
   nand U757 ( n736,cont_reg_0_,n613 );
   or U758 ( n613,n586,n737 );
   nor U759 ( n586,n727,n738 );
   not U760 ( n727,n734 );
   nand U761 ( n728,n739,n740 );
   nor U762 ( n740,x_reg_0_,n734 );
   nor U763 ( n739,n735,n733 );
   nand U764 ( n733,n741,n742 );
   nand U765 ( n742,t_reg_0_,n636 );
   nand U766 ( n741,x_reg_0_,n556 );
   and U767 ( n735,n635,y_reg_0_ );
   nand U768 ( n743,y_reg_3_,n440 );
   nand U769 ( n744,y_reg_5_,n440 );
   nand U770 ( n745,y_reg_4_,n440 );
   nand U771 ( n746,y_reg_6_,n440 );
   nand U772 ( n470,n444,n707 );
   nand U773 ( n707,n747,n748 );
   nand U774 ( n748,n725,n479 );
   and U775 ( n725,n749,mar_reg_3_ );
   nor U776 ( n749,mar_reg_2_,n484 );
   or U777 ( n747,n724,n479 );
   nand U778 ( n724,n750,n484 );
   nor U779 ( n750,mar_reg_3_,mar_reg_2_ );
   not U780 ( n444,n440 );
   nand U781 ( n440,n636,stato_reg_2_ );
   nand U782 ( n752,n585,n556 );
   nor U783 ( n751,n636,n753 );
   nor U784 ( n753,start,n754 );
   nor U785 ( n754,n737,n502 );
   nor U786 ( n502,stato_reg_1_,stato_reg_2_ );
   not U787 ( n737,n562 );
   nand U788 ( n562,n738,n734 );
   nor U789 ( n734,n755,n556 );
   nor U790 ( n636,stato_reg_0_,stato_reg_1_ );
   not U791 ( n719,n635 );
   nor U792 ( n635,n585,n556 );
   nor U793 ( n756,n757,n758 );
   nor U794 ( n758,n585,n759 );
   nand U795 ( n759,start,n755 );
   nor U796 ( n757,stato_reg_0_,n760 );
   nand U797 ( n760,stato_reg_1_,n761 );
   nand U798 ( n761,n762,n738 );
   nor U799 ( n762,start,n556 );
   not U800 ( n556,stato_reg_2_ );
   nand U801 ( n763,n764,stato_reg_2_ );
   nand U802 ( n764,stato_reg_1_,n765 );
   nand U803 ( n765,start,n738 );
   and U804 ( n738,n766,n767 );
   nor U805 ( n767,mar_reg_5_,n768 );
   nand U806 ( n768,n599,n598 );
   not U807 ( n598,mar_reg_7_ );
   not U808 ( n599,mar_reg_6_ );
   nor U809 ( n766,n499,n769 );
   nand U810 ( n769,mar_reg_3_,n601 );
   not U811 ( n601,mar_reg_4_ );
   nand U812 ( n499,n770,mar_reg_2_ );
   nor U813 ( n770,n484,n479 );
   not U814 ( n479,mar_reg_0_ );
   not U815 ( n484,mar_reg_1_ );
   not U816 ( n448,n449 );
   nor U817 ( n449,n755,n585 );
   not U818 ( n585,stato_reg_0_ );
   not U819 ( n755,stato_reg_1_ );
endmodule
