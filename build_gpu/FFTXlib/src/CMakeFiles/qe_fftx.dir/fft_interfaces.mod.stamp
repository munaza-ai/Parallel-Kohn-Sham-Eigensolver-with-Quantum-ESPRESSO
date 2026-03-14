V34 :0x24 fft_interfaces
18 fft_interfaces.f90 S624 0
03/13/2026  11:35:20
use stick_base private
use iso_fortran_env private
use nvf_acc_common private
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
D 2206 26 695 8 694 7
D 2227 26 8491 8 8490 7
D 3542 26 14750 8680 14749 7
D 6541 23 14 1 10842 10841 1 1 0 0 1
 11 10840 11 11 10840 10845
D 6610 26 22307 1160 22306 7
D 6664 23 14 1 10917 10916 1 1 0 0 1
 11 10915 11 11 10915 10920
D 6667 23 14 1 10924 10923 1 1 0 0 1
 11 10922 11 11 10922 10927
D 6670 23 14 1 10931 10930 1 1 0 0 1
 11 10929 11 11 10929 10934
D 6673 23 14 1 10938 10937 1 1 0 0 1
 11 10936 11 11 10936 10941
D 6676 23 10 1 10945 10944 1 1 0 0 1
 11 10943 11 11 10943 10948
D 6679 23 10 1 10952 10951 1 1 0 0 1
 11 10950 11 11 10950 10955
D 6682 23 14 1 10959 10958 1 1 0 0 1
 11 10957 11 11 10957 10962
D 6685 23 14 1 10966 10965 1 1 0 0 1
 11 10964 11 11 10964 10969
