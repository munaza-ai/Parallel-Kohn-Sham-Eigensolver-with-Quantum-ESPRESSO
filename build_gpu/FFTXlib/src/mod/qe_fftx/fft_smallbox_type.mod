V34 :0x24 fft_smallbox_type
21 fft_smallbox_type.f90 S624 0
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
D 82 26 685 8 684 7
D 91 26 688 8 687 7
D 136 26 773 1232 769 7
D 154 23 6 1 11 165 0 0 0 0 0
 0 165 11 11 165 165
D 157 23 6 1 11 165 0 0 0 0 0
 0 165 11 11 165 165
D 2206 26 685 8 684 7
D 2227 26 8481 8 8480 7
D 3542 26 14740 8680 14739 7
D 3952 26 15228 1160 15227 7
D 3958 23 6 2 9743 9742 0 1 0 0 1
 9732 9735 9740 9732 9735 9733
 9736 9739 9741 9736 9739 9737
D 3961 23 7 1 0 135 0 0 0 0 0
 0 135 0 11 135 0
D 3964 23 6 1 9752 9751 0 1 0 0 1
 9746 9749 9750 9746 9749 9747
D 3967 23 7 1 0 147 0 0 0 0 0
 0 147 0 11 147 0
D 3970 23 6 1 9761 9760 0 1 0 0 1
 9755 9758 9759 9755 9758 9756
D 3973 23 7 1 0 147 0 0 0 0 0
 0 147 0 11 147 0
D 3976 23 6 1 9770 9769 0 1 0 0 1
 9764 9767 9768 9764 9767 9765
D 3979 23 7 1 0 147 0 0 0 0 0
 0 147 0 11 147 0
D 3982 23 6 1 9779 9778 0 1 0 0 1
 9773 9776 9777 9773 9776 9774
D 3985 23 7 1 0 147 0 0 0 0 0
 0 147 0 11 147 0
D 3988 23 6 1 9788 9787 0 1 0 0 1
 9782 9785 9786 9782 9785 9783
D 3991 23 7 1 0 147 0 0 0 0 0
 0 147 0 11 147 0
D 3994 23 6 1 9797 9796 0 1 0 0 1
 9791 9794 9795 9791 9794 9792
D 3997 23 7 1 0 147 0 0 0 0 0
 0 147 0 11 147 0
D 4014 23 7 1 0 11 0 0 0 0 0
 0 11 0 11 11 0
D 4017 23 6 2 9798 9804 1 1 0 0 1
 11 9799 11 11 9799 9800
 11 9801 9802 11 9801 9803
