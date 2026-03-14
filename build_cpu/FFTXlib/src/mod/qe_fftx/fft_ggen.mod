V34 :0x24 fft_ggen
12 fft_ggen.f90 S624 0
03/12/2026  22:09:04
use stick_base private
use iso_fortran_env private
use fft_types private
use iso_c_binding private
enduse
D 58 26 645 8 644 7
D 67 26 648 8 647 7
D 76 23 6 1 11 11 0 0 0 0 0
 0 11 11 11 11 11
D 79 23 6 1 11 11 0 0 0 0 0
 0 11 11 11 11 11
D 82 23 6 1 11 114 0 0 0 0 0
 0 114 11 11 114 114
D 85 23 6 1 11 114 0 0 0 0 0
 0 114 11 11 114 114
D 88 23 6 1 11 114 0 0 0 0 0
 0 114 11 11 114 114
D 91 23 6 1 11 114 0 0 0 0 0
 0 114 11 11 114 114
D 94 23 6 1 11 115 0 0 0 0 0
 0 115 11 11 115 115
D 97 23 6 1 11 115 0 0 0 0 0
 0 115 11 11 115 115
D 2761 26 7919 1232 7915 7
D 2779 23 6 1 11 709 0 0 0 0 0
 0 709 11 11 709 709
D 2782 23 6 1 11 709 0 0 0 0 0
 0 709 11 11 709 709
D 2947 26 8191 7848 8190 7
D 3327 26 8191 7848 8190 7
D 3333 23 10 2 2053 2059 1 1 0 0 1
 11 2054 11 11 2054 2055
 11 2056 2057 11 2056 2058
D 3336 23 10 2 2060 2066 1 1 0 0 1
 11 2061 11 11 2061 2062
 11 2063 2064 11 2063 2065
D 3339 23 6 2 2067 2073 1 1 0 0 1
 11 2068 11 11 2068 2069
 11 2070 2071 11 2070 2072
