V34 :0x24 scatter_mod
15 scatter_mod.f90 S624 0
03/13/2026  11:35:20
use stick_base private
use iso_fortran_env private
use nvf_acc_common private
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
D 2206 26 686 8 685 7
D 2227 26 8482 8 8481 7
D 3542 26 14741 8680 14740 7
D 6541 23 10 1 10839 10842 1 1 0 0 1
 11 10840 11 11 10840 10841
D 6544 23 10 1 10843 10846 1 1 0 0 1
 11 10844 11 11 10844 10845
D 6547 23 14 1 10847 10850 1 1 0 0 1
 11 10848 11 11 10848 10849
D 6550 23 14 1 10851 10854 1 1 0 0 1
 11 10852 11 11 10852 10853
D 6553 23 10 1 10855 10858 1 1 0 0 1
 11 10856 11 11 10856 10857
D 6556 23 10 1 10859 10862 1 1 0 0 1
 11 10860 11 11 10860 10861
D 6559 23 14 1 10863 10866 1 1 0 0 1
 11 10864 11 11 10864 10865
D 6562 23 14 1 10867 10870 1 1 0 0 1
 11 10868 11 11 10868 10869
D 6565 23 14 1 10871 10874 1 1 0 0 1
 11 10872 11 11 10872 10873
D 6568 23 14 1 10875 10878 1 1 0 0 1
 11 10876 11 11 10876 10877
D 6571 23 6 1 11 10883 0 0 1 0 0
 0 10882 11 11 10883 10883
D 6574 23 6 1 11 10883 0 0 1 0 0
 0 10882 11 11 10883 10883
D 6577 23 14 2 10884 10892 0 0 1 0 0
 0 10887 11 11 10888 10888
 0 10890 10888 11 10891 10891
D 6580 23 14 2 10893 10912 0 0 1 0 0
 0 10902 11 11 10903 10903
 0 10910 10903 11 10911 10911
D 6583 23 6 1 11 10916 0 0 1 0 0
 0 10915 11 11 10916 10916
D 6586 23 6 1 11 10916 0 0 1 0 0
 0 10915 11 11 10916 10916
D 6589 23 14 2 10917 10932 0 0 1 0 0
 0 10923 11 11 10924 10924
 0 10930 10924 11 10931 10931
D 6592 23 14 1 11 10935 0 0 1 0 0
 0 10934 11 11 10935 10935