S 624 24 0 0 0 9 1 0 5012 10005 0 A 0 0 0 0 B 0 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 10 0 0 0 0 0 0 fft_smallbox_type
S 626 23 0 0 0 9 14739 624 5040 4 0 A 0 0 0 0 B 400000 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fft_type_descriptor
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
S 8456 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
R 8480 25 6 nvf_acc_common c_devptr
R 8481 5 7 nvf_acc_common cptr c_devptr
R 8487 6 13 nvf_acc_common c_null_devptr$ac
R 8525 26 51 nvf_acc_common =
S 14735 3 0 0 0 18 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 18
S 14736 3 0 0 0 22 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 104515 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 1 20
R 14739 25 3 fft_types fft_type_descriptor
R 14740 5 4 fft_types nr1 fft_type_descriptor
R 14741 5 5 fft_types nr2 fft_type_descriptor
R 14742 5 6 fft_types nr3 fft_type_descriptor
R 14743 5 7 fft_types nr1x fft_type_descriptor
R 14744 5 8 fft_types nr2x fft_type_descriptor
R 14745 5 9 fft_types nr3x fft_type_descriptor
R 14746 5 10 fft_types lpara fft_type_descriptor
R 14747 5 11 fft_types lgamma fft_type_descriptor
R 14748 5 12 fft_types root fft_type_descriptor
R 14749 5 13 fft_types comm fft_type_descriptor
R 14750 5 14 fft_types comm2 fft_type_descriptor
R 14751 5 15 fft_types comm3 fft_type_descriptor
R 14752 5 16 fft_types nproc fft_type_descriptor
R 14753 5 17 fft_types nproc2 fft_type_descriptor
R 14754 5 18 fft_types nproc3 fft_type_descriptor
R 14755 5 19 fft_types mype fft_type_descriptor
R 14756 5 20 fft_types mype2 fft_type_descriptor
R 14757 5 21 fft_types mype3 fft_type_descriptor
R 14758 5 22 fft_types iproc fft_type_descriptor
R 14761 5 25 fft_types iproc$sd fft_type_descriptor
R 14762 5 26 fft_types iproc$p fft_type_descriptor
R 14763 5 27 fft_types iproc$o fft_type_descriptor
R 14765 5 29 fft_types iproc2 fft_type_descriptor
R 14767 5 31 fft_types iproc2$sd fft_type_descriptor
R 14768 5 32 fft_types iproc2$p fft_type_descriptor
R 14769 5 33 fft_types iproc2$o fft_type_descriptor
R 14771 5 35 fft_types iproc3 fft_type_descriptor
R 14773 5 37 fft_types iproc3$sd fft_type_descriptor
R 14774 5 38 fft_types iproc3$p fft_type_descriptor
R 14775 5 39 fft_types iproc3$o fft_type_descriptor
R 14777 5 41 fft_types my_nr3p fft_type_descriptor
R 14778 5 42 fft_types my_nr2p fft_type_descriptor
R 14779 5 43 fft_types my_i0r3p fft_type_descriptor
R 14780 5 44 fft_types my_i0r2p fft_type_descriptor
R 14781 5 45 fft_types nr3p fft_type_descriptor
R 14783 5 47 fft_types nr3p$sd fft_type_descriptor
R 14784 5 48 fft_types nr3p$p fft_type_descriptor
R 14785 5 49 fft_types nr3p$o fft_type_descriptor
R 14787 5 51 fft_types nr3p_offset fft_type_descriptor
R 14789 5 53 fft_types nr3p_offset$sd fft_type_descriptor
R 14790 5 54 fft_types nr3p_offset$p fft_type_descriptor
R 14791 5 55 fft_types nr3p_offset$o fft_type_descriptor
R 14793 5 57 fft_types nr2p fft_type_descriptor
R 14795 5 59 fft_types nr2p$sd fft_type_descriptor
R 14796 5 60 fft_types nr2p$p fft_type_descriptor
R 14797 5 61 fft_types nr2p$o fft_type_descriptor
R 14799 5 63 fft_types nr2p_offset fft_type_descriptor
R 14801 5 65 fft_types nr2p_offset$sd fft_type_descriptor
R 14802 5 66 fft_types nr2p_offset$p fft_type_descriptor
R 14803 5 67 fft_types nr2p_offset$o fft_type_descriptor
R 14805 5 69 fft_types nr1p fft_type_descriptor
R 14807 5 71 fft_types nr1p$sd fft_type_descriptor
R 14808 5 72 fft_types nr1p$p fft_type_descriptor
R 14809 5 73 fft_types nr1p$o fft_type_descriptor
R 14811 5 75 fft_types nr1w fft_type_descriptor
R 14813 5 77 fft_types nr1w$sd fft_type_descriptor
R 14814 5 78 fft_types nr1w$p fft_type_descriptor
R 14815 5 79 fft_types nr1w$o fft_type_descriptor
R 14817 5 81 fft_types nr1w_tg fft_type_descriptor
R 14818 5 82 fft_types i0r3p fft_type_descriptor
R 14820 5 84 fft_types i0r3p$sd fft_type_descriptor
R 14821 5 85 fft_types i0r3p$p fft_type_descriptor
R 14822 5 86 fft_types i0r3p$o fft_type_descriptor
R 14824 5 88 fft_types i0r2p fft_type_descriptor
R 14826 5 90 fft_types i0r2p$sd fft_type_descriptor
R 14827 5 91 fft_types i0r2p$p fft_type_descriptor
R 14828 5 92 fft_types i0r2p$o fft_type_descriptor
R 14830 5 94 fft_types ir1p fft_type_descriptor
R 14832 5 96 fft_types ir1p$sd fft_type_descriptor
R 14833 5 97 fft_types ir1p$p fft_type_descriptor
R 14834 5 98 fft_types ir1p$o fft_type_descriptor
R 14836 5 100 fft_types indp fft_type_descriptor
R 14839 5 103 fft_types indp$sd fft_type_descriptor
R 14840 5 104 fft_types indp$p fft_type_descriptor
R 14841 5 105 fft_types indp$o fft_type_descriptor
R 14843 5 107 fft_types ir1w fft_type_descriptor
R 14845 5 109 fft_types ir1w$sd fft_type_descriptor
R 14846 5 110 fft_types ir1w$p fft_type_descriptor
R 14847 5 111 fft_types ir1w$o fft_type_descriptor
R 14849 5 113 fft_types indw fft_type_descriptor
R 14852 5 116 fft_types indw$sd fft_type_descriptor
R 14853 5 117 fft_types indw$p fft_type_descriptor
R 14854 5 118 fft_types indw$o fft_type_descriptor
R 14856 5 120 fft_types ir1w_tg fft_type_descriptor
R 14858 5 122 fft_types ir1w_tg$sd fft_type_descriptor
R 14859 5 123 fft_types ir1w_tg$p fft_type_descriptor
R 14860 5 124 fft_types ir1w_tg$o fft_type_descriptor
R 14862 5 126 fft_types indw_tg fft_type_descriptor
R 14864 5 128 fft_types indw_tg$sd fft_type_descriptor
R 14865 5 129 fft_types indw_tg$p fft_type_descriptor
R 14866 5 130 fft_types indw_tg$o fft_type_descriptor
R 14868 5 132 fft_types ir1p_d fft_type_descriptor
R 14870 5 134 fft_types ir1p_d$sd fft_type_descriptor
R 14871 5 135 fft_types ir1p_d$p fft_type_descriptor
R 14872 5 136 fft_types ir1p_d$o fft_type_descriptor
R 14874 5 138 fft_types ir1w_d fft_type_descriptor
R 14876 5 140 fft_types ir1w_d$sd fft_type_descriptor
R 14877 5 141 fft_types ir1w_d$p fft_type_descriptor
R 14878 5 142 fft_types ir1w_d$o fft_type_descriptor
R 14880 5 144 fft_types ir1w_tg_d fft_type_descriptor
R 14882 5 146 fft_types ir1w_tg_d$sd fft_type_descriptor
R 14883 5 147 fft_types ir1w_tg_d$p fft_type_descriptor
R 14884 5 148 fft_types ir1w_tg_d$o fft_type_descriptor
R 14886 5 150 fft_types indp_d fft_type_descriptor
R 14889 5 153 fft_types indp_d$sd fft_type_descriptor
R 14890 5 154 fft_types indp_d$p fft_type_descriptor
R 14891 5 155 fft_types indp_d$o fft_type_descriptor
R 14893 5 157 fft_types indw_d fft_type_descriptor
R 14896 5 160 fft_types indw_d$sd fft_type_descriptor
R 14897 5 161 fft_types indw_d$p fft_type_descriptor
R 14898 5 162 fft_types indw_d$o fft_type_descriptor
R 14900 5 164 fft_types indw_tg_d fft_type_descriptor
R 14903 5 167 fft_types indw_tg_d$sd fft_type_descriptor
R 14904 5 168 fft_types indw_tg_d$p fft_type_descriptor
R 14905 5 169 fft_types indw_tg_d$o fft_type_descriptor
R 14907 5 171 fft_types nr1p_d fft_type_descriptor
R 14909 5 173 fft_types nr1p_d$sd fft_type_descriptor
R 14910 5 174 fft_types nr1p_d$p fft_type_descriptor
R 14911 5 175 fft_types nr1p_d$o fft_type_descriptor
R 14913 5 177 fft_types nr1w_d fft_type_descriptor
R 14915 5 179 fft_types nr1w_d$sd fft_type_descriptor
R 14916 5 180 fft_types nr1w_d$p fft_type_descriptor
R 14917 5 181 fft_types nr1w_d$o fft_type_descriptor
R 14919 5 183 fft_types nr1w_tg_d fft_type_descriptor
R 14921 5 185 fft_types nr1w_tg_d$sd fft_type_descriptor
R 14922 5 186 fft_types nr1w_tg_d$p fft_type_descriptor
R 14923 5 187 fft_types nr1w_tg_d$o fft_type_descriptor
R 14925 5 189 fft_types nst fft_type_descriptor
R 14926 5 190 fft_types nsp fft_type_descriptor
R 14928 5 192 fft_types nsp$sd fft_type_descriptor
R 14929 5 193 fft_types nsp$p fft_type_descriptor
R 14930 5 194 fft_types nsp$o fft_type_descriptor
R 14932 5 196 fft_types nsp_offset fft_type_descriptor
R 14935 5 199 fft_types nsp_offset$sd fft_type_descriptor
R 14936 5 200 fft_types nsp_offset$p fft_type_descriptor
R 14937 5 201 fft_types nsp_offset$o fft_type_descriptor
R 14939 5 203 fft_types nsw fft_type_descriptor
R 14941 5 205 fft_types nsw$sd fft_type_descriptor
R 14942 5 206 fft_types nsw$p fft_type_descriptor
R 14943 5 207 fft_types nsw$o fft_type_descriptor
R 14945 5 209 fft_types nsw_offset fft_type_descriptor
R 14948 5 212 fft_types nsw_offset$sd fft_type_descriptor
R 14949 5 213 fft_types nsw_offset$p fft_type_descriptor
R 14950 5 214 fft_types nsw_offset$o fft_type_descriptor
R 14952 5 216 fft_types nsw_tg fft_type_descriptor
R 14954 5 218 fft_types nsw_tg$sd fft_type_descriptor
R 14955 5 219 fft_types nsw_tg$p fft_type_descriptor
R 14956 5 220 fft_types nsw_tg$o fft_type_descriptor
R 14958 5 222 fft_types ngl fft_type_descriptor
R 14960 5 224 fft_types ngl$sd fft_type_descriptor
R 14961 5 225 fft_types ngl$p fft_type_descriptor
R 14962 5 226 fft_types ngl$o fft_type_descriptor
R 14964 5 228 fft_types nwl fft_type_descriptor
R 14966 5 230 fft_types nwl$sd fft_type_descriptor
R 14967 5 231 fft_types nwl$p fft_type_descriptor
R 14968 5 232 fft_types nwl$o fft_type_descriptor
R 14970 5 234 fft_types ngm fft_type_descriptor
R 14971 5 235 fft_types ngw fft_type_descriptor
R 14972 5 236 fft_types iplp fft_type_descriptor
R 14974 5 238 fft_types iplp$sd fft_type_descriptor
R 14975 5 239 fft_types iplp$p fft_type_descriptor
R 14976 5 240 fft_types iplp$o fft_type_descriptor
R 14978 5 242 fft_types iplw fft_type_descriptor
R 14980 5 244 fft_types iplw$sd fft_type_descriptor
R 14981 5 245 fft_types iplw$p fft_type_descriptor
R 14982 5 246 fft_types iplw$o fft_type_descriptor
R 14984 5 248 fft_types nnp fft_type_descriptor
R 14985 5 249 fft_types nnr fft_type_descriptor
R 14986 5 250 fft_types nnr_tg fft_type_descriptor
R 14987 5 251 fft_types iss fft_type_descriptor
R 14989 5 253 fft_types iss$sd fft_type_descriptor
R 14990 5 254 fft_types iss$p fft_type_descriptor
R 14991 5 255 fft_types iss$o fft_type_descriptor
R 14993 5 257 fft_types isind fft_type_descriptor
R 14995 5 259 fft_types isind$sd fft_type_descriptor
R 14996 5 260 fft_types isind$p fft_type_descriptor
R 14997 5 261 fft_types isind$o fft_type_descriptor
R 14999 5 263 fft_types ismap fft_type_descriptor
R 15001 5 265 fft_types ismap$sd fft_type_descriptor
R 15002 5 266 fft_types ismap$p fft_type_descriptor
R 15003 5 267 fft_types ismap$o fft_type_descriptor
R 15005 5 269 fft_types ismap_d fft_type_descriptor
R 15007 5 271 fft_types ismap_d$sd fft_type_descriptor
R 15008 5 272 fft_types ismap_d$p fft_type_descriptor
R 15009 5 273 fft_types ismap_d$o fft_type_descriptor
R 15011 5 275 fft_types nl fft_type_descriptor
R 15013 5 277 fft_types nl$sd fft_type_descriptor
R 15014 5 278 fft_types nl$p fft_type_descriptor
R 15015 5 279 fft_types nl$o fft_type_descriptor
R 15017 5 281 fft_types nlm fft_type_descriptor
R 15019 5 283 fft_types nlm$sd fft_type_descriptor
R 15020 5 284 fft_types nlm$p fft_type_descriptor
R 15021 5 285 fft_types nlm$o fft_type_descriptor
R 15023 5 287 fft_types nl_d fft_type_descriptor
R 15025 5 289 fft_types nl_d$sd fft_type_descriptor
R 15026 5 290 fft_types nl_d$p fft_type_descriptor
R 15027 5 291 fft_types nl_d$o fft_type_descriptor
R 15029 5 293 fft_types nlm_d fft_type_descriptor
R 15031 5 295 fft_types nlm_d$sd fft_type_descriptor
R 15032 5 296 fft_types nlm_d$p fft_type_descriptor
R 15033 5 297 fft_types nlm_d$o fft_type_descriptor
R 15035 5 299 fft_types tg_snd fft_type_descriptor
R 15037 5 301 fft_types tg_snd$sd fft_type_descriptor
R 15038 5 302 fft_types tg_snd$p fft_type_descriptor
R 15039 5 303 fft_types tg_snd$o fft_type_descriptor
R 15041 5 305 fft_types tg_rcv fft_type_descriptor
R 15043 5 307 fft_types tg_rcv$sd fft_type_descriptor
R 15044 5 308 fft_types tg_rcv$p fft_type_descriptor
R 15045 5 309 fft_types tg_rcv$o fft_type_descriptor
R 15047 5 311 fft_types tg_sdsp fft_type_descriptor
R 15049 5 313 fft_types tg_sdsp$sd fft_type_descriptor
R 15050 5 314 fft_types tg_sdsp$p fft_type_descriptor
R 15051 5 315 fft_types tg_sdsp$o fft_type_descriptor
R 15053 5 317 fft_types tg_rdsp fft_type_descriptor
R 15055 5 319 fft_types tg_rdsp$sd fft_type_descriptor
R 15056 5 320 fft_types tg_rdsp$p fft_type_descriptor
R 15057 5 321 fft_types tg_rdsp$o fft_type_descriptor
R 15059 5 323 fft_types has_task_groups fft_type_descriptor
R 15060 5 324 fft_types use_pencil_decomposition fft_type_descriptor
R 15061 5 325 fft_types rho_clock_label fft_type_descriptor
R 15062 5 326 fft_types wave_clock_label fft_type_descriptor
R 15063 5 327 fft_types grid_id fft_type_descriptor
R 15065 5 329 fft_types stream_scatter_yz fft_type_descriptor
R 15066 5 330 fft_types stream_scatter_yz$sd fft_type_descriptor
R 15067 5 331 fft_types stream_scatter_yz$p fft_type_descriptor
R 15068 5 332 fft_types stream_scatter_yz$o fft_type_descriptor
R 15071 5 335 fft_types stream_many fft_type_descriptor
R 15072 5 336 fft_types stream_many$sd fft_type_descriptor
R 15073 5 337 fft_types stream_many$p fft_type_descriptor
R 15074 5 338 fft_types stream_many$o fft_type_descriptor
R 15076 5 340 fft_types a2a_comp fft_type_descriptor
R 15078 5 342 fft_types bstreams fft_type_descriptor
R 15079 5 343 fft_types bstreams$sd fft_type_descriptor
R 15080 5 344 fft_types bstreams$p fft_type_descriptor
R 15081 5 345 fft_types bstreams$o fft_type_descriptor
R 15084 5 348 fft_types bevents fft_type_descriptor
R 15085 5 349 fft_types bevents$sd fft_type_descriptor
R 15086 5 350 fft_types bevents$p fft_type_descriptor
R 15087 5 351 fft_types bevents$o fft_type_descriptor
R 15089 5 353 fft_types batchsize fft_type_descriptor
R 15090 5 354 fft_types subbatchsize fft_type_descriptor
R 15091 5 355 fft_types nstream_many fft_type_descriptor
R 15092 5 356 fft_types srh fft_type_descriptor
R 15095 5 359 fft_types srh$sd fft_type_descriptor
R 15096 5 360 fft_types srh$p fft_type_descriptor
R 15097 5 361 fft_types srh$o fft_type_descriptor
R 15100 5 364 fft_types aux fft_type_descriptor
R 15101 5 365 fft_types aux$sd fft_type_descriptor
R 15102 5 366 fft_types aux$p fft_type_descriptor
R 15103 5 367 fft_types aux$o fft_type_descriptor
S 15226 6 4 0 0 6 15283 624 107906 80000c 0 A 0 0 0 0 B 0 18 0 0 0 0 0 0 0 0 0 0 15284 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 stdout
S 15227 25 0 0 0 3952 1 624 107913 1000000c 800050 A 0 0 0 0 B 0 20 0 0 0 0 0 0 0 0 0 15283 0 0 0 0 0 0 0 15282 0 0 0 624 0 0 0 0 fft_box_descriptor
S 15228 5 6 0 0 3958 15232 624 107932 10a00004 51 A 0 0 0 0 B 0 24 0 0 0 0 15232 0 3952 0 15234 0 0 0 0 0 0 0 0 15231 1 15228 15233 624 0 0 0 0 irb
S 15229 6 4 0 0 7 15230 624 107936 40800006 0 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 15285 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 z_b_0_1
S 15230 6 4 0 0 7 15236 624 6763 40800006 0 A 0 0 0 0 B 0 24 0 0 0 8 0 0 0 0 0 0 15285 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 z_b_1_1
S 15231 5 1 0 0 3961 15235 624 107944 40822004 1020 A 0 0 0 0 B 0 24 0 0 0 16 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15233 15231 0 624 0 0 0 0 irb$sd
S 15232 5 0 0 0 7 15233 624 107951 40802001 1020 A 0 0 0 0 B 0 24 0 0 0 0 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15228 15232 0 624 0 0 0 0 irb$p
S 15233 5 0 0 0 7 15231 624 107957 40802000 1020 A 0 0 0 0 B 0 24 0 0 0 8 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15232 15233 0 624 0 0 0 0 irb$o
S 15234 22 1 0 0 6 1 624 107963 40000000 1000 A 0 0 0 0 B 0 24 0 0 0 0 0 15228 0 0 0 0 15231 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 irb$arrdsc
S 15235 5 6 0 0 3964 15238 624 107974 10a00004 51 A 0 0 0 0 B 0 25 0 0 0 200 15238 0 3952 0 15240 0 0 0 0 0 0 0 0 15237 15228 15235 15239 624 0 0 0 0 imin2
S 15236 6 4 0 0 7 15242 624 6771 40800006 0 A 0 0 0 0 B 0 25 0 0 0 16 0 0 0 0 0 0 15285 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 z_b_2_1
S 15237 5 1 0 0 3967 15241 624 107980 40822004 1020 A 0 0 0 0 B 0 25 0 0 0 216 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15239 15237 0 624 0 0 0 0 imin2$sd
S 15238 5 0 0 0 7 15239 624 107989 40802001 1020 A 0 0 0 0 B 0 25 0 0 0 200 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15235 15238 0 624 0 0 0 0 imin2$p
S 15239 5 0 0 0 7 15237 624 107997 40802000 1020 A 0 0 0 0 B 0 25 0 0 0 208 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15238 15239 0 624 0 0 0 0 imin2$o
S 15240 22 1 0 0 6 1 624 108005 40000000 1000 A 0 0 0 0 B 0 25 0 0 0 0 0 15235 0 0 0 0 15237 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 imin2$arrdsc
S 15241 5 6 0 0 3970 15244 624 108018 10a00004 51 A 0 0 0 0 B 0 25 0 0 0 352 15244 0 3952 0 15246 0 0 0 0 0 0 0 0 15243 15235 15241 15245 624 0 0 0 0 imin3
S 15242 6 4 0 0 7 15248 624 6861 40800006 0 A 0 0 0 0 B 0 25 0 0 0 24 0 0 0 0 0 0 15285 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 z_b_3_1
S 15243 5 1 0 0 3973 15247 624 108024 40822004 1020 A 0 0 0 0 B 0 25 0 0 0 368 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15245 15243 0 624 0 0 0 0 imin3$sd
S 15244 5 0 0 0 7 15245 624 108033 40802001 1020 A 0 0 0 0 B 0 25 0 0 0 352 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15241 15244 0 624 0 0 0 0 imin3$p
S 15245 5 0 0 0 7 15243 624 108041 40802000 1020 A 0 0 0 0 B 0 25 0 0 0 360 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15244 15245 0 624 0 0 0 0 imin3$o
S 15246 22 1 0 0 6 1 624 108049 40000000 1000 A 0 0 0 0 B 0 25 0 0 0 0 0 15241 0 0 0 0 15243 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 imin3$arrdsc
S 15247 5 6 0 0 3976 15250 624 108062 10a00004 51 A 0 0 0 0 B 0 26 0 0 0 504 15250 0 3952 0 15252 0 0 0 0 0 0 0 0 15249 15241 15247 15251 624 0 0 0 0 imax2
S 15248 6 4 0 0 7 15254 624 6779 40800006 0 A 0 0 0 0 B 0 26 0 0 0 32 0 0 0 0 0 0 15285 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 z_b_4_1
S 15249 5 1 0 0 3979 15253 624 108068 40822004 1020 A 0 0 0 0 B 0 26 0 0 0 520 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15251 15249 0 624 0 0 0 0 imax2$sd
S 15250 5 0 0 0 7 15251 624 108077 40802001 1020 A 0 0 0 0 B 0 26 0 0 0 504 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15247 15250 0 624 0 0 0 0 imax2$p
S 15251 5 0 0 0 7 15249 624 108085 40802000 1020 A 0 0 0 0 B 0 26 0 0 0 512 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15250 15251 0 624 0 0 0 0 imax2$o
S 15252 22 1 0 0 6 1 624 108093 40000000 1000 A 0 0 0 0 B 0 26 0 0 0 0 0 15247 0 0 0 0 15249 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 imax2$arrdsc
S 15253 5 6 0 0 3982 15256 624 108106 10a00004 51 A 0 0 0 0 B 0 26 0 0 0 656 15256 0 3952 0 15258 0 0 0 0 0 0 0 0 15255 15247 15253 15257 624 0 0 0 0 imax3
S 15254 6 4 0 0 7 15260 624 6787 40800006 0 A 0 0 0 0 B 0 26 0 0 0 40 0 0 0 0 0 0 15285 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 z_b_5_1
S 15255 5 1 0 0 3985 15259 624 108112 40822004 1020 A 0 0 0 0 B 0 26 0 0 0 672 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15257 15255 0 624 0 0 0 0 imax3$sd
S 15256 5 0 0 0 7 15257 624 108121 40802001 1020 A 0 0 0 0 B 0 26 0 0 0 656 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15253 15256 0 624 0 0 0 0 imax3$p
S 15257 5 0 0 0 7 15255 624 108129 40802000 1020 A 0 0 0 0 B 0 26 0 0 0 664 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15256 15257 0 624 0 0 0 0 imax3$o
S 15258 22 1 0 0 6 1 624 108137 40000000 1000 A 0 0 0 0 B 0 26 0 0 0 0 0 15253 0 0 0 0 15255 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 imax3$arrdsc
S 15259 5 6 0 0 3988 15262 624 108150 10a00004 51 A 0 0 0 0 B 0 27 0 0 0 808 15262 0 3952 0 15264 0 0 0 0 0 0 0 0 15261 15253 15259 15263 624 0 0 0 0 np2
S 15260 6 4 0 0 7 15266 624 6795 40800006 0 A 0 0 0 0 B 0 27 0 0 0 48 0 0 0 0 0 0 15285 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 z_b_6_1
S 15261 5 1 0 0 3991 15265 624 108154 40822004 1020 A 0 0 0 0 B 0 27 0 0 0 824 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15263 15261 0 624 0 0 0 0 np2$sd
S 15262 5 0 0 0 7 15263 624 108161 40802001 1020 A 0 0 0 0 B 0 27 0 0 0 808 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15259 15262 0 624 0 0 0 0 np2$p
S 15263 5 0 0 0 7 15261 624 108167 40802000 1020 A 0 0 0 0 B 0 27 0 0 0 816 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15262 15263 0 624 0 0 0 0 np2$o
S 15264 22 1 0 0 6 1 624 108173 40000000 1000 A 0 0 0 0 B 0 27 0 0 0 0 0 15259 0 0 0 0 15261 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 np2$arrdsc
S 15265 5 6 0 0 3994 15268 624 108184 10a00004 51 A 0 0 0 0 B 0 27 0 0 0 960 15268 0 3952 0 15270 0 0 0 0 0 0 0 0 15267 15259 15265 15269 624 0 0 0 0 np3
S 15266 6 4 0 0 7 1 624 6878 40800006 0 A 0 0 0 0 B 0 27 0 0 0 56 0 0 0 0 0 0 15285 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 z_b_7_1
S 15267 5 1 0 0 3997 15271 624 108188 40822004 1020 A 0 0 0 0 B 0 27 0 0 0 976 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15269 15267 0 624 0 0 0 0 np3$sd
S 15268 5 0 0 0 7 15269 624 108195 40802001 1020 A 0 0 0 0 B 0 27 0 0 0 960 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15265 15268 0 624 0 0 0 0 np3$p
S 15269 5 0 0 0 7 15267 624 108201 40802000 1020 A 0 0 0 0 B 0 27 0 0 0 968 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15268 15269 0 624 0 0 0 0 np3$o
S 15270 22 1 0 0 6 1 624 108207 40000000 1000 A 0 0 0 0 B 0 27 0 0 0 0 0 15265 0 0 0 0 15267 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 np3$arrdsc
S 15271 5 0 0 0 6 15272 624 6751 800004 0 A 0 0 0 0 B 0 0 0 0 0 1112 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15265 15271 0 624 0 0 0 0 nr1
S 15272 5 0 0 0 6 15273 624 6755 800004 0 A 0 0 0 0 B 0 0 0 0 0 1116 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15271 15272 0 624 0 0 0 0 nr2
S 15273 5 0 0 0 6 15274 624 6759 800004 0 A 0 0 0 0 B 0 0 0 0 0 1120 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15272 15273 0 624 0 0 0 0 nr3
S 15274 5 0 0 0 6 15275 624 104517 800004 0 A 0 0 0 0 B 0 0 0 0 0 1124 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15273 15274 0 624 0 0 0 0 nr1x
S 15275 5 0 0 0 6 15276 624 104522 800004 0 A 0 0 0 0 B 0 0 0 0 0 1128 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15274 15275 0 624 0 0 0 0 nr2x
S 15276 5 0 0 0 6 15277 624 104527 800004 0 A 0 0 0 0 B 0 0 0 0 0 1132 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15275 15276 0 624 0 0 0 0 nr3x
S 15277 5 0 0 0 6 15278 624 106228 800004 0 A 0 0 0 0 B 0 0 0 0 0 1136 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15276 15277 0 624 0 0 0 0 nnr
S 15278 5 0 0 0 6 15279 624 6327 800004 0 A 0 0 0 0 B 0 0 0 0 0 1140 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15277 15278 0 624 0 0 0 0 mype
S 15279 5 0 0 0 6 15280 624 6455 800004 0 A 0 0 0 0 B 0 0 0 0 0 1144 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15278 15279 0 624 0 0 0 0 comm
S 15280 5 0 0 0 6 15281 624 6332 800004 0 A 0 0 0 0 B 0 0 0 0 0 1148 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15279 15280 0 624 0 0 0 0 nproc
S 15281 5 0 0 0 6 1 624 104532 800004 0 A 0 0 0 0 B 0 0 0 0 0 1152 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 15280 15281 0 624 0 0 0 0 root
S 15282 8 5 0 0 4014 1 624 108218 40822004 1220 A 0 0 0 0 B 0 44 0 0 0 0 0 3952 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fft_smallbox_type$$$fft_box_descriptor$$$td
S 15283 6 4 0 0 3952 1 624 108262 80004e 0 A 0 0 0 0 B 800 44 0 0 0 8 0 0 0 0 0 0 15284 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ._dtInit3952
S 15284 11 0 0 0 9 15116 624 108275 40800000 805000 A 0 0 0 0 B 0 46 0 0 0 1168 0 0 15226 15283 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 _fft_smallbox_type$8
S 15285 11 0 0 0 9 15284 624 108296 40800000 805000 A 0 0 0 0 B 0 46 0 0 0 64 0 0 15229 15266 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 _fft_smallbox_type$2
S 15286 23 5 0 0 0 15293 624 108317 0 0 A 0 0 0 0 B 0 50 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fft_box_allocate
S 15287 1 3 0 0 3952 1 15286 107506 4 3000 A 0 0 0 0 B 0 50 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 15288 1 3 1 0 6 1 15286 6327 4 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 mype
S 15289 1 3 1 0 6 1 15286 104532 4 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 root
S 15290 1 3 1 0 6 1 15286 6332 4 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nproc
S 15291 1 3 1 0 6 1 15286 6455 4 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 comm
S 15292 1 3 1 0 6 1 15286 108334 4 3000 A 0 0 0 0 B 0 50 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nat
S 15293 14 5 0 0 0 1 15286 108317 0 400000 A 0 0 0 0 B 0 50 0 0 0 0 0 5291 6 0 0 0 0 0 0 0 0 0 0 0 0 50 0 624 0 0 0 0 fft_box_allocate fft_box_allocate 
F 15293 6 15287 15288 15289 15290 15291 15292
S 15294 23 5 0 0 0 15296 624 108338 0 0 A 0 0 0 0 B 0 67 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fft_box_deallocate
S 15295 1 3 0 0 3952 1 15294 107506 4 3000 A 0 0 0 0 B 0 67 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 15296 14 5 0 0 0 1 15294 108338 0 400000 A 0 0 0 0 B 0 67 0 0 0 0 0 5298 1 0 0 0 0 0 0 0 0 0 0 0 0 67 0 624 0 0 0 0 fft_box_deallocate fft_box_deallocate 
F 15296 1 15295
S 15297 23 5 0 0 0 15302 624 108357 0 0 A 0 0 0 0 B 0 81 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fft_box_set
S 15298 1 3 3 0 3952 1 15297 107506 4 3000 A 0 0 0 0 B 0 81 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 15299 1 3 1 0 6 1 15297 108334 4 3000 A 0 0 0 0 B 0 81 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nat
S 15300 7 3 1 0 4017 1 15297 107932 20000004 10003000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 irb
S 15301 1 3 1 0 3542 1 15297 108369 4 3000 A 0 0 0 0 B 0 81 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfftp
S 15302 14 5 0 0 0 1 15297 108357 20000000 400000 A 0 0 0 0 B 0 81 0 0 0 0 0 5300 4 0 0 0 0 0 0 0 0 0 0 0 0 81 0 624 0 0 0 0 fft_box_set fft_box_set 
F 15302 4 15298 15299 15300 15301
S 15303 6 1 0 0 7 1 15297 108375 40800006 3000 A 0 0 0 0 B 0 87 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_2
S 15304 6 1 0 0 7 1 15297 108383 40800006 3000 A 0 0 0 0 B 0 87 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_2
S 15305 6 1 0 0 7 1 15297 108391 40800006 3000 A 0 0 0 0 B 0 87 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_4_2
S 15306 6 1 0 0 7 1 15297 108399 40800006 3000 A 0 0 0 0 B 0 87 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_2
S 15307 6 1 0 0 7 1 15297 108407 40800006 3000 A 0 0 0 0 B 0 87 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_2
S 15308 6 1 0 0 7 1 15297 108415 40800006 3000 A 0 0 0 0 B 0 87 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_9806
S 15309 6 1 0 0 7 1 15297 108424 40800006 3000 A 0 0 0 0 B 0 87 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_9809
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
A 7701 2 0 0 7576 6 8456 0 0 0 7701 0 0 0 0 0 0 0 0 0 0 0
A 7753 1 0 0 28 2227 8487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 9726 2 0 0 511 18 14735 0 0 0 9726 0 0 0 0 0 0 0 0 0 0 0
A 9727 2 0 0 513 22 14736 0 0 0 9727 0 0 0 0 0 0 0 0 0 0 0
A 9731 1 0 7 7438 3961 15231 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 9732 10 0 0 7605 7 9731 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 139
A 9733 10 0 0 9732 7 9731 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 141
A 9734 4 0 0 6289 7 9733 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 9735 4 0 0 6581 7 9732 0 9734 0 0 0 0 1 0 0 0 0 0 0 0 0
A 9736 10 0 0 9733 7 9731 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 147
A 9737 10 0 0 9736 7 9731 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 149
A 9738 4 0 0 6301 7 9737 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 9739 4 0 0 3530 7 9736 0 9738 0 0 0 0 1 0 0 0 0 0 0 0 0
A 9740 10 0 0 9737 7 9731 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 145
A 9741 10 0 0 9740 7 9731 19 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 153
A 9742 10 0 0 9741 7 9731 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 155
A 9743 10 0 0 9742 7 9731 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 137
A 9745 1 0 9 7447 3967 15237 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 9746 10 0 0 7620 7 9745 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 139
A 9747 10 0 0 9746 7 9745 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 141
A 9748 4 0 0 6307 7 9747 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 9749 4 0 0 6753 7 9746 0 9748 0 0 0 0 1 0 0 0 0 0 0 0 0
A 9750 10 0 0 9747 7 9745 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 145
A 9751 10 0 0 9750 7 9745 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 155
A 9752 10 0 0 9751 7 9745 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 137
A 9754 1 0 9 7064 3973 15243 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 9755 10 0 0 7610 7 9754 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 139
A 9756 10 0 0 9755 7 9754 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 141
A 9757 4 0 0 6323 7 9756 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 9758 4 0 0 4732 7 9755 0 9757 0 0 0 0 1 0 0 0 0 0 0 0 0
A 9759 10 0 0 9756 7 9754 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 145
A 9760 10 0 0 9759 7 9754 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 155
A 9761 10 0 0 9760 7 9754 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 137
A 9763 1 0 9 7081 3979 15249 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 9764 10 0 0 7636 7 9763 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 139
A 9765 10 0 0 9764 7 9763 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 141
A 9766 4 0 0 9110 7 9765 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 9767 4 0 0 9763 7 9764 0 9766 0 0 0 0 1 0 0 0 0 0 0 0 0
A 9768 10 0 0 9765 7 9763 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 145
A 9769 10 0 0 9768 7 9763 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 155
A 9770 10 0 0 9769 7 9763 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 137
A 9772 1 0 9 0 3985 15255 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 9773 10 0 0 7647 7 9772 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 139
A 9774 10 0 0 9773 7 9772 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 141
A 9775 4 0 0 6339 7 9774 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 9776 4 0 0 482 7 9773 0 9775 0 0 0 0 1 0 0 0 0 0 0 0 0
A 9777 10 0 0 9774 7 9772 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 145
A 9778 10 0 0 9777 7 9772 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 155
A 9779 10 0 0 9778 7 9772 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 137
A 9781 1 0 9 7212 3991 15261 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 9782 10 0 0 7646 7 9781 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 139
A 9783 10 0 0 9782 7 9781 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 141
A 9784 4 0 0 6331 7 9783 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 9785 4 0 0 6215 7 9782 0 9784 0 0 0 0 1 0 0 0 0 0 0 0 0
A 9786 10 0 0 9783 7 9781 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 145
A 9787 10 0 0 9786 7 9781 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 155
A 9788 10 0 0 9787 7 9781 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 137
A 9790 1 0 9 9247 3997 15267 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 9791 10 0 0 0 7 9790 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 139
A 9792 10 0 0 9791 7 9790 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 141
A 9793 4 0 0 8971 7 9792 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 9794 4 0 0 7035 7 9791 0 9793 0 0 0 0 1 0 0 0 0 0 0 0 0
A 9795 10 0 0 9792 7 9790 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 145
A 9796 10 0 0 9795 7 9790 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 155
A 9797 10 0 0 9796 7 9790 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 137
A 9798 1 0 0 6168 7 15307 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 9799 1 0 0 9174 7 15303 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 9800 1 0 0 6170 7 15308 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 9801 1 0 0 6169 7 15305 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 9802 1 0 0 6166 7 15304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 9803 1 0 0 1478 7 15309 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 9804 1 0 0 6171 7 15306 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
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
T 14739 3542 0 3 0 0
A 14740 6 0 0 1 2 1
A 14741 6 0 0 1 2 1
A 14742 6 0 0 1 2 1
A 14743 6 0 0 1 2 1
A 14744 6 0 0 1 2 1
A 14745 6 0 0 1 2 1
A 14746 18 0 0 1 397 1
A 14747 18 0 0 1 397 1
A 14748 6 0 0 1 2 1
A 14749 6 0 0 1 33 1
A 14750 6 0 0 1 33 1
A 14751 6 0 0 1 33 1
A 14752 6 0 0 1 3 1
A 14753 6 0 0 1 3 1
A 14754 6 0 0 1 3 1
A 14755 6 0 0 1 2 1
A 14756 6 0 0 1 2 1
A 14757 6 0 0 1 2 1
A 14777 6 0 0 1 2 1
A 14778 6 0 0 1 2 1
A 14779 6 0 0 1 2 1
A 14780 6 0 0 1 2 1
A 14984 6 0 0 1 2 1
A 14985 6 0 0 1 2 1
A 14986 6 0 0 1 2 1
A 15059 18 0 0 1 397 1
A 15060 18 0 0 1 9726 1
A 15061 22 0 0 1 9727 1
A 15062 22 0 0 1 9727 1
A 15089 6 0 0 1 7701 1
A 15090 6 0 0 1 35 1
A 15091 6 0 0 1 7701 0
T 15227 3952 0 3 0 0
A 15271 6 0 0 1 2 1
A 15272 6 0 0 1 2 1
A 15273 6 0 0 1 2 1
A 15274 6 0 0 1 2 1
A 15275 6 0 0 1 2 1
A 15276 6 0 0 1 2 1
A 15277 6 0 0 1 2 1
A 15278 6 0 0 1 2 1
A 15279 6 0 0 1 2 1
A 15280 6 0 0 1 3 1
A 15281 6 0 0 1 2 0
Z
