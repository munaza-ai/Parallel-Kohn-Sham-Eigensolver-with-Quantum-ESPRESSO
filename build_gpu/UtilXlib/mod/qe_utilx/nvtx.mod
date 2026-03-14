V34 :0x24 nvtx
16 nvtx_wrapper.f90 S624 0
03/13/2026  11:35:04
use iso_c_binding public 0 direct
use nvf_acc_common public 0 indirect
use cudafor_lib_la public 0 indirect
use cudafor_la public 0 direct
enduse
B 525 iso_c_binding c_loc
B 526 iso_c_binding c_funloc
B 527 iso_c_binding c_associated
B 528 iso_c_binding c_f_pointer
B 529 iso_c_binding c_f_procpointer
B 608 iso_c_binding c_sizeof
D 58 26 646 8 645 7
D 67 26 649 8 648 7
D 76 26 646 8 645 7
D 97 26 743 8 742 7
S 624 24 0 0 0 6 1 0 5012 10005 0 A 0 0 0 0 B 0 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 31 0 0 0 0 0 0 nvtx
R 645 25 7 iso_c_binding c_ptr
R 646 5 8 iso_c_binding val c_ptr
R 648 25 10 iso_c_binding c_funptr
R 649 5 11 iso_c_binding val c_funptr
R 683 6 45 iso_c_binding c_null_ptr$ac
R 685 6 47 iso_c_binding c_null_funptr$ac
R 686 26 48 iso_c_binding ==
R 688 26 50 iso_c_binding !=
R 742 25 6 nvf_acc_common c_devptr
R 743 5 7 nvf_acc_common cptr c_devptr
R 749 6 13 nvf_acc_common c_null_devptr$ac
R 787 26 51 nvf_acc_common =
S 14410 23 5 0 0 0 14413 624 102800 0 0 A 0 0 0 0 B 0 78 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nvtxstartrange
S 14411 1 3 0 0 30 1 14410 77902 4 43000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 name
S 14412 1 3 0 0 6 1 14410 81070 80000004 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 id
S 14413 14 5 0 0 0 1 14410 102800 0 400000 A 0 0 0 0 B 0 78 0 0 0 0 0 5155 2 0 0 0 0 0 0 0 0 0 0 0 0 78 0 624 0 0 0 0 nvtxstartrange nvtxstartrange 
F 14413 2 14411 14412
S 14414 23 5 0 0 0 14417 624 102815 0 0 A 0 0 0 0 B 0 100 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nvtxstartrangeasync
S 14415 1 3 0 0 30 1 14414 77902 4 43000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 name
S 14416 1 3 0 0 6 1 14414 81070 80000004 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 id
S 14417 14 5 0 0 0 1 14414 102815 0 400000 A 0 0 0 0 B 0 100 0 0 0 0 0 5158 2 0 0 0 0 0 0 0 0 0 0 0 0 100 0 624 0 0 0 0 nvtxstartrangeasync nvtxstartrangeasync 
F 14417 2 14415 14416
S 14418 23 5 0 0 0 14419 624 102835 0 0 A 0 0 0 0 B 0 119 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nvtxendrange
S 14419 14 5 0 0 0 1 14418 102835 0 400000 A 0 0 0 0 B 0 119 0 0 0 0 0 5161 0 0 0 0 0 0 0 0 0 0 0 0 0 119 0 624 0 0 0 0 nvtxendrange nvtxendrange 
F 14419 0
S 14420 23 5 0 0 0 14421 624 102848 0 0 A 0 0 0 0 B 0 129 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nvtxendrangeasync
S 14421 14 5 0 0 0 1 14420 102848 0 400000 A 0 0 0 0 B 0 129 0 0 0 0 0 5162 0 0 0 0 0 0 0 0 0 0 0 0 0 129 0 624 0 0 0 0 nvtxendrangeasync nvtxendrangeasync 
F 14421 0
A 68 1 0 0 0 58 683 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 71 1 0 0 0 67 685 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 141 1 0 0 0 97 749 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
Z
J 133 1 1
V 68 58 7 0
S 0 58 0 0 0
A 0 6 0 0 1 2 0
J 134 1 1
V 71 67 7 0
S 0 67 0 0 0
A 0 6 0 0 1 2 0
J 36 1 1
V 141 97 7 0
S 0 97 0 0 0
A 0 76 0 0 1 68 0
Z
