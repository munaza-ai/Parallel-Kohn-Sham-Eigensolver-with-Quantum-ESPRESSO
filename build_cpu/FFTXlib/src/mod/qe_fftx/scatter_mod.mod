V34 :0x24 scatter_mod
15 scatter_mod.f90 S624 0
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
D 82 26 686 8 685 7
D 91 26 689 8 688 7
D 136 26 774 1232 770 7
D 154 23 6 1 11 165 0 0 0 0 0
 0 165 11 11 165 165
D 157 23 6 1 11 165 0 0 0 0 0
 0 165 11 11 165 165
D 358 26 1063 7848 1062 7
D 3327 23 10 1 2053 2056 1 1 0 0 1
 11 2054 11 11 2054 2055
D 3330 23 10 1 2057 2060 1 1 0 0 1
 11 2058 11 11 2058 2059
D 3333 23 14 1 2061 2064 1 1 0 0 1
 11 2062 11 11 2062 2063
D 3336 23 14 1 2065 2068 1 1 0 0 1
 11 2066 11 11 2066 2067
D 3339 23 10 1 2069 2072 1 1 0 0 1
 11 2070 11 11 2070 2071
D 3342 23 10 1 2073 2076 1 1 0 0 1
 11 2074 11 11 2074 2075
D 3345 23 14 1 2077 2080 1 1 0 0 1
 11 2078 11 11 2078 2079
D 3348 23 14 1 2081 2084 1 1 0 0 1
 11 2082 11 11 2082 2083
D 3351 23 14 1 2085 2088 1 1 0 0 1
 11 2086 11 11 2086 2087
D 3354 23 14 1 2089 2092 1 1 0 0 1
 11 2090 11 11 2090 2091
D 3357 23 6 1 11 2097 0 0 1 0 0
 0 2096 11 11 2097 2097
D 3360 23 6 1 11 2097 0 0 1 0 0
 0 2096 11 11 2097 2097
D 3363 23 14 2 2098 2106 0 0 1 0 0
 0 2101 11 11 2102 2102
 0 2104 2102 11 2105 2105
D 3366 23 14 2 2107 2126 0 0 1 0 0
 0 2116 11 11 2117 2117
 0 2124 2117 11 2125 2125
D 3369 23 6 1 11 2130 0 0 1 0 0
 0 2129 11 11 2130 2130
D 3372 23 6 1 11 2130 0 0 1 0 0
 0 2129 11 11 2130 2130
D 3375 23 14 2 2131 2146 0 0 1 0 0
 0 2137 11 11 2138 2138
 0 2144 2138 11 2145 2145
D 3378 23 14 1 11 2149 0 0 1 0 0
 0 2148 11 11 2149 2149
