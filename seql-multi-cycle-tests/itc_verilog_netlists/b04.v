
module b04 ( restart, average, enable, data_in_7_, data_in_6_, data_in_5_,
data_in_4_, data_in_3_, data_in_2_, data_in_1_, data_in_0_,
rmax_reg_7_, rmax_reg_6_, rmax_reg_5_, rmax_reg_4_, rmax_reg_3_,
rmax_reg_2_, rmax_reg_1_, rmax_reg_0_, rmin_reg_7_, rmin_reg_6_,
rmin_reg_5_, rmin_reg_4_, rmin_reg_3_, rmin_reg_2_, rmin_reg_1_,
rmin_reg_0_, rlast_reg_7_, rlast_reg_6_, rlast_reg_5_, rlast_reg_4_,
rlast_reg_3_, rlast_reg_2_, rlast_reg_1_, rlast_reg_0_, reg1_reg_7_,
reg1_reg_6_, reg1_reg_5_, reg1_reg_4_, reg1_reg_3_, reg1_reg_2_,
reg1_reg_1_, reg1_reg_0_, reg2_reg_7_, reg2_reg_6_, reg2_reg_5_,
reg2_reg_4_, reg2_reg_3_, reg2_reg_2_, reg2_reg_1_, reg2_reg_0_,
reg3_reg_7_, reg3_reg_6_, reg3_reg_5_, reg3_reg_4_, reg3_reg_3_,
reg3_reg_2_, reg3_reg_1_, reg3_reg_0_, reg4_reg_7_, reg4_reg_6_,
reg4_reg_5_, reg4_reg_4_, reg4_reg_3_, reg4_reg_2_, reg4_reg_1_,
reg4_reg_0_, stato_reg_1_, stato_reg_0_, data_out_reg_7_,
data_out_reg_6_, data_out_reg_5_, data_out_reg_4_, data_out_reg_3_,
data_out_reg_2_, data_out_reg_1_, data_out_reg_0_, u344, u343, u342,
u341, u340, u339, u338, u337, u336, u335, u334, u333, u332, u331, u330,
u329, u328, u327, u326, u325, u324, u323, u322, u321, u320, u319, u318,
u317, u316, u315, u314, u313, u312, u311, u310, u309, u308, u307, u306,
u305, u304, u303, u302, u301, u300, u299, u298, u297, u296, u295, u294,
u293, u292, u291, u290, u289, u288, u287, u286, u285, u284, u283, u282,
u281, u280, u375 );
input restart, average, enable, data_in_7_, data_in_6_, data_in_5_,
data_in_4_, data_in_3_, data_in_2_, data_in_1_, data_in_0_,
rmax_reg_7_, rmax_reg_6_, rmax_reg_5_, rmax_reg_4_, rmax_reg_3_,
rmax_reg_2_, rmax_reg_1_, rmax_reg_0_, rmin_reg_7_, rmin_reg_6_,
rmin_reg_5_, rmin_reg_4_, rmin_reg_3_, rmin_reg_2_, rmin_reg_1_,
rmin_reg_0_, rlast_reg_7_, rlast_reg_6_, rlast_reg_5_, rlast_reg_4_,
rlast_reg_3_, rlast_reg_2_, rlast_reg_1_, rlast_reg_0_, reg1_reg_7_,
reg1_reg_6_, reg1_reg_5_, reg1_reg_4_, reg1_reg_3_, reg1_reg_2_,
reg1_reg_1_, reg1_reg_0_, reg2_reg_7_, reg2_reg_6_, reg2_reg_5_,
reg2_reg_4_, reg2_reg_3_, reg2_reg_2_, reg2_reg_1_, reg2_reg_0_,
reg3_reg_7_, reg3_reg_6_, reg3_reg_5_, reg3_reg_4_, reg3_reg_3_,
reg3_reg_2_, reg3_reg_1_, reg3_reg_0_, reg4_reg_7_, reg4_reg_6_,
reg4_reg_5_, reg4_reg_4_, reg4_reg_3_, reg4_reg_2_, reg4_reg_1_,
reg4_reg_0_, stato_reg_1_, stato_reg_0_, data_out_reg_7_,
data_out_reg_6_, data_out_reg_5_, data_out_reg_4_, data_out_reg_3_,
data_out_reg_2_, data_out_reg_1_, data_out_reg_0_;
output u344, u343, u342, u341, u340, u339, u338, u337, u336, u335, u334,
u333, u332, u331, u330, u329, u328, u327, u326, u325, u324, u323,
u322, u321, u320, u319, u318, u317, u316, u315, u314, u313, u312,
u311, u310, u309, u308, u307, u306, u305, u304, u303, u302, u301,
u300, u299, u298, u297, u296, u295, u294, u293, u292, u291, u290,
u289, u288, u287, u286, u285, u284, u283, u282, u281, u280, u375;
wire   n475, n477, n479, n481, n483, n485, n487, n489, n491, n493, n495,
n497, n499, n501, n503, n505, n507, n509, n511, n513, n515, n517,
n519, n521, n523, n525, n527, n529, n531, n533, n535, n537, n539,
n541, n543, n545, n547, n549, n551, n553, n555, n557, n559, n561,
n563, n565, n567, n569, n571, n573, n575, n577, n579, n581, n583,
n585, n587, n589, n591, n593, n595, n597, n599, n601, n603, n604,
n605, n606, n607, n608, n609, n610, n611, n612, n613, n614, n615,
n616, n617, n618, n619, n620, n621, n622, n623, n624, n625, n626,
n627, n628, n629, n630, n631, n632, n633, n634, n635, n636, n637,
n638, n639, n640, n641, n642, n643, n644, n645, n646, n647, n648,
n649, n650, n651, n652, n653, n654, n655, n656, n657, n658, n659,
n660, n661, n662, n663, n664, n665, n666, n667, n668, n669, n670,
n671, n672, n673, n674, n675, n676, n677, n678, n679, n680, n681,
n682, n683, n684, n685, n686, n687, n688, n689, n690, n691, n692,
n693, n694, n695, n696, n697, n698, n699, n700, n701, n702, n703,
n704, n705, n706, n707, n708, n709, n710, n711, n712, n713, n714,
n715, n716, n717, n718, n719, n720, n721, n722, n723, n724, n725,
n726, n727, n728, n729, n730, n731, n732, n733, n734, n735, n736,
n737, n738, n739, n740, n741, n742, n743, n744, n745, n746, n747,
n748, n749, n750, n751, n752, n753, n754, n755, n756, n757, n758,
n759, n760, n761, n762, n763, n764, n765, n766, n767, n768, n769,
n770, n771, n772, n773, n774, n775, n776, n777, n778, n779, n780,
n781, n782, n783, n784, n785, n786, n787, n788, n789, n790, n791,
n792, n793, n794, n795, n796, n797, n798, n799, n800, n801, n802,
n803, n804, n805, n806, n807, n808, n809, n810, n811, n812, n813,
n814, n815, n816, n817, n818, n819, n820, n821, n822, n823, n824,
n825, n826, n827, n828, n829, n830, n831, n832, n833, n834, n835,
n836, n837, n838, n839, n840, n841, n842, n843, n844, n845, n846,
n847, n848, n849, n850, n851, n852, n853, n854, n855, n856, n857,
n858, n859, n860, n861, n862, n863, n864, n865, n866, n867, n868,
n869, n870, n871, n872, n873, n874, n875, n876, n877, n878, n879,
n880, n881, n882, n883, n884, n885, n886, n887, n888, n889, n890,
n891, n892, n893, n894, n895, n896, n897, n898, n899, n900, n901,
n902, n903, n904, n905, n906, n907, n908, n909, n910, n911, n912,
n913, n914, n915, n916, n917, n918, n919, n920, n921, n922, n923,
n924, n925, n926, n927, n928, n929, n930, n931, n932, n933, n934,
n935, n936, n937, n938, n939, n940, n941, n942, n943, n944, n945,
n946, n947, n948, n949, n950, n951, n952, n953, n954, n955, n956,
n957, n958, n959, n960, n961, n962, n963, n964, n965, n966, n967,
n968, n969, n970, n971, n972, n973, n974, n975, n976, n977, n978,
n979, n980, n981, n982, n983, n984, n985, n986, n987, n988, n989,
n990, n991, n992, n993, n994, n995, n996, n997, n998, n999, n1000,
n1001, n1002, n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010,
n1011, n1012, n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020,
n1021, n1022, n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030,
n1031, n1032, n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040,
n1041, n1042, n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050,
n1051, n1052, n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060,
n1061, n1062, n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070,
n1071, n1072, n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080,
n1081, n1082, n1083, n1084, n1085, n1086, n1087;

   and U541 ( n475,n988,n989 );
   not U542 ( u281,n475 );
   and U543 ( n477,n962,n963 );
   not U544 ( u282,n477 );
   and U545 ( n479,n934,n935 );
   not U546 ( u283,n479 );
   and U547 ( n481,n904,n905 );
   not U548 ( u284,n481 );
   and U549 ( n483,n867,n868 );
   not U550 ( u285,n483 );
   and U551 ( n485,n834,n835 );
   not U552 ( u286,n485 );
   and U553 ( n487,n819,n820 );
   not U554 ( u287,n487 );
   and U555 ( n489,n811,n812 );
   not U556 ( u288,n489 );
   and U557 ( n491,n809,n810 );
   not U558 ( u289,n491 );
   and U559 ( n493,n807,n808 );
   not U560 ( u290,n493 );
   and U561 ( n495,n805,n806 );
   not U562 ( u291,n495 );
   and U563 ( n497,n803,n804 );
   not U564 ( u292,n497 );
   and U565 ( n499,n801,n802 );
   not U566 ( u293,n499 );
   and U567 ( n501,n799,n800 );
   not U568 ( u294,n501 );
   and U569 ( n503,n797,n798 );
   not U570 ( u295,n503 );
   and U571 ( n505,n795,n796 );
   not U572 ( u296,n505 );
   and U573 ( n507,n793,n794 );
   not U574 ( u297,n507 );
   and U575 ( n509,n791,n792 );
   not U576 ( u298,n509 );
   and U577 ( n511,n789,n790 );
   not U578 ( u299,n511 );
   and U579 ( n513,n787,n788 );
   not U580 ( u300,n513 );
   and U581 ( n515,n785,n786 );
   not U582 ( u301,n515 );
   and U583 ( n517,n783,n784 );
   not U584 ( u302,n517 );
   and U585 ( n519,n781,n782 );
   not U586 ( u303,n519 );
   and U587 ( n521,n779,n780 );
   not U588 ( u304,n521 );
   and U589 ( n523,n777,n778 );
   not U590 ( u305,n523 );
   and U591 ( n525,n775,n776 );
   not U592 ( u306,n525 );
   and U593 ( n527,n773,n774 );
   not U594 ( u307,n527 );
   and U595 ( n529,n771,n772 );
   not U596 ( u308,n529 );
   and U597 ( n531,n769,n770 );
   not U598 ( u309,n531 );
   and U599 ( n533,n767,n768 );
   not U600 ( u310,n533 );
   and U601 ( n535,n765,n766 );
   not U602 ( u311,n535 );
   and U603 ( n537,n763,n764 );
   not U604 ( u312,n537 );
   and U605 ( n539,n761,n762 );
   not U606 ( u313,n539 );
   and U607 ( n541,n759,n760 );
   not U608 ( u314,n541 );
   and U609 ( n543,n757,n758 );
   not U610 ( u315,n543 );
   and U611 ( n545,n755,n756 );
   not U612 ( u316,n545 );
   and U613 ( n547,n753,n754 );
   not U614 ( u317,n547 );
   and U615 ( n549,n751,n752 );
   not U616 ( u318,n549 );
   and U617 ( n551,n749,n750 );
   not U618 ( u319,n551 );
   and U619 ( n553,n746,n747 );
   not U620 ( u320,n553 );
   and U621 ( n555,n741,n742 );
   not U622 ( u321,n555 );
   and U623 ( n557,n739,n740 );
   not U624 ( u322,n557 );
   and U625 ( n559,n737,n738 );
   not U626 ( u323,n559 );
   and U627 ( n561,n735,n736 );
   not U628 ( u324,n561 );
   and U629 ( n563,n733,n734 );
   not U630 ( u325,n563 );
   and U631 ( n565,n731,n732 );
   not U632 ( u326,n565 );
   and U633 ( n567,n729,n730 );
   not U634 ( u327,n567 );
   and U635 ( n569,n725,n726 );
   not U636 ( u328,n569 );
   and U637 ( n571,n647,n648 );
   not U638 ( u329,n571 );
   and U639 ( n573,n645,n646 );
   not U640 ( u330,n573 );
   and U641 ( n575,n643,n644 );
   not U642 ( u331,n575 );
   and U643 ( n577,n641,n642 );
   not U644 ( u332,n577 );
   and U645 ( n579,n639,n640 );
   not U646 ( u333,n579 );
   and U647 ( n581,n637,n638 );
   not U648 ( u334,n581 );
   and U649 ( n583,n635,n636 );
   not U650 ( u335,n583 );
   and U651 ( n585,n631,n632 );
   not U652 ( u336,n585 );
   and U653 ( n587,n625,n626 );
   not U654 ( u337,n587 );
   and U655 ( n589,n623,n624 );
   not U656 ( u338,n589 );
   and U657 ( n591,n621,n622 );
   not U658 ( u339,n591 );
   and U659 ( n593,n619,n620 );
   not U660 ( u340,n593 );
   and U661 ( n595,n617,n618 );
   not U662 ( u341,n595 );
   and U663 ( n597,n615,n616 );
   not U664 ( u342,n597 );
   and U665 ( n599,n613,n614 );
   not U666 ( u343,n599 );
   and U667 ( n601,n609,n610 );
   not U668 ( u344,n601 );
   buf U669 ( n603,n748 );
   or U670 ( n604,n1087,n748 );
   not U671 ( n605,n604 );
   not U672 ( n606,n604 );
   not U673 ( n607,restart );
   not U674 ( u375,n608 );
   nand U675 ( n610,rmax_reg_7_,n611 );
   nand U676 ( n609,n612,data_in_7_ );
   nand U677 ( n614,rmax_reg_6_,n611 );
   nand U678 ( n613,n612,data_in_6_ );
   nand U679 ( n616,rmax_reg_5_,n611 );
   nand U680 ( n615,n612,data_in_5_ );
   nand U681 ( n618,rmax_reg_4_,n611 );
   nand U682 ( n617,n612,data_in_4_ );
   nand U683 ( n620,rmax_reg_3_,n611 );
   nand U684 ( n619,n612,data_in_3_ );
   nand U685 ( n622,rmax_reg_2_,n611 );
   nand U686 ( n621,n612,data_in_2_ );
   nand U687 ( n624,rmax_reg_1_,n611 );
   nand U688 ( n623,n612,data_in_1_ );
   nand U689 ( n626,rmax_reg_0_,n611 );
   nand U690 ( n625,n612,data_in_0_ );
   not U691 ( n612,n611 );
   nand U692 ( n611,n608,n627 );
   nand U693 ( n627,n628,n629 );
   nor U694 ( n628,stato_reg_0_,n630 );
   nand U695 ( n632,rmin_reg_7_,n633 );
   nand U696 ( n631,n634,data_in_7_ );
   nand U697 ( n636,rmin_reg_6_,n633 );
   nand U698 ( n635,n634,data_in_6_ );
   nand U699 ( n638,rmin_reg_5_,n633 );
   nand U700 ( n637,n634,data_in_5_ );
   nand U701 ( n640,rmin_reg_4_,n633 );
   nand U702 ( n639,n634,data_in_4_ );
   nand U703 ( n642,rmin_reg_3_,n633 );
   nand U704 ( n641,n634,data_in_3_ );
   nand U705 ( n644,rmin_reg_2_,n633 );
   nand U706 ( n643,n634,data_in_2_ );
   nand U707 ( n646,rmin_reg_1_,n633 );
   nand U708 ( n645,n634,data_in_1_ );
   nand U709 ( n648,rmin_reg_0_,n633 );
   nand U710 ( n647,n634,data_in_0_ );
   not U711 ( n634,n633 );
   nand U712 ( n633,n608,n649 );
   nand U713 ( n649,n650,n651 );
   nand U714 ( n650,n652,n653 );
   nand U715 ( n653,n654,n655 );
   nand U716 ( n655,n656,n657 );
   nand U717 ( n657,rmin_reg_7_,n658 );
   nor U718 ( n656,n659,n660 );
   nor U719 ( n660,rmin_reg_6_,n661 );
   nor U720 ( n659,n662,n663 );
   nand U721 ( n663,n664,n665 );
   nand U722 ( n665,n666,n667 );
   nand U723 ( n667,data_in_5_,n668 );
   nor U724 ( n666,n669,n670 );
   nor U725 ( n670,rmin_reg_4_,n671 );
   nor U726 ( n669,n672,n673 );
   nand U727 ( n673,n674,n675 );
   nand U728 ( n675,n676,n677 );
   nand U729 ( n677,data_in_3_,n678 );
   nor U730 ( n676,n679,n680 );
   nor U731 ( n680,rmin_reg_2_,n681 );
   nor U732 ( n679,n682,n683 );
   nand U733 ( n683,n684,n685 );
   nand U734 ( n685,n686,rmin_reg_0_ );
   nor U735 ( n686,data_in_0_,n687 );
   nor U736 ( n687,rmin_reg_1_,n688 );
   nand U737 ( n684,rmin_reg_2_,n681 );
   nor U738 ( n682,data_in_1_,n689 );
   nand U739 ( n674,rmin_reg_4_,n671 );
   nor U740 ( n672,data_in_3_,n678 );
   nand U741 ( n664,rmin_reg_6_,n661 );
   nor U742 ( n662,data_in_5_,n668 );
   or U743 ( n654,n658,rmin_reg_7_ );
   nor U744 ( n652,n630,n690 );
   not U745 ( n690,n629 );
   nand U746 ( n629,rmax_reg_7_,n658 );
   and U747 ( n630,n691,n692 );
   nand U748 ( n692,data_in_7_,n693 );
   nor U749 ( n691,n694,n695 );
   nor U750 ( n695,data_in_6_,n696 );
   nor U751 ( n694,n697,n698 );
   and U752 ( n697,n696,data_in_6_ );
   nand U753 ( n696,n699,n700 );
   nand U754 ( n700,data_in_5_,n701 );
   nand U755 ( n699,n702,n703 );
   nand U756 ( n703,rmax_reg_5_,n704 );
   nor U757 ( n702,n705,n706 );
   nor U758 ( n706,data_in_4_,n707 );
   nor U759 ( n705,n708,n709 );
   nand U760 ( n709,n710,n711 );
   nand U761 ( n711,n712,n713 );
   nand U762 ( n713,rmax_reg_3_,n714 );
   nor U763 ( n712,n715,n716 );
   nor U764 ( n716,data_in_2_,n717 );
   nor U765 ( n715,n718,n719 );
   nand U766 ( n719,n720,n721 );
   nand U767 ( n721,n722,data_in_0_ );
   nor U768 ( n722,rmax_reg_0_,n723 );
   nor U769 ( n723,data_in_1_,n724 );
   nand U770 ( n720,data_in_2_,n717 );
   nor U771 ( n718,rmax_reg_1_,n688 );
   nand U772 ( n710,data_in_4_,n707 );
   nor U773 ( n708,rmax_reg_3_,n714 );
   nand U774 ( n726,n727,data_in_7_ );
   nand U775 ( n725,rlast_reg_7_,n728 );
   nand U776 ( n730,n727,data_in_6_ );
   nand U777 ( n729,rlast_reg_6_,n728 );
   nand U778 ( n732,n727,data_in_5_ );
   nand U779 ( n731,rlast_reg_5_,n728 );
   nand U780 ( n734,n727,data_in_4_ );
   nand U781 ( n733,rlast_reg_4_,n728 );
   nand U782 ( n736,n727,data_in_3_ );
   nand U783 ( n735,rlast_reg_3_,n728 );
   nand U784 ( n738,n727,data_in_2_ );
   nand U785 ( n737,rlast_reg_2_,n728 );
   nand U786 ( n740,n727,data_in_1_ );
   nand U787 ( n739,rlast_reg_1_,n728 );
   nand U788 ( n742,n727,data_in_0_ );
   and U789 ( n727,stato_reg_1_,n743 );
   nand U790 ( n741,rlast_reg_0_,n728 );
   nand U791 ( n728,n608,n743 );
   nand U792 ( n743,n651,n744 );
   nand U793 ( n608,n651,n745 );
   nand U794 ( n747,reg1_reg_7_,n606 );
   nand U795 ( n746,n748,data_in_7_ );
   nand U796 ( n750,reg1_reg_6_,n606 );
   nand U797 ( n749,n748,data_in_6_ );
   nand U798 ( n752,reg1_reg_5_,n605 );
   nand U799 ( n751,n748,data_in_5_ );
   nand U800 ( n754,reg1_reg_4_,n605 );
   nand U801 ( n753,n748,data_in_4_ );
   nand U802 ( n756,reg1_reg_3_,n605 );
   nand U803 ( n755,n748,data_in_3_ );
   nand U804 ( n758,reg1_reg_2_,n606 );
   nand U805 ( n757,n748,data_in_2_ );
   nand U806 ( n760,reg1_reg_1_,n606 );
   nand U807 ( n759,n748,data_in_1_ );
   nand U808 ( n762,reg1_reg_0_,n605 );
   nand U809 ( n761,n748,data_in_0_ );
   nand U810 ( n764,reg2_reg_7_,n605 );
   nand U811 ( n763,n748,reg1_reg_7_ );
   nand U812 ( n766,reg2_reg_6_,n606 );
   nand U813 ( n765,reg1_reg_6_,n603 );
   nand U814 ( n768,reg2_reg_5_,n605 );
   nand U815 ( n767,reg1_reg_5_,n603 );
   nand U816 ( n770,reg2_reg_4_,n605 );
   nand U817 ( n769,reg1_reg_4_,n603 );
   nand U818 ( n772,reg2_reg_3_,n605 );
   nand U819 ( n771,reg1_reg_3_,n748 );
   nand U820 ( n774,reg2_reg_2_,n606 );
   nand U821 ( n773,reg1_reg_2_,n748 );
   nand U822 ( n776,reg2_reg_1_,n605 );
   nand U823 ( n775,reg1_reg_1_,n748 );
   nand U824 ( n778,reg2_reg_0_,n605 );
   nand U825 ( n777,reg1_reg_0_,n603 );
   nand U826 ( n780,reg3_reg_7_,n606 );
   nand U827 ( n779,reg2_reg_7_,n603 );
   nand U828 ( n782,reg3_reg_6_,n605 );
   nand U829 ( n781,reg2_reg_6_,n603 );
   nand U830 ( n784,reg3_reg_5_,n606 );
   nand U831 ( n783,reg2_reg_5_,n603 );
   nand U832 ( n786,reg3_reg_4_,n605 );
   nand U833 ( n785,reg2_reg_4_,n603 );
   nand U834 ( n788,reg3_reg_3_,n606 );
   nand U835 ( n787,reg2_reg_3_,n603 );
   nand U836 ( n790,reg3_reg_2_,n605 );
   nand U837 ( n789,reg2_reg_2_,n603 );
   nand U838 ( n792,reg3_reg_1_,n606 );
   nand U839 ( n791,reg2_reg_1_,n603 );
   nand U840 ( n794,reg3_reg_0_,n606 );
   nand U841 ( n793,reg2_reg_0_,n748 );
   nand U842 ( n796,reg4_reg_7_,n606 );
   nand U843 ( n795,reg3_reg_7_,n603 );
   nand U844 ( n798,reg4_reg_6_,n606 );
   nand U845 ( n797,reg3_reg_6_,n748 );
   nand U846 ( n800,reg4_reg_5_,n606 );
   nand U847 ( n799,reg3_reg_5_,n603 );
   nand U848 ( n802,reg4_reg_4_,n605 );
   nand U849 ( n801,reg3_reg_4_,n748 );
   nand U850 ( n804,reg4_reg_3_,n606 );
   nand U851 ( n803,reg3_reg_3_,n603 );
   nand U852 ( n806,reg4_reg_2_,n606 );
   nand U853 ( n805,reg3_reg_2_,n603 );
   nand U854 ( n808,reg4_reg_1_,n605 );
   nand U855 ( n807,reg3_reg_1_,n603 );
   nand U856 ( n810,reg4_reg_0_,n606 );
   nand U857 ( n809,reg3_reg_0_,n603 );
   nand U858 ( n812,data_out_reg_7_,n605 );
   nor U859 ( n811,n813,n814 );
   nor U860 ( n814,n815,n816 );
   nor U861 ( n813,n817,n818 );
   not U862 ( n817,rlast_reg_7_ );
   nor U863 ( n820,n821,n822 );
   nor U864 ( n822,n823,n818 );
   not U865 ( n823,rlast_reg_6_ );
   nor U866 ( n821,n824,n825 );
   nand U867 ( n825,n826,n827 );
   nand U868 ( n824,n828,n829 );
   not U869 ( n829,n830 );
   nor U870 ( n819,n831,n832 );
   and U871 ( n832,data_out_reg_6_,n605 );
   nor U872 ( n831,n833,n816 );
   nor U873 ( n835,n836,n837 );
   nand U874 ( n837,n838,n839 );
   nand U875 ( n839,n840,n826 );
   xor U876 ( n840,n828,n827 );
   xor U877 ( n828,n830,n841 );
   nand U878 ( n838,n842,n841 );
   and U879 ( n841,n843,n844 );
   nand U880 ( n844,n845,n846 );
   not U881 ( n846,n847 );
   nor U882 ( n845,n848,n849 );
   nor U883 ( n849,n850,n851 );
   nand U884 ( n843,n852,n847 );
   nand U885 ( n847,n853,n854 );
   nand U886 ( n854,n855,n607 );
   xor U887 ( n855,n857,n661 );
   nand U888 ( n853,n858,restart );
   xor U889 ( n858,n857,n698 );
   nand U890 ( n857,n859,n860 );
   or U891 ( n860,n856,rmin_reg_6_ );
   nand U892 ( n859,n833,n607 );
   not U893 ( n833,reg4_reg_6_ );
   nor U894 ( n852,n850,n861 );
   nor U895 ( n861,n848,n862 );
   nor U896 ( n836,n863,n818 );
   not U897 ( n863,rlast_reg_5_ );
   nor U898 ( n834,n864,n865 );
   and U899 ( n865,data_out_reg_5_,n605 );
   nor U900 ( n864,n866,n816 );
   nor U901 ( n868,n869,n870 );
   nand U902 ( n870,n871,n872 );
   nand U903 ( n872,n873,n826 );
   nor U904 ( n873,n827,n874 );
   nor U905 ( n874,n875,n876 );
   nor U906 ( n876,n877,n878 );
   and U907 ( n827,n879,n880 );
   nor U908 ( n879,n877,n881 );
   nor U909 ( n881,n830,n882 );
   and U910 ( n882,n883,n875 );
   nor U911 ( n830,n883,n875 );
   nand U912 ( n871,n842,n875 );
   xor U913 ( n875,n884,n862 );
   not U914 ( n862,n851 );
   nand U915 ( n851,n885,n886 );
   nand U916 ( n886,n887,n888 );
   or U917 ( n888,n889,n890 );
   nand U918 ( n885,n889,n890 );
   nor U919 ( n884,n848,n850 );
   nor U920 ( n850,n891,n892 );
   or U921 ( n891,n893,n894 );
   nor U922 ( n894,n668,n856 );
   nor U923 ( n893,restart,n866 );
   and U924 ( n848,n895,n892 );
   nand U925 ( n892,n896,n897 );
   nand U926 ( n897,data_in_5_,n607 );
   nand U927 ( n896,restart,rmax_reg_5_ );
   nor U928 ( n895,n898,n899 );
   nor U929 ( n899,restart,reg4_reg_5_ );
   nor U930 ( n898,rmin_reg_5_,n856 );
   nor U931 ( n869,n900,n818 );
   not U932 ( n900,rlast_reg_4_ );
   nor U933 ( n867,n901,n902 );
   and U934 ( n902,data_out_reg_4_,n606 );
   nor U935 ( n901,n903,n816 );
   nor U936 ( n905,n906,n907 );
   nand U937 ( n907,n908,n909 );
   nand U938 ( n909,n910,n826 );
   xor U939 ( n910,n878,n877 );
   and U940 ( n877,n911,n883 );
   nand U941 ( n883,n912,n913 );
   nor U942 ( n912,n914,n915 );
   nand U943 ( n911,n915,n916 );
   nand U944 ( n916,n913,n917 );
   nand U945 ( n908,n842,n915 );
   not U946 ( n915,n918 );
   xor U947 ( n918,n919,n887 );
   nand U948 ( n887,n920,n921 );
   nand U949 ( n921,restart,n707 );
   not U950 ( n707,rmax_reg_4_ );
   nand U951 ( n920,n671,n856 );
   not U952 ( n671,data_in_4_ );
   xor U953 ( n919,n889,n890 );
   nand U954 ( n890,n922,n923 );
   nand U955 ( n923,n924,n925 );
   or U956 ( n925,n926,n927 );
   nand U957 ( n922,n927,n926 );
   nand U958 ( n889,n928,n929 );
   or U959 ( n929,n856,rmin_reg_4_ );
   nand U960 ( n928,n903,n856 );
   not U961 ( n903,reg4_reg_4_ );
   nor U962 ( n906,n930,n818 );
   not U963 ( n930,rlast_reg_3_ );
   nor U964 ( n904,n931,n932 );
   and U965 ( n932,data_out_reg_3_,n606 );
   nor U966 ( n931,n933,n816 );
   nor U967 ( n935,n936,n937 );
   nand U968 ( n937,n938,n939 );
   nand U969 ( n939,n940,n826 );
   nor U970 ( n940,n880,n941 );
   nor U971 ( n941,n942,n943 );
   not U972 ( n880,n878 );
   nand U973 ( n878,n942,n943 );
   xor U974 ( n943,n914,n913 );
   nor U975 ( n942,n944,n945 );
   nand U976 ( n938,n842,n914 );
   not U977 ( n914,n917 );
   xor U978 ( n917,n946,n924 );
   nand U979 ( n924,n947,n948 );
   nand U980 ( n948,restart,n949 );
   nand U981 ( n947,n714,n856 );
   xor U982 ( n946,n927,n926 );
   nand U983 ( n926,n950,n951 );
   nand U984 ( n951,n952,n953 );
   or U985 ( n953,n954,n955 );
   nand U986 ( n950,n954,n955 );
   nand U987 ( n927,n956,n957 );
   nand U988 ( n957,restart,n678 );
   nand U989 ( n956,n933,n856 );
   nor U990 ( n936,n958,n818 );
   not U991 ( n958,rlast_reg_2_ );
   nor U992 ( n934,n959,n960 );
   and U993 ( n960,data_out_reg_2_,n606 );
   nor U994 ( n959,n961,n816 );
   nor U995 ( n963,n964,n965 );
   nand U996 ( n965,n966,n967 );
   nand U997 ( n967,n826,n968 );
   xor U998 ( n968,n945,n944 );
   nor U999 ( n945,n913,n969 );
   and U1000 ( n969,n970,n971 );
   nor U1001 ( n913,n971,n970 );
   nand U1002 ( n966,n842,n970 );
   xor U1003 ( n970,n972,n952 );
   nand U1004 ( n952,n973,n974 );
   nand U1005 ( n974,restart,n717 );
   not U1006 ( n717,rmax_reg_2_ );
   nand U1007 ( n973,n681,n856 );
   not U1008 ( n681,data_in_2_ );
   xor U1009 ( n972,n975,n955 );
   nand U1010 ( n955,n976,n977 );
   nand U1011 ( n977,n978,n979 );
   or U1012 ( n979,n980,n981 );
   nand U1013 ( n976,n980,n981 );
   not U1014 ( n975,n954 );
   nand U1015 ( n954,n982,n983 );
   or U1016 ( n983,n856,rmin_reg_2_ );
   nand U1017 ( n982,n961,n856 );
   not U1018 ( n961,reg4_reg_2_ );
   nor U1019 ( n964,n984,n818 );
   not U1020 ( n984,rlast_reg_1_ );
   nor U1021 ( n962,n985,n986 );
   and U1022 ( n986,data_out_reg_1_,n605 );
   nor U1023 ( n985,n987,n816 );
   nor U1024 ( n989,n990,n991 );
   nand U1025 ( n991,n992,n993 );
   nand U1026 ( n993,n944,n826 );
   and U1027 ( n826,n994,n995 );
   nand U1028 ( n995,n996,n997 );
   nand U1029 ( n997,n998,n999 );
   nor U1030 ( n999,restart,average );
   nor U1031 ( n998,n744,n1000 );
   and U1032 ( n944,n971,n1001 );
   nand U1033 ( n1001,n1002,n1003 );
   or U1034 ( n971,n1003,n1002 );
   and U1035 ( n1002,n1004,n981 );
   nor U1036 ( n1004,n1005,n1006 );
   nor U1037 ( n1006,n856,n1007 );
   or U1038 ( n1007,rmax_reg_0_,rmin_reg_0_ );
   nor U1039 ( n1005,restart,n1008 );
   or U1040 ( n1008,data_in_0_,reg4_reg_0_ );
   nand U1041 ( n992,n842,n1003 );
   xor U1042 ( n1003,n1009,n978 );
   nand U1043 ( n978,n1010,n1011 );
   nand U1044 ( n1011,restart,n724 );
   nand U1045 ( n1010,n688,n607 );
   xor U1046 ( n1009,n1012,n981 );
   nand U1047 ( n981,n1013,n1014 );
   nand U1048 ( n1014,restart,n1015 );
   nand U1049 ( n1013,n1016,n856 );
   not U1050 ( n1012,n980 );
   nand U1051 ( n980,n1017,n1018 );
   nand U1052 ( n1018,restart,n689 );
   nand U1053 ( n1017,n987,n856 );
   and U1054 ( n842,n1019,n994 );
   nor U1055 ( n1019,n1020,n1021 );
   nor U1056 ( n1021,n1022,restart );
   nor U1057 ( n1022,n744,n1023 );
   nand U1058 ( n1023,n1000,n1024 );
   nand U1059 ( n1000,n1025,n1026 );
   nand U1060 ( n1026,n1027,n815 );
   not U1061 ( n815,reg4_reg_7_ );
   or U1062 ( n1027,n1028,n658 );
   nand U1063 ( n1025,n1028,n658 );
   not U1064 ( n658,data_in_7_ );
   nand U1065 ( n1028,n1029,n1030 );
   nand U1066 ( n1030,reg4_reg_6_,n1031 );
   nand U1067 ( n1031,n661,n1032 );
   or U1068 ( n1029,n1032,n661 );
   not U1069 ( n661,data_in_6_ );
   nand U1070 ( n1032,n1033,n1034 );
   nand U1071 ( n1034,n1035,n1036 );
   nand U1072 ( n1036,reg4_reg_4_,data_in_4_ );
   nor U1073 ( n1035,n1037,n1038 );
   nor U1074 ( n1038,n704,n866 );
   nor U1075 ( n1037,n1039,n1040 );
   nand U1076 ( n1040,n1041,n1042 );
   nand U1077 ( n1042,n1043,n1044 );
   nand U1078 ( n1044,reg4_reg_2_,data_in_2_ );
   nor U1079 ( n1043,n1045,n1046 );
   nor U1080 ( n1046,n714,n933 );
   nor U1081 ( n1045,n1047,n1048 );
   nand U1082 ( n1048,n1049,n1050 );
   nand U1083 ( n1050,n1051,n987 );
   not U1084 ( n987,reg4_reg_1_ );
   or U1085 ( n1051,n1016,n688 );
   nand U1086 ( n1049,n1016,n688 );
   not U1087 ( n688,data_in_1_ );
   nand U1088 ( n1016,reg4_reg_0_,data_in_0_ );
   nor U1089 ( n1047,reg4_reg_2_,data_in_2_ );
   nand U1090 ( n1041,n714,n933 );
   not U1091 ( n933,reg4_reg_3_ );
   not U1092 ( n714,data_in_3_ );
   nor U1093 ( n1039,reg4_reg_4_,data_in_4_ );
   nand U1094 ( n1033,n704,n866 );
   not U1095 ( n866,reg4_reg_5_ );
   not U1096 ( n704,data_in_5_ );
   not U1097 ( n1020,n996 );
   nand U1098 ( n996,restart,n1052 );
   nand U1099 ( n1052,n1053,n1054 );
   nand U1100 ( n1054,rmin_reg_7_,n1055 );
   nand U1101 ( n1055,n693,n1056 );
   or U1102 ( n1053,n1056,n693 );
   not U1103 ( n693,rmax_reg_7_ );
   nand U1104 ( n1056,n1057,n1058 );
   nand U1105 ( n1058,rmin_reg_6_,n1059 );
   nand U1106 ( n1059,n698,n1060 );
   or U1107 ( n1057,n1060,n698 );
   not U1108 ( n698,rmax_reg_6_ );
   nand U1109 ( n1060,n1061,n1062 );
   nand U1110 ( n1062,n1063,n1064 );
   nand U1111 ( n1064,rmin_reg_4_,rmax_reg_4_ );
   nor U1112 ( n1063,n1065,n1066 );
   nor U1113 ( n1066,n701,n668 );
   nor U1114 ( n1065,n1067,n1068 );
   nand U1115 ( n1068,n1069,n1070 );
   nand U1116 ( n1070,n1071,n1072 );
   nand U1117 ( n1072,rmin_reg_2_,rmax_reg_2_ );
   nor U1118 ( n1071,n1073,n1074 );
   nor U1119 ( n1074,n949,n678 );
   nor U1120 ( n1073,n1075,n1076 );
   nand U1121 ( n1076,n1077,n1078 );
   nand U1122 ( n1078,n1079,n689 );
   not U1123 ( n689,rmin_reg_1_ );
   or U1124 ( n1079,n1015,n724 );
   nand U1125 ( n1077,n1015,n724 );
   not U1126 ( n724,rmax_reg_1_ );
   nand U1127 ( n1015,rmin_reg_0_,rmax_reg_0_ );
   nor U1128 ( n1075,rmin_reg_2_,rmax_reg_2_ );
   nand U1129 ( n1069,n949,n678 );
   not U1130 ( n678,rmin_reg_3_ );
   not U1131 ( n949,rmax_reg_3_ );
   nor U1132 ( n1067,rmin_reg_4_,rmax_reg_4_ );
   nand U1133 ( n1061,n701,n668 );
   not U1134 ( n668,rmin_reg_5_ );
   not U1135 ( n701,rmax_reg_5_ );
   nor U1136 ( n990,n1080,n818 );
   nand U1137 ( n818,n1081,n994 );
   nor U1138 ( n1081,restart,enable );
   not U1139 ( n1080,rlast_reg_0_ );
   nor U1140 ( n988,n1082,n1083 );
   and U1141 ( n1083,data_out_reg_0_,n605 );
   nor U1142 ( n1082,n1084,n816 );
   nand U1143 ( n816,n1085,n1086 );
   and U1144 ( n1086,n856,n994 );
   nor U1145 ( n994,n745,n606 );
   not U1146 ( n856,restart );
   nor U1147 ( n1085,n1024,n744 );
   not U1148 ( n744,enable );
   not U1149 ( n1024,average );
   not U1150 ( n1084,reg4_reg_0_ );
   not U1151 ( u280,n605 );
   nor U1152 ( n748,n745,stato_reg_0_ );
   not U1153 ( n745,stato_reg_1_ );
   nor U1154 ( n1087,n651,stato_reg_1_ );
   not U1155 ( n651,stato_reg_0_ );
endmodule
