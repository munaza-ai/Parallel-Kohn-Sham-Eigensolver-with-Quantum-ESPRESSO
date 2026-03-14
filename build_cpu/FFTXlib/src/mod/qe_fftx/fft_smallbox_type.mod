V34 :0x24 fft_smallbox_type
21 fft_smallbox_type.f90 S624 0
03/12/2026  22:09:04
use stick_base private
use iso_fortran_env private
use iso_c_binding private
use fft_types private
enduse
D 58 23 6 1 11 11 0 0 0 0 0
 0 11 11 11 11 11
D 61 23 6 1 11 11 0 0 0 0 0
 0 11 11 11 11 11
D 64 23 6 1 11 57 0 0 0 0 0
 0 57 11 11 57 57
D 67 23 6 1 11 57 0 0 0 0 0
 0 57 11 11 57 57
D 70 23 6 1 11 57 0 0 0 0 0
 0 57 11 11 57 57
D 73 23 6 1 11 57 0 0 0 0 0
 0 57 11 11 57 57
D 76 23 6 1 11 58 0 0 0 0 0
 0 58 11 11 58 58
D 79 23 6 1 11 58 0 0 0 0 0
 0 58 11 11 58 58
D 82 26 685 8 684 7
D 91 26 688 8 687 7
D 136 26 773 1232 769 7
D 154 23 6 1 11 165 0 0 0 0 0
 0 165 11 11 165 165
D 157 23 6 1 11 165 0 0 0 0 0
 0 165 11 11 165 165
D 358 26 1062 7848 1061 7
D 738 26 1515 1160 1514 7
D 744 23 6 2 886 885 0 1 0 0 1
 875 878 883 875 878 876
 879 882 884 879 882 880
D 747 23 7 1 0 135 0 0 0 0 0
 0 135 0 11 135 0
D 750 23 6 1 895 894 0 1 0 0 1
 889 892 893 889 892 890
D 753 23 7 1 0 147 0 0 0 0 0
 0 147 0 11 147 0
D 756 23 6 1 904 903 0 1 0 0 1
 898 901 902 898 901 899
D 759 23 7 1 0 147 0 0 0 0 0
 0 147 0 11 147 0
D 762 23 6 1 913 912 0 1 0 0 1
 907 910 911 907 910 908
D 765 23 7 1 0 147 0 0 0 0 0
 0 147 0 11 147 0
D 768 23 6 1 922 921 0 1 0 0 1
 916 919 920 916 919 917
D 771 23 7 1 0 147 0 0 0 0 0
 0 147 0 11 147 0
D 774 23 6 1 931 930 0 1 0 0 1
 925 928 929 925 928 926
D 777 23 7 1 0 147 0 0 0 0 0
 0 147 0 11 147 0
D 780 23 6 1 940 939 0 1 0 0 1
 934 937 938 934 937 935
D 783 23 7 1 0 147 0 0 0 0 0
 0 147 0 11 147 0
D 800 23 7 1 0 11 0 0 0 0 0
 0 11 0 11 11 0
D 803 23 6 2 941 947 1 1 0 0 1
 11 942 11 11 942 943
 11 944 945 11 944 946