S 624 24 0 0 0 9 1 0 5012 10015 0 A 0 0 0 0 B 0 10 0 0 0 0 0 0 0 0 0 0 105 0 0 0 0 0 0 0 0 10 0 0 0 0 0 0 fft_interfaces
S 625 19 0 0 0 9 1 624 5027 4000 0 A 0 0 0 0 B 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1852 2 0 0 0 0 0 624 0 0 0 0 fwfft
O 625 2 22421 22409
S 626 19 0 0 0 6 1 624 5033 4000 0 A 0 0 0 0 B 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1846 3 0 0 0 0 0 624 0 0 0 0 invfft
O 626 3 22395 22298 628
S 627 19 0 0 0 9 1 624 5040 4000 0 A 0 0 0 0 B 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1858 2 0 0 0 0 0 624 0 0 0 0 fft_interpolate
O 627 2 22451 22434
S 628 14 5 0 0 0 1 624 5056 10 0 A 1000000 0 0 0 B 0 24 0 0 0 0 0 1 4 0 0 0 0 0 0 0 0 0 0 0 0 24 0 624 0 0 0 0 invfft_y invfft_y 
F 628 4 629 630 631 632
S 629 1 3 1 0 30 1 628 5065 2014 42000 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fft_kind
S 630 7 3 0 0 6541 1 628 5074 20002014 10002000 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f
S 631 1 3 1 0 3542 1 628 5076 2014 2000 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft
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
S 8466 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
R 8490 25 6 nvf_acc_common c_devptr
R 8491 5 7 nvf_acc_common cptr c_devptr
R 8497 6 13 nvf_acc_common c_null_devptr$ac
R 8535 26 51 nvf_acc_common =
S 14745 3 0 0 0 18 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 18
S 14746 3 0 0 0 22 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 104585 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 1 20
R 14749 25 3 fft_types fft_type_descriptor
R 14750 5 4 fft_types nr1 fft_type_descriptor
R 14751 5 5 fft_types nr2 fft_type_descriptor
R 14752 5 6 fft_types nr3 fft_type_descriptor
R 14753 5 7 fft_types nr1x fft_type_descriptor
R 14754 5 8 fft_types nr2x fft_type_descriptor
R 14755 5 9 fft_types nr3x fft_type_descriptor
R 14756 5 10 fft_types lpara fft_type_descriptor
R 14757 5 11 fft_types lgamma fft_type_descriptor
R 14758 5 12 fft_types root fft_type_descriptor
R 14759 5 13 fft_types comm fft_type_descriptor
R 14760 5 14 fft_types comm2 fft_type_descriptor
R 14761 5 15 fft_types comm3 fft_type_descriptor
R 14762 5 16 fft_types nproc fft_type_descriptor
R 14763 5 17 fft_types nproc2 fft_type_descriptor
R 14764 5 18 fft_types nproc3 fft_type_descriptor
R 14765 5 19 fft_types mype fft_type_descriptor
R 14766 5 20 fft_types mype2 fft_type_descriptor
R 14767 5 21 fft_types mype3 fft_type_descriptor
R 14768 5 22 fft_types iproc fft_type_descriptor
R 14771 5 25 fft_types iproc$sd fft_type_descriptor
R 14772 5 26 fft_types iproc$p fft_type_descriptor
R 14773 5 27 fft_types iproc$o fft_type_descriptor
R 14775 5 29 fft_types iproc2 fft_type_descriptor
R 14777 5 31 fft_types iproc2$sd fft_type_descriptor
R 14778 5 32 fft_types iproc2$p fft_type_descriptor
R 14779 5 33 fft_types iproc2$o fft_type_descriptor
R 14781 5 35 fft_types iproc3 fft_type_descriptor
R 14783 5 37 fft_types iproc3$sd fft_type_descriptor
R 14784 5 38 fft_types iproc3$p fft_type_descriptor
R 14785 5 39 fft_types iproc3$o fft_type_descriptor
R 14787 5 41 fft_types my_nr3p fft_type_descriptor
R 14788 5 42 fft_types my_nr2p fft_type_descriptor
R 14789 5 43 fft_types my_i0r3p fft_type_descriptor
R 14790 5 44 fft_types my_i0r2p fft_type_descriptor
R 14791 5 45 fft_types nr3p fft_type_descriptor
R 14793 5 47 fft_types nr3p$sd fft_type_descriptor
R 14794 5 48 fft_types nr3p$p fft_type_descriptor
R 14795 5 49 fft_types nr3p$o fft_type_descriptor
R 14797 5 51 fft_types nr3p_offset fft_type_descriptor
R 14799 5 53 fft_types nr3p_offset$sd fft_type_descriptor
R 14800 5 54 fft_types nr3p_offset$p fft_type_descriptor
R 14801 5 55 fft_types nr3p_offset$o fft_type_descriptor
R 14803 5 57 fft_types nr2p fft_type_descriptor
R 14805 5 59 fft_types nr2p$sd fft_type_descriptor
R 14806 5 60 fft_types nr2p$p fft_type_descriptor
R 14807 5 61 fft_types nr2p$o fft_type_descriptor
R 14809 5 63 fft_types nr2p_offset fft_type_descriptor
R 14811 5 65 fft_types nr2p_offset$sd fft_type_descriptor
R 14812 5 66 fft_types nr2p_offset$p fft_type_descriptor
R 14813 5 67 fft_types nr2p_offset$o fft_type_descriptor
R 14815 5 69 fft_types nr1p fft_type_descriptor
R 14817 5 71 fft_types nr1p$sd fft_type_descriptor
R 14818 5 72 fft_types nr1p$p fft_type_descriptor
R 14819 5 73 fft_types nr1p$o fft_type_descriptor
R 14821 5 75 fft_types nr1w fft_type_descriptor
R 14823 5 77 fft_types nr1w$sd fft_type_descriptor
R 14824 5 78 fft_types nr1w$p fft_type_descriptor
R 14825 5 79 fft_types nr1w$o fft_type_descriptor
R 14827 5 81 fft_types nr1w_tg fft_type_descriptor
R 14828 5 82 fft_types i0r3p fft_type_descriptor
R 14830 5 84 fft_types i0r3p$sd fft_type_descriptor
R 14831 5 85 fft_types i0r3p$p fft_type_descriptor
R 14832 5 86 fft_types i0r3p$o fft_type_descriptor
R 14834 5 88 fft_types i0r2p fft_type_descriptor
R 14836 5 90 fft_types i0r2p$sd fft_type_descriptor
R 14837 5 91 fft_types i0r2p$p fft_type_descriptor
R 14838 5 92 fft_types i0r2p$o fft_type_descriptor
R 14840 5 94 fft_types ir1p fft_type_descriptor
R 14842 5 96 fft_types ir1p$sd fft_type_descriptor
R 14843 5 97 fft_types ir1p$p fft_type_descriptor
R 14844 5 98 fft_types ir1p$o fft_type_descriptor
R 14846 5 100 fft_types indp fft_type_descriptor
R 14849 5 103 fft_types indp$sd fft_type_descriptor
R 14850 5 104 fft_types indp$p fft_type_descriptor
R 14851 5 105 fft_types indp$o fft_type_descriptor
R 14853 5 107 fft_types ir1w fft_type_descriptor
R 14855 5 109 fft_types ir1w$sd fft_type_descriptor
R 14856 5 110 fft_types ir1w$p fft_type_descriptor
R 14857 5 111 fft_types ir1w$o fft_type_descriptor
R 14859 5 113 fft_types indw fft_type_descriptor
R 14862 5 116 fft_types indw$sd fft_type_descriptor
R 14863 5 117 fft_types indw$p fft_type_descriptor
R 14864 5 118 fft_types indw$o fft_type_descriptor
R 14866 5 120 fft_types ir1w_tg fft_type_descriptor
R 14868 5 122 fft_types ir1w_tg$sd fft_type_descriptor
R 14869 5 123 fft_types ir1w_tg$p fft_type_descriptor
R 14870 5 124 fft_types ir1w_tg$o fft_type_descriptor
R 14872 5 126 fft_types indw_tg fft_type_descriptor
R 14874 5 128 fft_types indw_tg$sd fft_type_descriptor
R 14875 5 129 fft_types indw_tg$p fft_type_descriptor
R 14876 5 130 fft_types indw_tg$o fft_type_descriptor
R 14878 5 132 fft_types ir1p_d fft_type_descriptor
R 14880 5 134 fft_types ir1p_d$sd fft_type_descriptor
R 14881 5 135 fft_types ir1p_d$p fft_type_descriptor
R 14882 5 136 fft_types ir1p_d$o fft_type_descriptor
R 14884 5 138 fft_types ir1w_d fft_type_descriptor
R 14886 5 140 fft_types ir1w_d$sd fft_type_descriptor
R 14887 5 141 fft_types ir1w_d$p fft_type_descriptor
R 14888 5 142 fft_types ir1w_d$o fft_type_descriptor
R 14890 5 144 fft_types ir1w_tg_d fft_type_descriptor
R 14892 5 146 fft_types ir1w_tg_d$sd fft_type_descriptor
R 14893 5 147 fft_types ir1w_tg_d$p fft_type_descriptor
R 14894 5 148 fft_types ir1w_tg_d$o fft_type_descriptor
R 14896 5 150 fft_types indp_d fft_type_descriptor
R 14899 5 153 fft_types indp_d$sd fft_type_descriptor
R 14900 5 154 fft_types indp_d$p fft_type_descriptor
R 14901 5 155 fft_types indp_d$o fft_type_descriptor
R 14903 5 157 fft_types indw_d fft_type_descriptor
R 14906 5 160 fft_types indw_d$sd fft_type_descriptor
R 14907 5 161 fft_types indw_d$p fft_type_descriptor
R 14908 5 162 fft_types indw_d$o fft_type_descriptor
R 14910 5 164 fft_types indw_tg_d fft_type_descriptor
R 14913 5 167 fft_types indw_tg_d$sd fft_type_descriptor
R 14914 5 168 fft_types indw_tg_d$p fft_type_descriptor
R 14915 5 169 fft_types indw_tg_d$o fft_type_descriptor
R 14917 5 171 fft_types nr1p_d fft_type_descriptor
R 14919 5 173 fft_types nr1p_d$sd fft_type_descriptor
R 14920 5 174 fft_types nr1p_d$p fft_type_descriptor
R 14921 5 175 fft_types nr1p_d$o fft_type_descriptor
R 14923 5 177 fft_types nr1w_d fft_type_descriptor
R 14925 5 179 fft_types nr1w_d$sd fft_type_descriptor
R 14926 5 180 fft_types nr1w_d$p fft_type_descriptor
R 14927 5 181 fft_types nr1w_d$o fft_type_descriptor
R 14929 5 183 fft_types nr1w_tg_d fft_type_descriptor
R 14931 5 185 fft_types nr1w_tg_d$sd fft_type_descriptor
R 14932 5 186 fft_types nr1w_tg_d$p fft_type_descriptor
R 14933 5 187 fft_types nr1w_tg_d$o fft_type_descriptor
R 14935 5 189 fft_types nst fft_type_descriptor
R 14936 5 190 fft_types nsp fft_type_descriptor
R 14938 5 192 fft_types nsp$sd fft_type_descriptor
R 14939 5 193 fft_types nsp$p fft_type_descriptor
R 14940 5 194 fft_types nsp$o fft_type_descriptor
R 14942 5 196 fft_types nsp_offset fft_type_descriptor
R 14945 5 199 fft_types nsp_offset$sd fft_type_descriptor
R 14946 5 200 fft_types nsp_offset$p fft_type_descriptor
R 14947 5 201 fft_types nsp_offset$o fft_type_descriptor
R 14949 5 203 fft_types nsw fft_type_descriptor
R 14951 5 205 fft_types nsw$sd fft_type_descriptor
R 14952 5 206 fft_types nsw$p fft_type_descriptor
R 14953 5 207 fft_types nsw$o fft_type_descriptor
R 14955 5 209 fft_types nsw_offset fft_type_descriptor
R 14958 5 212 fft_types nsw_offset$sd fft_type_descriptor
R 14959 5 213 fft_types nsw_offset$p fft_type_descriptor
R 14960 5 214 fft_types nsw_offset$o fft_type_descriptor
R 14962 5 216 fft_types nsw_tg fft_type_descriptor
R 14964 5 218 fft_types nsw_tg$sd fft_type_descriptor
R 14965 5 219 fft_types nsw_tg$p fft_type_descriptor
R 14966 5 220 fft_types nsw_tg$o fft_type_descriptor
R 14968 5 222 fft_types ngl fft_type_descriptor
R 14970 5 224 fft_types ngl$sd fft_type_descriptor
R 14971 5 225 fft_types ngl$p fft_type_descriptor
R 14972 5 226 fft_types ngl$o fft_type_descriptor
R 14974 5 228 fft_types nwl fft_type_descriptor
R 14976 5 230 fft_types nwl$sd fft_type_descriptor
R 14977 5 231 fft_types nwl$p fft_type_descriptor
R 14978 5 232 fft_types nwl$o fft_type_descriptor
R 14980 5 234 fft_types ngm fft_type_descriptor
R 14981 5 235 fft_types ngw fft_type_descriptor
R 14982 5 236 fft_types iplp fft_type_descriptor
R 14984 5 238 fft_types iplp$sd fft_type_descriptor
R 14985 5 239 fft_types iplp$p fft_type_descriptor
R 14986 5 240 fft_types iplp$o fft_type_descriptor
R 14988 5 242 fft_types iplw fft_type_descriptor
R 14990 5 244 fft_types iplw$sd fft_type_descriptor
R 14991 5 245 fft_types iplw$p fft_type_descriptor
R 14992 5 246 fft_types iplw$o fft_type_descriptor
R 14994 5 248 fft_types nnp fft_type_descriptor
R 14995 5 249 fft_types nnr fft_type_descriptor
R 14996 5 250 fft_types nnr_tg fft_type_descriptor
R 14997 5 251 fft_types iss fft_type_descriptor
R 14999 5 253 fft_types iss$sd fft_type_descriptor
R 15000 5 254 fft_types iss$p fft_type_descriptor
R 15001 5 255 fft_types iss$o fft_type_descriptor
R 15003 5 257 fft_types isind fft_type_descriptor
R 15005 5 259 fft_types isind$sd fft_type_descriptor
R 15006 5 260 fft_types isind$p fft_type_descriptor
R 15007 5 261 fft_types isind$o fft_type_descriptor
R 15009 5 263 fft_types ismap fft_type_descriptor
R 15011 5 265 fft_types ismap$sd fft_type_descriptor
R 15012 5 266 fft_types ismap$p fft_type_descriptor
R 15013 5 267 fft_types ismap$o fft_type_descriptor
R 15015 5 269 fft_types ismap_d fft_type_descriptor
R 15017 5 271 fft_types ismap_d$sd fft_type_descriptor
R 15018 5 272 fft_types ismap_d$p fft_type_descriptor
R 15019 5 273 fft_types ismap_d$o fft_type_descriptor
R 15021 5 275 fft_types nl fft_type_descriptor
R 15023 5 277 fft_types nl$sd fft_type_descriptor
R 15024 5 278 fft_types nl$p fft_type_descriptor
R 15025 5 279 fft_types nl$o fft_type_descriptor
R 15027 5 281 fft_types nlm fft_type_descriptor
R 15029 5 283 fft_types nlm$sd fft_type_descriptor
R 15030 5 284 fft_types nlm$p fft_type_descriptor
R 15031 5 285 fft_types nlm$o fft_type_descriptor
R 15033 5 287 fft_types nl_d fft_type_descriptor
R 15035 5 289 fft_types nl_d$sd fft_type_descriptor
R 15036 5 290 fft_types nl_d$p fft_type_descriptor
R 15037 5 291 fft_types nl_d$o fft_type_descriptor
R 15039 5 293 fft_types nlm_d fft_type_descriptor
R 15041 5 295 fft_types nlm_d$sd fft_type_descriptor
R 15042 5 296 fft_types nlm_d$p fft_type_descriptor
R 15043 5 297 fft_types nlm_d$o fft_type_descriptor
R 15045 5 299 fft_types tg_snd fft_type_descriptor
R 15047 5 301 fft_types tg_snd$sd fft_type_descriptor
R 15048 5 302 fft_types tg_snd$p fft_type_descriptor
R 15049 5 303 fft_types tg_snd$o fft_type_descriptor
R 15051 5 305 fft_types tg_rcv fft_type_descriptor
R 15053 5 307 fft_types tg_rcv$sd fft_type_descriptor
R 15054 5 308 fft_types tg_rcv$p fft_type_descriptor
R 15055 5 309 fft_types tg_rcv$o fft_type_descriptor
R 15057 5 311 fft_types tg_sdsp fft_type_descriptor
R 15059 5 313 fft_types tg_sdsp$sd fft_type_descriptor
R 15060 5 314 fft_types tg_sdsp$p fft_type_descriptor
R 15061 5 315 fft_types tg_sdsp$o fft_type_descriptor
R 15063 5 317 fft_types tg_rdsp fft_type_descriptor
R 15065 5 319 fft_types tg_rdsp$sd fft_type_descriptor
R 15066 5 320 fft_types tg_rdsp$p fft_type_descriptor
R 15067 5 321 fft_types tg_rdsp$o fft_type_descriptor
R 15069 5 323 fft_types has_task_groups fft_type_descriptor
R 15070 5 324 fft_types use_pencil_decomposition fft_type_descriptor
R 15071 5 325 fft_types rho_clock_label fft_type_descriptor
R 15072 5 326 fft_types wave_clock_label fft_type_descriptor
R 15073 5 327 fft_types grid_id fft_type_descriptor
R 15075 5 329 fft_types stream_scatter_yz fft_type_descriptor
R 15076 5 330 fft_types stream_scatter_yz$sd fft_type_descriptor
R 15077 5 331 fft_types stream_scatter_yz$p fft_type_descriptor
R 15078 5 332 fft_types stream_scatter_yz$o fft_type_descriptor
R 15081 5 335 fft_types stream_many fft_type_descriptor
R 15082 5 336 fft_types stream_many$sd fft_type_descriptor
R 15083 5 337 fft_types stream_many$p fft_type_descriptor
R 15084 5 338 fft_types stream_many$o fft_type_descriptor
R 15086 5 340 fft_types a2a_comp fft_type_descriptor
R 15088 5 342 fft_types bstreams fft_type_descriptor
R 15089 5 343 fft_types bstreams$sd fft_type_descriptor
R 15090 5 344 fft_types bstreams$p fft_type_descriptor
R 15091 5 345 fft_types bstreams$o fft_type_descriptor
R 15094 5 348 fft_types bevents fft_type_descriptor
R 15095 5 349 fft_types bevents$sd fft_type_descriptor
R 15096 5 350 fft_types bevents$p fft_type_descriptor
R 15097 5 351 fft_types bevents$o fft_type_descriptor
R 15099 5 353 fft_types batchsize fft_type_descriptor
R 15100 5 354 fft_types subbatchsize fft_type_descriptor
R 15101 5 355 fft_types nstream_many fft_type_descriptor
R 15102 5 356 fft_types srh fft_type_descriptor
R 15105 5 359 fft_types srh$sd fft_type_descriptor
R 15106 5 360 fft_types srh$p fft_type_descriptor
R 15107 5 361 fft_types srh$o fft_type_descriptor
R 15110 5 364 fft_types aux fft_type_descriptor
R 15111 5 365 fft_types aux$sd fft_type_descriptor
R 15112 5 366 fft_types aux$p fft_type_descriptor
R 15113 5 367 fft_types aux$o fft_type_descriptor
S 22293 6 1 0 0 7 1 628 6835 40800016 2000 A 0 0 0 0 B 0 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 22294 6 1 0 0 7 1 628 6843 40800016 2000 A 0 0 0 0 B 0 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22295 6 1 0 0 7 1 628 6933 40800016 2000 A 0 0 0 0 B 0 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 22296 6 1 0 0 7 1 628 134808 40800016 2000 A 0 0 0 0 B 0 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10844
S 22298 14 5 0 0 0 1 624 134824 10 0 A 1000000 0 0 0 B 0 34 0 0 0 0 0 10526 3 0 0 0 0 0 0 0 0 0 0 0 0 34 0 624 0 0 0 0 invfft_b invfft_b 
F 22298 3 22299 22300 22301
S 22299 7 3 0 0 6664 1 22298 5074 20002014 10002000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f
S 22300 1 3 1 0 6610 1 22298 5076 2014 2000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft
S 22301 1 3 1 0 6 1 22298 134833 2014 2000 A 0 0 0 0 B 0 34 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ia
R 22306 25 3 fft_smallbox_type fft_box_descriptor
R 22307 5 4 fft_smallbox_type irb fft_box_descriptor
R 22310 5 7 fft_smallbox_type irb$sd fft_box_descriptor
R 22311 5 8 fft_smallbox_type irb$p fft_box_descriptor
R 22312 5 9 fft_smallbox_type irb$o fft_box_descriptor
R 22314 5 11 fft_smallbox_type imin2 fft_box_descriptor
R 22316 5 13 fft_smallbox_type imin2$sd fft_box_descriptor
R 22317 5 14 fft_smallbox_type imin2$p fft_box_descriptor
R 22318 5 15 fft_smallbox_type imin2$o fft_box_descriptor
R 22320 5 17 fft_smallbox_type imin3 fft_box_descriptor
R 22322 5 19 fft_smallbox_type imin3$sd fft_box_descriptor
R 22323 5 20 fft_smallbox_type imin3$p fft_box_descriptor
R 22324 5 21 fft_smallbox_type imin3$o fft_box_descriptor
R 22326 5 23 fft_smallbox_type imax2 fft_box_descriptor
R 22328 5 25 fft_smallbox_type imax2$sd fft_box_descriptor
R 22329 5 26 fft_smallbox_type imax2$p fft_box_descriptor
R 22330 5 27 fft_smallbox_type imax2$o fft_box_descriptor
R 22332 5 29 fft_smallbox_type imax3 fft_box_descriptor
R 22334 5 31 fft_smallbox_type imax3$sd fft_box_descriptor
R 22335 5 32 fft_smallbox_type imax3$p fft_box_descriptor
R 22336 5 33 fft_smallbox_type imax3$o fft_box_descriptor
R 22338 5 35 fft_smallbox_type np2 fft_box_descriptor
R 22340 5 37 fft_smallbox_type np2$sd fft_box_descriptor
R 22341 5 38 fft_smallbox_type np2$p fft_box_descriptor
R 22342 5 39 fft_smallbox_type np2$o fft_box_descriptor
R 22344 5 41 fft_smallbox_type np3 fft_box_descriptor
R 22346 5 43 fft_smallbox_type np3$sd fft_box_descriptor
R 22347 5 44 fft_smallbox_type np3$p fft_box_descriptor
R 22348 5 45 fft_smallbox_type np3$o fft_box_descriptor
R 22350 5 47 fft_smallbox_type nr1 fft_box_descriptor
R 22351 5 48 fft_smallbox_type nr2 fft_box_descriptor
R 22352 5 49 fft_smallbox_type nr3 fft_box_descriptor
R 22353 5 50 fft_smallbox_type nr1x fft_box_descriptor
R 22354 5 51 fft_smallbox_type nr2x fft_box_descriptor
R 22355 5 52 fft_smallbox_type nr3x fft_box_descriptor
R 22356 5 53 fft_smallbox_type nnr fft_box_descriptor
R 22357 5 54 fft_smallbox_type mype fft_box_descriptor
R 22358 5 55 fft_smallbox_type comm fft_box_descriptor
R 22359 5 56 fft_smallbox_type nproc fft_box_descriptor
R 22360 5 57 fft_smallbox_type root fft_box_descriptor
S 22391 6 1 0 0 7 1 22298 135332 40800016 2000 A 0 0 0 0 B 0 40 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_2
S 22392 6 1 0 0 7 1 22298 135340 40800016 2000 A 0 0 0 0 B 0 40 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_2
S 22393 6 1 0 0 7 1 22298 135366 40800016 2000 A 0 0 0 0 B 0 40 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_7_2
S 22394 6 1 0 0 7 1 22298 50669 40800016 2000 A 0 0 0 0 B 0 40 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10919
S 22395 14 5 0 0 0 1 624 135374 10 0 A 1000000 0 0 0 B 0 43 0 0 0 0 0 10543 5 0 0 0 0 0 0 0 0 0 0 0 0 43 0 624 0 0 0 0 invfft_y_gpu invfft_y_gpu 
F 22395 5 22396 22397 22398 22399 22400
S 22396 1 3 1 0 30 1 22395 135387 2014 42000 A 0 0 0 0 B 0 43 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 grid_type
S 22397 7 3 0 0 6667 1 22395 135397 2000a014 10002000 A 0 0 0 0 B 0 43 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_d
S 22398 1 3 1 0 3542 1 22395 5076 2014 2000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft
S 22399 1 3 1 0 6 1 22395 5081 80002014 2000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 howmany
S 22400 1 3 1 0 7 1 22395 7773 80002014 2000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 stream
S 22405 6 1 0 0 7 1 22395 6901 40800016 2000 A 0 0 0 0 B 0 52 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_9_1
S 22406 6 1 0 0 7 1 22395 107652 40800016 2000 A 0 0 0 0 B 0 52 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_10_1
S 22407 6 1 0 0 7 1 22395 107661 40800016 2000 A 0 0 0 0 B 0 52 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_11_1
S 22408 6 1 0 0 7 1 22395 135409 40800016 2000 A 0 0 0 0 B 0 52 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10926
S 22409 14 5 0 0 0 1 624 135419 10 0 A 1000000 0 0 0 B 0 58 0 0 0 0 0 10548 4 0 0 0 0 0 0 0 0 0 0 0 0 58 0 624 0 0 0 0 fwfft_y fwfft_y 
F 22409 4 22410 22411 22412 22413
S 22410 1 3 1 0 30 1 22409 5065 2014 42000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fft_kind
S 22411 7 3 0 0 6670 1 22409 5074 20002014 10002000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f
S 22412 1 3 1 0 3542 1 22409 5076 2014 2000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft
S 22413 1 3 1 0 6 1 22409 5081 80002014 2000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 howmany
S 22417 6 1 0 0 7 1 22409 107680 40800016 2000 A 0 0 0 0 B 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_13_1
S 22418 6 1 0 0 7 1 22409 107689 40800016 2000 A 0 0 0 0 B 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_14_1
S 22419 6 1 0 0 7 1 22409 107698 40800016 2000 A 0 0 0 0 B 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_15_1
S 22420 6 1 0 0 7 1 22409 135436 40800016 2000 A 0 0 0 0 B 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10933
S 22421 14 5 0 0 0 1 624 135446 10 0 A 1000000 0 0 0 B 0 68 0 0 0 0 0 10552 5 0 0 0 0 0 0 0 0 0 0 0 0 68 0 624 0 0 0 0 fwfft_y_gpu fwfft_y_gpu 
F 22421 5 22422 22423 22424 22425 22426
S 22422 1 3 1 0 30 1 22421 135387 2014 42000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 grid_type
S 22423 7 3 0 0 6673 1 22421 135397 2000a014 10002000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_d
S 22424 1 3 1 0 3542 1 22421 5076 2014 2000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft
S 22425 1 3 1 0 6 1 22421 5081 80002014 2000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 howmany
S 22426 1 3 1 0 7 1 22421 7773 80002014 2000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 stream
S 22430 6 1 0 0 7 1 22421 107717 40800016 2000 A 0 0 0 0 B 0 77 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_17_1
S 22431 6 1 0 0 7 1 22421 107726 40800016 2000 A 0 0 0 0 B 0 77 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_18_1
S 22432 6 1 0 0 7 1 22421 107735 40800016 2000 A 0 0 0 0 B 0 77 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_19_1
S 22433 6 1 0 0 7 1 22421 135467 40800016 2000 A 0 0 0 0 B 0 77 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10940
S 22434 14 5 0 0 0 1 624 135477 10 0 A 1000000 0 0 0 B 0 86 0 0 0 0 0 10557 4 0 0 0 0 0 0 0 0 0 0 0 0 86 0 624 0 0 0 0 fft_interpolate_real fft_interpolate_real 
F 22434 4 22435 22436 22437 22438
S 22435 1 3 1 0 3542 1 22434 135498 2014 2000 A 0 0 0 0 B 0 86 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft_in
S 22436 7 3 1 0 6676 1 22434 135506 20002014 10002000 A 0 0 0 0 B 0 86 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 v_in
S 22437 1 3 1 0 3542 1 22434 135511 2014 2000 A 0 0 0 0 B 0 86 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft_out
S 22438 7 3 2 0 6679 1 22434 135520 20002014 10002000 A 0 0 0 0 B 0 86 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 v_out
S 22442 6 1 0 0 7 1 22434 107754 40800016 2000 A 0 0 0 0 B 0 91 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_21_1
S 22443 6 1 0 0 7 1 22434 107763 40800016 2000 A 0 0 0 0 B 0 91 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_22_1
S 22444 6 1 0 0 7 1 22434 107772 40800016 2000 A 0 0 0 0 B 0 91 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_23_1
S 22445 6 1 0 0 7 1 22434 50816 40800016 2000 A 0 0 0 0 B 0 91 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10947
S 22447 6 1 0 0 7 1 22434 107791 40800016 2000 A 0 0 0 0 B 0 92 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_25_1
S 22448 6 1 0 0 7 1 22434 107800 40800016 2000 A 0 0 0 0 B 0 92 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_26_1
S 22449 6 1 0 0 7 1 22434 107809 40800016 2000 A 0 0 0 0 B 0 92 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_27_1
S 22450 6 1 0 0 7 1 22434 135544 40800016 2000 A 0 0 0 0 B 0 92 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10954
S 22451 14 5 0 0 0 1 624 135554 10 0 A 1000000 0 0 0 B 0 95 0 0 0 0 0 10561 4 0 0 0 0 0 0 0 0 0 0 0 0 95 0 624 0 0 0 0 fft_interpolate_complex fft_interpolate_complex 
F 22451 4 22452 22453 22454 22455
S 22452 1 3 1 0 3542 1 22451 135498 2014 2000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft_in
S 22453 7 3 1 0 6682 1 22451 135506 20002014 10002000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 v_in
S 22454 1 3 1 0 3542 1 22451 135511 2014 2000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft_out
S 22455 7 3 2 0 6685 1 22451 135520 20002014 10002000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 v_out
S 22459 6 1 0 0 7 1 22451 135587 40800016 2000 A 0 0 0 0 B 0 100 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_29_1
S 22460 6 1 0 0 7 1 22451 135596 40800016 2000 A 0 0 0 0 B 0 100 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_30_1
S 22461 6 1 0 0 7 1 22451 135605 40800016 2000 A 0 0 0 0 B 0 100 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_31_1
S 22462 6 1 0 0 7 1 22451 135614 40800016 2000 A 0 0 0 0 B 0 100 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10961
S 22464 6 1 0 0 7 1 22451 135633 40800016 2000 A 0 0 0 0 B 0 101 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_33_1
S 22465 6 1 0 0 7 1 22451 135642 40800016 2000 A 0 0 0 0 B 0 101 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_34_1
S 22466 6 1 0 0 7 1 22451 135651 40800016 2000 A 0 0 0 0 B 0 101 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_35_1
S 22467 6 1 0 0 7 1 22451 135660 40800016 2000 A 0 0 0 0 B 0 101 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10968
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
A 7701 2 0 0 7576 6 8466 0 0 0 7701 0 0 0 0 0 0 0 0 0 0 0
A 7753 1 0 0 28 2227 8497 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 9726 2 0 0 9102 18 14745 0 0 0 9726 0 0 0 0 0 0 0 0 0 0 0
A 9727 2 0 0 513 22 14746 0 0 0 9727 0 0 0 0 0 0 0 0 0 0 0
A 10840 1 0 0 8172 7 22293 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10841 1 0 0 8174 7 22294 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10842 1 0 0 8176 7 22295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10845 1 0 0 8178 7 22296 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10915 1 0 0 4309 7 22391 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10916 1 0 0 4308 7 22392 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10917 1 0 0 4311 7 22393 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10920 1 0 0 4302 7 22394 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10922 1 0 0 4316 7 22405 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10923 1 0 0 4315 7 22406 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10924 1 0 0 4319 7 22407 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10927 1 0 0 4318 7 22408 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10929 1 0 0 4329 7 22417 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10930 1 0 0 10122 7 22418 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10931 1 0 0 4331 7 22419 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10934 1 0 0 9619 7 22420 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10936 1 0 0 0 7 22430 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10937 1 0 0 9627 7 22431 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10938 1 0 0 0 7 22432 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10941 1 0 0 4346 7 22433 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10943 1 0 0 10146 7 22442 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10944 1 0 0 4350 7 22443 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10945 1 0 0 4353 7 22444 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10948 1 0 0 5082 7 22445 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10950 1 0 0 10151 7 22447 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10951 1 0 0 4484 7 22448 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10952 1 0 0 4365 7 22449 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10955 1 0 0 4364 7 22450 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10957 1 0 0 1947 7 22459 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10958 1 0 0 0 7 22460 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10959 1 0 0 10165 7 22461 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10962 1 0 0 0 7 22462 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10964 1 0 0 10168 7 22464 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10965 1 0 0 4372 7 22465 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10966 1 0 0 10352 7 22466 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10969 1 0 0 10171 7 22467 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
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
T 14749 3542 0 3 0 0
A 14750 6 0 0 1 2 1
A 14751 6 0 0 1 2 1
A 14752 6 0 0 1 2 1
A 14753 6 0 0 1 2 1
A 14754 6 0 0 1 2 1
A 14755 6 0 0 1 2 1
A 14756 18 0 0 1 397 1
A 14757 18 0 0 1 397 1
A 14758 6 0 0 1 2 1
A 14759 6 0 0 1 33 1
A 14760 6 0 0 1 33 1
A 14761 6 0 0 1 33 1
A 14762 6 0 0 1 3 1
A 14763 6 0 0 1 3 1
A 14764 6 0 0 1 3 1
A 14765 6 0 0 1 2 1
A 14766 6 0 0 1 2 1
A 14767 6 0 0 1 2 1
A 14787 6 0 0 1 2 1
A 14788 6 0 0 1 2 1
A 14789 6 0 0 1 2 1
A 14790 6 0 0 1 2 1
A 14994 6 0 0 1 2 1
A 14995 6 0 0 1 2 1
A 14996 6 0 0 1 2 1
A 15069 18 0 0 1 397 1
A 15070 18 0 0 1 9726 1
A 15071 22 0 0 1 9727 1
A 15072 22 0 0 1 9727 1
A 15099 6 0 0 1 7701 1
A 15100 6 0 0 1 35 1
A 15101 6 0 0 1 7701 0
T 22306 6610 0 3 0 0
A 22350 6 0 0 1 2 1
A 22351 6 0 0 1 2 1
A 22352 6 0 0 1 2 1
A 22353 6 0 0 1 2 1
A 22354 6 0 0 1 2 1
A 22355 6 0 0 1 2 1
A 22356 6 0 0 1 2 1
A 22357 6 0 0 1 2 1
A 22358 6 0 0 1 2 1
A 22359 6 0 0 1 3 1
A 22360 6 0 0 1 2 0
Z
