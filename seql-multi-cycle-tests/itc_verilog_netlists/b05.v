
module b05 ( start, num_reg_4_, num_reg_3_, num_reg_2_, num_reg_1_, num_reg_0_,
mar_reg_4_, mar_reg_3_, mar_reg_2_, mar_reg_1_, mar_reg_0_,
temp_reg_8_, temp_reg_7_, temp_reg_6_, temp_reg_5_, temp_reg_4_,
temp_reg_3_, temp_reg_2_, temp_reg_1_, temp_reg_0_, max_reg_8_,
max_reg_7_, max_reg_6_, max_reg_5_, max_reg_4_, max_reg_3_, max_reg_2_,
max_reg_1_, max_reg_0_, en_disp_reg, res_disp_reg, flag_reg,
stato_reg_0_, stato_reg_1_, stato_reg_2_, u646, u589, u590, u661, u662,
u663, u664, u665, u666, u667, u647, u648, u649, u650, u651, u652, u653,
u792, u591, u654, u655, u656, u657, u658, u659, u660, u680, u679, u678,
u677, u676, u675, u674, u673, u672, u671, u727, u728, u729, u730, u731,
u732, u733, u734, u735, u736, u737, u738, u739, u740, u741, u742, u743,
u744, u670, u669, u668, u645, u644, u643 );
input start, num_reg_4_, num_reg_3_, num_reg_2_, num_reg_1_, num_reg_0_,
mar_reg_4_, mar_reg_3_, mar_reg_2_, mar_reg_1_, mar_reg_0_,
temp_reg_8_, temp_reg_7_, temp_reg_6_, temp_reg_5_, temp_reg_4_,
temp_reg_3_, temp_reg_2_, temp_reg_1_, temp_reg_0_, max_reg_8_,
max_reg_7_, max_reg_6_, max_reg_5_, max_reg_4_, max_reg_3_,
max_reg_2_, max_reg_1_, max_reg_0_, en_disp_reg, res_disp_reg,
flag_reg, stato_reg_0_, stato_reg_1_, stato_reg_2_;
output u646, u589, u590, u661, u662, u663, u664, u665, u666, u667, u647,
u648, u649, u650, u651, u652, u653, u792, u591, u654, u655, u656,
u657, u658, u659, u660, u680, u679, u678, u677, u676, u675, u674,
u673, u672, u671, u727, u728, u729, u730, u731, u732, u733, u734,
u735, u736, u737, u738, u739, u740, u741, u742, u743, u744, u670,
u669, u668, u645, u644, u643;
wire   n1110, n503, n507, n509, n511, n513, n515, n517, n519, n521, n523,
n525, n527, n529, n531, n533, n535, n537, n539, n541, n543, n545,
n547, n549, n551, n553, n555, n557, n559, n561, n563, n565, n567,
n569, n571, n573, n575, n577, n579, n581, n583, n585, n587, n589,
n591, n593, n595, n597, n599, n601, n603, n605, n607, n609, n611,
n613, n615, n619, n620, n621, n622, n623, n624, n625, n626, n627,
n628, n629, n630, n631, n632, n633, n634, n635, n636, n637, n638,
n639, n640, n641, n642, n643, n644, n645, n646, n647, n648, n649,
n650, n651, n652, n653, n654, n655, n656, n657, n658, n659, n660,
n661, n662, n663, n664, n665, n666, n667, n668, n669, n670, n671,
n672, n673, n674, n675, n676, n677, n678, n679, n680, n681, n682,
n683, n684, n685, n686, n687, n688, n689, n690, n691, n692, n693,
n694, n695, n696, n697, n698, n699, n700, n701, n702, n703, n704,
n705, n706, n707, n708, n709, n710, n711, n712, n713, n714, n715,
n716, n717, n718, n719, n720, n721, n722, n723, n724, n725, n726,
n727, n728, n729, n730, n731, n732, n733, n734, n735, n736, n737,
n738, n739, n740, n741, n742, n743, n744, n745, n746, n747, n748,
n749, n750, n751, n752, n753, n754, n755, n756, n757, n758, n759,
n760, n761, n762, n763, n764, n765, n766, n767, n768, n769, n770,
n771, n772, n773, n774, n775, n776, n777, n778, n779, n780, n781,
n782, n783, n784, n785, n786, n787, n788, n789, n790, n791, n792,
n793, n794, n795, n796, n797, n798, n799, n800, n801, n802, n803,
n804, n805, n806, n807, n808, n809, n810, n811, n812, n813, n814,
n815, n816, n817, n818, n819, n820, n821, n822, n823, n824, n825,
n826, n827, n828, n829, n830, n831, n832, n833, n834, n835, n836,
n837, n838, n839, n840, n841, n842, n843, n844, n845, n846, n847,
n848, n849, n850, n851, n852, n853, n854, n855, n856, n857, n858,
n859, n860, n861, n862, n863, n864, n865, n866, n867, n868, n869,
n870, n871, n872, n873, n874, n875, n876, n877, n878, n879, n880,
n881, n882, n883, n884, n885, n886, n887, n888, n889, n890, n891,
n892, n893, n894, n895, n896, n897, n898, n899, n900, n901, n902,
n903, n904, n905, n906, n907, n908, n909, n910, n911, n912, n913,
n914, n915, n916, n917, n918, n919, n920, n921, n922, n923, n924,
n925, n926, n927, n928, n929, n930, n931, n932, n933, n934, n935,
n936, n937, n938, n939, n940, n941, n942, n943, n944, n945, n946,
n947, n948, n949, n950, n951, n952, n953, n954, n955, n956, n957,
n958, n959, n960, n961, n962, n963, n964, n965, n966, n967, n968,
n969, n970, n971, n972, n973, n974, n975, n976, n977, n978, n979,
n980, n981, n982, n983, n984, n985, n986, n987, n988, n989, n990,
n991, n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001,
n1002, n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011,
n1012, n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021,
n1022, n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031,
n1032, n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041,
n1042, n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051,
n1052, n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061,
n1062, n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071,
n1072, n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081,
n1082, n1083, n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091,
n1092, n1093, n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101,
n1102, n1103, n1104, n1105, n1106, n1107, n1108, n1109;

   or U561 ( n503,en_disp_reg,res_disp_reg );
   not U562 ( u664,n969 );
   not U563 ( u590,n969 );
   not U564 ( u589,n969 );
   and U565 ( n507,n844,n1107 );
   not U566 ( u643,n507 );
   and U567 ( n509,n792,n651 );
   not U568 ( u644,n509 );
   and U569 ( n511,n1100,n1101 );
   not U570 ( u645,n511 );
   and U571 ( n513,n812,n813 );
   not U572 ( u668,n513 );
   and U573 ( n515,n762,n808 );
   not U574 ( u669,n515 );
   and U575 ( n517,n797,n798 );
   not U576 ( u670,n517 );
   and U577 ( n519,n621,n622 );
   not U578 ( u744,n519 );
   and U579 ( n521,n626,n627 );
   not U580 ( u743,n521 );
   and U581 ( n523,n629,n630 );
   not U582 ( u742,n523 );
   and U583 ( n525,n632,n633 );
   not U584 ( u741,n525 );
   and U585 ( n527,n635,n636 );
   not U586 ( u740,n527 );
   and U587 ( n529,n638,n639 );
   not U588 ( u739,n529 );
   and U589 ( n531,n641,n642 );
   not U590 ( u738,n531 );
   and U591 ( n533,n644,n645 );
   not U592 ( u737,n533 );
   and U593 ( n535,n647,n648 );
   not U594 ( u736,n535 );
   and U595 ( n537,n699,n700 );
   not U596 ( u735,n537 );
   and U597 ( n539,n701,n702 );
   not U598 ( u734,n539 );
   and U599 ( n541,n703,n704 );
   not U600 ( u733,n541 );
   and U601 ( n543,n705,n706 );
   not U602 ( u732,n543 );
   and U603 ( n545,n709,n710 );
   not U604 ( u731,n545 );
   and U605 ( n547,n711,n712 );
   not U606 ( u730,n547 );
   and U607 ( n549,n720,n721 );
   not U608 ( u729,n549 );
   and U609 ( n551,n722,n723 );
   not U610 ( u728,n551 );
   and U611 ( n553,n724,n725 );
   not U612 ( u727,n553 );
   and U613 ( n555,n796,n791 );
   not U614 ( u671,n555 );
   and U615 ( n557,n788,n789 );
   not U616 ( u672,n557 );
   and U617 ( n559,n781,n782 );
   not U618 ( u673,n559 );
   and U619 ( n561,n772,n773 );
   not U620 ( u674,n561 );
   and U621 ( n563,n763,n764 );
   not U622 ( u675,n563 );
   and U623 ( n565,n756,n757 );
   not U624 ( u676,n565 );
   and U625 ( n567,n751,n752 );
   not U626 ( u677,n567 );
   and U627 ( n569,n745,n746 );
   not U628 ( u678,n569 );
   and U629 ( n571,n737,n738 );
   not U630 ( u679,n571 );
   and U631 ( n573,n726,n727 );
   not U632 ( u680,n573 );
   or U633 ( n575,n975,n976 );
   not U634 ( u660,n575 );
   or U635 ( n577,n997,n969 );
   not U636 ( u659,n577 );
   or U637 ( n579,n999,n969 );
   not U638 ( u658,n579 );
   nand U639 ( n581,n1006,n620 );
   not U640 ( u657,n581 );
   or U641 ( n583,n1007,n969 );
   not U642 ( u656,n583 );
   or U643 ( n585,n1010,n969 );
   not U644 ( u655,n585 );
   and U645 ( n587,n503,n1014 );
   not U646 ( u654,n587 );
   or U647 ( n589,n969,n1022 );
   not U648 ( u591,n589 );
   or U649 ( n591,n969,n1030 );
   not U650 ( u653,n591 );
   or U651 ( n593,n1044,n969 );
   not U652 ( u652,n593 );
   or U653 ( n595,n1046,n969 );
   not U654 ( u651,n595 );
   or U655 ( n597,n1050,n969 );
   not U656 ( u650,n597 );
   nand U657 ( n599,n1049,n620 );
   not U658 ( u649,n599 );
   or U659 ( n601,n1053,n969 );
   not U660 ( u648,n601 );
   and U661 ( n603,n503,n1061 );
   not U662 ( u647,n603 );
   and U663 ( n605,n964,n965 );
   not U664 ( u667,n605 );
   and U665 ( n607,n964,n967 );
   not U666 ( u665,n607 );
   or U667 ( n609,n968,n969 );
   not U668 ( u663,n609 );
   and U669 ( n611,n964,n970 );
   not U670 ( u662,n611 );
   and U671 ( n613,n503,n973 );
   not U672 ( u661,n613 );
   and U673 ( n615,n503,n1099 );
   not U674 ( u646,n615 );
   not U675 ( u666,n964 );
   not U676 ( u792,n503 );
   buf U677 ( n619,n969 );
   not U678 ( n620,n619 );
   nand U679 ( n622,n623,max_reg_0_ );
   nand U680 ( n621,n624,n625 );
   nand U681 ( n627,n623,max_reg_1_ );
   nand U682 ( n626,n624,n628 );
   nand U683 ( n630,n623,max_reg_2_ );
   nand U684 ( n629,n624,n631 );
   nand U685 ( n633,n623,max_reg_3_ );
   nand U686 ( n632,n634,n624 );
   nand U687 ( n636,n623,max_reg_4_ );
   nand U688 ( n635,n624,n637 );
   nand U689 ( n639,n623,max_reg_5_ );
   nand U690 ( n638,n640,n624 );
   nand U691 ( n642,n623,max_reg_6_ );
   nand U692 ( n641,n624,n643 );
   nand U693 ( n645,n623,max_reg_7_ );
   nand U694 ( n644,n624,n646 );
   nand U695 ( n648,n623,max_reg_8_ );
   not U696 ( n623,n624 );
   nand U697 ( n647,n624,n649 );
   nand U698 ( n624,n650,n651 );
   nand U699 ( n650,n652,n653 );
   nor U700 ( n653,n654,n655 );
   nand U701 ( n655,n656,n657 );
   nor U702 ( n652,n658,n659 );
   xor U703 ( n658,n660,n661 );
   xor U704 ( n661,n649,max_reg_8_ );
   nor U705 ( n660,n662,n663 );
   and U706 ( n663,n664,n665 );
   nor U707 ( n662,n666,n667 );
   not U708 ( n667,max_reg_7_ );
   nor U709 ( n666,n665,n664 );
   nand U710 ( n664,n668,n669 );
   nand U711 ( n669,n670,n671 );
   or U712 ( n671,max_reg_6_,n672 );
   nor U713 ( n670,n673,n674 );
   nor U714 ( n674,n675,max_reg_5_ );
   nor U715 ( n673,n676,n677 );
   nand U716 ( n677,n678,n679 );
   nand U717 ( n679,n680,n681 );
   nand U718 ( n681,n682,n683 );
   nor U719 ( n680,n684,n685 );
   nor U720 ( n685,max_reg_4_,n686 );
   nor U721 ( n684,n687,n688 );
   nand U722 ( n688,n689,n690 );
   nand U723 ( n690,max_reg_2_,n691 );
   or U724 ( n691,n692,n693 );
   nand U725 ( n689,n693,n692 );
   nand U726 ( n692,n694,n695 );
   nand U727 ( n695,n696,max_reg_0_ );
   nor U728 ( n696,n697,n625 );
   nor U729 ( n697,max_reg_1_,n698 );
   nand U730 ( n694,max_reg_1_,n698 );
   nor U731 ( n687,n683,n682 );
   nand U732 ( n678,max_reg_4_,n686 );
   and U733 ( n676,n675,max_reg_5_ );
   nand U734 ( n668,max_reg_6_,n672 );
   nand U735 ( n700,temp_reg_0_,n659 );
   nand U736 ( n699,stato_reg_1_,n625 );
   nand U737 ( n702,temp_reg_1_,n659 );
   nand U738 ( n701,stato_reg_1_,n628 );
   nand U739 ( n704,temp_reg_2_,n659 );
   nand U740 ( n703,stato_reg_1_,n631 );
   nand U741 ( n706,temp_reg_3_,n659 );
   nand U742 ( n705,stato_reg_1_,n634 );
   nand U743 ( n634,n707,n708 );
   nand U744 ( n710,temp_reg_4_,n659 );
   nand U745 ( n709,stato_reg_1_,n637 );
   not U746 ( n637,n686 );
   nand U747 ( n712,temp_reg_5_,n659 );
   nand U748 ( n711,stato_reg_1_,n640 );
   nand U749 ( n640,n707,n713 );
   and U750 ( n707,n714,n715 );
   nand U751 ( n715,n716,n717 );
   nand U752 ( n717,n718,n719 );
   nand U753 ( n721,temp_reg_6_,n659 );
   nand U754 ( n720,stato_reg_1_,n643 );
   nand U755 ( n723,temp_reg_7_,n659 );
   nand U756 ( n722,stato_reg_1_,n646 );
   nand U757 ( n725,temp_reg_8_,n659 );
   nand U758 ( n724,stato_reg_1_,n649 );
   nand U759 ( n727,num_reg_4_,n728 );
   nand U760 ( n728,n729,n730 );
   nand U761 ( n730,n731,n732 );
   nand U762 ( n726,n733,n734 );
   nor U763 ( n733,n732,n735 );
   nand U764 ( n735,num_reg_2_,n736 );
   or U765 ( n738,n732,n729 );
   nor U766 ( n729,n739,n740 );
   nor U767 ( n740,n741,num_reg_2_ );
   nand U768 ( n737,n742,n732 );
   nor U769 ( n742,n743,n744 );
   nand U770 ( n746,n736,n744 );
   not U771 ( n736,n743 );
   nand U772 ( n743,n747,num_reg_1_ );
   nand U773 ( n745,num_reg_2_,n739 );
   nand U774 ( n739,n748,n749 );
   nand U775 ( n749,n731,n750 );
   or U776 ( n752,n750,n748 );
   nor U777 ( n748,n753,n754 );
   nor U778 ( n754,n741,num_reg_0_ );
   nand U779 ( n751,n747,n750 );
   nor U780 ( n747,n741,n755 );
   not U781 ( n741,n731 );
   nand U782 ( n757,n731,n755 );
   not U783 ( n755,num_reg_0_ );
   nor U784 ( n731,n758,n759 );
   nand U785 ( n756,num_reg_0_,n753 );
   nand U786 ( n753,n760,n761 );
   nand U787 ( n761,n762,n759 );
   nand U788 ( n760,stato_reg_1_,n758 );
   not U789 ( n758,flag_reg );
   nand U790 ( n764,stato_reg_2_,n765 );
   nand U791 ( n765,n766,n767 );
   nand U792 ( n767,mar_reg_4_,n768 );
   nand U793 ( n768,n769,mar_reg_2_ );
   not U794 ( n766,n770 );
   nand U795 ( n763,mar_reg_4_,n771 );
   nand U796 ( n773,stato_reg_2_,n774 );
   nand U797 ( n774,n775,n776 );
   nand U798 ( n776,mar_reg_3_,n777 );
   nor U799 ( n775,n716,n778 );
   nor U800 ( n778,n779,n780 );
   nand U801 ( n772,mar_reg_3_,n771 );
   nand U802 ( n782,n783,stato_reg_2_ );
   nor U803 ( n783,n784,n785 );
   nor U804 ( n785,n786,n787 );
   nor U805 ( n784,mar_reg_2_,mar_reg_1_ );
   nand U806 ( n781,mar_reg_2_,n771 );
   nand U807 ( n789,mar_reg_1_,n771 );
   nand U808 ( n771,n790,n791 );
   not U809 ( n790,n792 );
   nand U810 ( n788,n793,n787 );
   nor U811 ( n793,n794,n795 );
   nand U812 ( n791,stato_reg_2_,n794 );
   nand U813 ( n796,n792,mar_reg_0_ );
   nand U814 ( n798,en_disp_reg,n799 );
   nand U815 ( n799,n800,n801 );
   nand U816 ( n801,stato_reg_1_,n795 );
   nor U817 ( n800,stato_reg_0_,n802 );
   nor U818 ( n797,n803,n804 );
   nor U819 ( n804,n805,n806 );
   nand U820 ( n806,stato_reg_2_,stato_reg_0_ );
   not U821 ( n805,n807 );
   nand U822 ( n808,res_disp_reg,n809 );
   nand U823 ( n809,n810,n811 );
   nor U824 ( n810,stato_reg_2_,stato_reg_1_ );
   nand U825 ( n813,n814,n815 );
   and U826 ( n815,n657,n656 );
   nand U827 ( n657,n816,n817 );
   nor U828 ( n817,n818,n819 );
   nand U829 ( n819,n820,n821 );
   xor U830 ( n821,n698,temp_reg_1_ );
   xor U831 ( n820,n822,n823 );
   xor U832 ( n822,temp_reg_3_,n824 );
   nand U833 ( n818,n825,n826 );
   xor U834 ( n826,n693,temp_reg_2_ );
   nor U835 ( n825,n827,n828 );
   nor U836 ( n828,temp_reg_0_,n829 );
   nor U837 ( n816,n830,n831 );
   nand U838 ( n831,n832,n833 );
   xor U839 ( n833,n834,n835 );
   xor U840 ( n834,n665,temp_reg_7_ );
   xor U841 ( n832,n836,n837 );
   xor U842 ( n836,n672,temp_reg_6_ );
   nand U843 ( n830,n838,n839 );
   xor U844 ( n839,n840,n841 );
   xor U845 ( n840,n686,temp_reg_4_ );
   xor U846 ( n838,n842,n843 );
   xor U847 ( n842,n675,temp_reg_5_ );
   nor U848 ( n814,n654,n844 );
   nand U849 ( n812,n845,flag_reg );
   and U850 ( n845,n759,n762 );
   nand U851 ( n759,n846,n847 );
   nand U852 ( n847,n848,n656 );
   nand U853 ( n656,n849,n850 );
   nor U854 ( n849,n851,n852 );
   nor U855 ( n851,n853,n854 );
   not U856 ( n854,temp_reg_7_ );
   not U857 ( n848,n654 );
   nor U858 ( n654,n855,n850 );
   xor U859 ( n850,n649,temp_reg_8_ );
   or U860 ( n855,n856,n853 );
   nor U861 ( n853,n665,n835 );
   not U862 ( n665,n646 );
   nor U863 ( n856,temp_reg_7_,n852 );
   nor U864 ( n852,n857,n646 );
   nand U865 ( n646,n858,n859 );
   nor U866 ( n859,n860,n861 );
   nor U867 ( n861,n862,n780 );
   nor U868 ( n858,n863,n649 );
   not U869 ( n857,n835 );
   nand U870 ( n835,n864,n865 );
   nand U871 ( n865,temp_reg_6_,n866 );
   or U872 ( n866,n837,n672 );
   nand U873 ( n864,n672,n837 );
   nand U874 ( n837,n867,n868 );
   nand U875 ( n868,temp_reg_5_,n869 );
   or U876 ( n869,n843,n675 );
   nand U877 ( n867,n675,n843 );
   nand U878 ( n843,n870,n871 );
   nand U879 ( n871,temp_reg_4_,n872 );
   or U880 ( n872,n841,n686 );
   nand U881 ( n870,n686,n841 );
   nand U882 ( n841,n873,n874 );
   nand U883 ( n874,temp_reg_3_,n875 );
   or U884 ( n875,n823,n824 );
   nand U885 ( n873,n824,n823 );
   nand U886 ( n823,n876,n877 );
   nand U887 ( n877,temp_reg_2_,n878 );
   or U888 ( n878,n879,n693 );
   nand U889 ( n876,n693,n879 );
   nand U890 ( n879,n880,n881 );
   nand U891 ( n881,temp_reg_1_,n882 );
   nand U892 ( n882,n628,n883 );
   nand U893 ( n880,n827,n698 );
   not U894 ( n698,n628 );
   nand U895 ( n628,n884,n885 );
   nor U896 ( n885,n886,n887 );
   nand U897 ( n887,n888,n889 );
   not U898 ( n889,n890 );
   nand U899 ( n888,n769,n891 );
   nor U900 ( n886,n780,n892 );
   nor U901 ( n884,n893,n894 );
   nand U902 ( n894,n895,n896 );
   not U903 ( n896,n897 );
   not U904 ( n827,n883 );
   nand U905 ( n883,temp_reg_0_,n829 );
   not U906 ( n829,n625 );
   nand U907 ( n625,n898,n899 );
   nor U908 ( n899,n770,n900 );
   nor U909 ( n898,n897,n863 );
   not U910 ( n693,n631 );
   nand U911 ( n631,n901,n902 );
   nor U912 ( n901,n900,n903 );
   not U913 ( n824,n683 );
   nand U914 ( n683,n904,n708 );
   and U915 ( n708,n905,n895 );
   and U916 ( n895,n906,n907 );
   nand U917 ( n907,n908,n716 );
   nand U918 ( n906,n909,n910 );
   nor U919 ( n905,n860,n897 );
   nor U920 ( n686,n893,n900 );
   nand U921 ( n900,n911,n912 );
   nand U922 ( n912,n910,n891 );
   nor U923 ( n911,n913,n914 );
   and U924 ( n675,n713,n904 );
   and U925 ( n904,n714,n915 );
   nand U926 ( n915,n716,n916 );
   and U927 ( n714,n917,n918 );
   nor U928 ( n918,n890,n913 );
   nor U929 ( n917,n919,n920 );
   nor U930 ( n920,n921,n922 );
   nor U931 ( n919,n923,n892 );
   and U932 ( n713,n924,n925 );
   nor U933 ( n925,n926,n927 );
   or U934 ( n927,n914,n770 );
   nor U935 ( n770,n719,n923 );
   nor U936 ( n926,n719,n780 );
   nor U937 ( n924,n903,n893 );
   nand U938 ( n893,n928,n929 );
   nor U939 ( n929,n807,n860 );
   and U940 ( n860,n930,n931 );
   nor U941 ( n930,mar_reg_0_,n932 );
   nor U942 ( n932,n716,n769 );
   not U943 ( n769,n923 );
   not U944 ( n716,n933 );
   nor U945 ( n928,n934,n935 );
   nor U946 ( n935,n936,n923 );
   nor U947 ( n936,n937,n938 );
   nor U948 ( n934,n921,n939 );
   nand U949 ( n939,n794,n940 );
   not U950 ( n672,n643 );
   nand U951 ( n643,n941,n942 );
   nor U952 ( n942,n913,n897 );
   nand U953 ( n897,n943,n944 );
   or U954 ( n944,n945,n933 );
   or U955 ( n943,n921,n719 );
   and U956 ( n913,n937,n910 );
   nor U957 ( n941,n903,n649 );
   nand U958 ( n649,n946,n902 );
   and U959 ( n902,n947,n948 );
   nand U960 ( n948,n938,n949 );
   nor U961 ( n947,n890,n950 );
   nor U962 ( n950,n933,n892 );
   nor U963 ( n890,n945,n921 );
   nor U964 ( n946,n914,n951 );
   nor U965 ( n951,n862,n923 );
   not U966 ( n862,n891 );
   nand U967 ( n891,n892,n719 );
   nand U968 ( n719,n916,n940 );
   nor U969 ( n914,n922,n923 );
   nand U970 ( n903,n952,n953 );
   nand U971 ( n953,n909,n949 );
   not U972 ( n952,n863 );
   nand U973 ( n863,n954,n955 );
   or U974 ( n955,n922,n933 );
   nand U975 ( n933,mar_reg_3_,n787 );
   nor U976 ( n954,n956,n957 );
   nor U977 ( n957,n958,n780 );
   not U978 ( n780,n910 );
   nor U979 ( n910,n787,mar_reg_3_ );
   not U980 ( n787,mar_reg_1_ );
   nor U981 ( n958,n938,n959 );
   nand U982 ( n959,n922,n945 );
   nand U983 ( n945,n960,mar_reg_4_ );
   nor U984 ( n960,mar_reg_2_,mar_reg_0_ );
   nand U985 ( n922,n931,mar_reg_0_ );
   nor U986 ( n931,mar_reg_4_,mar_reg_2_ );
   and U987 ( n938,n961,mar_reg_2_ );
   nor U988 ( n961,mar_reg_4_,mar_reg_0_ );
   nor U989 ( n956,n962,n921 );
   not U990 ( n921,n949 );
   nor U991 ( n949,mar_reg_1_,mar_reg_3_ );
   nor U992 ( n962,n937,n908 );
   not U993 ( n908,n892 );
   nand U994 ( n892,n786,mar_reg_4_ );
   nor U995 ( n786,mar_reg_2_,n794 );
   and U996 ( n937,n963,mar_reg_4_ );
   nor U997 ( n963,mar_reg_0_,n777 );
   nand U998 ( n965,n620,n966 );
   nand U999 ( n967,n968,n620 );
   nand U1000 ( n970,n971,n620 );
   not U1001 ( n964,n1110 );
   nor U1002 ( n1110,n969,n972 );
   nand U1003 ( n973,n971,n974 );
   nand U1004 ( n976,n620,n977 );
   nand U1005 ( n977,n978,n979 );
   nand U1006 ( n978,n980,n981 );
   nand U1007 ( n975,n982,n983 );
   not U1008 ( n983,n984 );
   nand U1009 ( n982,n985,n986 );
   nand U1010 ( n986,n987,n988 );
   nand U1011 ( n988,n989,n990 );
   nand U1012 ( n990,n991,n992 );
   nand U1013 ( n992,n993,n994 );
   nand U1014 ( n989,n995,n996 );
   nor U1015 ( n997,n980,n998 );
   nor U1016 ( n999,n1000,n1001 );
   nand U1017 ( n1001,n1002,n1003 );
   nand U1018 ( n1003,n995,n994 );
   nand U1019 ( n1002,n993,n1004 );
   not U1020 ( n993,n1005 );
   nor U1021 ( n1007,n1008,n1005 );
   nand U1022 ( n1005,n991,n1009 );
   nand U1023 ( n1009,num_reg_0_,n996 );
   nor U1024 ( n1010,n1000,n1011 );
   nand U1025 ( n1011,n1012,n1006 );
   nand U1026 ( n1006,n1013,n987 );
   nor U1027 ( n1013,n980,n991 );
   nand U1028 ( n1012,n991,n1004 );
   nand U1029 ( n1004,n1008,n994 );
   not U1030 ( n994,n980 );
   nor U1031 ( n980,n996,num_reg_0_ );
   nand U1032 ( n1014,n1015,n974 );
   nand U1033 ( n1015,n1016,n1017 );
   nand U1034 ( n1017,n987,n996 );
   not U1035 ( n996,n1008 );
   not U1036 ( n1016,n998 );
   nand U1037 ( n998,n985,n1018 );
   nand U1038 ( n1018,n987,n1019 );
   not U1039 ( n1019,n991 );
   nor U1040 ( n991,n995,n1000 );
   not U1041 ( n1000,n985 );
   and U1042 ( n987,n985,n1020 );
   nand U1043 ( n1020,n1021,num_reg_0_ );
   nor U1044 ( n1021,n981,n1008 );
   xor U1045 ( n1008,n750,n1022 );
   not U1046 ( n981,n995 );
   xor U1047 ( n995,n744,n1023 );
   nand U1048 ( n1023,n750,n1022 );
   nor U1049 ( n985,n979,n984 );
   nor U1050 ( n984,n734,n1024 );
   nand U1051 ( n979,n1025,n1026 );
   nand U1052 ( n1026,n1024,n1027 );
   nand U1053 ( n1027,n1028,n750 );
   nor U1054 ( n1028,num_reg_3_,num_reg_2_ );
   and U1055 ( n1024,n1029,n1022 );
   or U1056 ( n1025,n1022,n732 );
   not U1057 ( n732,num_reg_3_ );
   nand U1058 ( n1030,n1031,n1032 );
   nand U1059 ( n1032,n1033,n1034 );
   nand U1060 ( n1033,n1035,n1036 );
   nand U1061 ( n1036,n1037,n1038 );
   nand U1062 ( n1037,n1039,n1040 );
   nand U1063 ( n1040,n1041,n1042 );
   not U1064 ( n1042,max_reg_0_ );
   nand U1065 ( n1031,n1043,n1038 );
   and U1066 ( n1044,n1038,n1045 );
   nor U1067 ( n1046,n1047,n1048 );
   nand U1068 ( n1048,n1049,n1038 );
   and U1069 ( n1050,n1047,n1035 );
   nand U1070 ( n1049,n1051,n1039 );
   nor U1071 ( n1051,max_reg_0_,n1052 );
   nor U1072 ( n1053,n1054,n1055 );
   nor U1073 ( n1054,n1052,n1056 );
   and U1074 ( n1056,n1038,n1057 );
   nand U1075 ( n1038,n1058,n1059 );
   nand U1076 ( n1059,max_reg_0_,n1060 );
   nor U1077 ( n1058,n1039,n1052 );
   nand U1078 ( n1061,n1062,n974 );
   nand U1079 ( n1062,n1045,n1063 );
   nand U1080 ( n1063,n1035,n1039 );
   not U1081 ( n1039,n1057 );
   nor U1082 ( n1045,n1055,n1064 );
   and U1083 ( n1064,n1052,n1035 );
   nand U1084 ( n1055,n1034,n1065 );
   nand U1085 ( n1065,n1035,n1047 );
   nand U1086 ( n1047,n1066,n1067 );
   nand U1087 ( n1067,n1052,max_reg_0_ );
   nor U1088 ( n1052,n1041,max_reg_8_ );
   nor U1089 ( n1066,n1068,n1069 );
   not U1090 ( n1068,n1034 );
   and U1091 ( n1035,n1070,n1034 );
   nand U1092 ( n1070,n1069,max_reg_0_ );
   nor U1093 ( n1069,n1057,n1041 );
   nand U1094 ( n1041,n1071,n1072 );
   nand U1095 ( n1072,n1073,n1074 );
   nand U1096 ( n1071,n1075,n972 );
   xor U1097 ( n1075,n1076,n1077 );
   xor U1098 ( n1077,max_reg_2_,n1078 );
   nor U1099 ( n1078,n968,n966 );
   not U1100 ( n966,n1079 );
   nor U1101 ( n1076,n968,max_reg_1_ );
   nand U1102 ( n1057,n1080,n1060 );
   nor U1103 ( n1080,n1081,n1082 );
   nor U1104 ( n1082,n1073,n1083 );
   xor U1105 ( n1083,n1084,n968 );
   nor U1106 ( n1081,max_reg_1_,n972 );
   not U1107 ( n972,n1073 );
   nand U1108 ( n1034,n1043,n1060 );
   and U1109 ( n1043,n1085,n1086 );
   nand U1110 ( n1086,n682,n1073 );
   nand U1111 ( n1073,n1060,n1087 );
   nand U1112 ( n1087,n1088,n1089 );
   nand U1113 ( n1088,max_reg_3_,n1090 );
   nand U1114 ( n1090,n1084,n1074 );
   not U1115 ( n1060,max_reg_8_ );
   xor U1116 ( n1085,n1091,n1092 );
   nand U1117 ( n1092,n1074,n1093 );
   nand U1118 ( n1093,max_reg_1_,n1094 );
   xor U1119 ( n1091,n968,max_reg_3_ );
   not U1120 ( n968,n1094 );
   nand U1121 ( n1094,n971,n1079 );
   nand U1122 ( n1079,n1095,n1096 );
   nor U1123 ( n1096,n1084,n1074 );
   not U1124 ( n1074,max_reg_2_ );
   not U1125 ( n1084,max_reg_1_ );
   nor U1126 ( n1095,n682,n1089 );
   not U1127 ( n1089,max_reg_4_ );
   not U1128 ( n682,max_reg_3_ );
   and U1129 ( n971,n1097,max_reg_4_ );
   nor U1130 ( n1097,max_reg_8_,n1098 );
   nor U1131 ( n1098,max_reg_2_,max_reg_3_ );
   nand U1132 ( n1099,max_reg_8_,n974 );
   nor U1133 ( n1101,n802,n1102 );
   nor U1134 ( n1100,n1103,n1104 );
   nor U1135 ( n1104,stato_reg_2_,stato_reg_0_ );
   nor U1136 ( n1103,start,n1105 );
   nor U1137 ( n1105,stato_reg_2_,n659 );
   not U1138 ( n651,n1102 );
   nor U1139 ( n1102,n659,stato_reg_0_ );
   nor U1140 ( n792,n803,n802 );
   nor U1141 ( n802,n795,n807 );
   not U1142 ( n795,stato_reg_2_ );
   not U1143 ( n803,n762 );
   nand U1144 ( n762,n1106,start );
   nor U1145 ( n1106,stato_reg_1_,n811 );
   nand U1146 ( n1107,n1108,n807 );
   nor U1147 ( n807,n718,n923 );
   nand U1148 ( n923,mar_reg_3_,mar_reg_1_ );
   not U1149 ( n718,n909 );
   nor U1150 ( n909,n940,n779 );
   not U1151 ( n779,n916 );
   nor U1152 ( n916,n777,n794 );
   not U1153 ( n794,mar_reg_0_ );
   not U1154 ( n777,mar_reg_2_ );
   not U1155 ( n940,mar_reg_4_ );
   and U1156 ( n1108,start,stato_reg_2_ );
   not U1157 ( n844,n846 );
   nor U1158 ( n846,n811,n659 );
   not U1159 ( n659,stato_reg_1_ );
   not U1160 ( n811,stato_reg_0_ );
   nand U1161 ( n1022,n1029,n734 );
   not U1162 ( n734,num_reg_4_ );
   nand U1163 ( n1029,num_reg_3_,n1109 );
   nand U1164 ( n1109,n750,n744 );
   not U1165 ( n744,num_reg_2_ );
   not U1166 ( n750,num_reg_1_ );
   nand U1167 ( n969,res_disp_reg,n974 );
   not U1168 ( n974,en_disp_reg );
endmodule