S 624 24 0 0 0 9 1 0 5012 10005 0 A 0 0 0 0 B 0 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 10 0 0 0 0 0 0 fft_smallbox_type
S 626 23 0 0 0 9 1061 624 5040 4 0 A 0 0 0 0 B 400000 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fft_type_descriptor
S 629 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 631 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 636 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 637 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 638 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 641 7 3 iso_fortran_env character_kinds$ac
R 663 7 25 iso_fortran_env integer_kinds$ac
R 665 7 27 iso_fortran_env logical_kinds$ac
R 667 7 29 iso_fortran_env real_kinds$ac
R 684 25 7 iso_c_binding c_ptr
R 685 5 8 iso_c_binding val c_ptr
R 687 25 10 iso_c_binding c_funptr
R 688 5 11 iso_c_binding val c_funptr
R 722 6 45 iso_c_binding c_null_ptr$ac
R 724 6 47 iso_c_binding c_null_funptr$ac
R 725 26 48 iso_c_binding ==
R 727 26 50 iso_c_binding !=
S 753 3 0 0 0 18 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 18
S 754 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 755 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 756 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 23 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 757 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 758 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 759 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 760 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 761 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 762 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 21 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 763 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 769 25 5 stick_base sticks_map
R 773 5 9 stick_base lgamma sticks_map
R 774 5 10 stick_base lpara sticks_map
R 775 5 11 stick_base mype sticks_map
R 776 5 12 stick_base nproc sticks_map
R 777 5 13 stick_base nyfft sticks_map
R 778 5 14 stick_base iproc sticks_map
R 781 5 17 stick_base iproc$sd sticks_map
R 782 5 18 stick_base iproc$p sticks_map
R 783 5 19 stick_base iproc$o sticks_map
R 785 5 21 stick_base iproc2 sticks_map
R 787 5 23 stick_base iproc2$sd sticks_map
R 788 5 24 stick_base iproc2$p sticks_map
R 789 5 25 stick_base iproc2$o sticks_map
R 791 5 27 stick_base comm sticks_map
R 792 5 28 stick_base nstx sticks_map
R 793 5 29 stick_base lb sticks_map
R 794 5 30 stick_base ub sticks_map
R 795 5 31 stick_base idx sticks_map
R 797 5 33 stick_base idx$sd sticks_map
R 798 5 34 stick_base idx$p sticks_map
R 799 5 35 stick_base idx$o sticks_map
R 801 5 37 stick_base ist sticks_map
R 804 5 40 stick_base ist$sd sticks_map
R 805 5 41 stick_base ist$p sticks_map
R 806 5 42 stick_base ist$o sticks_map
R 808 5 44 stick_base stown sticks_map
R 811 5 47 stick_base stown$sd sticks_map
R 812 5 48 stick_base stown$p sticks_map
R 813 5 49 stick_base stown$o sticks_map
R 815 5 51 stick_base indmap sticks_map
R 818 5 54 stick_base indmap$sd sticks_map
R 819 5 55 stick_base indmap$p sticks_map
R 820 5 56 stick_base indmap$o sticks_map
R 822 5 58 stick_base bg sticks_map
S 1057 3 0 0 0 18 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 18
S 1058 3 0 0 0 22 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 7706 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 1 20
R 1061 25 3 fft_types fft_type_descriptor
R 1062 5 4 fft_types nr1 fft_type_descriptor
R 1063 5 5 fft_types nr2 fft_type_descriptor
R 1064 5 6 fft_types nr3 fft_type_descriptor
R 1065 5 7 fft_types nr1x fft_type_descriptor
R 1066 5 8 fft_types nr2x fft_type_descriptor
R 1067 5 9 fft_types nr3x fft_type_descriptor
R 1068 5 10 fft_types lpara fft_type_descriptor
R 1069 5 11 fft_types lgamma fft_type_descriptor
R 1070 5 12 fft_types root fft_type_descriptor
R 1071 5 13 fft_types comm fft_type_descriptor
R 1072 5 14 fft_types comm2 fft_type_descriptor
R 1073 5 15 fft_types comm3 fft_type_descriptor
R 1074 5 16 fft_types nproc fft_type_descriptor
R 1075 5 17 fft_types nproc2 fft_type_descriptor
R 1076 5 18 fft_types nproc3 fft_type_descriptor
R 1077 5 19 fft_types mype fft_type_descriptor
R 1078 5 20 fft_types mype2 fft_type_descriptor
R 1079 5 21 fft_types mype3 fft_type_descriptor
R 1080 5 22 fft_types iproc fft_type_descriptor
R 1083 5 25 fft_types iproc$sd fft_type_descriptor
R 1084 5 26 fft_types iproc$p fft_type_descriptor
R 1085 5 27 fft_types iproc$o fft_type_descriptor
R 1087 5 29 fft_types iproc2 fft_type_descriptor
R 1089 5 31 fft_types iproc2$sd fft_type_descriptor
R 1090 5 32 fft_types iproc2$p fft_type_descriptor
R 1091 5 33 fft_types iproc2$o fft_type_descriptor
R 1093 5 35 fft_types iproc3 fft_type_descriptor
R 1095 5 37 fft_types iproc3$sd fft_type_descriptor
R 1096 5 38 fft_types iproc3$p fft_type_descriptor
R 1097 5 39 fft_types iproc3$o fft_type_descriptor
R 1099 5 41 fft_types my_nr3p fft_type_descriptor
R 1100 5 42 fft_types my_nr2p fft_type_descriptor
R 1101 5 43 fft_types my_i0r3p fft_type_descriptor
R 1102 5 44 fft_types my_i0r2p fft_type_descriptor
R 1103 5 45 fft_types nr3p fft_type_descriptor
R 1105 5 47 fft_types nr3p$sd fft_type_descriptor
R 1106 5 48 fft_types nr3p$p fft_type_descriptor
R 1107 5 49 fft_types nr3p$o fft_type_descriptor
R 1109 5 51 fft_types nr3p_offset fft_type_descriptor
R 1111 5 53 fft_types nr3p_offset$sd fft_type_descriptor
R 1112 5 54 fft_types nr3p_offset$p fft_type_descriptor
R 1113 5 55 fft_types nr3p_offset$o fft_type_descriptor
R 1115 5 57 fft_types nr2p fft_type_descriptor
R 1117 5 59 fft_types nr2p$sd fft_type_descriptor
R 1118 5 60 fft_types nr2p$p fft_type_descriptor
R 1119 5 61 fft_types nr2p$o fft_type_descriptor
R 1121 5 63 fft_types nr2p_offset fft_type_descriptor
R 1123 5 65 fft_types nr2p_offset$sd fft_type_descriptor
R 1124 5 66 fft_types nr2p_offset$p fft_type_descriptor
R 1125 5 67 fft_types nr2p_offset$o fft_type_descriptor
R 1127 5 69 fft_types nr1p fft_type_descriptor
R 1129 5 71 fft_types nr1p$sd fft_type_descriptor
R 1130 5 72 fft_types nr1p$p fft_type_descriptor
R 1131 5 73 fft_types nr1p$o fft_type_descriptor
R 1133 5 75 fft_types nr1w fft_type_descriptor
R 1135 5 77 fft_types nr1w$sd fft_type_descriptor
R 1136 5 78 fft_types nr1w$p fft_type_descriptor
R 1137 5 79 fft_types nr1w$o fft_type_descriptor
R 1139 5 81 fft_types nr1w_tg fft_type_descriptor
R 1140 5 82 fft_types i0r3p fft_type_descriptor
R 1142 5 84 fft_types i0r3p$sd fft_type_descriptor
R 1143 5 85 fft_types i0r3p$p fft_type_descriptor
R 1144 5 86 fft_types i0r3p$o fft_type_descriptor
R 1146 5 88 fft_types i0r2p fft_type_descriptor
R 1148 5 90 fft_types i0r2p$sd fft_type_descriptor
R 1149 5 91 fft_types i0r2p$p fft_type_descriptor
R 1150 5 92 fft_types i0r2p$o fft_type_descriptor
R 1152 5 94 fft_types ir1p fft_type_descriptor
R 1154 5 96 fft_types ir1p$sd fft_type_descriptor
R 1155 5 97 fft_types ir1p$p fft_type_descriptor
R 1156 5 98 fft_types ir1p$o fft_type_descriptor
R 1158 5 100 fft_types indp fft_type_descriptor
R 1161 5 103 fft_types indp$sd fft_type_descriptor
R 1162 5 104 fft_types indp$p fft_type_descriptor
R 1163 5 105 fft_types indp$o fft_type_descriptor
R 1165 5 107 fft_types ir1w fft_type_descriptor
R 1167 5 109 fft_types ir1w$sd fft_type_descriptor
R 1168 5 110 fft_types ir1w$p fft_type_descriptor
R 1169 5 111 fft_types ir1w$o fft_type_descriptor
R 1171 5 113 fft_types indw fft_type_descriptor
R 1174 5 116 fft_types indw$sd fft_type_descriptor
R 1175 5 117 fft_types indw$p fft_type_descriptor
R 1176 5 118 fft_types indw$o fft_type_descriptor
R 1178 5 120 fft_types ir1w_tg fft_type_descriptor
R 1180 5 122 fft_types ir1w_tg$sd fft_type_descriptor
R 1181 5 123 fft_types ir1w_tg$p fft_type_descriptor
R 1182 5 124 fft_types ir1w_tg$o fft_type_descriptor
R 1184 5 126 fft_types indw_tg fft_type_descriptor
R 1186 5 128 fft_types indw_tg$sd fft_type_descriptor
R 1187 5 129 fft_types indw_tg$p fft_type_descriptor
R 1188 5 130 fft_types indw_tg$o fft_type_descriptor
R 1190 5 132 fft_types ir1p_d fft_type_descriptor
R 1192 5 134 fft_types ir1p_d$sd fft_type_descriptor
R 1193 5 135 fft_types ir1p_d$p fft_type_descriptor
R 1194 5 136 fft_types ir1p_d$o fft_type_descriptor
R 1196 5 138 fft_types ir1w_d fft_type_descriptor
R 1198 5 140 fft_types ir1w_d$sd fft_type_descriptor
R 1199 5 141 fft_types ir1w_d$p fft_type_descriptor
R 1200 5 142 fft_types ir1w_d$o fft_type_descriptor
R 1202 5 144 fft_types ir1w_tg_d fft_type_descriptor
R 1204 5 146 fft_types ir1w_tg_d$sd fft_type_descriptor
R 1205 5 147 fft_types ir1w_tg_d$p fft_type_descriptor
R 1206 5 148 fft_types ir1w_tg_d$o fft_type_descriptor
R 1208 5 150 fft_types indp_d fft_type_descriptor
R 1211 5 153 fft_types indp_d$sd fft_type_descriptor
R 1212 5 154 fft_types indp_d$p fft_type_descriptor
R 1213 5 155 fft_types indp_d$o fft_type_descriptor
R 1215 5 157 fft_types indw_d fft_type_descriptor
R 1218 5 160 fft_types indw_d$sd fft_type_descriptor
R 1219 5 161 fft_types indw_d$p fft_type_descriptor
R 1220 5 162 fft_types indw_d$o fft_type_descriptor
R 1222 5 164 fft_types indw_tg_d fft_type_descriptor
R 1225 5 167 fft_types indw_tg_d$sd fft_type_descriptor
R 1226 5 168 fft_types indw_tg_d$p fft_type_descriptor
R 1227 5 169 fft_types indw_tg_d$o fft_type_descriptor
R 1229 5 171 fft_types nr1p_d fft_type_descriptor
R 1231 5 173 fft_types nr1p_d$sd fft_type_descriptor
R 1232 5 174 fft_types nr1p_d$p fft_type_descriptor
R 1233 5 175 fft_types nr1p_d$o fft_type_descriptor
R 1235 5 177 fft_types nr1w_d fft_type_descriptor
R 1237 5 179 fft_types nr1w_d$sd fft_type_descriptor
R 1238 5 180 fft_types nr1w_d$p fft_type_descriptor
R 1239 5 181 fft_types nr1w_d$o fft_type_descriptor
R 1241 5 183 fft_types nr1w_tg_d fft_type_descriptor
R 1243 5 185 fft_types nr1w_tg_d$sd fft_type_descriptor
R 1244 5 186 fft_types nr1w_tg_d$p fft_type_descriptor
R 1245 5 187 fft_types nr1w_tg_d$o fft_type_descriptor
R 1247 5 189 fft_types nst fft_type_descriptor
R 1248 5 190 fft_types nsp fft_type_descriptor
R 1250 5 192 fft_types nsp$sd fft_type_descriptor
R 1251 5 193 fft_types nsp$p fft_type_descriptor
R 1252 5 194 fft_types nsp$o fft_type_descriptor
R 1254 5 196 fft_types nsp_offset fft_type_descriptor
R 1257 5 199 fft_types nsp_offset$sd fft_type_descriptor
R 1258 5 200 fft_types nsp_offset$p fft_type_descriptor
R 1259 5 201 fft_types nsp_offset$o fft_type_descriptor
R 1261 5 203 fft_types nsw fft_type_descriptor
R 1263 5 205 fft_types nsw$sd fft_type_descriptor
R 1264 5 206 fft_types nsw$p fft_type_descriptor
R 1265 5 207 fft_types nsw$o fft_type_descriptor
R 1267 5 209 fft_types nsw_offset fft_type_descriptor
R 1270 5 212 fft_types nsw_offset$sd fft_type_descriptor
R 1271 5 213 fft_types nsw_offset$p fft_type_descriptor
R 1272 5 214 fft_types nsw_offset$o fft_type_descriptor
R 1274 5 216 fft_types nsw_tg fft_type_descriptor
R 1276 5 218 fft_types nsw_tg$sd fft_type_descriptor
R 1277 5 219 fft_types nsw_tg$p fft_type_descriptor
R 1278 5 220 fft_types nsw_tg$o fft_type_descriptor
R 1280 5 222 fft_types ngl fft_type_descriptor
R 1282 5 224 fft_types ngl$sd fft_type_descriptor
R 1283 5 225 fft_types ngl$p fft_type_descriptor
R 1284 5 226 fft_types ngl$o fft_type_descriptor
R 1286 5 228 fft_types nwl fft_type_descriptor
R 1288 5 230 fft_types nwl$sd fft_type_descriptor
R 1289 5 231 fft_types nwl$p fft_type_descriptor
R 1290 5 232 fft_types nwl$o fft_type_descriptor
R 1292 5 234 fft_types ngm fft_type_descriptor
R 1293 5 235 fft_types ngw fft_type_descriptor
R 1294 5 236 fft_types iplp fft_type_descriptor
R 1296 5 238 fft_types iplp$sd fft_type_descriptor
R 1297 5 239 fft_types iplp$p fft_type_descriptor
R 1298 5 240 fft_types iplp$o fft_type_descriptor
R 1300 5 242 fft_types iplw fft_type_descriptor
R 1302 5 244 fft_types iplw$sd fft_type_descriptor
R 1303 5 245 fft_types iplw$p fft_type_descriptor
R 1304 5 246 fft_types iplw$o fft_type_descriptor
R 1306 5 248 fft_types nnp fft_type_descriptor
R 1307 5 249 fft_types nnr fft_type_descriptor
R 1308 5 250 fft_types nnr_tg fft_type_descriptor
R 1309 5 251 fft_types iss fft_type_descriptor
R 1311 5 253 fft_types iss$sd fft_type_descriptor
R 1312 5 254 fft_types iss$p fft_type_descriptor
R 1313 5 255 fft_types iss$o fft_type_descriptor
R 1315 5 257 fft_types isind fft_type_descriptor
R 1317 5 259 fft_types isind$sd fft_type_descriptor
R 1318 5 260 fft_types isind$p fft_type_descriptor
R 1319 5 261 fft_types isind$o fft_type_descriptor
R 1321 5 263 fft_types ismap fft_type_descriptor
R 1323 5 265 fft_types ismap$sd fft_type_descriptor
R 1324 5 266 fft_types ismap$p fft_type_descriptor
R 1325 5 267 fft_types ismap$o fft_type_descriptor
R 1327 5 269 fft_types ismap_d fft_type_descriptor
R 1329 5 271 fft_types ismap_d$sd fft_type_descriptor
R 1330 5 272 fft_types ismap_d$p fft_type_descriptor
R 1331 5 273 fft_types ismap_d$o fft_type_descriptor
R 1333 5 275 fft_types nl fft_type_descriptor
R 1335 5 277 fft_types nl$sd fft_type_descriptor
R 1336 5 278 fft_types nl$p fft_type_descriptor
R 1337 5 279 fft_types nl$o fft_type_descriptor
R 1339 5 281 fft_types nlm fft_type_descriptor
R 1341 5 283 fft_types nlm$sd fft_type_descriptor
R 1342 5 284 fft_types nlm$p fft_type_descriptor
R 1343 5 285 fft_types nlm$o fft_type_descriptor
R 1345 5 287 fft_types nl_d fft_type_descriptor
R 1347 5 289 fft_types nl_d$sd fft_type_descriptor
R 1348 5 290 fft_types nl_d$p fft_type_descriptor
R 1349 5 291 fft_types nl_d$o fft_type_descriptor
R 1351 5 293 fft_types nlm_d fft_type_descriptor
R 1353 5 295 fft_types nlm_d$sd fft_type_descriptor
R 1354 5 296 fft_types nlm_d$p fft_type_descriptor
R 1355 5 297 fft_types nlm_d$o fft_type_descriptor
R 1357 5 299 fft_types tg_snd fft_type_descriptor
R 1359 5 301 fft_types tg_snd$sd fft_type_descriptor
R 1360 5 302 fft_types tg_snd$p fft_type_descriptor
R 1361 5 303 fft_types tg_snd$o fft_type_descriptor
R 1363 5 305 fft_types tg_rcv fft_type_descriptor
R 1365 5 307 fft_types tg_rcv$sd fft_type_descriptor
R 1366 5 308 fft_types tg_rcv$p fft_type_descriptor
R 1367 5 309 fft_types tg_rcv$o fft_type_descriptor
R 1369 5 311 fft_types tg_sdsp fft_type_descriptor
R 1371 5 313 fft_types tg_sdsp$sd fft_type_descriptor
R 1372 5 314 fft_types tg_sdsp$p fft_type_descriptor
R 1373 5 315 fft_types tg_sdsp$o fft_type_descriptor
R 1375 5 317 fft_types tg_rdsp fft_type_descriptor
R 1377 5 319 fft_types tg_rdsp$sd fft_type_descriptor
R 1378 5 320 fft_types tg_rdsp$p fft_type_descriptor
R 1379 5 321 fft_types tg_rdsp$o fft_type_descriptor
R 1381 5 323 fft_types has_task_groups fft_type_descriptor
R 1382 5 324 fft_types use_pencil_decomposition fft_type_descriptor
R 1383 5 325 fft_types rho_clock_label fft_type_descriptor
R 1384 5 326 fft_types wave_clock_label fft_type_descriptor
R 1385 5 327 fft_types grid_id fft_type_descriptor
R 1387 5 329 fft_types aux fft_type_descriptor
R 1388 5 330 fft_types aux$sd fft_type_descriptor
R 1389 5 331 fft_types aux$p fft_type_descriptor
R 1390 5 332 fft_types aux$o fft_type_descriptor
S 1513 6 4 0 0 6 1570 624 10801 80000c 0 A 0 0 0 0 B 0 18 0 0 0 0 0 0 0 0 0 0 1571 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 stdout
S 1514 25 0 0 0 738 1 624 10808 1000000c 800050 A 0 0 0 0 B 0 20 0 0 0 0 0 0 0 0 0 1570 0 0 0 0 0 0 0 1569 0 0 0 624 0 0 0 0 fft_box_descriptor
S 1515 5 6 0 0 744 1519 624 10827 10a00004 51 A 0 0 0 0 B 0 24 0 0 0 0 1519 0 738 0 1521 0 0 0 0 0 0 0 0 1518 1 1515 1520 624 0 0 0 0 irb
S 1516 6 4 0 0 7 1517 624 10831 40800006 0 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 1572 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 z_b_0_1
S 1517 6 4 0 0 7 1523 624 6763 40800006 0 A 0 0 0 0 B 0 24 0 0 0 8 0 0 0 0 0 0 1572 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 z_b_1_1
S 1518 5 1 0 0 747 1522 624 10839 40822004 1020 A 0 0 0 0 B 0 24 0 0 0 16 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1520 1518 0 624 0 0 0 0 irb$sd
S 1519 5 0 0 0 7 1520 624 10846 40802001 1020 A 0 0 0 0 B 0 24 0 0 0 0 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1515 1519 0 624 0 0 0 0 irb$p
S 1520 5 0 0 0 7 1518 624 10852 40802000 1020 A 0 0 0 0 B 0 24 0 0 0 8 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1519 1520 0 624 0 0 0 0 irb$o
S 1521 22 1 0 0 6 1 624 10858 40000000 1000 A 0 0 0 0 B 0 24 0 0 0 0 0 1515 0 0 0 0 1518 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 irb$arrdsc
S 1522 5 6 0 0 750 1525 624 10869 10a00004 51 A 0 0 0 0 B 0 25 0 0 0 200 1525 0 738 0 1527 0 0 0 0 0 0 0 0 1524 1515 1522 1526 624 0 0 0 0 imin2
S 1523 6 4 0 0 7 1529 624 6771 40800006 0 A 0 0 0 0 B 0 25 0 0 0 16 0 0 0 0 0 0 1572 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 z_b_2_1
S 1524 5 1 0 0 753 1528 624 10875 40822004 1020 A 0 0 0 0 B 0 25 0 0 0 216 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1526 1524 0 624 0 0 0 0 imin2$sd
S 1525 5 0 0 0 7 1526 624 10884 40802001 1020 A 0 0 0 0 B 0 25 0 0 0 200 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1522 1525 0 624 0 0 0 0 imin2$p
S 1526 5 0 0 0 7 1524 624 10892 40802000 1020 A 0 0 0 0 B 0 25 0 0 0 208 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1525 1526 0 624 0 0 0 0 imin2$o
S 1527 22 1 0 0 6 1 624 10900 40000000 1000 A 0 0 0 0 B 0 25 0 0 0 0 0 1522 0 0 0 0 1524 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 imin2$arrdsc
S 1528 5 6 0 0 756 1531 624 10913 10a00004 51 A 0 0 0 0 B 0 25 0 0 0 352 1531 0 738 0 1533 0 0 0 0 0 0 0 0 1530 1522 1528 1532 624 0 0 0 0 imin3
S 1529 6 4 0 0 7 1535 624 6861 40800006 0 A 0 0 0 0 B 0 25 0 0 0 24 0 0 0 0 0 0 1572 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 z_b_3_1
S 1530 5 1 0 0 759 1534 624 10919 40822004 1020 A 0 0 0 0 B 0 25 0 0 0 368 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1532 1530 0 624 0 0 0 0 imin3$sd
S 1531 5 0 0 0 7 1532 624 10928 40802001 1020 A 0 0 0 0 B 0 25 0 0 0 352 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1528 1531 0 624 0 0 0 0 imin3$p
S 1532 5 0 0 0 7 1530 624 10936 40802000 1020 A 0 0 0 0 B 0 25 0 0 0 360 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1531 1532 0 624 0 0 0 0 imin3$o
S 1533 22 1 0 0 6 1 624 10944 40000000 1000 A 0 0 0 0 B 0 25 0 0 0 0 0 1528 0 0 0 0 1530 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 imin3$arrdsc
S 1534 5 6 0 0 762 1537 624 10957 10a00004 51 A 0 0 0 0 B 0 26 0 0 0 504 1537 0 738 0 1539 0 0 0 0 0 0 0 0 1536 1528 1534 1538 624 0 0 0 0 imax2
S 1535 6 4 0 0 7 1541 624 6779 40800006 0 A 0 0 0 0 B 0 26 0 0 0 32 0 0 0 0 0 0 1572 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 z_b_4_1
S 1536 5 1 0 0 765 1540 624 10963 40822004 1020 A 0 0 0 0 B 0 26 0 0 0 520 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1538 1536 0 624 0 0 0 0 imax2$sd
S 1537 5 0 0 0 7 1538 624 10972 40802001 1020 A 0 0 0 0 B 0 26 0 0 0 504 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1534 1537 0 624 0 0 0 0 imax2$p
S 1538 5 0 0 0 7 1536 624 10980 40802000 1020 A 0 0 0 0 B 0 26 0 0 0 512 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1537 1538 0 624 0 0 0 0 imax2$o
S 1539 22 1 0 0 6 1 624 10988 40000000 1000 A 0 0 0 0 B 0 26 0 0 0 0 0 1534 0 0 0 0 1536 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 imax2$arrdsc
S 1540 5 6 0 0 768 1543 624 11001 10a00004 51 A 0 0 0 0 B 0 26 0 0 0 656 1543 0 738 0 1545 0 0 0 0 0 0 0 0 1542 1534 1540 1544 624 0 0 0 0 imax3
S 1541 6 4 0 0 7 1547 624 6787 40800006 0 A 0 0 0 0 B 0 26 0 0 0 40 0 0 0 0 0 0 1572 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 z_b_5_1
S 1542 5 1 0 0 771 1546 624 11007 40822004 1020 A 0 0 0 0 B 0 26 0 0 0 672 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1544 1542 0 624 0 0 0 0 imax3$sd
S 1543 5 0 0 0 7 1544 624 11016 40802001 1020 A 0 0 0 0 B 0 26 0 0 0 656 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1540 1543 0 624 0 0 0 0 imax3$p
S 1544 5 0 0 0 7 1542 624 11024 40802000 1020 A 0 0 0 0 B 0 26 0 0 0 664 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1543 1544 0 624 0 0 0 0 imax3$o
S 1545 22 1 0 0 6 1 624 11032 40000000 1000 A 0 0 0 0 B 0 26 0 0 0 0 0 1540 0 0 0 0 1542 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 imax3$arrdsc
S 1546 5 6 0 0 774 1549 624 11045 10a00004 51 A 0 0 0 0 B 0 27 0 0 0 808 1549 0 738 0 1551 0 0 0 0 0 0 0 0 1548 1540 1546 1550 624 0 0 0 0 np2
S 1547 6 4 0 0 7 1553 624 6795 40800006 0 A 0 0 0 0 B 0 27 0 0 0 48 0 0 0 0 0 0 1572 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 z_b_6_1
S 1548 5 1 0 0 777 1552 624 11049 40822004 1020 A 0 0 0 0 B 0 27 0 0 0 824 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1550 1548 0 624 0 0 0 0 np2$sd
S 1549 5 0 0 0 7 1550 624 11056 40802001 1020 A 0 0 0 0 B 0 27 0 0 0 808 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1546 1549 0 624 0 0 0 0 np2$p
S 1550 5 0 0 0 7 1548 624 11062 40802000 1020 A 0 0 0 0 B 0 27 0 0 0 816 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1549 1550 0 624 0 0 0 0 np2$o
S 1551 22 1 0 0 6 1 624 11068 40000000 1000 A 0 0 0 0 B 0 27 0 0 0 0 0 1546 0 0 0 0 1548 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 np2$arrdsc
S 1552 5 6 0 0 780 1555 624 11079 10a00004 51 A 0 0 0 0 B 0 27 0 0 0 960 1555 0 738 0 1557 0 0 0 0 0 0 0 0 1554 1546 1552 1556 624 0 0 0 0 np3
S 1553 6 4 0 0 7 1 624 6878 40800006 0 A 0 0 0 0 B 0 27 0 0 0 56 0 0 0 0 0 0 1572 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 z_b_7_1
S 1554 5 1 0 0 783 1558 624 11083 40822004 1020 A 0 0 0 0 B 0 27 0 0 0 976 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1556 1554 0 624 0 0 0 0 np3$sd
S 1555 5 0 0 0 7 1556 624 11090 40802001 1020 A 0 0 0 0 B 0 27 0 0 0 960 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1552 1555 0 624 0 0 0 0 np3$p
S 1556 5 0 0 0 7 1554 624 11096 40802000 1020 A 0 0 0 0 B 0 27 0 0 0 968 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1555 1556 0 624 0 0 0 0 np3$o
S 1557 22 1 0 0 6 1 624 11102 40000000 1000 A 0 0 0 0 B 0 27 0 0 0 0 0 1552 0 0 0 0 1554 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 np3$arrdsc
S 1558 5 0 0 0 6 1559 624 6751 800004 0 A 0 0 0 0 B 0 0 0 0 0 1112 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1552 1558 0 624 0 0 0 0 nr1
S 1559 5 0 0 0 6 1560 624 6755 800004 0 A 0 0 0 0 B 0 0 0 0 0 1116 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1558 1559 0 624 0 0 0 0 nr2
S 1560 5 0 0 0 6 1561 624 6759 800004 0 A 0 0 0 0 B 0 0 0 0 0 1120 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1559 1560 0 624 0 0 0 0 nr3
S 1561 5 0 0 0 6 1562 624 7708 800004 0 A 0 0 0 0 B 0 0 0 0 0 1124 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1560 1561 0 624 0 0 0 0 nr1x
S 1562 5 0 0 0 6 1563 624 7713 800004 0 A 0 0 0 0 B 0 0 0 0 0 1128 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1561 1562 0 624 0 0 0 0 nr2x
S 1563 5 0 0 0 6 1564 624 7718 800004 0 A 0 0 0 0 B 0 0 0 0 0 1132 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1562 1563 0 624 0 0 0 0 nr3x
S 1564 5 0 0 0 6 1565 624 9447 800004 0 A 0 0 0 0 B 0 0 0 0 0 1136 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1563 1564 0 624 0 0 0 0 nnr
S 1565 5 0 0 0 6 1566 624 6327 800004 0 A 0 0 0 0 B 0 0 0 0 0 1140 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1564 1565 0 624 0 0 0 0 mype
S 1566 5 0 0 0 6 1567 624 6455 800004 0 A 0 0 0 0 B 0 0 0 0 0 1144 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1565 1566 0 624 0 0 0 0 comm
S 1567 5 0 0 0 6 1568 624 6332 800004 0 A 0 0 0 0 B 0 0 0 0 0 1148 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1566 1567 0 624 0 0 0 0 nproc
S 1568 5 0 0 0 6 1 624 7723 800004 0 A 0 0 0 0 B 0 0 0 0 0 1152 0 0 738 0 0 0 0 0 0 0 0 0 0 0 1567 1568 0 624 0 0 0 0 root
S 1569 8 5 0 0 800 1 624 11113 40822004 1220 A 0 0 0 0 B 0 44 0 0 0 0 0 738 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fft_smallbox_type$$$fft_box_descriptor$$$td
S 1570 6 4 0 0 738 1 624 11157 80004e 0 A 0 0 0 0 B 800 44 0 0 0 8 0 0 0 0 0 0 1571 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ._dtInit0738
S 1571 11 0 0 0 9 1403 624 11170 40800000 805000 A 0 0 0 0 B 0 46 0 0 0 1168 0 0 1513 1570 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 _fft_smallbox_type$8
S 1572 11 0 0 0 9 1571 624 11191 40800000 805000 A 0 0 0 0 B 0 46 0 0 0 64 0 0 1516 1553 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 _fft_smallbox_type$2
S 1573 23 5 0 0 0 1580 624 11212 0 0 A 0 0 0 0 B 0 50 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fft_box_allocate
S 1574 1 3 0 0 738 1 1573 10404 4 3000 A 0 0 0 0 B 0 50 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 1575 1 3 1 0 6 1 1573 6327 4 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 mype
S 1576 1 3 1 0 6 1 1573 7723 4 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 root
S 1577 1 3 1 0 6 1 1573 6332 4 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nproc
S 1578 1 3 1 0 6 1 1573 6455 4 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 comm
S 1579 1 3 1 0 6 1 1573 11229 4 3000 A 0 0 0 0 B 0 50 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nat
S 1580 14 5 0 0 0 1 1573 11212 0 400000 A 0 0 0 0 B 0 50 0 0 0 0 0 150 6 0 0 0 0 0 0 0 0 0 0 0 0 50 0 624 0 0 0 0 fft_box_allocate fft_box_allocate 
F 1580 6 1574 1575 1576 1577 1578 1579
S 1581 23 5 0 0 0 1583 624 11233 0 0 A 0 0 0 0 B 0 67 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fft_box_deallocate
S 1582 1 3 0 0 738 1 1581 10404 4 3000 A 0 0 0 0 B 0 67 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 1583 14 5 0 0 0 1 1581 11233 0 400000 A 0 0 0 0 B 0 67 0 0 0 0 0 157 1 0 0 0 0 0 0 0 0 0 0 0 0 67 0 624 0 0 0 0 fft_box_deallocate fft_box_deallocate 
F 1583 1 1582
S 1584 23 5 0 0 0 1589 624 11252 0 0 A 0 0 0 0 B 0 81 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fft_box_set
S 1585 1 3 3 0 738 1 1584 10404 4 3000 A 0 0 0 0 B 0 81 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 1586 1 3 1 0 6 1 1584 11229 4 3000 A 0 0 0 0 B 0 81 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nat
S 1587 7 3 1 0 803 1 1584 10827 20000004 10003000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 irb
S 1588 1 3 1 0 358 1 1584 11264 4 3000 A 0 0 0 0 B 0 81 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfftp
S 1589 14 5 0 0 0 1 1584 11252 20000000 400000 A 0 0 0 0 B 0 81 0 0 0 0 0 159 4 0 0 0 0 0 0 0 0 0 0 0 0 81 0 624 0 0 0 0 fft_box_set fft_box_set 
F 1589 4 1585 1586 1587 1588
S 1590 6 1 0 0 7 1 1584 11270 40800006 3000 A 0 0 0 0 B 0 87 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_2
S 1591 6 1 0 0 7 1 1584 11278 40800006 3000 A 0 0 0 0 B 0 87 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_2
S 1592 6 1 0 0 7 1 1584 11286 40800006 3000 A 0 0 0 0 B 0 87 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_4_2
S 1593 6 1 0 0 7 1 1584 11294 40800006 3000 A 0 0 0 0 B 0 87 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_2
S 1594 6 1 0 0 7 1 1584 11302 40800006 3000 A 0 0 0 0 B 0 87 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_2
S 1595 6 1 0 0 7 1 1584 11310 40800006 3000 A 0 0 0 0 B 0 87 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_949
S 1596 6 1 0 0 7 1 1584 11318 40800006 3000 A 0 0 0 0 B 0 87 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_952
A 16 2 0 0 0 6 629 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0
A 33 2 0 0 0 6 631 0 0 0 33 0 0 0 0 0 0 0 0 0 0 0
A 35 2 0 0 0 6 636 0 0 0 35 0 0 0 0 0 0 0 0 0 0 0
A 57 2 0 0 0 7 637 0 0 0 57 0 0 0 0 0 0 0 0 0 0 0
A 58 2 0 0 0 7 638 0 0 0 58 0 0 0 0 0 0 0 0 0 0 0
A 61 1 0 1 0 58 641 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 67 1 0 3 0 64 663 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 73 1 0 3 0 70 665 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 77 1 0 5 0 76 667 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 131 1 0 0 0 82 722 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 134 1 0 0 0 91 724 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 135 2 0 0 0 7 756 0 0 0 135 0 0 0 0 0 0 0 0 0 0 0
A 137 2 0 0 0 7 763 0 0 0 137 0 0 0 0 0 0 0 0 0 0 0
A 139 2 0 0 0 7 757 0 0 0 139 0 0 0 0 0 0 0 0 0 0 0
A 141 2 0 0 0 7 758 0 0 0 141 0 0 0 0 0 0 0 0 0 0 0
A 145 2 0 0 0 7 761 0 0 0 145 0 0 0 0 0 0 0 0 0 0 0
A 147 2 0 0 0 7 759 0 0 0 147 0 0 0 0 0 0 0 0 0 0 0
A 149 2 0 0 0 7 760 0 0 0 149 0 0 0 0 0 0 0 0 0 0 0
A 153 2 0 0 0 7 762 0 0 0 153 0 0 0 0 0 0 0 0 0 0 0
A 155 2 0 0 0 7 754 0 0 0 155 0 0 0 0 0 0 0 0 0 0 0
A 165 2 0 0 0 7 755 0 0 0 165 0 0 0 0 0 0 0 0 0 0 0
A 397 2 0 0 0 18 753 0 0 0 397 0 0 0 0 0 0 0 0 0 0 0
A 869 2 0 0 0 18 1057 0 0 0 869 0 0 0 0 0 0 0 0 0 0 0
A 870 2 0 0 0 22 1058 0 0 0 870 0 0 0 0 0 0 0 0 0 0 0
A 874 1 0 7 0 747 1518 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 875 10 0 0 691 7 874 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 139
A 876 10 0 0 875 7 874 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 141
A 877 4 0 0 0 7 876 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 878 4 0 0 0 7 875 0 877 0 0 0 0 1 0 0 0 0 0 0 0 0
A 879 10 0 0 876 7 874 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 147
A 880 10 0 0 879 7 874 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 149
A 881 4 0 0 499 7 880 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 882 4 0 0 0 7 879 0 881 0 0 0 0 1 0 0 0 0 0 0 0 0
A 883 10 0 0 880 7 874 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 145
A 884 10 0 0 883 7 874 19 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 153
A 885 10 0 0 884 7 874 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 155
A 886 10 0 0 885 7 874 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 137
A 888 1 0 9 0 753 1524 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 889 10 0 0 0 7 888 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 139
A 890 10 0 0 889 7 888 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 141
A 891 4 0 0 0 7 890 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 892 4 0 0 0 7 889 0 891 0 0 0 0 1 0 0 0 0 0 0 0 0
A 893 10 0 0 890 7 888 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 145
A 894 10 0 0 893 7 888 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 155
A 895 10 0 0 894 7 888 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 137
A 897 1 0 9 0 759 1530 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 898 10 0 0 0 7 897 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 139
A 899 10 0 0 898 7 897 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 141
A 900 4 0 0 0 7 899 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 901 4 0 0 0 7 898 0 900 0 0 0 0 1 0 0 0 0 0 0 0 0
A 902 10 0 0 899 7 897 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 145
A 903 10 0 0 902 7 897 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 155
A 904 10 0 0 903 7 897 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 137
A 906 1 0 9 0 765 1536 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 907 10 0 0 0 7 906 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 139
A 908 10 0 0 907 7 906 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 141
A 909 4 0 0 0 7 908 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 910 4 0 0 0 7 907 0 909 0 0 0 0 1 0 0 0 0 0 0 0 0
A 911 10 0 0 908 7 906 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 145
A 912 10 0 0 911 7 906 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 155
A 913 10 0 0 912 7 906 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 137
A 915 1 0 9 0 771 1542 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 916 10 0 0 0 7 915 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 139
A 917 10 0 0 916 7 915 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 141
A 918 4 0 0 0 7 917 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 919 4 0 0 0 7 916 0 918 0 0 0 0 1 0 0 0 0 0 0 0 0
A 920 10 0 0 917 7 915 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 145
A 921 10 0 0 920 7 915 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 155
A 922 10 0 0 921 7 915 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 137
A 924 1 0 9 0 777 1548 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 925 10 0 0 0 7 924 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 139
A 926 10 0 0 925 7 924 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 141
A 927 4 0 0 0 7 926 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 928 4 0 0 209 7 925 0 927 0 0 0 0 1 0 0 0 0 0 0 0 0
A 929 10 0 0 926 7 924 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 145
A 930 10 0 0 929 7 924 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 155
A 931 10 0 0 930 7 924 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 137
A 933 1 0 9 0 783 1554 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 934 10 0 0 0 7 933 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 139
A 935 10 0 0 934 7 933 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 141
A 936 4 0 0 0 7 935 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 937 4 0 0 0 7 934 0 936 0 0 0 0 1 0 0 0 0 0 0 0 0
A 938 10 0 0 935 7 933 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 145
A 939 10 0 0 938 7 933 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 155
A 940 10 0 0 939 7 933 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 137
A 941 1 0 0 0 7 1594 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 942 1 0 0 0 7 1590 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 943 1 0 0 0 7 1595 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 944 1 0 0 778 7 1592 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 945 1 0 0 0 7 1591 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 946 1 0 0 0 7 1596 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 947 1 0 0 0 7 1593 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
Z
J 29 1 1
V 61 58 7 0
R 0 61 0 0
A 0 6 0 0 1 3 0
J 75 1 1
V 67 64 7 0
R 0 67 0 0
A 0 6 0 0 1 3 1
A 0 6 0 0 1 33 1
A 0 6 0 0 1 35 1
A 0 6 0 0 1 16 0
J 77 1 1
V 73 70 7 0
R 0 73 0 0
A 0 6 0 0 1 3 1
A 0 6 0 0 1 33 1
A 0 6 0 0 1 35 1
A 0 6 0 0 1 16 0
J 80 1 1
V 77 76 7 0
R 0 79 0 0
A 0 6 0 0 1 35 1
A 0 6 0 0 1 16 0
J 133 1 1
V 131 82 7 0
S 0 82 0 0 0
A 0 6 0 0 1 2 0
J 134 1 1
V 134 91 7 0
S 0 91 0 0 0
A 0 6 0 0 1 2 0
T 769 136 0 3 0 0
A 773 18 0 0 1 397 1
A 774 18 0 0 1 397 1
A 775 6 0 0 1 2 1
A 776 6 0 0 1 3 1
A 777 6 0 0 1 3 1
A 791 6 0 0 1 33 1
A 792 6 0 0 1 2 1
R 793 154 0 1
A 0 6 0 165 1 2 0
R 794 157 0 0
A 0 6 0 165 1 2 0
T 1061 358 0 3 0 0
A 1062 6 0 0 1 2 1
A 1063 6 0 0 1 2 1
A 1064 6 0 0 1 2 1
A 1065 6 0 0 1 2 1
A 1066 6 0 0 1 2 1
A 1067 6 0 0 1 2 1
A 1068 18 0 0 1 397 1
A 1069 18 0 0 1 397 1
A 1070 6 0 0 1 2 1
A 1071 6 0 0 1 33 1
A 1072 6 0 0 1 33 1
A 1073 6 0 0 1 33 1
A 1074 6 0 0 1 3 1
A 1075 6 0 0 1 3 1
A 1076 6 0 0 1 3 1
A 1077 6 0 0 1 2 1
A 1078 6 0 0 1 2 1
A 1079 6 0 0 1 2 1
A 1099 6 0 0 1 2 1
A 1100 6 0 0 1 2 1
A 1101 6 0 0 1 2 1
A 1102 6 0 0 1 2 1
A 1306 6 0 0 1 2 1
A 1307 6 0 0 1 2 1
A 1308 6 0 0 1 2 1
A 1381 18 0 0 1 397 1
A 1382 18 0 0 1 869 1
A 1383 22 0 0 1 870 1
A 1384 22 0 0 1 870 0
T 1514 738 0 3 0 0
A 1558 6 0 0 1 2 1
A 1559 6 0 0 1 2 1
A 1560 6 0 0 1 2 1
A 1561 6 0 0 1 2 1
A 1562 6 0 0 1 2 1
A 1563 6 0 0 1 2 1
A 1564 6 0 0 1 2 1
A 1565 6 0 0 1 2 1
A 1566 6 0 0 1 2 1
A 1567 6 0 0 1 3 1
A 1568 6 0 0 1 2 0
Z