S 624 24 0 0 0 9 1 0 5012 10015 0 A 0 0 0 0 B 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 16 0 0 0 0 0 0 scatter_mod
S 626 23 0 0 0 9 1062 624 5034 14 0 A 0 0 0 0 B 400000 19 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fft_type_descriptor
S 630 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 632 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 637 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 638 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 639 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 642 7 3 iso_fortran_env character_kinds$ac
R 664 7 25 iso_fortran_env integer_kinds$ac
R 666 7 27 iso_fortran_env logical_kinds$ac
R 668 7 29 iso_fortran_env real_kinds$ac
R 685 25 7 iso_c_binding c_ptr
R 686 5 8 iso_c_binding val c_ptr
R 688 25 10 iso_c_binding c_funptr
R 689 5 11 iso_c_binding val c_funptr
R 723 6 45 iso_c_binding c_null_ptr$ac
R 725 6 47 iso_c_binding c_null_funptr$ac
R 726 26 48 iso_c_binding ==
R 728 26 50 iso_c_binding !=
S 754 3 0 0 0 18 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 18
S 756 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 770 25 5 stick_base sticks_map
R 774 5 9 stick_base lgamma sticks_map
R 775 5 10 stick_base lpara sticks_map
R 776 5 11 stick_base mype sticks_map
R 777 5 12 stick_base nproc sticks_map
R 778 5 13 stick_base nyfft sticks_map
R 779 5 14 stick_base iproc sticks_map
R 782 5 17 stick_base iproc$sd sticks_map
R 783 5 18 stick_base iproc$p sticks_map
R 784 5 19 stick_base iproc$o sticks_map
R 786 5 21 stick_base iproc2 sticks_map
R 788 5 23 stick_base iproc2$sd sticks_map
R 789 5 24 stick_base iproc2$p sticks_map
R 790 5 25 stick_base iproc2$o sticks_map
R 792 5 27 stick_base comm sticks_map
R 793 5 28 stick_base nstx sticks_map
R 794 5 29 stick_base lb sticks_map
R 795 5 30 stick_base ub sticks_map
R 796 5 31 stick_base idx sticks_map
R 798 5 33 stick_base idx$sd sticks_map
R 799 5 34 stick_base idx$p sticks_map
R 800 5 35 stick_base idx$o sticks_map
R 802 5 37 stick_base ist sticks_map
R 805 5 40 stick_base ist$sd sticks_map
R 806 5 41 stick_base ist$p sticks_map
R 807 5 42 stick_base ist$o sticks_map
R 809 5 44 stick_base stown sticks_map
R 812 5 47 stick_base stown$sd sticks_map
R 813 5 48 stick_base stown$p sticks_map
R 814 5 49 stick_base stown$o sticks_map
R 816 5 51 stick_base indmap sticks_map
R 819 5 54 stick_base indmap$sd sticks_map
R 820 5 55 stick_base indmap$p sticks_map
R 821 5 56 stick_base indmap$o sticks_map
R 823 5 58 stick_base bg sticks_map
S 1058 3 0 0 0 18 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 18
S 1059 3 0 0 0 22 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 7710 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 1 20
R 1062 25 3 fft_types fft_type_descriptor
R 1063 5 4 fft_types nr1 fft_type_descriptor
R 1064 5 5 fft_types nr2 fft_type_descriptor
R 1065 5 6 fft_types nr3 fft_type_descriptor
R 1066 5 7 fft_types nr1x fft_type_descriptor
R 1067 5 8 fft_types nr2x fft_type_descriptor
R 1068 5 9 fft_types nr3x fft_type_descriptor
R 1069 5 10 fft_types lpara fft_type_descriptor
R 1070 5 11 fft_types lgamma fft_type_descriptor
R 1071 5 12 fft_types root fft_type_descriptor
R 1072 5 13 fft_types comm fft_type_descriptor
R 1073 5 14 fft_types comm2 fft_type_descriptor
R 1074 5 15 fft_types comm3 fft_type_descriptor
R 1075 5 16 fft_types nproc fft_type_descriptor
R 1076 5 17 fft_types nproc2 fft_type_descriptor
R 1077 5 18 fft_types nproc3 fft_type_descriptor
R 1078 5 19 fft_types mype fft_type_descriptor
R 1079 5 20 fft_types mype2 fft_type_descriptor
R 1080 5 21 fft_types mype3 fft_type_descriptor
R 1081 5 22 fft_types iproc fft_type_descriptor
R 1084 5 25 fft_types iproc$sd fft_type_descriptor
R 1085 5 26 fft_types iproc$p fft_type_descriptor
R 1086 5 27 fft_types iproc$o fft_type_descriptor
R 1088 5 29 fft_types iproc2 fft_type_descriptor
R 1090 5 31 fft_types iproc2$sd fft_type_descriptor
R 1091 5 32 fft_types iproc2$p fft_type_descriptor
R 1092 5 33 fft_types iproc2$o fft_type_descriptor
R 1094 5 35 fft_types iproc3 fft_type_descriptor
R 1096 5 37 fft_types iproc3$sd fft_type_descriptor
R 1097 5 38 fft_types iproc3$p fft_type_descriptor
R 1098 5 39 fft_types iproc3$o fft_type_descriptor
R 1100 5 41 fft_types my_nr3p fft_type_descriptor
R 1101 5 42 fft_types my_nr2p fft_type_descriptor
R 1102 5 43 fft_types my_i0r3p fft_type_descriptor
R 1103 5 44 fft_types my_i0r2p fft_type_descriptor
R 1104 5 45 fft_types nr3p fft_type_descriptor
R 1106 5 47 fft_types nr3p$sd fft_type_descriptor
R 1107 5 48 fft_types nr3p$p fft_type_descriptor
R 1108 5 49 fft_types nr3p$o fft_type_descriptor
R 1110 5 51 fft_types nr3p_offset fft_type_descriptor
R 1112 5 53 fft_types nr3p_offset$sd fft_type_descriptor
R 1113 5 54 fft_types nr3p_offset$p fft_type_descriptor
R 1114 5 55 fft_types nr3p_offset$o fft_type_descriptor
R 1116 5 57 fft_types nr2p fft_type_descriptor
R 1118 5 59 fft_types nr2p$sd fft_type_descriptor
R 1119 5 60 fft_types nr2p$p fft_type_descriptor
R 1120 5 61 fft_types nr2p$o fft_type_descriptor
R 1122 5 63 fft_types nr2p_offset fft_type_descriptor
R 1124 5 65 fft_types nr2p_offset$sd fft_type_descriptor
R 1125 5 66 fft_types nr2p_offset$p fft_type_descriptor
R 1126 5 67 fft_types nr2p_offset$o fft_type_descriptor
R 1128 5 69 fft_types nr1p fft_type_descriptor
R 1130 5 71 fft_types nr1p$sd fft_type_descriptor
R 1131 5 72 fft_types nr1p$p fft_type_descriptor
R 1132 5 73 fft_types nr1p$o fft_type_descriptor
R 1134 5 75 fft_types nr1w fft_type_descriptor
R 1136 5 77 fft_types nr1w$sd fft_type_descriptor
R 1137 5 78 fft_types nr1w$p fft_type_descriptor
R 1138 5 79 fft_types nr1w$o fft_type_descriptor
R 1140 5 81 fft_types nr1w_tg fft_type_descriptor
R 1141 5 82 fft_types i0r3p fft_type_descriptor
R 1143 5 84 fft_types i0r3p$sd fft_type_descriptor
R 1144 5 85 fft_types i0r3p$p fft_type_descriptor
R 1145 5 86 fft_types i0r3p$o fft_type_descriptor
R 1147 5 88 fft_types i0r2p fft_type_descriptor
R 1149 5 90 fft_types i0r2p$sd fft_type_descriptor
R 1150 5 91 fft_types i0r2p$p fft_type_descriptor
R 1151 5 92 fft_types i0r2p$o fft_type_descriptor
R 1153 5 94 fft_types ir1p fft_type_descriptor
R 1155 5 96 fft_types ir1p$sd fft_type_descriptor
R 1156 5 97 fft_types ir1p$p fft_type_descriptor
R 1157 5 98 fft_types ir1p$o fft_type_descriptor
R 1159 5 100 fft_types indp fft_type_descriptor
R 1162 5 103 fft_types indp$sd fft_type_descriptor
R 1163 5 104 fft_types indp$p fft_type_descriptor
R 1164 5 105 fft_types indp$o fft_type_descriptor
R 1166 5 107 fft_types ir1w fft_type_descriptor
R 1168 5 109 fft_types ir1w$sd fft_type_descriptor
R 1169 5 110 fft_types ir1w$p fft_type_descriptor
R 1170 5 111 fft_types ir1w$o fft_type_descriptor
R 1172 5 113 fft_types indw fft_type_descriptor
R 1175 5 116 fft_types indw$sd fft_type_descriptor
R 1176 5 117 fft_types indw$p fft_type_descriptor
R 1177 5 118 fft_types indw$o fft_type_descriptor
R 1179 5 120 fft_types ir1w_tg fft_type_descriptor
R 1181 5 122 fft_types ir1w_tg$sd fft_type_descriptor
R 1182 5 123 fft_types ir1w_tg$p fft_type_descriptor
R 1183 5 124 fft_types ir1w_tg$o fft_type_descriptor
R 1185 5 126 fft_types indw_tg fft_type_descriptor
R 1187 5 128 fft_types indw_tg$sd fft_type_descriptor
R 1188 5 129 fft_types indw_tg$p fft_type_descriptor
R 1189 5 130 fft_types indw_tg$o fft_type_descriptor
R 1191 5 132 fft_types ir1p_d fft_type_descriptor
R 1193 5 134 fft_types ir1p_d$sd fft_type_descriptor
R 1194 5 135 fft_types ir1p_d$p fft_type_descriptor
R 1195 5 136 fft_types ir1p_d$o fft_type_descriptor
R 1197 5 138 fft_types ir1w_d fft_type_descriptor
R 1199 5 140 fft_types ir1w_d$sd fft_type_descriptor
R 1200 5 141 fft_types ir1w_d$p fft_type_descriptor
R 1201 5 142 fft_types ir1w_d$o fft_type_descriptor
R 1203 5 144 fft_types ir1w_tg_d fft_type_descriptor
R 1205 5 146 fft_types ir1w_tg_d$sd fft_type_descriptor
R 1206 5 147 fft_types ir1w_tg_d$p fft_type_descriptor
R 1207 5 148 fft_types ir1w_tg_d$o fft_type_descriptor
R 1209 5 150 fft_types indp_d fft_type_descriptor
R 1212 5 153 fft_types indp_d$sd fft_type_descriptor
R 1213 5 154 fft_types indp_d$p fft_type_descriptor
R 1214 5 155 fft_types indp_d$o fft_type_descriptor
R 1216 5 157 fft_types indw_d fft_type_descriptor
R 1219 5 160 fft_types indw_d$sd fft_type_descriptor
R 1220 5 161 fft_types indw_d$p fft_type_descriptor
R 1221 5 162 fft_types indw_d$o fft_type_descriptor
R 1223 5 164 fft_types indw_tg_d fft_type_descriptor
R 1226 5 167 fft_types indw_tg_d$sd fft_type_descriptor
R 1227 5 168 fft_types indw_tg_d$p fft_type_descriptor
R 1228 5 169 fft_types indw_tg_d$o fft_type_descriptor
R 1230 5 171 fft_types nr1p_d fft_type_descriptor
R 1232 5 173 fft_types nr1p_d$sd fft_type_descriptor
R 1233 5 174 fft_types nr1p_d$p fft_type_descriptor
R 1234 5 175 fft_types nr1p_d$o fft_type_descriptor
R 1236 5 177 fft_types nr1w_d fft_type_descriptor
R 1238 5 179 fft_types nr1w_d$sd fft_type_descriptor
R 1239 5 180 fft_types nr1w_d$p fft_type_descriptor
R 1240 5 181 fft_types nr1w_d$o fft_type_descriptor
R 1242 5 183 fft_types nr1w_tg_d fft_type_descriptor
R 1244 5 185 fft_types nr1w_tg_d$sd fft_type_descriptor
R 1245 5 186 fft_types nr1w_tg_d$p fft_type_descriptor
R 1246 5 187 fft_types nr1w_tg_d$o fft_type_descriptor
R 1248 5 189 fft_types nst fft_type_descriptor
R 1249 5 190 fft_types nsp fft_type_descriptor
R 1251 5 192 fft_types nsp$sd fft_type_descriptor
R 1252 5 193 fft_types nsp$p fft_type_descriptor
R 1253 5 194 fft_types nsp$o fft_type_descriptor
R 1255 5 196 fft_types nsp_offset fft_type_descriptor
R 1258 5 199 fft_types nsp_offset$sd fft_type_descriptor
R 1259 5 200 fft_types nsp_offset$p fft_type_descriptor
R 1260 5 201 fft_types nsp_offset$o fft_type_descriptor
R 1262 5 203 fft_types nsw fft_type_descriptor
R 1264 5 205 fft_types nsw$sd fft_type_descriptor
R 1265 5 206 fft_types nsw$p fft_type_descriptor
R 1266 5 207 fft_types nsw$o fft_type_descriptor
R 1268 5 209 fft_types nsw_offset fft_type_descriptor
R 1271 5 212 fft_types nsw_offset$sd fft_type_descriptor
R 1272 5 213 fft_types nsw_offset$p fft_type_descriptor
R 1273 5 214 fft_types nsw_offset$o fft_type_descriptor
R 1275 5 216 fft_types nsw_tg fft_type_descriptor
R 1277 5 218 fft_types nsw_tg$sd fft_type_descriptor
R 1278 5 219 fft_types nsw_tg$p fft_type_descriptor
R 1279 5 220 fft_types nsw_tg$o fft_type_descriptor
R 1281 5 222 fft_types ngl fft_type_descriptor
R 1283 5 224 fft_types ngl$sd fft_type_descriptor
R 1284 5 225 fft_types ngl$p fft_type_descriptor
R 1285 5 226 fft_types ngl$o fft_type_descriptor
R 1287 5 228 fft_types nwl fft_type_descriptor
R 1289 5 230 fft_types nwl$sd fft_type_descriptor
R 1290 5 231 fft_types nwl$p fft_type_descriptor
R 1291 5 232 fft_types nwl$o fft_type_descriptor
R 1293 5 234 fft_types ngm fft_type_descriptor
R 1294 5 235 fft_types ngw fft_type_descriptor
R 1295 5 236 fft_types iplp fft_type_descriptor
R 1297 5 238 fft_types iplp$sd fft_type_descriptor
R 1298 5 239 fft_types iplp$p fft_type_descriptor
R 1299 5 240 fft_types iplp$o fft_type_descriptor
R 1301 5 242 fft_types iplw fft_type_descriptor
R 1303 5 244 fft_types iplw$sd fft_type_descriptor
R 1304 5 245 fft_types iplw$p fft_type_descriptor
R 1305 5 246 fft_types iplw$o fft_type_descriptor
R 1307 5 248 fft_types nnp fft_type_descriptor
R 1308 5 249 fft_types nnr fft_type_descriptor
R 1309 5 250 fft_types nnr_tg fft_type_descriptor
R 1310 5 251 fft_types iss fft_type_descriptor
R 1312 5 253 fft_types iss$sd fft_type_descriptor
R 1313 5 254 fft_types iss$p fft_type_descriptor
R 1314 5 255 fft_types iss$o fft_type_descriptor
R 1316 5 257 fft_types isind fft_type_descriptor
R 1318 5 259 fft_types isind$sd fft_type_descriptor
R 1319 5 260 fft_types isind$p fft_type_descriptor
R 1320 5 261 fft_types isind$o fft_type_descriptor
R 1322 5 263 fft_types ismap fft_type_descriptor
R 1324 5 265 fft_types ismap$sd fft_type_descriptor
R 1325 5 266 fft_types ismap$p fft_type_descriptor
R 1326 5 267 fft_types ismap$o fft_type_descriptor
R 1328 5 269 fft_types ismap_d fft_type_descriptor
R 1330 5 271 fft_types ismap_d$sd fft_type_descriptor
R 1331 5 272 fft_types ismap_d$p fft_type_descriptor
R 1332 5 273 fft_types ismap_d$o fft_type_descriptor
R 1334 5 275 fft_types nl fft_type_descriptor
R 1336 5 277 fft_types nl$sd fft_type_descriptor
R 1337 5 278 fft_types nl$p fft_type_descriptor
R 1338 5 279 fft_types nl$o fft_type_descriptor
R 1340 5 281 fft_types nlm fft_type_descriptor
R 1342 5 283 fft_types nlm$sd fft_type_descriptor
R 1343 5 284 fft_types nlm$p fft_type_descriptor
R 1344 5 285 fft_types nlm$o fft_type_descriptor
R 1346 5 287 fft_types nl_d fft_type_descriptor
R 1348 5 289 fft_types nl_d$sd fft_type_descriptor
R 1349 5 290 fft_types nl_d$p fft_type_descriptor
R 1350 5 291 fft_types nl_d$o fft_type_descriptor
R 1352 5 293 fft_types nlm_d fft_type_descriptor
R 1354 5 295 fft_types nlm_d$sd fft_type_descriptor
R 1355 5 296 fft_types nlm_d$p fft_type_descriptor
R 1356 5 297 fft_types nlm_d$o fft_type_descriptor
R 1358 5 299 fft_types tg_snd fft_type_descriptor
R 1360 5 301 fft_types tg_snd$sd fft_type_descriptor
R 1361 5 302 fft_types tg_snd$p fft_type_descriptor
R 1362 5 303 fft_types tg_snd$o fft_type_descriptor
R 1364 5 305 fft_types tg_rcv fft_type_descriptor
R 1366 5 307 fft_types tg_rcv$sd fft_type_descriptor
R 1367 5 308 fft_types tg_rcv$p fft_type_descriptor
R 1368 5 309 fft_types tg_rcv$o fft_type_descriptor
R 1370 5 311 fft_types tg_sdsp fft_type_descriptor
R 1372 5 313 fft_types tg_sdsp$sd fft_type_descriptor
R 1373 5 314 fft_types tg_sdsp$p fft_type_descriptor
R 1374 5 315 fft_types tg_sdsp$o fft_type_descriptor
R 1376 5 317 fft_types tg_rdsp fft_type_descriptor
R 1378 5 319 fft_types tg_rdsp$sd fft_type_descriptor
R 1379 5 320 fft_types tg_rdsp$p fft_type_descriptor
R 1380 5 321 fft_types tg_rdsp$o fft_type_descriptor
R 1382 5 323 fft_types has_task_groups fft_type_descriptor
R 1383 5 324 fft_types use_pencil_decomposition fft_type_descriptor
R 1384 5 325 fft_types rho_clock_label fft_type_descriptor
R 1385 5 326 fft_types wave_clock_label fft_type_descriptor
R 1386 5 327 fft_types grid_id fft_type_descriptor
R 1388 5 329 fft_types aux fft_type_descriptor
R 1389 5 330 fft_types aux$sd fft_type_descriptor
R 1390 5 331 fft_types aux$p fft_type_descriptor
R 1391 5 332 fft_types aux$o fft_type_descriptor
S 8641 19 0 0 0 9 1 624 41313 4000 0 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 911 2 0 0 0 0 0 624 0 0 0 0 gather_grid
O 8641 2 8643 8642
S 8642 27 0 0 0 9 8650 624 41325 10 400000 A 0 0 0 0 B 0 25 0 0 0 0 916 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 gather_real_grid
Q 8642 8641 0
S 8643 27 0 0 0 9 8663 624 41342 10 400000 A 0 0 0 0 B 0 25 0 0 0 0 917 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 gather_complex_grid
Q 8643 8641 0
S 8644 19 0 0 0 9 1 624 41362 4000 0 A 0 0 0 0 B 0 28 0 0 0 0 0 0 0 0 0 0 0 0 0 0 915 2 0 0 0 0 0 624 0 0 0 0 scatter_grid
O 8644 2 8646 8645
S 8645 27 0 0 0 9 8676 624 41375 10 400000 A 0 0 0 0 B 0 29 0 0 0 0 918 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 scatter_real_grid
Q 8645 8644 0
S 8646 27 0 0 0 9 8689 624 41393 10 400000 A 0 0 0 0 B 0 29 0 0 0 0 919 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 scatter_complex_grid
Q 8646 8644 0
S 8647 27 0 0 0 9 8702 624 41414 0 8000000 A 0 0 0 0 B 0 37 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 cgather_sym
S 8648 27 0 0 0 9 8715 624 41426 0 8000000 A 0 0 0 0 B 0 37 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 cgather_sym_many
S 8649 27 0 0 0 9 8732 624 41443 0 8000000 A 0 0 0 0 B 0 37 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 cscatter_sym_many
S 8650 23 5 0 0 0 8654 624 41325 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 gather_real_grid
S 8651 6 3 1 0 358 1 8650 10725 800014 3000 A 0 0 0 0 B 0 45 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft
S 8652 7 3 1 0 3327 1 8650 41461 20000014 10003000 A 0 0 0 0 B 0 45 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_in
S 8653 7 3 3 0 3330 1 8650 41466 20000014 10003000 A 0 0 0 0 B 0 45 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_out
S 8654 14 5 0 0 0 1 8650 41325 20000010 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 5382 3 0 0 0 0 0 0 0 0 0 0 0 0 45 0 624 0 0 0 0 gather_real_grid gather_real_grid 
F 8654 3 8651 8652 8653
S 8655 6 1 0 0 7 1 8650 6767 40800016 3000 A 0 0 0 0 B 0 56 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 8656 6 1 0 0 7 1 8650 6775 40800016 3000 A 0 0 0 0 B 0 56 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 8657 6 1 0 0 7 1 8650 6865 40800016 3000 A 0 0 0 0 B 0 56 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 8658 6 1 0 0 7 1 8650 41472 40800016 3000 A 0 0 0 0 B 0 56 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2058
S 8659 6 1 0 0 7 1 8650 6791 40800016 3000 A 0 0 0 0 B 0 57 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 8660 6 1 0 0 7 1 8650 6799 40800016 3000 A 0 0 0 0 B 0 57 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 8661 6 1 0 0 7 1 8650 6882 40800016 3000 A 0 0 0 0 B 0 57 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_7_1
S 8662 6 1 0 0 7 1 8650 41481 40800016 3000 A 0 0 0 0 B 0 57 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2065
S 8663 23 5 0 0 0 8667 624 41342 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 gather_complex_grid
S 8664 6 3 1 0 358 1 8663 10725 800014 3000 A 0 0 0 0 B 0 127 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft
S 8665 7 3 1 0 3333 1 8663 41461 20000014 10003000 A 0 0 0 0 B 0 127 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_in
S 8666 7 3 3 0 3336 1 8663 41466 20000014 10003000 A 0 0 0 0 B 0 127 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_out
S 8667 14 5 0 0 0 1 8663 41342 20000010 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 5386 3 0 0 0 0 0 0 0 0 0 0 0 0 127 0 624 0 0 0 0 gather_complex_grid gather_complex_grid 
F 8667 3 8664 8665 8666
S 8668 6 1 0 0 7 1 8663 6767 40800016 3000 A 0 0 0 0 B 0 138 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 8669 6 1 0 0 7 1 8663 6775 40800016 3000 A 0 0 0 0 B 0 138 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 8670 6 1 0 0 7 1 8663 6865 40800016 3000 A 0 0 0 0 B 0 138 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 8671 6 1 0 0 7 1 8663 41490 40800016 3000 A 0 0 0 0 B 0 138 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2066
S 8672 6 1 0 0 7 1 8663 6791 40800016 3000 A 0 0 0 0 B 0 139 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 8673 6 1 0 0 7 1 8663 6799 40800016 3000 A 0 0 0 0 B 0 139 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 8674 6 1 0 0 7 1 8663 6882 40800016 3000 A 0 0 0 0 B 0 139 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_7_1
S 8675 6 1 0 0 7 1 8663 41499 40800016 3000 A 0 0 0 0 B 0 139 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2073
S 8676 23 5 0 0 0 8680 624 41375 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 scatter_real_grid
S 8677 6 3 1 0 358 1 8676 10725 800014 3000 A 0 0 0 0 B 0 212 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft
S 8678 7 3 1 0 3339 1 8676 41461 20000014 10003000 A 0 0 0 0 B 0 212 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_in
S 8679 7 3 3 0 3342 1 8676 41466 20000014 10003000 A 0 0 0 0 B 0 212 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_out
S 8680 14 5 0 0 0 1 8676 41375 20000010 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 5390 3 0 0 0 0 0 0 0 0 0 0 0 0 212 0 624 0 0 0 0 scatter_real_grid scatter_real_grid 
F 8680 3 8677 8678 8679
S 8681 6 1 0 0 7 1 8676 6767 40800016 3000 A 0 0 0 0 B 0 223 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 8682 6 1 0 0 7 1 8676 6775 40800016 3000 A 0 0 0 0 B 0 223 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 8683 6 1 0 0 7 1 8676 6865 40800016 3000 A 0 0 0 0 B 0 223 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 8684 6 1 0 0 7 1 8676 41508 40800016 3000 A 0 0 0 0 B 0 223 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2074
S 8685 6 1 0 0 7 1 8676 6791 40800016 3000 A 0 0 0 0 B 0 224 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 8686 6 1 0 0 7 1 8676 6799 40800016 3000 A 0 0 0 0 B 0 224 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 8687 6 1 0 0 7 1 8676 6882 40800016 3000 A 0 0 0 0 B 0 224 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_7_1
S 8688 6 1 0 0 7 1 8676 41517 40800016 3000 A 0 0 0 0 B 0 224 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2081
S 8689 23 5 0 0 0 8693 624 41393 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 scatter_complex_grid
S 8690 6 3 1 0 358 1 8689 10725 800014 3000 A 0 0 0 0 B 0 289 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft
S 8691 7 3 1 0 3345 1 8689 41461 20000014 10003000 A 0 0 0 0 B 0 289 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_in
S 8692 7 3 3 0 3348 1 8689 41466 20000014 10003000 A 0 0 0 0 B 0 289 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_out
S 8693 14 5 0 0 0 1 8689 41393 20000010 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 5394 3 0 0 0 0 0 0 0 0 0 0 0 0 289 0 624 0 0 0 0 scatter_complex_grid scatter_complex_grid 
F 8693 3 8690 8691 8692
S 8694 6 1 0 0 7 1 8689 6767 40800016 3000 A 0 0 0 0 B 0 300 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 8695 6 1 0 0 7 1 8689 6775 40800016 3000 A 0 0 0 0 B 0 300 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 8696 6 1 0 0 7 1 8689 6865 40800016 3000 A 0 0 0 0 B 0 300 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 8697 6 1 0 0 7 1 8689 41526 40800016 3000 A 0 0 0 0 B 0 300 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2082
S 8698 6 1 0 0 7 1 8689 6791 40800016 3000 A 0 0 0 0 B 0 301 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 8699 6 1 0 0 7 1 8689 6799 40800016 3000 A 0 0 0 0 B 0 301 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 8700 6 1 0 0 7 1 8689 6882 40800016 3000 A 0 0 0 0 B 0 301 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_7_1
S 8701 6 1 0 0 7 1 8689 41535 40800016 3000 A 0 0 0 0 B 0 301 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2089
S 8702 23 5 0 0 0 8706 624 41414 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 cgather_sym
S 8703 6 3 1 0 358 1 8702 41544 800014 3000 A 0 0 0 0 B 0 377 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfftp
S 8704 7 3 0 0 3351 1 8702 41461 20000014 10003000 A 0 0 0 0 B 0 377 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_in
S 8705 7 3 0 0 3354 1 8702 41466 20000014 10003000 A 0 0 0 0 B 0 377 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_out
S 8706 14 5 0 0 0 1 8702 41414 20000000 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 5398 3 0 0 0 0 0 0 0 0 0 0 0 0 377 0 624 0 0 0 0 cgather_sym cgather_sym 
F 8706 3 8703 8704 8705
S 8707 6 1 0 0 7 1 8702 6767 40800016 3000 A 0 0 0 0 B 0 389 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 8708 6 1 0 0 7 1 8702 6775 40800016 3000 A 0 0 0 0 B 0 389 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 8709 6 1 0 0 7 1 8702 6865 40800016 3000 A 0 0 0 0 B 0 389 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 8710 6 1 0 0 7 1 8702 41550 40800016 3000 A 0 0 0 0 B 0 389 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2090
S 8711 6 1 0 0 7 1 8702 6791 40800016 3000 A 0 0 0 0 B 0 389 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 8712 6 1 0 0 7 1 8702 6799 40800016 3000 A 0 0 0 0 B 0 389 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 8713 6 1 0 0 7 1 8702 6882 40800016 3000 A 0 0 0 0 B 0 389 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_7_1
S 8714 6 1 0 0 7 1 8702 41559 40800016 3000 A 0 0 0 0 B 0 389 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2097
S 8715 23 5 0 0 0 8722 624 41426 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 cgather_sym_many
S 8716 6 3 1 0 358 1 8715 41544 800014 3000 A 0 0 0 0 B 0 450 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfftp
S 8717 7 3 0 0 3363 1 8715 41461 800214 3000 A 0 0 0 0 B 0 450 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_in
S 8718 7 3 0 0 3366 1 8715 41466 800214 3000 A 0 0 0 0 B 0 450 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_out
S 8719 6 3 0 0 6 1 8715 41568 800014 3000 A 0 0 0 0 B 0 450 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nbnd
S 8720 7 3 0 0 3357 1 8715 41573 800214 3000 A 0 0 0 0 B 0 450 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nbnd_proc
S 8721 7 3 0 0 3360 1 8715 41583 800214 3000 A 0 0 0 0 B 0 450 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 start_nbnd_proc
S 8722 14 5 0 0 0 1 8715 41426 200 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 5402 6 0 0 0 0 0 0 0 0 0 0 0 0 450 0 624 0 0 0 0 cgather_sym_many cgather_sym_many 
F 8722 6 8716 8717 8718 8719 8720 8721
S 8723 6 1 0 0 7 1 8715 41599 40800016 3000 A 0 0 0 0 B 0 466 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2096
S 8724 6 1 0 0 7 1 8715 41608 40800016 3000 A 0 0 0 0 B 0 467 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2100
S 8725 6 1 0 0 7 1 8715 41617 40800016 3000 A 0 0 0 0 B 0 467 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2102
S 8726 6 1 0 0 7 1 8715 41626 40800016 3000 A 0 0 0 0 B 0 467 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2105
S 8727 6 1 0 0 7 1 8715 41635 40800016 3000 A 0 0 0 0 B 0 467 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2107
S 8728 6 1 0 0 7 1 8715 41644 40800016 3000 A 0 0 0 0 B 0 468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2117
S 8729 6 1 0 0 7 1 8715 41653 40800016 3000 A 0 0 0 0 B 0 468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2124
S 8730 6 1 0 0 7 1 8715 41662 40800016 3000 A 0 0 0 0 B 0 468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2127
S 8731 6 1 0 0 7 1 8715 41671 40800016 3000 A 0 0 0 0 B 0 468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2129
S 8732 23 5 0 0 0 8740 624 41443 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 cscatter_sym_many
S 8733 6 3 1 0 358 1 8732 41544 800014 3000 A 0 0 0 0 B 0 584 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfftp
S 8734 7 3 0 0 3375 1 8732 41461 800214 3000 A 0 0 0 0 B 0 584 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_in
S 8735 7 3 0 0 3378 1 8732 41466 800214 3000 A 0 0 0 0 B 0 584 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_out
S 8736 1 3 0 0 6 1 8732 41680 14 3000 A 0 0 0 0 B 0 584 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 target_ibnd
S 8737 1 3 0 0 6 1 8732 41568 14 3000 A 0 0 0 0 B 0 584 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nbnd
S 8738 7 3 0 0 3369 1 8732 41573 800214 3000 A 0 0 0 0 B 0 584 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nbnd_proc
S 8739 7 3 0 0 3372 1 8732 41583 800214 3000 A 0 0 0 0 B 0 584 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 start_nbnd_proc
S 8740 14 5 0 0 0 1 8732 41443 200 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 5409 7 0 0 0 0 0 0 0 0 0 0 0 0 584 0 624 0 0 0 0 cscatter_sym_many cscatter_sym_many 
F 8740 7 8733 8734 8735 8736 8737 8738 8739
S 8741 6 1 0 0 7 1 8732 41671 40800016 3000 A 0 0 0 0 B 0 603 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2129
S 8742 6 1 0 0 7 1 8732 41692 40800016 3000 A 0 0 0 0 B 0 604 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2136
S 8743 6 1 0 0 7 1 8732 41701 40800016 3000 A 0 0 0 0 B 0 604 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2142
S 8744 6 1 0 0 7 1 8732 41710 40800016 3000 A 0 0 0 0 B 0 604 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2145
S 8745 6 1 0 0 7 1 8732 41719 40800016 3000 A 0 0 0 0 B 0 604 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2147
S 8746 6 1 0 0 7 1 8732 41728 40800016 3000 A 0 0 0 0 B 0 605 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2150
A 16 2 0 0 0 6 630 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0
A 33 2 0 0 0 6 632 0 0 0 33 0 0 0 0 0 0 0 0 0 0 0
A 35 2 0 0 0 6 637 0 0 0 35 0 0 0 0 0 0 0 0 0 0 0
A 57 2 0 0 0 7 638 0 0 0 57 0 0 0 0 0 0 0 0 0 0 0
A 58 2 0 0 0 7 639 0 0 0 58 0 0 0 0 0 0 0 0 0 0 0
A 61 1 0 1 0 58 642 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 67 1 0 3 0 64 664 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 73 1 0 3 0 70 666 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 77 1 0 5 0 76 668 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 131 1 0 0 0 82 723 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 134 1 0 0 0 91 725 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 165 2 0 0 0 7 756 0 0 0 165 0 0 0 0 0 0 0 0 0 0 0
A 397 2 0 0 0 18 754 0 0 0 397 0 0 0 0 0 0 0 0 0 0 0
A 869 2 0 0 0 18 1058 0 0 0 869 0 0 0 0 0 0 0 0 0 0 0
A 870 2 0 0 0 22 1059 0 0 0 870 0 0 0 0 0 0 0 0 0 0 0
A 2053 1 0 0 0 7 8657 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2054 1 0 0 0 7 8655 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2055 1 0 0 0 7 8658 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2056 1 0 0 0 7 8656 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2057 1 0 0 0 7 8661 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2058 1 0 0 0 7 8659 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2059 1 0 0 0 7 8662 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2060 1 0 0 0 7 8660 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2061 1 0 0 0 7 8670 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2062 1 0 0 0 7 8668 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2063 1 0 0 0 7 8671 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2064 1 0 0 0 7 8669 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2065 1 0 0 0 7 8674 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2066 1 0 0 0 7 8672 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2067 1 0 0 0 7 8675 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2068 1 0 0 0 7 8673 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2069 1 0 0 0 7 8683 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2070 1 0 0 0 7 8681 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2071 1 0 0 0 7 8684 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2072 1 0 0 0 7 8682 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2073 1 0 0 0 7 8687 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2074 1 0 0 766 7 8685 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2075 1 0 0 0 7 8688 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2076 1 0 0 0 7 8686 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2077 1 0 0 0 7 8696 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2078 1 0 0 0 7 8694 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2079 1 0 0 0 7 8697 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2080 1 0 0 0 7 8695 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2081 1 0 0 0 7 8700 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2082 1 0 0 0 7 8698 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2083 1 0 0 0 7 8701 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2084 1 0 0 0 7 8699 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2085 1 0 0 0 7 8709 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2086 1 0 0 0 7 8707 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2087 1 0 0 0 7 8710 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2088 1 0 0 0 7 8708 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2089 1 0 0 0 7 8713 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2090 1 0 0 0 7 8711 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2091 1 0 0 0 7 8714 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2092 1 0 0 0 7 8712 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2093 1 0 0 261 358 8716 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2094 1 0 0 0 6 1075 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2095 9 0 0 0 6 2093 2094 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2096 7 0 0 1723 7 2095 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2097 1 0 0 0 7 8723 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2098 1 0 0 0 7 8727 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2099 1 0 0 0 6 1308 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2100 9 0 0 2095 6 2093 2099 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2101 7 0 0 0 7 2100 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2102 1 0 0 0 7 8724 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2103 1 0 0 0 6 8719 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2104 7 0 0 0 7 2103 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2105 1 0 0 0 7 8725 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2106 1 0 0 0 7 8726 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2107 1 0 0 0 7 8731 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2108 1 0 0 0 6 1066 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2109 9 0 0 2100 6 2093 2108 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2110 1 0 0 0 6 1067 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2111 9 0 0 2109 6 2093 2110 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2112 4 0 0 0 6 2109 0 2111 0 0 0 0 3 0 0 0 0 0 0 0 0
A 2113 1 0 0 0 6 1068 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2114 9 0 0 2111 6 2093 2113 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2115 4 0 0 0 6 2112 0 2114 0 0 0 0 3 0 0 0 0 0 0 0 0
A 2116 7 0 0 1725 7 2115 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2117 1 0 0 0 7 8728 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2118 1 0 25 0 3357 8720 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2119 1 0 0 0 6 1078 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2120 9 0 0 2114 6 2093 2119 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2121 4 0 0 0 6 2120 0 3 0 0 0 0 1 0 0 0 0 0 0 0 0
A 2122 7 0 0 0 7 2121 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2123 10 0 0 0 6 2118 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 2122
A 2124 7 0 0 0 7 2123 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2125 1 0 0 0 7 8729 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2126 1 0 0 0 7 8730 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2127 1 0 0 284 358 8733 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2128 9 0 0 1255 6 2127 2094 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2129 7 0 0 0 7 2128 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2130 1 0 0 854 7 8741 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2131 1 0 0 0 7 8745 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2132 9 0 0 2128 6 2127 2108 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2133 9 0 0 2132 6 2127 2110 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2134 4 0 0 355 6 2132 0 2133 0 0 0 0 3 0 0 0 0 0 0 0 0
A 2135 9 0 0 2133 6 2127 2113 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2136 4 0 0 0 6 2134 0 2135 0 0 0 0 3 0 0 0 0 0 0 0 0
A 2137 7 0 0 0 7 2136 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2138 1 0 0 0 7 8742 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2139 1 0 27 0 3369 8738 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2140 9 0 0 2135 6 2127 2119 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2141 4 0 0 0 6 2140 0 3 0 0 0 0 1 0 0 0 0 0 0 0 0
A 2142 7 0 0 0 7 2141 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2143 10 0 0 0 6 2139 34 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 2142
A 2144 7 0 0 0 7 2143 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2145 1 0 0 0 7 8743 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2146 1 0 0 857 7 8744 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2147 9 0 0 2140 6 2127 2099 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2148 7 0 0 0 7 2147 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2149 1 0 0 0 7 8746 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
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
T 770 136 0 3 0 0
A 774 18 0 0 1 397 1
A 775 18 0 0 1 397 1
A 776 6 0 0 1 2 1
A 777 6 0 0 1 3 1
A 778 6 0 0 1 3 1
A 792 6 0 0 1 33 1
A 793 6 0 0 1 2 1
R 794 154 0 1
A 0 6 0 165 1 2 0
R 795 157 0 0
A 0 6 0 165 1 2 0
T 1062 358 0 3 0 0
A 1063 6 0 0 1 2 1
A 1064 6 0 0 1 2 1
A 1065 6 0 0 1 2 1
A 1066 6 0 0 1 2 1
A 1067 6 0 0 1 2 1
A 1068 6 0 0 1 2 1
A 1069 18 0 0 1 397 1
A 1070 18 0 0 1 397 1
A 1071 6 0 0 1 2 1
A 1072 6 0 0 1 33 1
A 1073 6 0 0 1 33 1
A 1074 6 0 0 1 33 1
A 1075 6 0 0 1 3 1
A 1076 6 0 0 1 3 1
A 1077 6 0 0 1 3 1
A 1078 6 0 0 1 2 1
A 1079 6 0 0 1 2 1
A 1080 6 0 0 1 2 1
A 1100 6 0 0 1 2 1
A 1101 6 0 0 1 2 1
A 1102 6 0 0 1 2 1
A 1103 6 0 0 1 2 1
A 1307 6 0 0 1 2 1
A 1308 6 0 0 1 2 1
A 1309 6 0 0 1 2 1
A 1382 18 0 0 1 397 1
A 1383 18 0 0 1 869 1
A 1384 22 0 0 1 870 1
A 1385 22 0 0 1 870 0
Z