S 624 24 0 0 0 9 1 0 5012 10015 0 A 0 0 0 0 B 0 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 10 0 0 0 0 0 0 fft_ggen
S 627 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 628 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 629 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
R 644 25 7 iso_c_binding c_ptr
R 645 5 8 iso_c_binding val c_ptr
R 647 25 10 iso_c_binding c_funptr
R 648 5 11 iso_c_binding val c_funptr
R 682 6 45 iso_c_binding c_null_ptr$ac
R 684 6 47 iso_c_binding c_null_funptr$ac
R 685 26 48 iso_c_binding ==
R 687 26 50 iso_c_binding !=
S 719 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 720 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 723 7 3 iso_fortran_env character_kinds$ac
R 745 7 25 iso_fortran_env integer_kinds$ac
R 747 7 27 iso_fortran_env logical_kinds$ac
R 749 7 29 iso_fortran_env real_kinds$ac
S 763 3 0 0 0 18 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 18
S 832 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 7882 6 4 0 0 9 1 624 37060 0 1000 A 0 0 0 0 B 0 21 0 0 0 0 0 0 0 0 0 0 7883 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fft_set_nl
S 7883 11 0 0 0 9 1151 624 37071 40800000 805000 A 0 0 0 0 B 0 24 0 0 0 4 0 0 7882 7882 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 _fft_ggen$0
R 7915 25 5 stick_base sticks_map
R 7919 5 9 stick_base lgamma sticks_map
R 7920 5 10 stick_base lpara sticks_map
R 7921 5 11 stick_base mype sticks_map
R 7922 5 12 stick_base nproc sticks_map
R 7923 5 13 stick_base nyfft sticks_map
R 7924 5 14 stick_base iproc sticks_map
R 7927 5 17 stick_base iproc$sd sticks_map
R 7928 5 18 stick_base iproc$p sticks_map
R 7929 5 19 stick_base iproc$o sticks_map
R 7931 5 21 stick_base iproc2 sticks_map
R 7933 5 23 stick_base iproc2$sd sticks_map
R 7934 5 24 stick_base iproc2$p sticks_map
R 7935 5 25 stick_base iproc2$o sticks_map
R 7937 5 27 stick_base comm sticks_map
R 7938 5 28 stick_base nstx sticks_map
R 7939 5 29 stick_base lb sticks_map
R 7940 5 30 stick_base ub sticks_map
R 7941 5 31 stick_base idx sticks_map
R 7943 5 33 stick_base idx$sd sticks_map
R 7944 5 34 stick_base idx$p sticks_map
R 7945 5 35 stick_base idx$o sticks_map
R 7947 5 37 stick_base ist sticks_map
R 7950 5 40 stick_base ist$sd sticks_map
R 7951 5 41 stick_base ist$p sticks_map
R 7952 5 42 stick_base ist$o sticks_map
R 7954 5 44 stick_base stown sticks_map
R 7957 5 47 stick_base stown$sd sticks_map
R 7958 5 48 stick_base stown$p sticks_map
R 7959 5 49 stick_base stown$o sticks_map
R 7961 5 51 stick_base indmap sticks_map
R 7964 5 54 stick_base indmap$sd sticks_map
R 7965 5 55 stick_base indmap$p sticks_map
R 7966 5 56 stick_base indmap$o sticks_map
R 7968 5 58 stick_base bg sticks_map
S 8186 3 0 0 0 18 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 18
S 8187 3 0 0 0 22 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 38355 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 1 20
R 8190 25 3 fft_types fft_type_descriptor
R 8191 5 4 fft_types nr1 fft_type_descriptor
R 8192 5 5 fft_types nr2 fft_type_descriptor
R 8193 5 6 fft_types nr3 fft_type_descriptor
R 8194 5 7 fft_types nr1x fft_type_descriptor
R 8195 5 8 fft_types nr2x fft_type_descriptor
R 8196 5 9 fft_types nr3x fft_type_descriptor
R 8197 5 10 fft_types lpara fft_type_descriptor
R 8198 5 11 fft_types lgamma fft_type_descriptor
R 8199 5 12 fft_types root fft_type_descriptor
R 8200 5 13 fft_types comm fft_type_descriptor
R 8201 5 14 fft_types comm2 fft_type_descriptor
R 8202 5 15 fft_types comm3 fft_type_descriptor
R 8203 5 16 fft_types nproc fft_type_descriptor
R 8204 5 17 fft_types nproc2 fft_type_descriptor
R 8205 5 18 fft_types nproc3 fft_type_descriptor
R 8206 5 19 fft_types mype fft_type_descriptor
R 8207 5 20 fft_types mype2 fft_type_descriptor
R 8208 5 21 fft_types mype3 fft_type_descriptor
R 8209 5 22 fft_types iproc fft_type_descriptor
R 8212 5 25 fft_types iproc$sd fft_type_descriptor
R 8213 5 26 fft_types iproc$p fft_type_descriptor
R 8214 5 27 fft_types iproc$o fft_type_descriptor
R 8216 5 29 fft_types iproc2 fft_type_descriptor
R 8218 5 31 fft_types iproc2$sd fft_type_descriptor
R 8219 5 32 fft_types iproc2$p fft_type_descriptor
R 8220 5 33 fft_types iproc2$o fft_type_descriptor
R 8222 5 35 fft_types iproc3 fft_type_descriptor
R 8224 5 37 fft_types iproc3$sd fft_type_descriptor
R 8225 5 38 fft_types iproc3$p fft_type_descriptor
R 8226 5 39 fft_types iproc3$o fft_type_descriptor
R 8228 5 41 fft_types my_nr3p fft_type_descriptor
R 8229 5 42 fft_types my_nr2p fft_type_descriptor
R 8230 5 43 fft_types my_i0r3p fft_type_descriptor
R 8231 5 44 fft_types my_i0r2p fft_type_descriptor
R 8232 5 45 fft_types nr3p fft_type_descriptor
R 8234 5 47 fft_types nr3p$sd fft_type_descriptor
R 8235 5 48 fft_types nr3p$p fft_type_descriptor
R 8236 5 49 fft_types nr3p$o fft_type_descriptor
R 8238 5 51 fft_types nr3p_offset fft_type_descriptor
R 8240 5 53 fft_types nr3p_offset$sd fft_type_descriptor
R 8241 5 54 fft_types nr3p_offset$p fft_type_descriptor
R 8242 5 55 fft_types nr3p_offset$o fft_type_descriptor
R 8244 5 57 fft_types nr2p fft_type_descriptor
R 8246 5 59 fft_types nr2p$sd fft_type_descriptor
R 8247 5 60 fft_types nr2p$p fft_type_descriptor
R 8248 5 61 fft_types nr2p$o fft_type_descriptor
R 8250 5 63 fft_types nr2p_offset fft_type_descriptor
R 8252 5 65 fft_types nr2p_offset$sd fft_type_descriptor
R 8253 5 66 fft_types nr2p_offset$p fft_type_descriptor
R 8254 5 67 fft_types nr2p_offset$o fft_type_descriptor
R 8256 5 69 fft_types nr1p fft_type_descriptor
R 8258 5 71 fft_types nr1p$sd fft_type_descriptor
R 8259 5 72 fft_types nr1p$p fft_type_descriptor
R 8260 5 73 fft_types nr1p$o fft_type_descriptor
R 8262 5 75 fft_types nr1w fft_type_descriptor
R 8264 5 77 fft_types nr1w$sd fft_type_descriptor
R 8265 5 78 fft_types nr1w$p fft_type_descriptor
R 8266 5 79 fft_types nr1w$o fft_type_descriptor
R 8268 5 81 fft_types nr1w_tg fft_type_descriptor
R 8269 5 82 fft_types i0r3p fft_type_descriptor
R 8271 5 84 fft_types i0r3p$sd fft_type_descriptor
R 8272 5 85 fft_types i0r3p$p fft_type_descriptor
R 8273 5 86 fft_types i0r3p$o fft_type_descriptor
R 8275 5 88 fft_types i0r2p fft_type_descriptor
R 8277 5 90 fft_types i0r2p$sd fft_type_descriptor
R 8278 5 91 fft_types i0r2p$p fft_type_descriptor
R 8279 5 92 fft_types i0r2p$o fft_type_descriptor
R 8281 5 94 fft_types ir1p fft_type_descriptor
R 8283 5 96 fft_types ir1p$sd fft_type_descriptor
R 8284 5 97 fft_types ir1p$p fft_type_descriptor
R 8285 5 98 fft_types ir1p$o fft_type_descriptor
R 8287 5 100 fft_types indp fft_type_descriptor
R 8290 5 103 fft_types indp$sd fft_type_descriptor
R 8291 5 104 fft_types indp$p fft_type_descriptor
R 8292 5 105 fft_types indp$o fft_type_descriptor
R 8294 5 107 fft_types ir1w fft_type_descriptor
R 8296 5 109 fft_types ir1w$sd fft_type_descriptor
R 8297 5 110 fft_types ir1w$p fft_type_descriptor
R 8298 5 111 fft_types ir1w$o fft_type_descriptor
R 8300 5 113 fft_types indw fft_type_descriptor
R 8303 5 116 fft_types indw$sd fft_type_descriptor
R 8304 5 117 fft_types indw$p fft_type_descriptor
R 8305 5 118 fft_types indw$o fft_type_descriptor
R 8307 5 120 fft_types ir1w_tg fft_type_descriptor
R 8309 5 122 fft_types ir1w_tg$sd fft_type_descriptor
R 8310 5 123 fft_types ir1w_tg$p fft_type_descriptor
R 8311 5 124 fft_types ir1w_tg$o fft_type_descriptor
R 8313 5 126 fft_types indw_tg fft_type_descriptor
R 8315 5 128 fft_types indw_tg$sd fft_type_descriptor
R 8316 5 129 fft_types indw_tg$p fft_type_descriptor
R 8317 5 130 fft_types indw_tg$o fft_type_descriptor
R 8319 5 132 fft_types ir1p_d fft_type_descriptor
R 8321 5 134 fft_types ir1p_d$sd fft_type_descriptor
R 8322 5 135 fft_types ir1p_d$p fft_type_descriptor
R 8323 5 136 fft_types ir1p_d$o fft_type_descriptor
R 8325 5 138 fft_types ir1w_d fft_type_descriptor
R 8327 5 140 fft_types ir1w_d$sd fft_type_descriptor
R 8328 5 141 fft_types ir1w_d$p fft_type_descriptor
R 8329 5 142 fft_types ir1w_d$o fft_type_descriptor
R 8331 5 144 fft_types ir1w_tg_d fft_type_descriptor
R 8333 5 146 fft_types ir1w_tg_d$sd fft_type_descriptor
R 8334 5 147 fft_types ir1w_tg_d$p fft_type_descriptor
R 8335 5 148 fft_types ir1w_tg_d$o fft_type_descriptor
R 8337 5 150 fft_types indp_d fft_type_descriptor
R 8340 5 153 fft_types indp_d$sd fft_type_descriptor
R 8341 5 154 fft_types indp_d$p fft_type_descriptor
R 8342 5 155 fft_types indp_d$o fft_type_descriptor
R 8344 5 157 fft_types indw_d fft_type_descriptor
R 8347 5 160 fft_types indw_d$sd fft_type_descriptor
R 8348 5 161 fft_types indw_d$p fft_type_descriptor
R 8349 5 162 fft_types indw_d$o fft_type_descriptor
R 8351 5 164 fft_types indw_tg_d fft_type_descriptor
R 8354 5 167 fft_types indw_tg_d$sd fft_type_descriptor
R 8355 5 168 fft_types indw_tg_d$p fft_type_descriptor
R 8356 5 169 fft_types indw_tg_d$o fft_type_descriptor
R 8358 5 171 fft_types nr1p_d fft_type_descriptor
R 8360 5 173 fft_types nr1p_d$sd fft_type_descriptor
R 8361 5 174 fft_types nr1p_d$p fft_type_descriptor
R 8362 5 175 fft_types nr1p_d$o fft_type_descriptor
R 8364 5 177 fft_types nr1w_d fft_type_descriptor
R 8366 5 179 fft_types nr1w_d$sd fft_type_descriptor
R 8367 5 180 fft_types nr1w_d$p fft_type_descriptor
R 8368 5 181 fft_types nr1w_d$o fft_type_descriptor
R 8370 5 183 fft_types nr1w_tg_d fft_type_descriptor
R 8372 5 185 fft_types nr1w_tg_d$sd fft_type_descriptor
R 8373 5 186 fft_types nr1w_tg_d$p fft_type_descriptor
R 8374 5 187 fft_types nr1w_tg_d$o fft_type_descriptor
R 8376 5 189 fft_types nst fft_type_descriptor
R 8377 5 190 fft_types nsp fft_type_descriptor
R 8379 5 192 fft_types nsp$sd fft_type_descriptor
R 8380 5 193 fft_types nsp$p fft_type_descriptor
R 8381 5 194 fft_types nsp$o fft_type_descriptor
R 8383 5 196 fft_types nsp_offset fft_type_descriptor
R 8386 5 199 fft_types nsp_offset$sd fft_type_descriptor
R 8387 5 200 fft_types nsp_offset$p fft_type_descriptor
R 8388 5 201 fft_types nsp_offset$o fft_type_descriptor
R 8390 5 203 fft_types nsw fft_type_descriptor
R 8392 5 205 fft_types nsw$sd fft_type_descriptor
R 8393 5 206 fft_types nsw$p fft_type_descriptor
R 8394 5 207 fft_types nsw$o fft_type_descriptor
R 8396 5 209 fft_types nsw_offset fft_type_descriptor
R 8399 5 212 fft_types nsw_offset$sd fft_type_descriptor
R 8400 5 213 fft_types nsw_offset$p fft_type_descriptor
R 8401 5 214 fft_types nsw_offset$o fft_type_descriptor
R 8403 5 216 fft_types nsw_tg fft_type_descriptor
R 8405 5 218 fft_types nsw_tg$sd fft_type_descriptor
R 8406 5 219 fft_types nsw_tg$p fft_type_descriptor
R 8407 5 220 fft_types nsw_tg$o fft_type_descriptor
R 8409 5 222 fft_types ngl fft_type_descriptor
R 8411 5 224 fft_types ngl$sd fft_type_descriptor
R 8412 5 225 fft_types ngl$p fft_type_descriptor
R 8413 5 226 fft_types ngl$o fft_type_descriptor
R 8415 5 228 fft_types nwl fft_type_descriptor
R 8417 5 230 fft_types nwl$sd fft_type_descriptor
R 8418 5 231 fft_types nwl$p fft_type_descriptor
R 8419 5 232 fft_types nwl$o fft_type_descriptor
R 8421 5 234 fft_types ngm fft_type_descriptor
R 8422 5 235 fft_types ngw fft_type_descriptor
R 8423 5 236 fft_types iplp fft_type_descriptor
R 8425 5 238 fft_types iplp$sd fft_type_descriptor
R 8426 5 239 fft_types iplp$p fft_type_descriptor
R 8427 5 240 fft_types iplp$o fft_type_descriptor
R 8429 5 242 fft_types iplw fft_type_descriptor
R 8431 5 244 fft_types iplw$sd fft_type_descriptor
R 8432 5 245 fft_types iplw$p fft_type_descriptor
R 8433 5 246 fft_types iplw$o fft_type_descriptor
R 8435 5 248 fft_types nnp fft_type_descriptor
R 8436 5 249 fft_types nnr fft_type_descriptor
R 8437 5 250 fft_types nnr_tg fft_type_descriptor
R 8438 5 251 fft_types iss fft_type_descriptor
R 8440 5 253 fft_types iss$sd fft_type_descriptor
R 8441 5 254 fft_types iss$p fft_type_descriptor
R 8442 5 255 fft_types iss$o fft_type_descriptor
R 8444 5 257 fft_types isind fft_type_descriptor
R 8446 5 259 fft_types isind$sd fft_type_descriptor
R 8447 5 260 fft_types isind$p fft_type_descriptor
R 8448 5 261 fft_types isind$o fft_type_descriptor
R 8450 5 263 fft_types ismap fft_type_descriptor
R 8452 5 265 fft_types ismap$sd fft_type_descriptor
R 8453 5 266 fft_types ismap$p fft_type_descriptor
R 8454 5 267 fft_types ismap$o fft_type_descriptor
R 8456 5 269 fft_types ismap_d fft_type_descriptor
R 8458 5 271 fft_types ismap_d$sd fft_type_descriptor
R 8459 5 272 fft_types ismap_d$p fft_type_descriptor
R 8460 5 273 fft_types ismap_d$o fft_type_descriptor
R 8462 5 275 fft_types nl fft_type_descriptor
R 8464 5 277 fft_types nl$sd fft_type_descriptor
R 8465 5 278 fft_types nl$p fft_type_descriptor
R 8466 5 279 fft_types nl$o fft_type_descriptor
R 8468 5 281 fft_types nlm fft_type_descriptor
R 8470 5 283 fft_types nlm$sd fft_type_descriptor
R 8471 5 284 fft_types nlm$p fft_type_descriptor
R 8472 5 285 fft_types nlm$o fft_type_descriptor
R 8474 5 287 fft_types nl_d fft_type_descriptor
R 8476 5 289 fft_types nl_d$sd fft_type_descriptor
R 8477 5 290 fft_types nl_d$p fft_type_descriptor
R 8478 5 291 fft_types nl_d$o fft_type_descriptor
R 8480 5 293 fft_types nlm_d fft_type_descriptor
R 8482 5 295 fft_types nlm_d$sd fft_type_descriptor
R 8483 5 296 fft_types nlm_d$p fft_type_descriptor
R 8484 5 297 fft_types nlm_d$o fft_type_descriptor
R 8486 5 299 fft_types tg_snd fft_type_descriptor
R 8488 5 301 fft_types tg_snd$sd fft_type_descriptor
R 8489 5 302 fft_types tg_snd$p fft_type_descriptor
R 8490 5 303 fft_types tg_snd$o fft_type_descriptor
R 8492 5 305 fft_types tg_rcv fft_type_descriptor
R 8494 5 307 fft_types tg_rcv$sd fft_type_descriptor
R 8495 5 308 fft_types tg_rcv$p fft_type_descriptor
R 8496 5 309 fft_types tg_rcv$o fft_type_descriptor
R 8498 5 311 fft_types tg_sdsp fft_type_descriptor
R 8500 5 313 fft_types tg_sdsp$sd fft_type_descriptor
R 8501 5 314 fft_types tg_sdsp$p fft_type_descriptor
R 8502 5 315 fft_types tg_sdsp$o fft_type_descriptor
R 8504 5 317 fft_types tg_rdsp fft_type_descriptor
R 8506 5 319 fft_types tg_rdsp$sd fft_type_descriptor
R 8507 5 320 fft_types tg_rdsp$p fft_type_descriptor
R 8508 5 321 fft_types tg_rdsp$o fft_type_descriptor
R 8510 5 323 fft_types has_task_groups fft_type_descriptor
R 8511 5 324 fft_types use_pencil_decomposition fft_type_descriptor
R 8512 5 325 fft_types rho_clock_label fft_type_descriptor
R 8513 5 326 fft_types wave_clock_label fft_type_descriptor
R 8514 5 327 fft_types grid_id fft_type_descriptor
R 8516 5 329 fft_types aux fft_type_descriptor
R 8517 5 330 fft_types aux$sd fft_type_descriptor
R 8518 5 331 fft_types aux$p fft_type_descriptor
R 8519 5 332 fft_types aux$o fft_type_descriptor
S 8642 23 5 0 0 0 8647 624 37060 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fft_set_nl
S 8643 1 3 3 0 3327 1 8642 41253 14 3000 A 0 0 0 0 B 0 28 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft
S 8644 7 3 1 0 3336 1 8642 40941 20000014 10003000 A 0 0 0 0 B 0 28 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 at
S 8645 7 3 1 0 3333 1 8642 41333 20000014 10003000 A 0 0 0 0 B 0 28 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 g
S 8646 7 3 2 0 3339 1 8642 41335 a0000014 10003000 A 0 0 0 0 B 0 28 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 mill
S 8647 14 5 0 0 0 1 8642 37060 20000000 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 5382 4 0 0 0 0 0 0 0 0 0 0 0 0 28 0 624 0 0 0 0 fft_set_nl fft_set_nl 
F 8647 4 8643 8644 8645 8646
S 8648 6 1 0 0 7 1 8642 37660 40800016 3000 A 0 0 0 0 B 0 42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 8649 6 1 0 0 7 1 8642 37668 40800016 3000 A 0 0 0 0 B 0 42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 8650 6 1 0 0 7 1 8642 37676 40800016 3000 A 0 0 0 0 B 0 42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_4_1
S 8651 6 1 0 0 7 1 8642 37684 40800016 3000 A 0 0 0 0 B 0 42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 8652 6 1 0 0 7 1 8642 37692 40800016 3000 A 0 0 0 0 B 0 42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 8653 6 1 0 0 7 1 8642 41340 40800016 3000 A 0 0 0 0 B 0 42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2061
S 8654 6 1 0 0 7 1 8642 41349 40800016 3000 A 0 0 0 0 B 0 42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2064
S 8655 6 1 0 0 7 1 8642 37718 40800016 3000 A 0 0 0 0 B 0 43 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_8_1
S 8656 6 1 0 0 7 1 8642 37726 40800016 3000 A 0 0 0 0 B 0 43 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_9_1
S 8657 6 1 0 0 7 1 8642 41019 40800016 3000 A 0 0 0 0 B 0 43 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_11_1
S 8658 6 1 0 0 7 1 8642 41358 40800016 3000 A 0 0 0 0 B 0 43 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_12_1
S 8659 6 1 0 0 7 1 8642 41037 40800016 3000 A 0 0 0 0 B 0 43 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_13_1
S 8660 6 1 0 0 7 1 8642 41367 40800016 3000 A 0 0 0 0 B 0 43 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2074
S 8661 6 1 0 0 7 1 8642 41376 40800016 3000 A 0 0 0 0 B 0 43 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2077
S 8662 6 1 0 0 7 1 8642 41055 40800016 3000 A 0 0 0 0 B 0 44 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_15_1
S 8663 6 1 0 0 7 1 8642 41385 40800016 3000 A 0 0 0 0 B 0 44 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_16_1
S 8664 6 1 0 0 7 1 8642 41082 40800016 3000 A 0 0 0 0 B 0 44 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_18_1
S 8665 6 1 0 0 7 1 8642 41091 40800016 3000 A 0 0 0 0 B 0 44 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_19_1
S 8666 6 1 0 0 7 1 8642 41394 40800016 3000 A 0 0 0 0 B 0 44 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_20_1
S 8667 6 1 0 0 7 1 8642 41403 40800016 3000 A 0 0 0 0 B 0 44 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2087
S 8668 6 1 0 0 7 1 8642 41412 40800016 3000 A 0 0 0 0 B 0 44 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_2090
A 13 2 0 0 0 6 627 0 0 0 13 0 0 0 0 0 0 0 0 0 0 0
A 15 2 0 0 0 6 628 0 0 0 15 0 0 0 0 0 0 0 0 0 0 0
A 17 2 0 0 0 6 629 0 0 0 17 0 0 0 0 0 0 0 0 0 0 0
A 68 1 0 0 0 58 682 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 71 1 0 0 0 67 684 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 114 2 0 0 0 7 719 0 0 0 114 0 0 0 0 0 0 0 0 0 0 0
A 115 2 0 0 0 7 720 0 0 0 115 0 0 0 0 0 0 0 0 0 0 0
A 118 1 0 1 0 76 723 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 124 1 0 3 0 82 745 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 130 1 0 3 0 88 747 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 134 1 0 5 0 94 749 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 158 2 0 0 0 18 763 0 0 0 158 0 0 0 0 0 0 0 0 0 0 0
A 709 2 0 0 0 7 832 0 0 0 709 0 0 0 0 0 0 0 0 0 0 0
A 2051 2 0 0 1322 18 8186 0 0 0 2051 0 0 0 0 0 0 0 0 0 0 0
A 2052 2 0 0 0 22 8187 0 0 0 2052 0 0 0 0 0 0 0 0 0 0 0
A 2053 1 0 0 924 7 8652 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2054 1 0 0 0 7 8648 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2055 1 0 0 0 7 8653 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2056 1 0 0 0 7 8650 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2057 1 0 0 0 7 8649 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2058 1 0 0 0 7 8654 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2059 1 0 0 0 7 8651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2060 1 0 0 0 7 8659 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2061 1 0 0 0 7 8655 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2062 1 0 0 0 7 8660 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2063 1 0 0 0 7 8657 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2064 1 0 0 0 7 8656 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2065 1 0 0 0 7 8661 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2066 1 0 0 0 7 8658 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2067 1 0 0 0 7 8666 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2068 1 0 0 0 7 8662 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2069 1 0 0 0 7 8667 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2070 1 0 0 925 7 8664 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2071 1 0 0 0 7 8663 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2072 1 0 0 0 7 8668 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2073 1 0 0 0 7 8665 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
Z
J 133 1 1
V 68 58 7 0
S 0 58 0 0 0
A 0 6 0 0 1 2 0
J 134 1 1
V 71 67 7 0
S 0 67 0 0 0
A 0 6 0 0 1 2 0
J 29 1 1
V 118 76 7 0
R 0 79 0 0
A 0 6 0 0 1 3 0
J 75 1 1
V 124 82 7 0
R 0 85 0 0
A 0 6 0 0 1 3 1
A 0 6 0 0 1 15 1
A 0 6 0 0 1 13 1
A 0 6 0 0 1 17 0
J 77 1 1
V 130 88 7 0
R 0 91 0 0
A 0 6 0 0 1 3 1
A 0 6 0 0 1 15 1
A 0 6 0 0 1 13 1
A 0 6 0 0 1 17 0
J 80 1 1
V 134 94 7 0
R 0 97 0 0
A 0 6 0 0 1 13 1
A 0 6 0 0 1 17 0
T 7915 2761 0 3 0 0
A 7919 18 0 0 1 158 1
A 7920 18 0 0 1 158 1
A 7921 6 0 0 1 2 1
A 7922 6 0 0 1 3 1
A 7923 6 0 0 1 3 1
A 7937 6 0 0 1 15 1
A 7938 6 0 0 1 2 1
R 7939 2779 0 1
A 0 6 0 709 1 2 0
R 7940 2782 0 0
A 0 6 0 709 1 2 0
T 8190 2947 0 3 0 0
A 8191 6 0 0 1 2 1
A 8192 6 0 0 1 2 1
A 8193 6 0 0 1 2 1
A 8194 6 0 0 1 2 1
A 8195 6 0 0 1 2 1
A 8196 6 0 0 1 2 1
A 8197 18 0 0 1 158 1
A 8198 18 0 0 1 158 1
A 8199 6 0 0 1 2 1
A 8200 6 0 0 1 15 1
A 8201 6 0 0 1 15 1
A 8202 6 0 0 1 15 1
A 8203 6 0 0 1 3 1
A 8204 6 0 0 1 3 1
A 8205 6 0 0 1 3 1
A 8206 6 0 0 1 2 1
A 8207 6 0 0 1 2 1
A 8208 6 0 0 1 2 1
A 8228 6 0 0 1 2 1
A 8229 6 0 0 1 2 1
A 8230 6 0 0 1 2 1
A 8231 6 0 0 1 2 1
A 8435 6 0 0 1 2 1
A 8436 6 0 0 1 2 1
A 8437 6 0 0 1 2 1
A 8510 18 0 0 1 158 1
A 8511 18 0 0 1 2051 1
A 8512 22 0 0 1 2052 1
A 8513 22 0 0 1 2052 0
Z
