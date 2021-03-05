
module b13 ( eoc, data_in_7_, data_in_6_, data_in_5_, data_in_4_, data_in_3_,
data_in_2_, data_in_1_, data_in_0_, dsr, conta_tmp_reg_3_,
conta_tmp_reg_2_, conta_tmp_reg_1_, conta_tmp_reg_0_,
itfc_state_reg_1_, itfc_state_reg_0_, out_reg_reg_7_, out_reg_reg_6_,
out_reg_reg_5_, out_reg_reg_4_, out_reg_reg_3_, out_reg_reg_2_,
out_reg_reg_1_, out_reg_reg_0_, next_bit_reg_3_, next_bit_reg_2_,
next_bit_reg_1_, next_bit_reg_0_, tx_conta_reg_9_, tx_conta_reg_8_,
tx_conta_reg_7_, tx_conta_reg_6_, tx_conta_reg_5_, tx_conta_reg_4_,
tx_conta_reg_3_, tx_conta_reg_2_, tx_conta_reg_1_, tx_conta_reg_0_,
load_reg, send_data_reg, send_en_reg, tre_reg, send_reg, mpx_reg,
confirm_reg, shot_reg, rdy_reg, s1_reg_2_, s1_reg_1_, s1_reg_0_,
s2_reg_1_, s2_reg_0_, tx_end_reg, u416, u415, u414, u413, u417, u412,
u411, u410, u452, u409, u453, u454, u455, u456, u457, u458, u459, u460,
u461, u408, u407, u462, u406, u405, u404, u403, u402, u401, u400, u399,
u398, u397, u396, u395, u394, u393, u392, u391, u450, u390, u389, u388,
u387, u386, u385, u451, u383, u464, u384, u463, u382, u381, u380 );
input eoc, data_in_7_, data_in_6_, data_in_5_, data_in_4_, data_in_3_,
data_in_2_, data_in_1_, data_in_0_, dsr, conta_tmp_reg_3_,
conta_tmp_reg_2_, conta_tmp_reg_1_, conta_tmp_reg_0_,
itfc_state_reg_1_, itfc_state_reg_0_, out_reg_reg_7_, out_reg_reg_6_,
out_reg_reg_5_, out_reg_reg_4_, out_reg_reg_3_, out_reg_reg_2_,
out_reg_reg_1_, out_reg_reg_0_, next_bit_reg_3_, next_bit_reg_2_,
next_bit_reg_1_, next_bit_reg_0_, tx_conta_reg_9_, tx_conta_reg_8_,
tx_conta_reg_7_, tx_conta_reg_6_, tx_conta_reg_5_, tx_conta_reg_4_,
tx_conta_reg_3_, tx_conta_reg_2_, tx_conta_reg_1_, tx_conta_reg_0_,
load_reg, send_data_reg, send_en_reg, tre_reg, send_reg, mpx_reg,
confirm_reg, shot_reg, rdy_reg, s1_reg_2_, s1_reg_1_, s1_reg_0_,
s2_reg_1_, s2_reg_0_, tx_end_reg;
output u416, u415, u414, u413, u417, u412, u411, u410, u452, u409, u453,
u454, u455, u456, u457, u458, u459, u460, u461, u408, u407, u462,
u406, u405, u404, u403, u402, u401, u400, u399, u398, u397, u396,
u395, u394, u393, u392, u391, u450, u390, u389, u388, u387, u386,
u385, u451, u383, u464, u384, u463, u382, u381, u380;
wire   n669, n670, n671, n672, n673, n674, n675, n676, n677, n678, n679,
n326, n328, n330, n332, n334, n336, n338, n340, n342, n344, n346,
n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534,
n535, n536, n537, n538, n539, n540, n541, n542, n543, n544, n545,
n546, n547, n548, n549, n550, n551, n552, n553, n554, n555, n556,
n557, n558, n559, n560, n561, n562, n563, n564, n565, n566, n567,
n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578,
n579, n580, n581, n582, n583, n584, n585, n586, n587, n588, n589,
n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600,
n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611,
n612, n613, n614, n615, n616, n617, n618, n619, n620, n621, n622,
n623, n624, n625, n626, n627, n628, n629, n630, n631, n632, n633,
n634, n635, n636, n637, n638, n639, n640, n641, n642, n643, n644,
n645, n646, n647, n648, n649, n650, n651, n652, n653, n654, n655,
n656, n657, n658, n659, n660, n661, n662, n663, n664, n665, n666,
n667, n668;

   not U380 ( n326,n674 );
   not U381 ( u404,n326 );
   not U382 ( n328,n673 );
   not U383 ( u405,n328 );
   not U384 ( n330,n672 );
   not U385 ( u406,n330 );
   not U386 ( n332,n675 );
   not U387 ( u393,n332 );
   not U388 ( n334,n676 );
   not U389 ( u391,n334 );
   not U390 ( n336,n677 );
   not U391 ( u450,n336 );
   not U392 ( n338,n671 );
   not U393 ( u417,n338 );
   not U394 ( n340,n679 );
   not U395 ( u381,n340 );
   not U396 ( n342,n669 );
   not U397 ( u416,n342 );
   not U398 ( n344,n678 );
   not U399 ( u386,n344 );
   buf U400 ( n346,n670 );
   buf U401 ( n348,n670 );
   buf U402 ( u413,n670 );
   not U403 ( u464,n349 );
   nor U404 ( n349,n350,n351 );
   nor U405 ( n351,n352,n353 );
   nor U406 ( n352,n354,n355 );
   nor U407 ( n354,s1_reg_2_,n356 );
   nor U408 ( n350,s1_reg_0_,n357 );
   not U409 ( u463,n358 );
   nor U410 ( n358,n359,n360 );
   nor U411 ( n359,s2_reg_0_,n361 );
   not U412 ( n361,n362 );
   nor U413 ( n362,n363,n364 );
   nor U414 ( n363,mpx_reg,n365 );
   not U415 ( u462,n366 );
   nor U416 ( n366,n367,n368 );
   nor U417 ( n368,n369,n370 );
   nor U418 ( n369,n371,next_bit_reg_3_ );
   nor U419 ( n371,next_bit_reg_0_,n372 );
   nor U420 ( n367,n373,n374 );
   not U421 ( u461,n375 );
   nor U422 ( n375,n376,n377 );
   nor U423 ( n377,n378,n379 );
   nor U424 ( n376,n380,n381 );
   not U425 ( u460,n382 );
   nor U426 ( n382,n383,n384 );
   nor U427 ( n384,n385,n386 );
   not U428 ( n386,data_in_0_ );
   nor U429 ( n383,n387,n388 );
   not U430 ( u459,n389 );
   nor U431 ( n389,n390,n391 );
   nor U432 ( n391,n385,n392 );
   not U433 ( n392,data_in_1_ );
   nor U434 ( n390,n387,n393 );
   not U435 ( u458,n394 );
   nor U436 ( n394,n395,n396 );
   nor U437 ( n396,n385,n397 );
   not U438 ( n397,data_in_2_ );
   nor U439 ( n395,n387,n398 );
   not U440 ( u457,n399 );
   nor U441 ( n399,n400,n401 );
   nor U442 ( n401,n385,n402 );
   not U443 ( n402,data_in_3_ );
   nor U444 ( n400,n387,n403 );
   not U445 ( u456,n404 );
   nor U446 ( n404,n405,n406 );
   nor U447 ( n406,n385,n407 );
   not U448 ( n407,data_in_4_ );
   nor U449 ( n405,n387,n408 );
   not U450 ( u455,n409 );
   nor U451 ( n409,n410,n411 );
   nor U452 ( n411,n385,n412 );
   not U453 ( n412,data_in_5_ );
   nor U454 ( n410,n387,n413 );
   not U455 ( u454,n414 );
   nor U456 ( n414,n415,n416 );
   nor U457 ( n416,n385,n417 );
   not U458 ( n417,data_in_6_ );
   nor U459 ( n415,n387,n418 );
   not U460 ( u453,n419 );
   nor U461 ( n419,n420,n421 );
   nor U462 ( n421,n385,n422 );
   not U463 ( n422,data_in_7_ );
   not U464 ( n385,n387 );
   nor U465 ( n420,n387,n423 );
   nor U466 ( n387,tre_reg,n424 );
   not U467 ( u452,n425 );
   nor U468 ( n425,n426,n427 );
   not U469 ( u451,n428 );
   nor U470 ( n428,n429,n430 );
   nor U471 ( n430,send_reg,n431 );
   not U472 ( n431,n432 );
   nor U473 ( n432,n424,n433 );
   nor U474 ( n429,n434,n435 );
   nor U475 ( n677,s1_reg_2_,n436 );
   nor U476 ( n671,n437,n438 );
   nor U477 ( n437,n439,n440 );
   not U478 ( n439,n441 );
   nor U479 ( n669,n438,n442 );
   not U480 ( n438,conta_tmp_reg_3_ );
   not U481 ( u415,n443 );
   nor U482 ( n443,n444,n445 );
   nor U483 ( n444,n446,n442 );
   not U484 ( u414,n447 );
   nor U485 ( n447,n448,n449 );
   nor U486 ( n448,n450,n451 );
   not U487 ( n451,n346 );
   not U488 ( u412,n452 );
   nor U489 ( n452,n453,n445 );
   nor U490 ( n445,n442,n454 );
   nor U491 ( n453,n455,n446 );
   nor U492 ( n455,n450,n456 );
   not U493 ( n456,n457 );
   not U494 ( u411,n458 );
   nor U495 ( n458,n459,n449 );
   nor U496 ( n449,n442,n460 );
   not U497 ( n460,n461 );
   nor U498 ( n461,conta_tmp_reg_1_,n462 );
   nor U499 ( n459,n457,n450 );
   nor U500 ( n457,n462,n440 );
   not U501 ( u410,n463 );
   nor U502 ( n463,n464,n348 );
   nor U503 ( n670,conta_tmp_reg_0_,n442 );
   not U504 ( n442,n465 );
   nor U505 ( n465,n441,n440 );
   not U506 ( n440,n466 );
   nor U507 ( n441,n446,n454 );
   not U508 ( n454,n467 );
   nor U509 ( n467,n462,n450 );
   not U510 ( n450,conta_tmp_reg_1_ );
   not U511 ( n446,conta_tmp_reg_2_ );
   nor U512 ( n464,n466,n462 );
   not U513 ( n462,conta_tmp_reg_0_ );
   nor U514 ( n466,n357,n436 );
   not U515 ( n436,n468 );
   not U516 ( u409,n469 );
   nor U517 ( n469,n427,n470 );
   nor U518 ( n470,itfc_state_reg_0_,n471 );
   nor U519 ( n427,n472,n473 );
   not U520 ( u408,n474 );
   nor U521 ( n474,n475,n476 );
   not U522 ( n476,n477 );
   nor U523 ( n477,n478,n479 );
   nor U524 ( n479,n379,n480 );
   nor U525 ( n478,n380,n481 );
   not U526 ( u407,n482 );
   nor U527 ( n482,n483,n484 );
   nor U528 ( n484,n380,n485 );
   nor U529 ( n483,n486,n487 );
   nor U530 ( n487,n488,n380 );
   nor U531 ( n488,n370,n489 );
   not U532 ( n489,n490 );
   nor U533 ( n490,next_bit_reg_3_,next_bit_reg_2_ );
   nor U534 ( n486,n475,n374 );
   nor U535 ( n672,send_en_reg,n491 );
   not U536 ( n491,tx_conta_reg_9_ );
   nor U537 ( n673,send_en_reg,n492 );
   not U538 ( n492,tx_conta_reg_8_ );
   nor U539 ( n674,send_en_reg,n493 );
   not U540 ( n493,tx_conta_reg_7_ );
   not U541 ( u403,n494 );
   nor U542 ( n494,n495,n496 );
   nor U543 ( n496,n497,n498 );
   nor U544 ( n497,n499,n500 );
   nor U545 ( n495,n501,n502 );
   not U546 ( n502,n503 );
   nor U547 ( n503,n504,n505 );
   not U548 ( u402,n506 );
   nor U549 ( n506,n507,n508 );
   nor U550 ( n508,tx_conta_reg_5_,n509 );
   not U551 ( n509,n510 );
   nor U552 ( n510,n505,n501 );
   not U553 ( n505,n511 );
   nor U554 ( n507,n512,n504 );
   nor U555 ( n512,n513,n500 );
   nor U556 ( n513,n511,n501 );
   nor U557 ( n511,n514,n515 );
   not U558 ( u401,n516 );
   nor U559 ( n516,n517,n518 );
   nor U560 ( n518,tx_conta_reg_4_,n519 );
   not U561 ( n519,n520 );
   nor U562 ( n520,n501,n515 );
   not U563 ( n515,n521 );
   nor U564 ( n521,n522,n523 );
   nor U565 ( n517,n524,n514 );
   not U566 ( n514,tx_conta_reg_4_ );
   nor U567 ( n524,n525,n526 );
   not U568 ( n526,n527 );
   nor U569 ( n525,tx_conta_reg_3_,n501 );
   not U570 ( u400,n528 );
   nor U571 ( n528,n529,n530 );
   nor U572 ( n530,tx_conta_reg_3_,n531 );
   not U573 ( n531,n532 );
   nor U574 ( n532,n523,n501 );
   not U575 ( n523,n533 );
   nor U576 ( n529,n527,n522 );
   nor U577 ( n527,n534,n500 );
   nor U578 ( n534,n533,n501 );
   nor U579 ( n533,n535,n536 );
   not U580 ( u399,n537 );
   nor U581 ( n537,n538,n539 );
   nor U582 ( n539,tx_conta_reg_2_,n540 );
   not U583 ( n540,n541 );
   nor U584 ( n541,n501,n536 );
   not U585 ( n536,n542 );
   nor U586 ( n542,n543,n544 );
   nor U587 ( n538,n545,n535 );
   not U588 ( n535,tx_conta_reg_2_ );
   nor U589 ( n545,n546,n547 );
   not U590 ( n547,n548 );
   nor U591 ( n546,tx_conta_reg_1_,n501 );
   not U592 ( u398,n549 );
   nor U593 ( n549,n550,n551 );
   nor U594 ( n551,tx_conta_reg_1_,n552 );
   not U595 ( n552,n553 );
   nor U596 ( n553,n543,n501 );
   nor U597 ( n550,n548,n544 );
   not U598 ( n544,tx_conta_reg_1_ );
   nor U599 ( n548,n554,n500 );
   not U600 ( u397,n555 );
   nor U601 ( n555,n556,n554 );
   nor U602 ( n554,tx_conta_reg_0_,n501 );
   not U603 ( n501,n499 );
   nor U604 ( n499,n500,n557 );
   not U605 ( n557,n558 );
   nor U606 ( n556,send_en_reg,n543 );
   not U607 ( n543,tx_conta_reg_0_ );
   not U608 ( u396,n559 );
   nor U609 ( n559,n560,n561 );
   nor U610 ( n561,n426,n424 );
   not U611 ( n424,load_reg );
   nor U612 ( n560,n471,n562 );
   not U613 ( n562,n563 );
   nor U614 ( n563,itfc_state_reg_1_,itfc_state_reg_0_ );
   not U615 ( u395,n564 );
   nor U616 ( n564,n565,n566 );
   nor U617 ( n566,n567,n568 );
   nor U618 ( n565,n569,n570 );
   nor U619 ( n569,n353,n571 );
   not U620 ( n571,n356 );
   nor U621 ( n356,n572,n567 );
   not U622 ( u394,n573 );
   nor U623 ( n573,n574,n575 );
   nor U624 ( n575,tx_end_reg,n500 );
   nor U625 ( n574,n435,n576 );
   not U626 ( n576,n434 );
   nor U627 ( n434,n433,n577 );
   not U628 ( n577,dsr );
   not U629 ( n433,tre_reg );
   nor U630 ( n675,s1_reg_0_,n578 );
   not U631 ( n578,n579 );
   nor U632 ( n579,s1_reg_2_,s1_reg_1_ );
   not U633 ( u392,n580 );
   nor U634 ( n580,load_reg,n581 );
   not U635 ( n581,n582 );
   nor U636 ( n582,tx_end_reg,tre_reg );
   nor U637 ( n676,n568,n583 );
   not U638 ( n583,n355 );
   nor U639 ( n355,s1_reg_1_,eoc );
   not U640 ( n568,n584 );
   not U641 ( u390,n585 );
   nor U642 ( n585,n586,n426 );
   nor U643 ( n426,itfc_state_reg_1_,n587 );
   nor U644 ( n586,n588,n435 );
   not U645 ( n435,send_reg );
   nor U646 ( n588,itfc_state_reg_0_,n473 );
   not U647 ( u389,n589 );
   nor U648 ( n589,n590,n678 );
   nor U649 ( n590,n591,n592 );
   not U650 ( u388,n593 );
   nor U651 ( n593,n594,n595 );
   nor U652 ( n595,n365,n587 );
   nor U653 ( n594,n596,n473 );
   not U654 ( n473,itfc_state_reg_1_ );
   nor U655 ( n596,n472,confirm_reg );
   nor U656 ( n472,n587,n597 );
   not U657 ( n597,tx_end_reg );
   not U658 ( n587,itfc_state_reg_0_ );
   not U659 ( u387,n598 );
   nor U660 ( n598,n599,n360 );
   nor U661 ( n360,s2_reg_1_,n600 );
   not U662 ( n600,s2_reg_0_ );
   nor U663 ( n599,n601,n471 );
   not U664 ( n471,shot_reg );
   nor U665 ( n601,n364,n602 );
   not U666 ( n602,n603 );
   nor U667 ( n603,s2_reg_0_,confirm_reg );
   nor U668 ( n678,mpx_reg,n604 );
   not U669 ( u385,n605 );
   nor U670 ( n605,n606,n607 );
   nor U671 ( n606,n608,n572 );
   not U672 ( n572,rdy_reg );
   nor U673 ( n608,n592,n604 );
   not U674 ( n604,n591 );
   not U675 ( n592,mpx_reg );
   not U676 ( u384,n609 );
   nor U677 ( n609,n353,n610 );
   not U678 ( n610,n611 );
   nor U679 ( n611,n612,n613 );
   nor U680 ( n613,n567,n614 );
   not U681 ( n614,n615 );
   nor U682 ( n615,s1_reg_2_,rdy_reg );
   nor U683 ( n612,s1_reg_1_,n616 );
   not U684 ( n616,n617 );
   nor U685 ( n617,n357,n618 );
   not U686 ( n618,eoc );
   not U687 ( u383,n619 );
   nor U688 ( n619,n468,n584 );
   nor U689 ( n584,n353,n357 );
   not U690 ( n357,s1_reg_2_ );
   not U691 ( n353,s1_reg_0_ );
   nor U692 ( n468,s1_reg_0_,n567 );
   not U693 ( n567,s1_reg_1_ );
   not U694 ( u382,n620 );
   nor U695 ( n620,n607,n591 );
   nor U696 ( n591,n364,n621 );
   not U697 ( n621,n622 );
   nor U698 ( n622,s2_reg_0_,n365 );
   not U699 ( n365,confirm_reg );
   not U700 ( n364,s2_reg_1_ );
   nor U701 ( n607,n570,n623 );
   not U702 ( n623,n624 );
   nor U703 ( n624,s2_reg_1_,s2_reg_0_ );
   not U704 ( n570,send_data_reg );
   nor U705 ( n679,n625,n626 );
   not U706 ( n626,n627 );
   nor U707 ( n627,next_bit_reg_3_,n379 );
   not U708 ( n379,n380 );
   nor U709 ( n380,n370,n374 );
   not U710 ( u380,n628 );
   nor U711 ( n628,n370,n629 );
   not U712 ( n629,n630 );
   nor U713 ( n630,n631,n632 );
   nor U714 ( n632,next_bit_reg_0_,n633 );
   nor U715 ( n633,n634,n635 );
   not U716 ( n635,n636 );
   nor U717 ( n636,n637,n638 );
   nor U718 ( n638,n381,n393 );
   not U719 ( n393,out_reg_reg_1_ );
   nor U720 ( n637,n413,n639 );
   not U721 ( n413,out_reg_reg_5_ );
   not U722 ( n634,n640 );
   nor U723 ( n640,n641,n642 );
   nor U724 ( n642,n378,n403 );
   not U725 ( n403,out_reg_reg_3_ );
   nor U726 ( n641,n423,n480 );
   not U727 ( n423,out_reg_reg_7_ );
   nor U728 ( n631,n643,n374 );
   not U729 ( n374,next_bit_reg_0_ );
   nor U730 ( n643,n644,n645 );
   not U731 ( n645,n646 );
   nor U732 ( n646,n647,n648 );
   not U733 ( n648,n649 );
   nor U734 ( n649,n650,n651 );
   nor U735 ( n651,n381,n388 );
   not U736 ( n388,out_reg_reg_0_ );
   not U737 ( n381,next_bit_reg_3_ );
   nor U738 ( n650,next_bit_reg_3_,n625 );
   not U739 ( n625,n372 );
   nor U740 ( n372,next_bit_reg_1_,next_bit_reg_2_ );
   nor U741 ( n647,n408,n639 );
   not U742 ( n639,n475 );
   nor U743 ( n475,next_bit_reg_1_,n481 );
   not U744 ( n408,out_reg_reg_4_ );
   not U745 ( n644,n652 );
   nor U746 ( n652,n653,n654 );
   nor U747 ( n654,n378,n398 );
   not U748 ( n398,out_reg_reg_2_ );
   not U749 ( n378,n655 );
   nor U750 ( n655,n485,n481 );
   not U751 ( n481,next_bit_reg_2_ );
   nor U752 ( n653,n418,n480 );
   not U753 ( n480,n656 );
   nor U754 ( n656,next_bit_reg_2_,n485 );
   not U755 ( n485,next_bit_reg_1_ );
   not U756 ( n418,out_reg_reg_6_ );
   not U757 ( n370,n373 );
   nor U758 ( n373,n558,n500 );
   not U759 ( n500,send_en_reg );
   nor U760 ( n558,n657,n658 );
   not U761 ( n658,n659 );
   nor U762 ( n659,tx_conta_reg_7_,n660 );
   nor U763 ( n660,n498,n661 );
   not U764 ( n661,n662 );
   nor U765 ( n662,n663,n504 );
   not U766 ( n504,tx_conta_reg_5_ );
   nor U767 ( n663,tx_conta_reg_4_,n664 );
   nor U768 ( n664,n665,n522 );
   not U769 ( n522,tx_conta_reg_3_ );
   nor U770 ( n665,tx_conta_reg_0_,n666 );
   not U771 ( n666,n667 );
   nor U772 ( n667,tx_conta_reg_2_,tx_conta_reg_1_ );
   not U773 ( n498,tx_conta_reg_6_ );
   not U774 ( n657,n668 );
   nor U775 ( n668,tx_conta_reg_9_,tx_conta_reg_8_ );
endmodule
