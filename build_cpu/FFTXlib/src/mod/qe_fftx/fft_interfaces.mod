V34 :0x24 fft_interfaces
18 fft_interfaces.f90 S624 0
03/12/2026  22:09:04
use stick_base private
use iso_fortran_env private
use iso_c_binding private
use fft_smallbox_type private
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
D 82 26 695 8 694 7
D 91 26 698 8 697 7
D 136 26 783 1232 779 7
D 154 23 6 1 11 165 0 0 0 0 0
 0 165 11 11 165 165
D 157 23 6 1 11 165 0 0 0 0 0
 0 165 11 11 165 165
D 358 26 1072 7848 1071 7
D 3327 23 14 1 2056 2055 1 1 0 0 1
 11 2054 11 11 2054 2059
D 3384 26 8666 1160 8665 7
D 3438 23 14 1 2131 2130 1 1 0 0 1
 11 2129 11 11 2129 2134
D 3441 23 14 1 2138 2137 1 1 0 0 1
 11 2136 11 11 2136 2141
D 3444 23 10 1 2145 2144 1 1 0 0 1
 11 2143 11 11 2143 2148
D 3447 23 10 1 2152 2151 1 1 0 0 1
 11 2150 11 11 2150 2155
D 3450 23 14 1 2159 2158 1 1 0 0 1
 11 2157 11 11 2157 2162
D 3453 23 14 1 2166 2165 1 1 0 0 1
 11 2164 11 11 2164 2169