S 624 24 0 0 0 9 1 0 5012 10015 0 A 0 0 0 0 B 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 16 0 0 0 0 0 0 scatter_mod
S 626 23 0 0 0 9 14740 624 5034 14 0 A 0 0 0 0 B 400000 19 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fft_type_descriptor
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
S 8457 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
R 8481 25 6 nvf_acc_common c_devptr
R 8482 5 7 nvf_acc_common cptr c_devptr
R 8488 6 13 nvf_acc_common c_null_devptr$ac
R 8526 26 51 nvf_acc_common =
S 14736 3 0 0 0 18 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 18
S 14737 3 0 0 0 22 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 104519 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 1 20
R 14740 25 3 fft_types fft_type_descriptor
R 14741 5 4 fft_types nr1 fft_type_descriptor
R 14742 5 5 fft_types nr2 fft_type_descriptor
R 14743 5 6 fft_types nr3 fft_type_descriptor
R 14744 5 7 fft_types nr1x fft_type_descriptor
R 14745 5 8 fft_types nr2x fft_type_descriptor
R 14746 5 9 fft_types nr3x fft_type_descriptor
R 14747 5 10 fft_types lpara fft_type_descriptor
R 14748 5 11 fft_types lgamma fft_type_descriptor
R 14749 5 12 fft_types root fft_type_descriptor
R 14750 5 13 fft_types comm fft_type_descriptor
R 14751 5 14 fft_types comm2 fft_type_descriptor
R 14752 5 15 fft_types comm3 fft_type_descriptor
R 14753 5 16 fft_types nproc fft_type_descriptor
R 14754 5 17 fft_types nproc2 fft_type_descriptor
R 14755 5 18 fft_types nproc3 fft_type_descriptor
R 14756 5 19 fft_types mype fft_type_descriptor
R 14757 5 20 fft_types mype2 fft_type_descriptor
R 14758 5 21 fft_types mype3 fft_type_descriptor
R 14759 5 22 fft_types iproc fft_type_descriptor
R 14762 5 25 fft_types iproc$sd fft_type_descriptor
R 14763 5 26 fft_types iproc$p fft_type_descriptor
R 14764 5 27 fft_types iproc$o fft_type_descriptor
R 14766 5 29 fft_types iproc2 fft_type_descriptor
R 14768 5 31 fft_types iproc2$sd fft_type_descriptor
R 14769 5 32 fft_types iproc2$p fft_type_descriptor
R 14770 5 33 fft_types iproc2$o fft_type_descriptor
R 14772 5 35 fft_types iproc3 fft_type_descriptor
R 14774 5 37 fft_types iproc3$sd fft_type_descriptor
R 14775 5 38 fft_types iproc3$p fft_type_descriptor
R 14776 5 39 fft_types iproc3$o fft_type_descriptor
R 14778 5 41 fft_types my_nr3p fft_type_descriptor
R 14779 5 42 fft_types my_nr2p fft_type_descriptor
R 14780 5 43 fft_types my_i0r3p fft_type_descriptor
R 14781 5 44 fft_types my_i0r2p fft_type_descriptor
R 14782 5 45 fft_types nr3p fft_type_descriptor
R 14784 5 47 fft_types nr3p$sd fft_type_descriptor
R 14785 5 48 fft_types nr3p$p fft_type_descriptor
R 14786 5 49 fft_types nr3p$o fft_type_descriptor
R 14788 5 51 fft_types nr3p_offset fft_type_descriptor
R 14790 5 53 fft_types nr3p_offset$sd fft_type_descriptor
R 14791 5 54 fft_types nr3p_offset$p fft_type_descriptor
R 14792 5 55 fft_types nr3p_offset$o fft_type_descriptor
R 14794 5 57 fft_types nr2p fft_type_descriptor
R 14796 5 59 fft_types nr2p$sd fft_type_descriptor
R 14797 5 60 fft_types nr2p$p fft_type_descriptor
R 14798 5 61 fft_types nr2p$o fft_type_descriptor
R 14800 5 63 fft_types nr2p_offset fft_type_descriptor
R 14802 5 65 fft_types nr2p_offset$sd fft_type_descriptor
R 14803 5 66 fft_types nr2p_offset$p fft_type_descriptor
R 14804 5 67 fft_types nr2p_offset$o fft_type_descriptor
R 14806 5 69 fft_types nr1p fft_type_descriptor
R 14808 5 71 fft_types nr1p$sd fft_type_descriptor
R 14809 5 72 fft_types nr1p$p fft_type_descriptor
R 14810 5 73 fft_types nr1p$o fft_type_descriptor
R 14812 5 75 fft_types nr1w fft_type_descriptor
R 14814 5 77 fft_types nr1w$sd fft_type_descriptor
R 14815 5 78 fft_types nr1w$p fft_type_descriptor
R 14816 5 79 fft_types nr1w$o fft_type_descriptor
R 14818 5 81 fft_types nr1w_tg fft_type_descriptor
R 14819 5 82 fft_types i0r3p fft_type_descriptor
R 14821 5 84 fft_types i0r3p$sd fft_type_descriptor
R 14822 5 85 fft_types i0r3p$p fft_type_descriptor
R 14823 5 86 fft_types i0r3p$o fft_type_descriptor
R 14825 5 88 fft_types i0r2p fft_type_descriptor
R 14827 5 90 fft_types i0r2p$sd fft_type_descriptor
R 14828 5 91 fft_types i0r2p$p fft_type_descriptor
R 14829 5 92 fft_types i0r2p$o fft_type_descriptor
R 14831 5 94 fft_types ir1p fft_type_descriptor
R 14833 5 96 fft_types ir1p$sd fft_type_descriptor
R 14834 5 97 fft_types ir1p$p fft_type_descriptor
R 14835 5 98 fft_types ir1p$o fft_type_descriptor
R 14837 5 100 fft_types indp fft_type_descriptor
R 14840 5 103 fft_types indp$sd fft_type_descriptor
R 14841 5 104 fft_types indp$p fft_type_descriptor
R 14842 5 105 fft_types indp$o fft_type_descriptor
R 14844 5 107 fft_types ir1w fft_type_descriptor
R 14846 5 109 fft_types ir1w$sd fft_type_descriptor
R 14847 5 110 fft_types ir1w$p fft_type_descriptor
R 14848 5 111 fft_types ir1w$o fft_type_descriptor
R 14850 5 113 fft_types indw fft_type_descriptor
R 14853 5 116 fft_types indw$sd fft_type_descriptor
R 14854 5 117 fft_types indw$p fft_type_descriptor
R 14855 5 118 fft_types indw$o fft_type_descriptor
R 14857 5 120 fft_types ir1w_tg fft_type_descriptor
R 14859 5 122 fft_types ir1w_tg$sd fft_type_descriptor
R 14860 5 123 fft_types ir1w_tg$p fft_type_descriptor
R 14861 5 124 fft_types ir1w_tg$o fft_type_descriptor
R 14863 5 126 fft_types indw_tg fft_type_descriptor
R 14865 5 128 fft_types indw_tg$sd fft_type_descriptor
R 14866 5 129 fft_types indw_tg$p fft_type_descriptor
R 14867 5 130 fft_types indw_tg$o fft_type_descriptor
R 14869 5 132 fft_types ir1p_d fft_type_descriptor
R 14871 5 134 fft_types ir1p_d$sd fft_type_descriptor
R 14872 5 135 fft_types ir1p_d$p fft_type_descriptor
R 14873 5 136 fft_types ir1p_d$o fft_type_descriptor
R 14875 5 138 fft_types ir1w_d fft_type_descriptor
R 14877 5 140 fft_types ir1w_d$sd fft_type_descriptor
R 14878 5 141 fft_types ir1w_d$p fft_type_descriptor
R 14879 5 142 fft_types ir1w_d$o fft_type_descriptor
R 14881 5 144 fft_types ir1w_tg_d fft_type_descriptor
R 14883 5 146 fft_types ir1w_tg_d$sd fft_type_descriptor
R 14884 5 147 fft_types ir1w_tg_d$p fft_type_descriptor
R 14885 5 148 fft_types ir1w_tg_d$o fft_type_descriptor
R 14887 5 150 fft_types indp_d fft_type_descriptor
R 14890 5 153 fft_types indp_d$sd fft_type_descriptor
R 14891 5 154 fft_types indp_d$p fft_type_descriptor
R 14892 5 155 fft_types indp_d$o fft_type_descriptor
R 14894 5 157 fft_types indw_d fft_type_descriptor
R 14897 5 160 fft_types indw_d$sd fft_type_descriptor
R 14898 5 161 fft_types indw_d$p fft_type_descriptor
R 14899 5 162 fft_types indw_d$o fft_type_descriptor
R 14901 5 164 fft_types indw_tg_d fft_type_descriptor
R 14904 5 167 fft_types indw_tg_d$sd fft_type_descriptor
R 14905 5 168 fft_types indw_tg_d$p fft_type_descriptor
R 14906 5 169 fft_types indw_tg_d$o fft_type_descriptor
R 14908 5 171 fft_types nr1p_d fft_type_descriptor
R 14910 5 173 fft_types nr1p_d$sd fft_type_descriptor
R 14911 5 174 fft_types nr1p_d$p fft_type_descriptor
R 14912 5 175 fft_types nr1p_d$o fft_type_descriptor
R 14914 5 177 fft_types nr1w_d fft_type_descriptor
R 14916 5 179 fft_types nr1w_d$sd fft_type_descriptor
R 14917 5 180 fft_types nr1w_d$p fft_type_descriptor
R 14918 5 181 fft_types nr1w_d$o fft_type_descriptor
R 14920 5 183 fft_types nr1w_tg_d fft_type_descriptor
R 14922 5 185 fft_types nr1w_tg_d$sd fft_type_descriptor
R 14923 5 186 fft_types nr1w_tg_d$p fft_type_descriptor
R 14924 5 187 fft_types nr1w_tg_d$o fft_type_descriptor
R 14926 5 189 fft_types nst fft_type_descriptor
R 14927 5 190 fft_types nsp fft_type_descriptor
R 14929 5 192 fft_types nsp$sd fft_type_descriptor
R 14930 5 193 fft_types nsp$p fft_type_descriptor
R 14931 5 194 fft_types nsp$o fft_type_descriptor
R 14933 5 196 fft_types nsp_offset fft_type_descriptor
R 14936 5 199 fft_types nsp_offset$sd fft_type_descriptor
R 14937 5 200 fft_types nsp_offset$p fft_type_descriptor
R 14938 5 201 fft_types nsp_offset$o fft_type_descriptor
R 14940 5 203 fft_types nsw fft_type_descriptor
R 14942 5 205 fft_types nsw$sd fft_type_descriptor
R 14943 5 206 fft_types nsw$p fft_type_descriptor
R 14944 5 207 fft_types nsw$o fft_type_descriptor
R 14946 5 209 fft_types nsw_offset fft_type_descriptor
R 14949 5 212 fft_types nsw_offset$sd fft_type_descriptor
R 14950 5 213 fft_types nsw_offset$p fft_type_descriptor
R 14951 5 214 fft_types nsw_offset$o fft_type_descriptor
R 14953 5 216 fft_types nsw_tg fft_type_descriptor
R 14955 5 218 fft_types nsw_tg$sd fft_type_descriptor
R 14956 5 219 fft_types nsw_tg$p fft_type_descriptor
R 14957 5 220 fft_types nsw_tg$o fft_type_descriptor
R 14959 5 222 fft_types ngl fft_type_descriptor
R 14961 5 224 fft_types ngl$sd fft_type_descriptor
R 14962 5 225 fft_types ngl$p fft_type_descriptor
R 14963 5 226 fft_types ngl$o fft_type_descriptor
R 14965 5 228 fft_types nwl fft_type_descriptor
R 14967 5 230 fft_types nwl$sd fft_type_descriptor
R 14968 5 231 fft_types nwl$p fft_type_descriptor
R 14969 5 232 fft_types nwl$o fft_type_descriptor
R 14971 5 234 fft_types ngm fft_type_descriptor
R 14972 5 235 fft_types ngw fft_type_descriptor
R 14973 5 236 fft_types iplp fft_type_descriptor
R 14975 5 238 fft_types iplp$sd fft_type_descriptor
R 14976 5 239 fft_types iplp$p fft_type_descriptor
R 14977 5 240 fft_types iplp$o fft_type_descriptor
R 14979 5 242 fft_types iplw fft_type_descriptor
R 14981 5 244 fft_types iplw$sd fft_type_descriptor
R 14982 5 245 fft_types iplw$p fft_type_descriptor
R 14983 5 246 fft_types iplw$o fft_type_descriptor
R 14985 5 248 fft_types nnp fft_type_descriptor
R 14986 5 249 fft_types nnr fft_type_descriptor
R 14987 5 250 fft_types nnr_tg fft_type_descriptor
R 14988 5 251 fft_types iss fft_type_descriptor
R 14990 5 253 fft_types iss$sd fft_type_descriptor
R 14991 5 254 fft_types iss$p fft_type_descriptor
R 14992 5 255 fft_types iss$o fft_type_descriptor
R 14994 5 257 fft_types isind fft_type_descriptor
R 14996 5 259 fft_types isind$sd fft_type_descriptor
R 14997 5 260 fft_types isind$p fft_type_descriptor
R 14998 5 261 fft_types isind$o fft_type_descriptor
R 15000 5 263 fft_types ismap fft_type_descriptor
R 15002 5 265 fft_types ismap$sd fft_type_descriptor
R 15003 5 266 fft_types ismap$p fft_type_descriptor
R 15004 5 267 fft_types ismap$o fft_type_descriptor
R 15006 5 269 fft_types ismap_d fft_type_descriptor
R 15008 5 271 fft_types ismap_d$sd fft_type_descriptor
R 15009 5 272 fft_types ismap_d$p fft_type_descriptor
R 15010 5 273 fft_types ismap_d$o fft_type_descriptor
R 15012 5 275 fft_types nl fft_type_descriptor
R 15014 5 277 fft_types nl$sd fft_type_descriptor
R 15015 5 278 fft_types nl$p fft_type_descriptor
R 15016 5 279 fft_types nl$o fft_type_descriptor
R 15018 5 281 fft_types nlm fft_type_descriptor
R 15020 5 283 fft_types nlm$sd fft_type_descriptor
R 15021 5 284 fft_types nlm$p fft_type_descriptor
R 15022 5 285 fft_types nlm$o fft_type_descriptor
R 15024 5 287 fft_types nl_d fft_type_descriptor
R 15026 5 289 fft_types nl_d$sd fft_type_descriptor
R 15027 5 290 fft_types nl_d$p fft_type_descriptor
R 15028 5 291 fft_types nl_d$o fft_type_descriptor
R 15030 5 293 fft_types nlm_d fft_type_descriptor
R 15032 5 295 fft_types nlm_d$sd fft_type_descriptor
R 15033 5 296 fft_types nlm_d$p fft_type_descriptor
R 15034 5 297 fft_types nlm_d$o fft_type_descriptor
R 15036 5 299 fft_types tg_snd fft_type_descriptor
R 15038 5 301 fft_types tg_snd$sd fft_type_descriptor
R 15039 5 302 fft_types tg_snd$p fft_type_descriptor
R 15040 5 303 fft_types tg_snd$o fft_type_descriptor
R 15042 5 305 fft_types tg_rcv fft_type_descriptor
R 15044 5 307 fft_types tg_rcv$sd fft_type_descriptor
R 15045 5 308 fft_types tg_rcv$p fft_type_descriptor
R 15046 5 309 fft_types tg_rcv$o fft_type_descriptor
R 15048 5 311 fft_types tg_sdsp fft_type_descriptor
R 15050 5 313 fft_types tg_sdsp$sd fft_type_descriptor
R 15051 5 314 fft_types tg_sdsp$p fft_type_descriptor
R 15052 5 315 fft_types tg_sdsp$o fft_type_descriptor
R 15054 5 317 fft_types tg_rdsp fft_type_descriptor
R 15056 5 319 fft_types tg_rdsp$sd fft_type_descriptor
R 15057 5 320 fft_types tg_rdsp$p fft_type_descriptor
R 15058 5 321 fft_types tg_rdsp$o fft_type_descriptor
R 15060 5 323 fft_types has_task_groups fft_type_descriptor
R 15061 5 324 fft_types use_pencil_decomposition fft_type_descriptor
R 15062 5 325 fft_types rho_clock_label fft_type_descriptor
R 15063 5 326 fft_types wave_clock_label fft_type_descriptor
R 15064 5 327 fft_types grid_id fft_type_descriptor
R 15066 5 329 fft_types stream_scatter_yz fft_type_descriptor
R 15067 5 330 fft_types stream_scatter_yz$sd fft_type_descriptor
R 15068 5 331 fft_types stream_scatter_yz$p fft_type_descriptor
R 15069 5 332 fft_types stream_scatter_yz$o fft_type_descriptor
R 15072 5 335 fft_types stream_many fft_type_descriptor
R 15073 5 336 fft_types stream_many$sd fft_type_descriptor
R 15074 5 337 fft_types stream_many$p fft_type_descriptor
R 15075 5 338 fft_types stream_many$o fft_type_descriptor
R 15077 5 340 fft_types a2a_comp fft_type_descriptor
R 15079 5 342 fft_types bstreams fft_type_descriptor
R 15080 5 343 fft_types bstreams$sd fft_type_descriptor
R 15081 5 344 fft_types bstreams$p fft_type_descriptor
R 15082 5 345 fft_types bstreams$o fft_type_descriptor
R 15085 5 348 fft_types bevents fft_type_descriptor
R 15086 5 349 fft_types bevents$sd fft_type_descriptor
R 15087 5 350 fft_types bevents$p fft_type_descriptor
R 15088 5 351 fft_types bevents$o fft_type_descriptor
R 15090 5 353 fft_types batchsize fft_type_descriptor
R 15091 5 354 fft_types subbatchsize fft_type_descriptor
R 15092 5 355 fft_types nstream_many fft_type_descriptor
R 15093 5 356 fft_types srh fft_type_descriptor
R 15096 5 359 fft_types srh$sd fft_type_descriptor
R 15097 5 360 fft_types srh$p fft_type_descriptor
R 15098 5 361 fft_types srh$o fft_type_descriptor
R 15101 5 364 fft_types aux fft_type_descriptor
R 15102 5 365 fft_types aux$sd fft_type_descriptor
R 15103 5 366 fft_types aux$p fft_type_descriptor
R 15104 5 367 fft_types aux$o fft_type_descriptor
S 22283 19 0 0 0 9 1 624 134742 4000 0 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1842 2 0 0 0 0 0 624 0 0 0 0 gather_grid
O 22283 2 22285 22284
S 22284 27 0 0 0 9 22292 624 134754 10 400000 A 0 0 0 0 B 0 25 0 0 0 0 1847 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 gather_real_grid
Q 22284 22283 0
S 22285 27 0 0 0 9 22305 624 134771 10 400000 A 0 0 0 0 B 0 25 0 0 0 0 1848 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 gather_complex_grid
Q 22285 22283 0
S 22286 19 0 0 0 9 1 624 134791 4000 0 A 0 0 0 0 B 0 28 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1846 2 0 0 0 0 0 624 0 0 0 0 scatter_grid
O 22286 2 22288 22287
S 22287 27 0 0 0 9 22318 624 134804 10 400000 A 0 0 0 0 B 0 29 0 0 0 0 1849 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 scatter_real_grid
Q 22287 22286 0
S 22288 27 0 0 0 9 22331 624 134822 10 400000 A 0 0 0 0 B 0 29 0 0 0 0 1850 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 scatter_complex_grid
Q 22288 22286 0
S 22289 27 0 0 0 9 22344 624 134843 0 8000000 A 0 0 0 0 B 0 37 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 cgather_sym
S 22290 27 0 0 0 9 22357 624 134855 0 8000000 A 0 0 0 0 B 0 37 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 cgather_sym_many
S 22291 27 0 0 0 9 22374 624 134872 0 8000000 A 0 0 0 0 B 0 37 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 cscatter_sym_many
S 22292 23 5 0 0 0 22296 624 134754 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 gather_real_grid
S 22293 6 3 1 0 3542 1 22292 107832 800014 3000 A 0 0 0 0 B 0 45 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft
S 22294 7 3 1 0 6541 1 22292 134890 20000014 10003000 A 0 0 0 0 B 0 45 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_in
S 22295 7 3 3 0 6544 1 22292 134895 20000014 10003000 A 0 0 0 0 B 0 45 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_out
S 22296 14 5 0 0 0 1 22292 134754 20000010 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10523 3 0 0 0 0 0 0 0 0 0 0 0 0 45 0 624 0 0 0 0 gather_real_grid gather_real_grid 
F 22296 3 22293 22294 22295
S 22297 6 1 0 0 7 1 22292 6767 40800016 3000 A 0 0 0 0 B 0 56 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 22298 6 1 0 0 7 1 22292 6775 40800016 3000 A 0 0 0 0 B 0 56 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22299 6 1 0 0 7 1 22292 6865 40800016 3000 A 0 0 0 0 B 0 56 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 22300 6 1 0 0 7 1 22292 134901 40800016 3000 A 0 0 0 0 B 0 56 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10844
S 22301 6 1 0 0 7 1 22292 6791 40800016 3000 A 0 0 0 0 B 0 57 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22302 6 1 0 0 7 1 22292 6799 40800016 3000 A 0 0 0 0 B 0 57 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22303 6 1 0 0 7 1 22292 6882 40800016 3000 A 0 0 0 0 B 0 57 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_7_1
S 22304 6 1 0 0 7 1 22292 134911 40800016 3000 A 0 0 0 0 B 0 57 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10851
S 22305 23 5 0 0 0 22309 624 134771 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 gather_complex_grid
S 22306 6 3 1 0 3542 1 22305 107832 800014 3000 A 0 0 0 0 B 0 127 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft
S 22307 7 3 1 0 6547 1 22305 134890 20000014 10003000 A 0 0 0 0 B 0 127 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_in
S 22308 7 3 3 0 6550 1 22305 134895 20000014 10003000 A 0 0 0 0 B 0 127 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_out
S 22309 14 5 0 0 0 1 22305 134771 20000010 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10527 3 0 0 0 0 0 0 0 0 0 0 0 0 127 0 624 0 0 0 0 gather_complex_grid gather_complex_grid 
F 22309 3 22306 22307 22308
S 22310 6 1 0 0 7 1 22305 6767 40800016 3000 A 0 0 0 0 B 0 138 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 22311 6 1 0 0 7 1 22305 6775 40800016 3000 A 0 0 0 0 B 0 138 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22312 6 1 0 0 7 1 22305 6865 40800016 3000 A 0 0 0 0 B 0 138 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 22313 6 1 0 0 7 1 22305 134921 40800016 3000 A 0 0 0 0 B 0 138 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10852
S 22314 6 1 0 0 7 1 22305 6791 40800016 3000 A 0 0 0 0 B 0 139 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22315 6 1 0 0 7 1 22305 6799 40800016 3000 A 0 0 0 0 B 0 139 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22316 6 1 0 0 7 1 22305 6882 40800016 3000 A 0 0 0 0 B 0 139 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_7_1
S 22317 6 1 0 0 7 1 22305 134931 40800016 3000 A 0 0 0 0 B 0 139 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10859
S 22318 23 5 0 0 0 22322 624 134804 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 scatter_real_grid
S 22319 6 3 1 0 3542 1 22318 107832 800014 3000 A 0 0 0 0 B 0 212 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft
S 22320 7 3 1 0 6553 1 22318 134890 20000014 10003000 A 0 0 0 0 B 0 212 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_in
S 22321 7 3 3 0 6556 1 22318 134895 20000014 10003000 A 0 0 0 0 B 0 212 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_out
S 22322 14 5 0 0 0 1 22318 134804 20000010 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10531 3 0 0 0 0 0 0 0 0 0 0 0 0 212 0 624 0 0 0 0 scatter_real_grid scatter_real_grid 
F 22322 3 22319 22320 22321
S 22323 6 1 0 0 7 1 22318 6767 40800016 3000 A 0 0 0 0 B 0 223 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 22324 6 1 0 0 7 1 22318 6775 40800016 3000 A 0 0 0 0 B 0 223 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22325 6 1 0 0 7 1 22318 6865 40800016 3000 A 0 0 0 0 B 0 223 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 22326 6 1 0 0 7 1 22318 134941 40800016 3000 A 0 0 0 0 B 0 223 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10860
S 22327 6 1 0 0 7 1 22318 6791 40800016 3000 A 0 0 0 0 B 0 224 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22328 6 1 0 0 7 1 22318 6799 40800016 3000 A 0 0 0 0 B 0 224 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22329 6 1 0 0 7 1 22318 6882 40800016 3000 A 0 0 0 0 B 0 224 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_7_1
S 22330 6 1 0 0 7 1 22318 134951 40800016 3000 A 0 0 0 0 B 0 224 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10867
S 22331 23 5 0 0 0 22335 624 134822 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 scatter_complex_grid
S 22332 6 3 1 0 3542 1 22331 107832 800014 3000 A 0 0 0 0 B 0 289 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft
S 22333 7 3 1 0 6559 1 22331 134890 20000014 10003000 A 0 0 0 0 B 0 289 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_in
S 22334 7 3 3 0 6562 1 22331 134895 20000014 10003000 A 0 0 0 0 B 0 289 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_out
S 22335 14 5 0 0 0 1 22331 134822 20000010 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10535 3 0 0 0 0 0 0 0 0 0 0 0 0 289 0 624 0 0 0 0 scatter_complex_grid scatter_complex_grid 
F 22335 3 22332 22333 22334
S 22336 6 1 0 0 7 1 22331 6767 40800016 3000 A 0 0 0 0 B 0 300 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 22337 6 1 0 0 7 1 22331 6775 40800016 3000 A 0 0 0 0 B 0 300 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22338 6 1 0 0 7 1 22331 6865 40800016 3000 A 0 0 0 0 B 0 300 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 22339 6 1 0 0 7 1 22331 134961 40800016 3000 A 0 0 0 0 B 0 300 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10868
S 22340 6 1 0 0 7 1 22331 6791 40800016 3000 A 0 0 0 0 B 0 301 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22341 6 1 0 0 7 1 22331 6799 40800016 3000 A 0 0 0 0 B 0 301 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22342 6 1 0 0 7 1 22331 6882 40800016 3000 A 0 0 0 0 B 0 301 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_7_1
S 22343 6 1 0 0 7 1 22331 134971 40800016 3000 A 0 0 0 0 B 0 301 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10875
S 22344 23 5 0 0 0 22348 624 134843 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 cgather_sym
S 22345 6 3 1 0 3542 1 22344 134981 800014 3000 A 0 0 0 0 B 0 377 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfftp
S 22346 7 3 0 0 6565 1 22344 134890 20000014 10003000 A 0 0 0 0 B 0 377 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_in
S 22347 7 3 0 0 6568 1 22344 134895 20000014 10003000 A 0 0 0 0 B 0 377 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_out
S 22348 14 5 0 0 0 1 22344 134843 20000000 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10539 3 0 0 0 0 0 0 0 0 0 0 0 0 377 0 624 0 0 0 0 cgather_sym cgather_sym 
F 22348 3 22345 22346 22347
S 22349 6 1 0 0 7 1 22344 6767 40800016 3000 A 0 0 0 0 B 0 389 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 22350 6 1 0 0 7 1 22344 6775 40800016 3000 A 0 0 0 0 B 0 389 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22351 6 1 0 0 7 1 22344 6865 40800016 3000 A 0 0 0 0 B 0 389 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 22352 6 1 0 0 7 1 22344 134987 40800016 3000 A 0 0 0 0 B 0 389 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10876
S 22353 6 1 0 0 7 1 22344 6791 40800016 3000 A 0 0 0 0 B 0 389 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22354 6 1 0 0 7 1 22344 6799 40800016 3000 A 0 0 0 0 B 0 389 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22355 6 1 0 0 7 1 22344 6882 40800016 3000 A 0 0 0 0 B 0 389 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_7_1
S 22356 6 1 0 0 7 1 22344 134997 40800016 3000 A 0 0 0 0 B 0 389 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10883
S 22357 23 5 0 0 0 22364 624 134855 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 cgather_sym_many
S 22358 6 3 1 0 3542 1 22357 134981 800014 3000 A 0 0 0 0 B 0 450 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfftp
S 22359 7 3 0 0 6577 1 22357 134890 800214 3000 A 0 0 0 0 B 0 450 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_in
S 22360 7 3 0 0 6580 1 22357 134895 800214 3000 A 0 0 0 0 B 0 450 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_out
S 22361 6 3 0 0 6 1 22357 135007 800014 3000 A 0 0 0 0 B 0 450 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nbnd
S 22362 7 3 0 0 6571 1 22357 135012 800214 3000 A 0 0 0 0 B 0 450 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nbnd_proc
S 22363 7 3 0 0 6574 1 22357 135022 800214 3000 A 0 0 0 0 B 0 450 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 start_nbnd_proc
S 22364 14 5 0 0 0 1 22357 134855 200 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10543 6 0 0 0 0 0 0 0 0 0 0 0 0 450 0 624 0 0 0 0 cgather_sym_many cgather_sym_many 
F 22364 6 22358 22359 22360 22361 22362 22363
S 22365 6 1 0 0 7 1 22357 135038 40800016 3000 A 0 0 0 0 B 0 466 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10882
S 22366 6 1 0 0 7 1 22357 135048 40800016 3000 A 0 0 0 0 B 0 467 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10886
S 22367 6 1 0 0 7 1 22357 135058 40800016 3000 A 0 0 0 0 B 0 467 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10888
S 22368 6 1 0 0 7 1 22357 135068 40800016 3000 A 0 0 0 0 B 0 467 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10891
S 22369 6 1 0 0 7 1 22357 135078 40800016 3000 A 0 0 0 0 B 0 467 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10893
S 22370 6 1 0 0 7 1 22357 135088 40800016 3000 A 0 0 0 0 B 0 468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10903
S 22371 6 1 0 0 7 1 22357 50571 40800016 3000 A 0 0 0 0 B 0 468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10910
S 22372 6 1 0 0 7 1 22357 50581 40800016 3000 A 0 0 0 0 B 0 468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10913
S 22373 6 1 0 0 7 1 22357 135098 40800016 3000 A 0 0 0 0 B 0 468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10915
S 22374 23 5 0 0 0 22382 624 134872 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 cscatter_sym_many
S 22375 6 3 1 0 3542 1 22374 134981 800014 3000 A 0 0 0 0 B 0 584 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfftp
S 22376 7 3 0 0 6589 1 22374 134890 800214 3000 A 0 0 0 0 B 0 584 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_in
S 22377 7 3 0 0 6592 1 22374 134895 800214 3000 A 0 0 0 0 B 0 584 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_out
S 22378 1 3 0 0 6 1 22374 135108 14 3000 A 0 0 0 0 B 0 584 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 target_ibnd
S 22379 1 3 0 0 6 1 22374 135007 14 3000 A 0 0 0 0 B 0 584 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nbnd
S 22380 7 3 0 0 6583 1 22374 135012 800214 3000 A 0 0 0 0 B 0 584 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nbnd_proc
S 22381 7 3 0 0 6586 1 22374 135022 800214 3000 A 0 0 0 0 B 0 584 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 start_nbnd_proc
S 22382 14 5 0 0 0 1 22374 134872 200 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10550 7 0 0 0 0 0 0 0 0 0 0 0 0 584 0 624 0 0 0 0 cscatter_sym_many cscatter_sym_many 
F 22382 7 22375 22376 22377 22378 22379 22380 22381
S 22383 6 1 0 0 7 1 22374 135098 40800016 3000 A 0 0 0 0 B 0 603 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10915
S 22384 6 1 0 0 7 1 22374 135120 40800016 3000 A 0 0 0 0 B 0 604 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10922
S 22385 6 1 0 0 7 1 22374 135130 40800016 3000 A 0 0 0 0 B 0 604 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10928
S 22386 6 1 0 0 7 1 22374 135140 40800016 3000 A 0 0 0 0 B 0 604 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10931
S 22387 6 1 0 0 7 1 22374 135150 40800016 3000 A 0 0 0 0 B 0 604 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10933
S 22388 6 1 0 0 7 1 22374 135160 40800016 3000 A 0 0 0 0 B 0 605 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10936
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
A 7701 2 0 0 7576 6 8457 0 0 0 7701 0 0 0 0 0 0 0 0 0 0 0
A 7753 1 0 0 28 2227 8488 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 9726 2 0 0 511 18 14736 0 0 0 9726 0 0 0 0 0 0 0 0 0 0 0
A 9727 2 0 0 513 22 14737 0 0 0 9727 0 0 0 0 0 0 0 0 0 0 0
A 10839 1 0 0 8201 7 22299 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10840 1 0 0 8197 7 22297 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10841 1 0 0 8203 7 22300 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10842 1 0 0 8199 7 22298 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10843 1 0 0 8209 7 22303 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10844 1 0 0 8205 7 22301 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10845 1 0 0 8211 7 22304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10846 1 0 0 8207 7 22302 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10847 1 0 0 8219 7 22312 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10848 1 0 0 8217 7 22310 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10849 1 0 0 8220 7 22313 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10850 1 0 0 8218 7 22311 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10851 1 0 0 8223 7 22316 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10852 1 0 0 8534 7 22314 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10853 1 0 0 8224 7 22317 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10854 1 0 0 8222 7 22315 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10855 1 0 0 8232 7 22325 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10856 1 0 0 8230 7 22323 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10857 1 0 0 8233 7 22326 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10858 1 0 0 8231 7 22324 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10859 1 0 0 8236 7 22329 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10860 1 0 0 8234 7 22327 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10861 1 0 0 8237 7 22330 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10862 1 0 0 8371 7 22328 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10863 1 0 0 8245 7 22338 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10864 1 0 0 8243 7 22336 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10865 1 0 0 8246 7 22339 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10866 1 0 0 8244 7 22337 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10867 1 0 0 8249 7 22342 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10868 1 0 0 8247 7 22340 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10869 1 0 0 8250 7 22343 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10870 1 0 0 8248 7 22341 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10871 1 0 0 8258 7 22351 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10872 1 0 0 8256 7 22349 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10873 1 0 0 8259 7 22352 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10874 1 0 0 8257 7 22350 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10875 1 0 0 8262 7 22355 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10876 1 0 0 8260 7 22353 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10877 1 0 0 8263 7 22356 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10878 1 0 0 8261 7 22354 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10879 1 0 0 5698 3542 22358 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10880 1 0 0 8687 6 14753 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10881 9 0 0 9727 6 10879 10880 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10882 7 0 0 10455 7 10881 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10883 1 0 0 8272 7 22365 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10884 1 0 0 4293 7 22369 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10885 1 0 0 10538 6 14986 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10886 9 0 0 10881 6 10879 10885 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10887 7 0 0 9142 7 10886 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10888 1 0 0 8273 7 22366 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10889 1 0 0 8268 6 22361 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10890 7 0 0 5154 7 10889 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10891 1 0 0 8274 7 22367 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10892 1 0 0 8275 7 22368 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10893 1 0 0 4298 7 22373 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10894 1 0 0 0 6 14744 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10895 9 0 0 10886 6 10879 10894 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10896 1 0 0 8498 6 14745 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10897 9 0 0 10895 6 10879 10896 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10898 4 0 0 2093 6 10895 0 10897 0 0 0 0 3 0 0 0 0 0 0 0 0
A 10899 1 0 0 8686 6 14746 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10900 9 0 0 10897 6 10879 10899 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10901 4 0 0 5133 6 10898 0 10900 0 0 0 0 3 0 0 0 0 0 0 0 0
A 10902 7 0 0 5151 7 10901 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10903 1 0 0 4296 7 22370 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10904 1 0 37 0 6571 22362 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10905 1 0 0 8688 6 14756 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10906 9 0 0 10900 6 10879 10905 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10907 4 0 0 10482 6 10906 0 3 0 0 0 0 1 0 0 0 0 0 0 0 0
A 10908 7 0 0 5168 7 10907 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10909 10 0 0 4679 6 10904 67 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 10908
A 10910 7 0 0 477 7 10909 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10911 1 0 0 4295 7 22371 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10912 1 0 0 6163 7 22372 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10913 1 0 0 5713 3542 22375 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10914 9 0 0 5255 6 10913 10880 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10915 7 0 0 10462 7 10914 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10916 1 0 0 4308 7 22383 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10917 1 0 0 4307 7 22387 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10918 9 0 0 10914 6 10913 10894 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10919 9 0 0 10918 6 10913 10896 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10920 4 0 0 10545 6 10918 0 10919 0 0 0 0 3 0 0 0 0 0 0 0 0
A 10921 9 0 0 10919 6 10913 10899 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10922 4 0 0 7408 6 10920 0 10921 0 0 0 0 3 0 0 0 0 0 0 0 0
A 10923 7 0 0 9178 7 10922 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10924 1 0 0 4311 7 22384 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10925 1 0 39 3521 6583 22380 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10926 9 0 0 10921 6 10913 10905 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10927 4 0 0 8879 6 10926 0 3 0 0 0 0 1 0 0 0 0 0 0 0 0
A 10928 7 0 0 10466 7 10927 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10929 10 0 0 105 6 10925 70 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 10928
A 10930 7 0 0 505 7 10929 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10931 1 0 0 9030 7 22385 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10932 1 0 0 4304 7 22386 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10933 9 0 0 10926 6 10913 10885 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10934 7 0 0 5217 7 10933 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10935 1 0 0 4310 7 22388 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
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
J 36 1 1
V 7753 2227 7 0
S 0 2227 0 0 0
A 0 2206 0 0 1 131 0
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
T 14740 3542 0 3 0 0
A 14741 6 0 0 1 2 1
A 14742 6 0 0 1 2 1
A 14743 6 0 0 1 2 1
A 14744 6 0 0 1 2 1
A 14745 6 0 0 1 2 1
A 14746 6 0 0 1 2 1
A 14747 18 0 0 1 397 1
A 14748 18 0 0 1 397 1
A 14749 6 0 0 1 2 1
A 14750 6 0 0 1 33 1
A 14751 6 0 0 1 33 1
A 14752 6 0 0 1 33 1
A 14753 6 0 0 1 3 1
A 14754 6 0 0 1 3 1
A 14755 6 0 0 1 3 1
A 14756 6 0 0 1 2 1
A 14757 6 0 0 1 2 1
A 14758 6 0 0 1 2 1
A 14778 6 0 0 1 2 1
A 14779 6 0 0 1 2 1
A 14780 6 0 0 1 2 1
A 14781 6 0 0 1 2 1
A 14985 6 0 0 1 2 1
A 14986 6 0 0 1 2 1
A 14987 6 0 0 1 2 1
A 15060 18 0 0 1 397 1
A 15061 18 0 0 1 9726 1
A 15062 22 0 0 1 9727 1
A 15063 22 0 0 1 9727 1
A 15090 6 0 0 1 7701 1
A 15091 6 0 0 1 35 1
A 15092 6 0 0 1 7701 0
Z