S 624 24 0 0 0 9 1 0 5012 10015 0 A 0 0 0 0 B 0 10 0 0 0 0 0 0 0 0 0 0 105 0 0 0 0 0 0 0 0 10 0 0 0 0 0 0 fft_interfaces
S 625 19 0 0 0 9 1 624 5027 4000 0 A 0 0 0 0 B 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 915 1 0 0 0 0 0 624 0 0 0 0 fwfft
O 625 1 8754
S 626 19 0 0 0 6 1 624 5033 4000 0 A 0 0 0 0 B 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 912 2 0 0 0 0 0 624 0 0 0 0 invfft
O 626 2 8657 628
S 627 19 0 0 0 9 1 624 5040 4000 0 A 0 0 0 0 B 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 921 2 0 0 0 0 0 624 0 0 0 0 fft_interpolate
O 627 2 8783 8766
S 628 14 5 0 0 0 1 624 5056 10 0 A 1000000 0 0 0 B 0 24 0 0 0 0 0 1 4 0 0 0 0 0 0 0 0 0 0 0 0 24 0 624 0 0 0 0 invfft_y invfft_y 
F 628 4 629 630 631 632
S 629 1 3 1 0 30 1 628 5065 2014 42000 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fft_kind
S 630 7 3 0 0 3327 1 628 5074 20002014 10002000 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f
S 631 1 3 1 0 358 1 628 5076 2014 2000 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft
S 632 1 3 1 0 6 1 628 5081 80002014 2000 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 howmany
S 639 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 641 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 646 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 647 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 648 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 651 7 3 iso_fortran_env character_kinds$ac
R 673 7 25 iso_fortran_env integer_kinds$ac
R 675 7 27 iso_fortran_env logical_kinds$ac
R 677 7 29 iso_fortran_env real_kinds$ac
R 694 25 7 iso_c_binding c_ptr
R 695 5 8 iso_c_binding val c_ptr
R 697 25 10 iso_c_binding c_funptr
R 698 5 11 iso_c_binding val c_funptr
R 732 6 45 iso_c_binding c_null_ptr$ac
R 734 6 47 iso_c_binding c_null_funptr$ac
R 735 26 48 iso_c_binding ==
R 737 26 50 iso_c_binding !=
S 763 3 0 0 0 18 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 18
S 765 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 779 25 5 stick_base sticks_map
R 783 5 9 stick_base lgamma sticks_map
R 784 5 10 stick_base lpara sticks_map
R 785 5 11 stick_base mype sticks_map
R 786 5 12 stick_base nproc sticks_map
R 787 5 13 stick_base nyfft sticks_map
R 788 5 14 stick_base iproc sticks_map
R 791 5 17 stick_base iproc$sd sticks_map
R 792 5 18 stick_base iproc$p sticks_map
R 793 5 19 stick_base iproc$o sticks_map
R 795 5 21 stick_base iproc2 sticks_map
R 797 5 23 stick_base iproc2$sd sticks_map
R 798 5 24 stick_base iproc2$p sticks_map
R 799 5 25 stick_base iproc2$o sticks_map
R 801 5 27 stick_base comm sticks_map
R 802 5 28 stick_base nstx sticks_map
R 803 5 29 stick_base lb sticks_map
R 804 5 30 stick_base ub sticks_map
R 805 5 31 stick_base idx sticks_map
R 807 5 33 stick_base idx$sd sticks_map
R 808 5 34 stick_base idx$p sticks_map
R 809 5 35 stick_base idx$o sticks_map
R 811 5 37 stick_base ist sticks_map
R 814 5 40 stick_base ist$sd sticks_map
R 815 5 41 stick_base ist$p sticks_map
R 816 5 42 stick_base ist$o sticks_map
R 818 5 44 stick_base stown sticks_map
R 821 5 47 stick_base stown$sd sticks_map
R 822 5 48 stick_base stown$p sticks_map
R 823 5 49 stick_base stown$o sticks_map
R 825 5 51 stick_base indmap sticks_map
R 828 5 54 stick_base indmap$sd sticks_map
R 829 5 55 stick_base indmap$p sticks_map
R 830 5 56 stick_base indmap$o sticks_map
R 832 5 58 stick_base bg sticks_map
S 1067 3 0 0 0 18 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 18
S 1068 3 0 0 0 22 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 7778 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 1 20
R 1071 25 3 fft_types fft_type_descriptor
R 1072 5 4 fft_types nr1 fft_type_descriptor
R 1073 5 5 fft_types nr2 fft_type_descriptor
R 1074 5 6 fft_types nr3 fft_type_descriptor
R 1075 5 7 fft_types nr1x fft_type_descriptor
R 1076 5 8 fft_types nr2x fft_type_descriptor
R 1077 5 9 fft_types nr3x fft_type_descriptor
R 1078 5 10 fft_types lpara fft_type_descriptor
R 1079 5 11 fft_types lgamma fft_type_descriptor
R 1080 5 12 fft_types root fft_type_descriptor
R 1081 5 13 fft_types comm fft_type_descriptor
R 1082 5 14 fft_types comm2 fft_type_descriptor
R 1083 5 15 fft_types comm3 fft_type_descriptor
R 1084 5 16 fft_types nproc fft_type_descriptor
R 1085 5 17 fft_types nproc2 fft_type_descriptor
R 1086 5 18 fft_types nproc3 fft_type_descriptor
R 1087 5 19 fft_types mype fft_type_descriptor
R 1088 5 20 fft_types mype2 fft_type_descriptor
R 1089 5 21 fft_types mype3 fft_type_descriptor
R 1090 5 22 fft_types iproc fft_type_descriptor
R 1093 5 25 fft_types iproc$sd fft_type_descriptor
R 1094 5 26 fft_types iproc$p fft_type_descriptor
R 1095 5 27 fft_types iproc$o fft_type_descriptor
R 1097 5 29 fft_types iproc2 fft_type_descriptor
R 1099 5 31 fft_types iproc2$sd fft_type_descriptor
R 1100 5 32 fft_types iproc2$p fft_type_descriptor
R 1101 5 33 fft_types iproc2$o fft_type_descriptor
R 1103 5 35 fft_types iproc3 fft_type_descriptor
R 1105 5 37 fft_types iproc3$sd fft_type_descriptor
R 1106 5 38 fft_types iproc3$p fft_type_descriptor
R 1107 5 39 fft_types iproc3$o fft_type_descriptor
R 1109 5 41 fft_types my_nr3p fft_type_descriptor
R 1110 5 42 fft_types my_nr2p fft_type_descriptor
R 1111 5 43 fft_types my_i0r3p fft_type_descriptor
R 1112 5 44 fft_types my_i0r2p fft_type_descriptor
R 1113 5 45 fft_types nr3p fft_type_descriptor
R 1115 5 47 fft_types nr3p$sd fft_type_descriptor
R 1116 5 48 fft_types nr3p$p fft_type_descriptor
R 1117 5 49 fft_types nr3p$o fft_type_descriptor
R 1119 5 51 fft_types nr3p_offset fft_type_descriptor
R 1121 5 53 fft_types nr3p_offset$sd fft_type_descriptor
R 1122 5 54 fft_types nr3p_offset$p fft_type_descriptor
R 1123 5 55 fft_types nr3p_offset$o fft_type_descriptor
R 1125 5 57 fft_types nr2p fft_type_descriptor
R 1127 5 59 fft_types nr2p$sd fft_type_descriptor
R 1128 5 60 fft_types nr2p$p fft_type_descriptor
R 1129 5 61 fft_types nr2p$o fft_type_descriptor
R 1131 5 63 fft_types nr2p_offset fft_type_descriptor
R 1133 5 65 fft_types nr2p_offset$sd fft_type_descriptor
R 1134 5 66 fft_types nr2p_offset$p fft_type_descriptor
R 1135 5 67 fft_types nr2p_offset$o fft_type_descriptor
R 1137 5 69 fft_types nr1p fft_type_descriptor
R 1139 5 71 fft_types nr1p$sd fft_type_descriptor
R 1140 5 72 fft_types nr1p$p fft_type_descriptor
R 1141 5 73 fft_types nr1p$o fft_type_descriptor
R 1143 5 75 fft_types nr1w fft_type_descriptor
R 1145 5 77 fft_types nr1w$sd fft_type_descriptor
R 1146 5 78 fft_types nr1w$p fft_type_descriptor
R 1147 5 79 fft_types nr1w$o fft_type_descriptor
R 1149 5 81 fft_types nr1w_tg fft_type_descriptor
R 1150 5 82 fft_types i0r3p fft_type_descriptor
R 1152 5 84 fft_types i0r3p$sd fft_type_descriptor
R 1153 5 85 fft_types i0r3p$p fft_type_descriptor
R 1154 5 86 fft_types i0r3p$o fft_type_descriptor
R 1156 5 88 fft_types i0r2p fft_type_descriptor
R 1158 5 90 fft_types i0r2p$sd fft_type_descriptor
R 1159 5 91 fft_types i0r2p$p fft_type_descriptor
R 1160 5 92 fft_types i0r2p$o fft_type_descriptor
R 1162 5 94 fft_types ir1p fft_type_descriptor
R 1164 5 96 fft_types ir1p$sd fft_type_descriptor
R 1165 5 97 fft_types ir1p$p fft_type_descriptor
R 1166 5 98 fft_types ir1p$o fft_type_descriptor
R 1168 5 100 fft_types indp fft_type_descriptor
R 1171 5 103 fft_types indp$sd fft_type_descriptor
R 1172 5 104 fft_types indp$p fft_type_descriptor
R 1173 5 105 fft_types indp$o fft_type_descriptor
R 1175 5 107 fft_types ir1w fft_type_descriptor
R 1177 5 109 fft_types ir1w$sd fft_type_descriptor
R 1178 5 110 fft_types ir1w$p fft_type_descriptor
R 1179 5 111 fft_types ir1w$o fft_type_descriptor
R 1181 5 113 fft_types indw fft_type_descriptor
R 1184 5 116 fft_types indw$sd fft_type_descriptor
R 1185 5 117 fft_types indw$p fft_type_descriptor
R 1186 5 118 fft_types indw$o fft_type_descriptor
R 1188 5 120 fft_types ir1w_tg fft_type_descriptor
R 1190 5 122 fft_types ir1w_tg$sd fft_type_descriptor
R 1191 5 123 fft_types ir1w_tg$p fft_type_descriptor
R 1192 5 124 fft_types ir1w_tg$o fft_type_descriptor
R 1194 5 126 fft_types indw_tg fft_type_descriptor
R 1196 5 128 fft_types indw_tg$sd fft_type_descriptor
R 1197 5 129 fft_types indw_tg$p fft_type_descriptor
R 1198 5 130 fft_types indw_tg$o fft_type_descriptor
R 1200 5 132 fft_types ir1p_d fft_type_descriptor
R 1202 5 134 fft_types ir1p_d$sd fft_type_descriptor
R 1203 5 135 fft_types ir1p_d$p fft_type_descriptor
R 1204 5 136 fft_types ir1p_d$o fft_type_descriptor
R 1206 5 138 fft_types ir1w_d fft_type_descriptor
R 1208 5 140 fft_types ir1w_d$sd fft_type_descriptor
R 1209 5 141 fft_types ir1w_d$p fft_type_descriptor
R 1210 5 142 fft_types ir1w_d$o fft_type_descriptor
R 1212 5 144 fft_types ir1w_tg_d fft_type_descriptor
R 1214 5 146 fft_types ir1w_tg_d$sd fft_type_descriptor
R 1215 5 147 fft_types ir1w_tg_d$p fft_type_descriptor
R 1216 5 148 fft_types ir1w_tg_d$o fft_type_descriptor
R 1218 5 150 fft_types indp_d fft_type_descriptor
R 1221 5 153 fft_types indp_d$sd fft_type_descriptor
R 1222 5 154 fft_types indp_d$p fft_type_descriptor
R 1223 5 155 fft_types indp_d$o fft_type_descriptor
R 1225 5 157 fft_types indw_d fft_type_descriptor
R 1228 5 160 fft_types indw_d$sd fft_type_descriptor
R 1229 5 161 fft_types indw_d$p fft_type_descriptor
R 1230 5 162 fft_types indw_d$o fft_type_descriptor
R 1232 5 164 fft_types indw_tg_d fft_type_descriptor
R 1235 5 167 fft_types indw_tg_d$sd fft_type_descriptor
R 1236 5 168 fft_types indw_tg_d$p fft_type_descriptor
R 1237 5 169 fft_types indw_tg_d$o fft_type_descriptor
R 1239 5 171 fft_types nr1p_d fft_type_descriptor
R 1241 5 173 fft_types nr1p_d$sd fft_type_descriptor
R 1242 5 174 fft_types nr1p_d$p fft_type_descriptor
R 1243 5 175 fft_types nr1p_d$o fft_type_descriptor
R 1245 5 177 fft_types nr1w_d fft_type_descriptor
R 1247 5 179 fft_types nr1w_d$sd fft_type_descriptor
R 1248 5 180 fft_types nr1w_d$p fft_type_descriptor
R 1249 5 181 fft_types nr1w_d$o fft_type_descriptor
R 1251 5 183 fft_types nr1w_tg_d fft_type_descriptor
R 1253 5 185 fft_types nr1w_tg_d$sd fft_type_descriptor
R 1254 5 186 fft_types nr1w_tg_d$p fft_type_descriptor
R 1255 5 187 fft_types nr1w_tg_d$o fft_type_descriptor
R 1257 5 189 fft_types nst fft_type_descriptor
R 1258 5 190 fft_types nsp fft_type_descriptor
R 1260 5 192 fft_types nsp$sd fft_type_descriptor
R 1261 5 193 fft_types nsp$p fft_type_descriptor
R 1262 5 194 fft_types nsp$o fft_type_descriptor
R 1264 5 196 fft_types nsp_offset fft_type_descriptor
R 1267 5 199 fft_types nsp_offset$sd fft_type_descriptor
R 1268 5 200 fft_types nsp_offset$p fft_type_descriptor
R 1269 5 201 fft_types nsp_offset$o fft_type_descriptor
R 1271 5 203 fft_types nsw fft_type_descriptor
R 1273 5 205 fft_types nsw$sd fft_type_descriptor
R 1274 5 206 fft_types nsw$p fft_type_descriptor
R 1275 5 207 fft_types nsw$o fft_type_descriptor
R 1277 5 209 fft_types nsw_offset fft_type_descriptor
R 1280 5 212 fft_types nsw_offset$sd fft_type_descriptor
R 1281 5 213 fft_types nsw_offset$p fft_type_descriptor
R 1282 5 214 fft_types nsw_offset$o fft_type_descriptor
R 1284 5 216 fft_types nsw_tg fft_type_descriptor
R 1286 5 218 fft_types nsw_tg$sd fft_type_descriptor
R 1287 5 219 fft_types nsw_tg$p fft_type_descriptor
R 1288 5 220 fft_types nsw_tg$o fft_type_descriptor
R 1290 5 222 fft_types ngl fft_type_descriptor
R 1292 5 224 fft_types ngl$sd fft_type_descriptor
R 1293 5 225 fft_types ngl$p fft_type_descriptor
R 1294 5 226 fft_types ngl$o fft_type_descriptor
R 1296 5 228 fft_types nwl fft_type_descriptor
R 1298 5 230 fft_types nwl$sd fft_type_descriptor
R 1299 5 231 fft_types nwl$p fft_type_descriptor
R 1300 5 232 fft_types nwl$o fft_type_descriptor
R 1302 5 234 fft_types ngm fft_type_descriptor
R 1303 5 235 fft_types ngw fft_type_descriptor
R 1304 5 236 fft_types iplp fft_type_descriptor
R 1306 5 238 fft_types iplp$sd fft_type_descriptor
R 1307 5 239 fft_types iplp$p fft_type_descriptor
R 1308 5 240 fft_types iplp$o fft_type_descriptor
R 1310 5 242 fft_types iplw fft_type_descriptor
R 1312 5 244 fft_types iplw$sd fft_type_descriptor
R 1313 5 245 fft_types iplw$p fft_type_descriptor
R 1314 5 246 fft_types iplw$o fft_type_descriptor
R 1316 5 248 fft_types nnp fft_type_descriptor
R 1317 5 249 fft_types nnr fft_type_descriptor
R 1318 5 250 fft_types nnr_tg fft_type_descriptor
R 1319 5 251 fft_types iss fft_type_descriptor
R 1321 5 253 fft_types iss$sd fft_type_descriptor
R 1322 5 254 fft_types iss$p fft_type_descriptor
R 1323 5 255 fft_types iss$o fft_type_descriptor
R 1325 5 257 fft_types isind fft_type_descriptor
R 1327 5 259 fft_types isind$sd fft_type_descriptor
R 1328 5 260 fft_types isind$p fft_type_descriptor
R 1329 5 261 fft_types isind$o fft_type_descriptor
R 1331 5 263 fft_types ismap fft_type_descriptor
R 1333 5 265 fft_types ismap$sd fft_type_descriptor
R 1334 5 266 fft_types ismap$p fft_type_descriptor
R 1335 5 267 fft_types ismap$o fft_type_descriptor
R 1337 5 269 fft_types ismap_d fft_type_descriptor
R 1339 5 271 fft_types ismap_d$sd fft_type_descriptor
R 1340 5 272 fft_types ismap_d$p fft_type_descriptor
R 1341 5 273 fft_types ismap_d$o fft_type_descriptor
R 1343 5 275 fft_types nl fft_type_descriptor
R 1345 5 277 fft_types nl$sd fft_type_descriptor
R 1346 5 278 fft_types nl$p fft_type_descriptor
R 1347 5 279 fft_types nl$o fft_type_descriptor
R 1349 5 281 fft_types nlm fft_type_descriptor
R 1351 5 283 fft_types nlm$sd fft_type_descriptor
R 1352 5 284 fft_types nlm$p fft_type_descriptor
R 1353 5 285 fft_types nlm$o fft_type_descriptor
R 1355 5 287 fft_types nl_d fft_type_descriptor
R 1357 5 289 fft_types nl_d$sd fft_type_descriptor
R 1358 5 290 fft_types nl_d$p fft_type_descriptor
R 1359 5 291 fft_types nl_d$o fft_type_descriptor
R 1361 5 293 fft_types nlm_d fft_type_descriptor
R 1363 5 295 fft_types nlm_d$sd fft_type_descriptor
R 1364 5 296 fft_types nlm_d$p fft_type_descriptor
R 1365 5 297 fft_types nlm_d$o fft_type_descriptor
R 1367 5 299 fft_types tg_snd fft_type_descriptor
R 1369 5 301 fft_types tg_snd$sd fft_type_descriptor
R 1370 5 302 fft_types tg_snd$p fft_type_descriptor
R 1371 5 303 fft_types tg_snd$o fft_type_descriptor
R 1373 5 305 fft_types tg_rcv fft_type_descriptor
R 1375 5 307 fft_types tg_rcv$sd fft_type_descriptor
R 1376 5 308 fft_types tg_rcv$p fft_type_descriptor
R 1377 5 309 fft_types tg_rcv$o fft_type_descriptor
R 1379 5 311 fft_types tg_sdsp fft_type_descriptor
R 1381 5 313 fft_types tg_sdsp$sd fft_type_descriptor
R 1382 5 314 fft_types tg_sdsp$p fft_type_descriptor
R 1383 5 315 fft_types tg_sdsp$o fft_type_descriptor
R 1385 5 317 fft_types tg_rdsp fft_type_descriptor
R 1387 5 319 fft_types tg_rdsp$sd fft_type_descriptor
R 1388 5 320 fft_types tg_rdsp$p fft_type_descriptor
R 1389 5 321 fft_types tg_rdsp$o fft_type_descriptor
R 1391 5 323 fft_types has_task_groups fft_type_descriptor
R 1392 5 324 fft_types use_pencil_decomposition fft_type_descriptor
R 1393 5 325 fft_types rho_clock_label fft_type_descriptor
R 1394 5 326 fft_types wave_clock_label fft_type_descriptor
R 1395 5 327 fft_types grid_id fft_type_descriptor
R 1397 5 329 fft_types aux fft_type_descriptor
R 1398 5 330 fft_types aux$sd fft_type_descriptor
R 1399 5 331 fft_types aux$p fft_type_descriptor
R 1400 5 332 fft_types aux$o fft_type_descriptor
S 8651 6 1 0 0 7 1 628 6835 40800016 2000 A 0 0 0 0 B 0 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 8652 6 1 0 0 7 1 628 6843 40800016 2000 A 0 0 0 0 B 0 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 8653 6 1 0 0 7 1 628 6933 40800016 2000 A 0 0 0 0 B 0 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 8654 6 1 0 0 7 1 628 41381 40800016 2000 A 0 0 0 0 B 0 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2058
S 8657 14 5 0 0 0 1 624 41403 10 0 A 1000000 0 0 0 B 0 34 0 0 0 0 0 5385 3 0 0 0 0 0 0 0 0 0 0 0 0 34 0 624 0 0 0 0 invfft_b invfft_b 
F 8657 3 8658 8659 8660
S 8658 7 3 0 0 3438 1 8657 5074 20002014 10002000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f
S 8659 1 3 1 0 3384 1 8657 5076 2014 2000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft
S 8660 1 3 1 0 6 1 8657 41412 2014 2000 A 0 0 0 0 B 0 34 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ia
R 8665 25 3 fft_smallbox_type fft_box_descriptor
R 8666 5 4 fft_smallbox_type irb fft_box_descriptor
R 8669 5 7 fft_smallbox_type irb$sd fft_box_descriptor
R 8670 5 8 fft_smallbox_type irb$p fft_box_descriptor
R 8671 5 9 fft_smallbox_type irb$o fft_box_descriptor
R 8673 5 11 fft_smallbox_type imin2 fft_box_descriptor
R 8675 5 13 fft_smallbox_type imin2$sd fft_box_descriptor
R 8676 5 14 fft_smallbox_type imin2$p fft_box_descriptor
R 8677 5 15 fft_smallbox_type imin2$o fft_box_descriptor
R 8679 5 17 fft_smallbox_type imin3 fft_box_descriptor
R 8681 5 19 fft_smallbox_type imin3$sd fft_box_descriptor
R 8682 5 20 fft_smallbox_type imin3$p fft_box_descriptor
R 8683 5 21 fft_smallbox_type imin3$o fft_box_descriptor
R 8685 5 23 fft_smallbox_type imax2 fft_box_descriptor
R 8687 5 25 fft_smallbox_type imax2$sd fft_box_descriptor
R 8688 5 26 fft_smallbox_type imax2$p fft_box_descriptor
R 8689 5 27 fft_smallbox_type imax2$o fft_box_descriptor
R 8691 5 29 fft_smallbox_type imax3 fft_box_descriptor
R 8693 5 31 fft_smallbox_type imax3$sd fft_box_descriptor
R 8694 5 32 fft_smallbox_type imax3$p fft_box_descriptor
R 8695 5 33 fft_smallbox_type imax3$o fft_box_descriptor
R 8697 5 35 fft_smallbox_type np2 fft_box_descriptor
R 8699 5 37 fft_smallbox_type np2$sd fft_box_descriptor
R 8700 5 38 fft_smallbox_type np2$p fft_box_descriptor
R 8701 5 39 fft_smallbox_type np2$o fft_box_descriptor
R 8703 5 41 fft_smallbox_type np3 fft_box_descriptor
R 8705 5 43 fft_smallbox_type np3$sd fft_box_descriptor
R 8706 5 44 fft_smallbox_type np3$p fft_box_descriptor
R 8707 5 45 fft_smallbox_type np3$o fft_box_descriptor
R 8709 5 47 fft_smallbox_type nr1 fft_box_descriptor
R 8710 5 48 fft_smallbox_type nr2 fft_box_descriptor
R 8711 5 49 fft_smallbox_type nr3 fft_box_descriptor
R 8712 5 50 fft_smallbox_type nr1x fft_box_descriptor
R 8713 5 51 fft_smallbox_type nr2x fft_box_descriptor
R 8714 5 52 fft_smallbox_type nr3x fft_box_descriptor
R 8715 5 53 fft_smallbox_type nnr fft_box_descriptor
R 8716 5 54 fft_smallbox_type mype fft_box_descriptor
R 8717 5 55 fft_smallbox_type comm fft_box_descriptor
R 8718 5 56 fft_smallbox_type nproc fft_box_descriptor
R 8719 5 57 fft_smallbox_type root fft_box_descriptor
S 8750 6 1 0 0 7 1 8657 41911 40800016 2000 A 0 0 0 0 B 0 40 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_2
S 8751 6 1 0 0 7 1 8657 41919 40800016 2000 A 0 0 0 0 B 0 40 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_2
S 8752 6 1 0 0 7 1 8657 41943 40800016 2000 A 0 0 0 0 B 0 40 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_7_2
S 8753 6 1 0 0 7 1 8657 41951 40800016 2000 A 0 0 0 0 B 0 40 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2133
S 8754 14 5 0 0 0 1 624 41960 10 0 A 1000000 0 0 0 B 0 58 0 0 0 0 0 5402 4 0 0 0 0 0 0 0 0 0 0 0 0 58 0 624 0 0 0 0 fwfft_y fwfft_y 
F 8754 4 8755 8756 8757 8758
S 8755 1 3 1 0 30 1 8754 5065 2014 42000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fft_kind
S 8756 7 3 0 0 3441 1 8754 5074 20002014 10002000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f
S 8757 1 3 1 0 358 1 8754 5076 2014 2000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft
S 8758 1 3 1 0 6 1 8754 5081 80002014 2000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 howmany
S 8762 6 1 0 0 7 1 8754 6901 40800016 2000 A 0 0 0 0 B 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_9_1
S 8763 6 1 0 0 7 1 8754 10550 40800016 2000 A 0 0 0 0 B 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_10_1
S 8764 6 1 0 0 7 1 8754 10559 40800016 2000 A 0 0 0 0 B 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_11_1
S 8765 6 1 0 0 7 1 8754 41968 40800016 2000 A 0 0 0 0 B 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2140
S 8766 14 5 0 0 0 1 624 41977 10 0 A 1000000 0 0 0 B 0 86 0 0 0 0 0 5406 4 0 0 0 0 0 0 0 0 0 0 0 0 86 0 624 0 0 0 0 fft_interpolate_real fft_interpolate_real 
F 8766 4 8767 8768 8769 8770
S 8767 1 3 1 0 358 1 8766 41998 2014 2000 A 0 0 0 0 B 0 86 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft_in
S 8768 7 3 1 0 3444 1 8766 42006 20002014 10002000 A 0 0 0 0 B 0 86 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 v_in
S 8769 1 3 1 0 358 1 8766 42011 2014 2000 A 0 0 0 0 B 0 86 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft_out
S 8770 7 3 2 0 3447 1 8766 42020 20002014 10002000 A 0 0 0 0 B 0 86 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 v_out
S 8774 6 1 0 0 7 1 8766 10577 40800016 2000 A 0 0 0 0 B 0 91 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_13_1
S 8775 6 1 0 0 7 1 8766 10586 40800016 2000 A 0 0 0 0 B 0 91 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_14_1
S 8776 6 1 0 0 7 1 8766 10595 40800016 2000 A 0 0 0 0 B 0 91 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_15_1
S 8777 6 1 0 0 7 1 8766 42035 40800016 2000 A 0 0 0 0 B 0 91 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2147
S 8779 6 1 0 0 7 1 8766 10613 40800016 2000 A 0 0 0 0 B 0 92 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_17_1
S 8780 6 1 0 0 7 1 8766 10622 40800016 2000 A 0 0 0 0 B 0 92 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_18_1
S 8781 6 1 0 0 7 1 8766 10631 40800016 2000 A 0 0 0 0 B 0 92 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_19_1
S 8782 6 1 0 0 7 1 8766 42053 40800016 2000 A 0 0 0 0 B 0 92 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2154
S 8783 14 5 0 0 0 1 624 42062 10 0 A 1000000 0 0 0 B 0 95 0 0 0 0 0 5410 4 0 0 0 0 0 0 0 0 0 0 0 0 95 0 624 0 0 0 0 fft_interpolate_complex fft_interpolate_complex 
F 8783 4 8784 8785 8786 8787
S 8784 1 3 1 0 358 1 8783 41998 2014 2000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft_in
S 8785 7 3 1 0 3450 1 8783 42006 20002014 10002000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 v_in
S 8786 1 3 1 0 358 1 8783 42011 2014 2000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft_out
S 8787 7 3 2 0 3453 1 8783 42020 20002014 10002000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 v_out
S 8791 6 1 0 0 7 1 8783 10649 40800016 2000 A 0 0 0 0 B 0 100 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_21_1
S 8792 6 1 0 0 7 1 8783 10658 40800016 2000 A 0 0 0 0 B 0 100 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_22_1
S 8793 6 1 0 0 7 1 8783 10667 40800016 2000 A 0 0 0 0 B 0 100 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_23_1
S 8794 6 1 0 0 7 1 8783 42095 40800016 2000 A 0 0 0 0 B 0 100 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2161
S 8796 6 1 0 0 7 1 8783 10685 40800016 2000 A 0 0 0 0 B 0 101 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_25_1
S 8797 6 1 0 0 7 1 8783 10694 40800016 2000 A 0 0 0 0 B 0 101 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_26_1
S 8798 6 1 0 0 7 1 8783 10703 40800016 2000 A 0 0 0 0 B 0 101 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_27_1
S 8799 6 1 0 0 7 1 8783 42113 40800016 2000 A 0 0 0 0 B 0 101 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2168
A 16 2 0 0 0 6 639 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0
A 33 2 0 0 0 6 641 0 0 0 33 0 0 0 0 0 0 0 0 0 0 0
A 35 2 0 0 0 6 646 0 0 0 35 0 0 0 0 0 0 0 0 0 0 0
A 57 2 0 0 0 7 647 0 0 0 57 0 0 0 0 0 0 0 0 0 0 0
A 58 2 0 0 0 7 648 0 0 0 58 0 0 0 0 0 0 0 0 0 0 0
A 61 1 0 1 0 58 651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 67 1 0 3 0 64 673 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 73 1 0 3 0 70 675 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 77 1 0 5 0 76 677 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 131 1 0 0 0 82 732 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 134 1 0 0 0 91 734 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 165 2 0 0 0 7 765 0 0 0 165 0 0 0 0 0 0 0 0 0 0 0
A 397 2 0 0 0 18 763 0 0 0 397 0 0 0 0 0 0 0 0 0 0 0
A 869 2 0 0 0 18 1067 0 0 0 869 0 0 0 0 0 0 0 0 0 0 0
A 870 2 0 0 0 22 1068 0 0 0 870 0 0 0 0 0 0 0 0 0 0 0
A 2054 1 0 0 0 7 8651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2055 1 0 0 0 7 8652 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2056 1 0 0 0 7 8653 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2059 1 0 0 0 7 8654 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2129 1 0 0 0 7 8750 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2130 1 0 0 864 7 8751 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2131 1 0 0 0 7 8752 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2134 1 0 0 0 7 8753 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2136 1 0 0 0 7 8762 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2137 1 0 0 0 7 8763 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2138 1 0 0 0 7 8764 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2141 1 0 0 0 7 8765 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2143 1 0 0 0 7 8774 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2144 1 0 0 0 7 8775 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2145 1 0 0 0 7 8776 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2148 1 0 0 0 7 8777 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2150 1 0 0 0 7 8779 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2151 1 0 0 0 7 8780 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2152 1 0 0 0 7 8781 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2155 1 0 0 0 7 8782 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2157 1 0 0 0 7 8791 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2158 1 0 0 0 7 8792 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2159 1 0 0 0 7 8793 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2162 1 0 0 0 7 8794 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2164 1 0 0 0 7 8796 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2165 1 0 0 0 7 8797 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2166 1 0 0 0 7 8798 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2169 1 0 0 0 7 8799 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
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
T 779 136 0 3 0 0
A 783 18 0 0 1 397 1
A 784 18 0 0 1 397 1
A 785 6 0 0 1 2 1
A 786 6 0 0 1 3 1
A 787 6 0 0 1 3 1
A 801 6 0 0 1 33 1
A 802 6 0 0 1 2 1
R 803 154 0 1
A 0 6 0 165 1 2 0
R 804 157 0 0
A 0 6 0 165 1 2 0
T 1071 358 0 3 0 0
A 1072 6 0 0 1 2 1
A 1073 6 0 0 1 2 1
A 1074 6 0 0 1 2 1
A 1075 6 0 0 1 2 1
A 1076 6 0 0 1 2 1
A 1077 6 0 0 1 2 1
A 1078 18 0 0 1 397 1
A 1079 18 0 0 1 397 1
A 1080 6 0 0 1 2 1
A 1081 6 0 0 1 33 1
A 1082 6 0 0 1 33 1
A 1083 6 0 0 1 33 1
A 1084 6 0 0 1 3 1
A 1085 6 0 0 1 3 1
A 1086 6 0 0 1 3 1
A 1087 6 0 0 1 2 1
A 1088 6 0 0 1 2 1
A 1089 6 0 0 1 2 1
A 1109 6 0 0 1 2 1
A 1110 6 0 0 1 2 1
A 1111 6 0 0 1 2 1
A 1112 6 0 0 1 2 1
A 1316 6 0 0 1 2 1
A 1317 6 0 0 1 2 1
A 1318 6 0 0 1 2 1
A 1391 18 0 0 1 397 1
A 1392 18 0 0 1 869 1
A 1393 22 0 0 1 870 1
A 1394 22 0 0 1 870 0
T 8665 3384 0 3 0 0
A 8709 6 0 0 1 2 1
A 8710 6 0 0 1 2 1
A 8711 6 0 0 1 2 1
A 8712 6 0 0 1 2 1
A 8713 6 0 0 1 2 1
A 8714 6 0 0 1 2 1
A 8715 6 0 0 1 2 1
A 8716 6 0 0 1 2 1
A 8717 6 0 0 1 2 1
A 8718 6 0 0 1 3 1
A 8719 6 0 0 1 2 0
Z
