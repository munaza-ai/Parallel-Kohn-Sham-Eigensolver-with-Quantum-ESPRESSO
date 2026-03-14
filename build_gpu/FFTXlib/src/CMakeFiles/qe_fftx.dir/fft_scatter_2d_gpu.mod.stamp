V34 :0x24 fft_scatter_2d_gpu
22 fft_scatter_2d_gpu.f90 S624 0
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
D 82 26 688 8 687 7
D 91 26 691 8 690 7
D 136 26 776 1232 772 7
D 154 23 6 1 11 165 0 0 0 0 0
 0 165 11 11 165 165
D 157 23 6 1 11 165 0 0 0 0 0
 0 165 11 11 165 165
D 2206 26 688 8 687 7
D 2227 26 8484 8 8483 7
D 3542 26 14742 8680 14741 7
D 6541 23 6 1 10839 10842 1 1 0 0 1
 11 10840 11 11 10840 10841
D 6544 23 6 1 10843 10846 1 1 0 0 1
 11 10844 11 11 10844 10845
D 6547 23 14 1 11 10849 0 0 1 0 0
 0 10848 11 11 10849 10849
D 6550 23 14 1 11 10849 0 0 1 0 0
 0 10848 11 11 10849 10849
D 6553 23 14 1 11 10849 0 0 1 0 0
 0 10848 11 11 10849 10849
D 6556 23 14 1 11 10849 0 0 1 0 0
 0 10848 11 11 10849 10849
D 6559 23 6 1 10850 10853 1 1 0 0 1
 11 10851 11 11 10851 10852
D 6562 23 6 1 10854 10857 1 1 0 0 1
 11 10855 11 11 10855 10856
D 6565 23 14 1 11 10863 0 0 1 0 0
 0 10862 11 11 10863 10863
D 6568 23 14 1 11 10863 0 0 1 0 0
 0 10862 11 11 10863 10863
D 6571 23 14 1 11 10863 0 0 1 0 0
 0 10862 11 11 10863 10863
D 6574 23 14 1 11 10863 0 0 1 0 0
 0 10862 11 11 10863 10863
D 6577 23 6 1 11 10869 0 0 1 0 0
 0 10868 11 11 10869 10869
D 6580 23 6 1 10870 10873 1 1 0 0 1
 11 10871 11 11 10871 10872
D 6583 23 6 1 10874 10877 1 1 0 0 1
 11 10875 11 11 10875 10876
D 6586 23 14 1 11 10883 0 0 1 0 0
 0 10882 11 11 10883 10883
D 6589 23 14 1 11 10883 0 0 1 0 0
 0 10882 11 11 10883 10883
D 6592 23 14 1 11 10883 0 0 1 0 0
 0 10882 11 11 10883 10883
D 6595 23 14 1 11 10883 0 0 1 0 0
 0 10882 11 11 10883 10883
D 6598 23 14 1 11 10883 0 0 1 0 0
 0 10882 11 11 10883 10883
D 6601 23 14 1 11 10883 0 0 1 0 0
 0 10882 11 11 10883 10883
D 6604 23 6 1 10884 10887 1 1 0 0 1
 11 10885 11 11 10885 10886
D 6607 23 6 1 10888 10891 1 1 0 0 1
 11 10889 11 11 10889 10890
D 6610 23 14 1 11 10897 0 0 1 0 0
 0 10896 11 11 10897 10897
D 6613 23 14 1 11 10897 0 0 1 0 0
 0 10896 11 11 10897 10897
D 6616 23 14 1 11 10897 0 0 1 0 0
 0 10896 11 11 10897 10897
D 6619 23 14 1 11 10897 0 0 1 0 0
 0 10896 11 11 10897 10897
D 6622 23 14 1 11 10897 0 0 1 0 0
 0 10896 11 11 10897 10897
D 6625 23 14 1 11 10897 0 0 1 0 0
 0 10896 11 11 10897 10897
D 6628 23 6 1 10898 10901 1 1 0 0 1
 11 10899 11 11 10899 10900
D 6631 23 6 1 10902 10905 1 1 0 0 1
 11 10903 11 11 10903 10904
D 6634 23 14 1 11 10911 0 0 1 0 0
 0 10910 11 11 10911 10911
D 6637 23 14 1 11 10911 0 0 1 0 0
 0 10910 11 11 10911 10911
D 6640 23 14 1 11 10911 0 0 1 0 0
 0 10910 11 11 10911 10911
D 6643 23 14 1 11 10911 0 0 1 0 0
 0 10910 11 11 10911 10911
D 6646 23 14 1 11 10911 0 0 1 0 0
 0 10910 11 11 10911 10911
D 6649 23 14 1 11 10911 0 0 1 0 0
 0 10910 11 11 10911 10911
D 6652 23 6 1 10912 10915 1 1 0 0 1
 11 10913 11 11 10913 10914
D 6655 23 6 1 10916 10919 1 1 0 0 1
 11 10917 11 11 10917 10918
D 6658 23 14 1 11 10925 0 0 1 0 0
 0 10924 11 11 10925 10925
D 6661 23 14 1 11 10925 0 0 1 0 0
 0 10924 11 11 10925 10925
D 6664 23 14 1 11 10925 0 0 1 0 0
 0 10924 11 11 10925 10925
D 6667 23 14 1 11 10925 0 0 1 0 0
 0 10924 11 11 10925 10925
D 6670 23 14 1 11 10925 0 0 1 0 0
 0 10924 11 11 10925 10925
D 6673 23 14 1 11 10925 0 0 1 0 0
 0 10924 11 11 10925 10925
S 624 24 0 0 0 9 1 0 5012 10015 0 A 0 0 0 0 B 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 16 0 0 0 0 0 0 fft_scatter_2d_gpu
S 626 23 0 0 0 9 14741 624 5041 14 0 A 0 0 0 0 B 400000 19 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fft_type_descriptor
S 632 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 634 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 639 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 640 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 641 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 644 7 3 iso_fortran_env character_kinds$ac
R 666 7 25 iso_fortran_env integer_kinds$ac
R 668 7 27 iso_fortran_env logical_kinds$ac
R 670 7 29 iso_fortran_env real_kinds$ac
R 687 25 7 iso_c_binding c_ptr
R 688 5 8 iso_c_binding val c_ptr
R 690 25 10 iso_c_binding c_funptr
R 691 5 11 iso_c_binding val c_funptr
R 725 6 45 iso_c_binding c_null_ptr$ac
R 727 6 47 iso_c_binding c_null_funptr$ac
R 728 26 48 iso_c_binding ==
R 730 26 50 iso_c_binding !=
S 756 3 0 0 0 18 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 18
S 758 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 772 25 5 stick_base sticks_map
R 776 5 9 stick_base lgamma sticks_map
R 777 5 10 stick_base lpara sticks_map
R 778 5 11 stick_base mype sticks_map
R 779 5 12 stick_base nproc sticks_map
R 780 5 13 stick_base nyfft sticks_map
R 781 5 14 stick_base iproc sticks_map
R 784 5 17 stick_base iproc$sd sticks_map
R 785 5 18 stick_base iproc$p sticks_map
R 786 5 19 stick_base iproc$o sticks_map
R 788 5 21 stick_base iproc2 sticks_map
R 790 5 23 stick_base iproc2$sd sticks_map
R 791 5 24 stick_base iproc2$p sticks_map
R 792 5 25 stick_base iproc2$o sticks_map
R 794 5 27 stick_base comm sticks_map
R 795 5 28 stick_base nstx sticks_map
R 796 5 29 stick_base lb sticks_map
R 797 5 30 stick_base ub sticks_map
R 798 5 31 stick_base idx sticks_map
R 800 5 33 stick_base idx$sd sticks_map
R 801 5 34 stick_base idx$p sticks_map
R 802 5 35 stick_base idx$o sticks_map
R 804 5 37 stick_base ist sticks_map
R 807 5 40 stick_base ist$sd sticks_map
R 808 5 41 stick_base ist$p sticks_map
R 809 5 42 stick_base ist$o sticks_map
R 811 5 44 stick_base stown sticks_map
R 814 5 47 stick_base stown$sd sticks_map
R 815 5 48 stick_base stown$p sticks_map
R 816 5 49 stick_base stown$o sticks_map
R 818 5 51 stick_base indmap sticks_map
R 821 5 54 stick_base indmap$sd sticks_map
R 822 5 55 stick_base indmap$p sticks_map
R 823 5 56 stick_base indmap$o sticks_map
R 825 5 58 stick_base bg sticks_map
S 8459 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
R 8483 25 6 nvf_acc_common c_devptr
R 8484 5 7 nvf_acc_common cptr c_devptr
R 8490 6 13 nvf_acc_common c_null_devptr$ac
R 8528 26 51 nvf_acc_common =
S 14737 3 0 0 0 18 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 18
S 14738 3 0 0 0 22 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 104534 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 1 20
R 14741 25 3 fft_types fft_type_descriptor
R 14742 5 4 fft_types nr1 fft_type_descriptor
R 14743 5 5 fft_types nr2 fft_type_descriptor
R 14744 5 6 fft_types nr3 fft_type_descriptor
R 14745 5 7 fft_types nr1x fft_type_descriptor
R 14746 5 8 fft_types nr2x fft_type_descriptor
R 14747 5 9 fft_types nr3x fft_type_descriptor
R 14748 5 10 fft_types lpara fft_type_descriptor
R 14749 5 11 fft_types lgamma fft_type_descriptor
R 14750 5 12 fft_types root fft_type_descriptor
R 14751 5 13 fft_types comm fft_type_descriptor
R 14752 5 14 fft_types comm2 fft_type_descriptor
R 14753 5 15 fft_types comm3 fft_type_descriptor
R 14754 5 16 fft_types nproc fft_type_descriptor
R 14755 5 17 fft_types nproc2 fft_type_descriptor
R 14756 5 18 fft_types nproc3 fft_type_descriptor
R 14757 5 19 fft_types mype fft_type_descriptor
R 14758 5 20 fft_types mype2 fft_type_descriptor
R 14759 5 21 fft_types mype3 fft_type_descriptor
R 14760 5 22 fft_types iproc fft_type_descriptor
R 14763 5 25 fft_types iproc$sd fft_type_descriptor
R 14764 5 26 fft_types iproc$p fft_type_descriptor
R 14765 5 27 fft_types iproc$o fft_type_descriptor
R 14767 5 29 fft_types iproc2 fft_type_descriptor
R 14769 5 31 fft_types iproc2$sd fft_type_descriptor
R 14770 5 32 fft_types iproc2$p fft_type_descriptor
R 14771 5 33 fft_types iproc2$o fft_type_descriptor
R 14773 5 35 fft_types iproc3 fft_type_descriptor
R 14775 5 37 fft_types iproc3$sd fft_type_descriptor
R 14776 5 38 fft_types iproc3$p fft_type_descriptor
R 14777 5 39 fft_types iproc3$o fft_type_descriptor
R 14779 5 41 fft_types my_nr3p fft_type_descriptor
R 14780 5 42 fft_types my_nr2p fft_type_descriptor
R 14781 5 43 fft_types my_i0r3p fft_type_descriptor
R 14782 5 44 fft_types my_i0r2p fft_type_descriptor
R 14783 5 45 fft_types nr3p fft_type_descriptor
R 14785 5 47 fft_types nr3p$sd fft_type_descriptor
R 14786 5 48 fft_types nr3p$p fft_type_descriptor
R 14787 5 49 fft_types nr3p$o fft_type_descriptor
R 14789 5 51 fft_types nr3p_offset fft_type_descriptor
R 14791 5 53 fft_types nr3p_offset$sd fft_type_descriptor
R 14792 5 54 fft_types nr3p_offset$p fft_type_descriptor
R 14793 5 55 fft_types nr3p_offset$o fft_type_descriptor
R 14795 5 57 fft_types nr2p fft_type_descriptor
R 14797 5 59 fft_types nr2p$sd fft_type_descriptor
R 14798 5 60 fft_types nr2p$p fft_type_descriptor
R 14799 5 61 fft_types nr2p$o fft_type_descriptor
R 14801 5 63 fft_types nr2p_offset fft_type_descriptor
R 14803 5 65 fft_types nr2p_offset$sd fft_type_descriptor
R 14804 5 66 fft_types nr2p_offset$p fft_type_descriptor
R 14805 5 67 fft_types nr2p_offset$o fft_type_descriptor
R 14807 5 69 fft_types nr1p fft_type_descriptor
R 14809 5 71 fft_types nr1p$sd fft_type_descriptor
R 14810 5 72 fft_types nr1p$p fft_type_descriptor
R 14811 5 73 fft_types nr1p$o fft_type_descriptor
R 14813 5 75 fft_types nr1w fft_type_descriptor
R 14815 5 77 fft_types nr1w$sd fft_type_descriptor
R 14816 5 78 fft_types nr1w$p fft_type_descriptor
R 14817 5 79 fft_types nr1w$o fft_type_descriptor
R 14819 5 81 fft_types nr1w_tg fft_type_descriptor
R 14820 5 82 fft_types i0r3p fft_type_descriptor
R 14822 5 84 fft_types i0r3p$sd fft_type_descriptor
R 14823 5 85 fft_types i0r3p$p fft_type_descriptor
R 14824 5 86 fft_types i0r3p$o fft_type_descriptor
R 14826 5 88 fft_types i0r2p fft_type_descriptor
R 14828 5 90 fft_types i0r2p$sd fft_type_descriptor
R 14829 5 91 fft_types i0r2p$p fft_type_descriptor
R 14830 5 92 fft_types i0r2p$o fft_type_descriptor
R 14832 5 94 fft_types ir1p fft_type_descriptor
R 14834 5 96 fft_types ir1p$sd fft_type_descriptor
R 14835 5 97 fft_types ir1p$p fft_type_descriptor
R 14836 5 98 fft_types ir1p$o fft_type_descriptor
R 14838 5 100 fft_types indp fft_type_descriptor
R 14841 5 103 fft_types indp$sd fft_type_descriptor
R 14842 5 104 fft_types indp$p fft_type_descriptor
R 14843 5 105 fft_types indp$o fft_type_descriptor
R 14845 5 107 fft_types ir1w fft_type_descriptor
R 14847 5 109 fft_types ir1w$sd fft_type_descriptor
R 14848 5 110 fft_types ir1w$p fft_type_descriptor
R 14849 5 111 fft_types ir1w$o fft_type_descriptor
R 14851 5 113 fft_types indw fft_type_descriptor
R 14854 5 116 fft_types indw$sd fft_type_descriptor
R 14855 5 117 fft_types indw$p fft_type_descriptor
R 14856 5 118 fft_types indw$o fft_type_descriptor
R 14858 5 120 fft_types ir1w_tg fft_type_descriptor
R 14860 5 122 fft_types ir1w_tg$sd fft_type_descriptor
R 14861 5 123 fft_types ir1w_tg$p fft_type_descriptor
R 14862 5 124 fft_types ir1w_tg$o fft_type_descriptor
R 14864 5 126 fft_types indw_tg fft_type_descriptor
R 14866 5 128 fft_types indw_tg$sd fft_type_descriptor
R 14867 5 129 fft_types indw_tg$p fft_type_descriptor
R 14868 5 130 fft_types indw_tg$o fft_type_descriptor
R 14870 5 132 fft_types ir1p_d fft_type_descriptor
R 14872 5 134 fft_types ir1p_d$sd fft_type_descriptor
R 14873 5 135 fft_types ir1p_d$p fft_type_descriptor
R 14874 5 136 fft_types ir1p_d$o fft_type_descriptor
R 14876 5 138 fft_types ir1w_d fft_type_descriptor
R 14878 5 140 fft_types ir1w_d$sd fft_type_descriptor
R 14879 5 141 fft_types ir1w_d$p fft_type_descriptor
R 14880 5 142 fft_types ir1w_d$o fft_type_descriptor
R 14882 5 144 fft_types ir1w_tg_d fft_type_descriptor
R 14884 5 146 fft_types ir1w_tg_d$sd fft_type_descriptor
R 14885 5 147 fft_types ir1w_tg_d$p fft_type_descriptor
R 14886 5 148 fft_types ir1w_tg_d$o fft_type_descriptor
R 14888 5 150 fft_types indp_d fft_type_descriptor
R 14891 5 153 fft_types indp_d$sd fft_type_descriptor
R 14892 5 154 fft_types indp_d$p fft_type_descriptor
R 14893 5 155 fft_types indp_d$o fft_type_descriptor
R 14895 5 157 fft_types indw_d fft_type_descriptor
R 14898 5 160 fft_types indw_d$sd fft_type_descriptor
R 14899 5 161 fft_types indw_d$p fft_type_descriptor
R 14900 5 162 fft_types indw_d$o fft_type_descriptor
R 14902 5 164 fft_types indw_tg_d fft_type_descriptor
R 14905 5 167 fft_types indw_tg_d$sd fft_type_descriptor
R 14906 5 168 fft_types indw_tg_d$p fft_type_descriptor
R 14907 5 169 fft_types indw_tg_d$o fft_type_descriptor
R 14909 5 171 fft_types nr1p_d fft_type_descriptor
R 14911 5 173 fft_types nr1p_d$sd fft_type_descriptor
R 14912 5 174 fft_types nr1p_d$p fft_type_descriptor
R 14913 5 175 fft_types nr1p_d$o fft_type_descriptor
R 14915 5 177 fft_types nr1w_d fft_type_descriptor
R 14917 5 179 fft_types nr1w_d$sd fft_type_descriptor
R 14918 5 180 fft_types nr1w_d$p fft_type_descriptor
R 14919 5 181 fft_types nr1w_d$o fft_type_descriptor
R 14921 5 183 fft_types nr1w_tg_d fft_type_descriptor
R 14923 5 185 fft_types nr1w_tg_d$sd fft_type_descriptor
R 14924 5 186 fft_types nr1w_tg_d$p fft_type_descriptor
R 14925 5 187 fft_types nr1w_tg_d$o fft_type_descriptor
R 14927 5 189 fft_types nst fft_type_descriptor
R 14928 5 190 fft_types nsp fft_type_descriptor
R 14930 5 192 fft_types nsp$sd fft_type_descriptor
R 14931 5 193 fft_types nsp$p fft_type_descriptor
R 14932 5 194 fft_types nsp$o fft_type_descriptor
R 14934 5 196 fft_types nsp_offset fft_type_descriptor
R 14937 5 199 fft_types nsp_offset$sd fft_type_descriptor
R 14938 5 200 fft_types nsp_offset$p fft_type_descriptor
R 14939 5 201 fft_types nsp_offset$o fft_type_descriptor
R 14941 5 203 fft_types nsw fft_type_descriptor
R 14943 5 205 fft_types nsw$sd fft_type_descriptor
R 14944 5 206 fft_types nsw$p fft_type_descriptor
R 14945 5 207 fft_types nsw$o fft_type_descriptor
R 14947 5 209 fft_types nsw_offset fft_type_descriptor
R 14950 5 212 fft_types nsw_offset$sd fft_type_descriptor
R 14951 5 213 fft_types nsw_offset$p fft_type_descriptor
R 14952 5 214 fft_types nsw_offset$o fft_type_descriptor
R 14954 5 216 fft_types nsw_tg fft_type_descriptor
R 14956 5 218 fft_types nsw_tg$sd fft_type_descriptor
R 14957 5 219 fft_types nsw_tg$p fft_type_descriptor
R 14958 5 220 fft_types nsw_tg$o fft_type_descriptor
R 14960 5 222 fft_types ngl fft_type_descriptor
R 14962 5 224 fft_types ngl$sd fft_type_descriptor
R 14963 5 225 fft_types ngl$p fft_type_descriptor
R 14964 5 226 fft_types ngl$o fft_type_descriptor
R 14966 5 228 fft_types nwl fft_type_descriptor
R 14968 5 230 fft_types nwl$sd fft_type_descriptor
R 14969 5 231 fft_types nwl$p fft_type_descriptor
R 14970 5 232 fft_types nwl$o fft_type_descriptor
R 14972 5 234 fft_types ngm fft_type_descriptor
R 14973 5 235 fft_types ngw fft_type_descriptor
R 14974 5 236 fft_types iplp fft_type_descriptor
R 14976 5 238 fft_types iplp$sd fft_type_descriptor
R 14977 5 239 fft_types iplp$p fft_type_descriptor
R 14978 5 240 fft_types iplp$o fft_type_descriptor
R 14980 5 242 fft_types iplw fft_type_descriptor
R 14982 5 244 fft_types iplw$sd fft_type_descriptor
R 14983 5 245 fft_types iplw$p fft_type_descriptor
R 14984 5 246 fft_types iplw$o fft_type_descriptor
R 14986 5 248 fft_types nnp fft_type_descriptor
R 14987 5 249 fft_types nnr fft_type_descriptor
R 14988 5 250 fft_types nnr_tg fft_type_descriptor
R 14989 5 251 fft_types iss fft_type_descriptor
R 14991 5 253 fft_types iss$sd fft_type_descriptor
R 14992 5 254 fft_types iss$p fft_type_descriptor
R 14993 5 255 fft_types iss$o fft_type_descriptor
R 14995 5 257 fft_types isind fft_type_descriptor
R 14997 5 259 fft_types isind$sd fft_type_descriptor
R 14998 5 260 fft_types isind$p fft_type_descriptor
R 14999 5 261 fft_types isind$o fft_type_descriptor
R 15001 5 263 fft_types ismap fft_type_descriptor
R 15003 5 265 fft_types ismap$sd fft_type_descriptor
R 15004 5 266 fft_types ismap$p fft_type_descriptor
R 15005 5 267 fft_types ismap$o fft_type_descriptor
R 15007 5 269 fft_types ismap_d fft_type_descriptor
R 15009 5 271 fft_types ismap_d$sd fft_type_descriptor
R 15010 5 272 fft_types ismap_d$p fft_type_descriptor
R 15011 5 273 fft_types ismap_d$o fft_type_descriptor
R 15013 5 275 fft_types nl fft_type_descriptor
R 15015 5 277 fft_types nl$sd fft_type_descriptor
R 15016 5 278 fft_types nl$p fft_type_descriptor
R 15017 5 279 fft_types nl$o fft_type_descriptor
R 15019 5 281 fft_types nlm fft_type_descriptor
R 15021 5 283 fft_types nlm$sd fft_type_descriptor
R 15022 5 284 fft_types nlm$p fft_type_descriptor
R 15023 5 285 fft_types nlm$o fft_type_descriptor
R 15025 5 287 fft_types nl_d fft_type_descriptor
R 15027 5 289 fft_types nl_d$sd fft_type_descriptor
R 15028 5 290 fft_types nl_d$p fft_type_descriptor
R 15029 5 291 fft_types nl_d$o fft_type_descriptor
R 15031 5 293 fft_types nlm_d fft_type_descriptor
R 15033 5 295 fft_types nlm_d$sd fft_type_descriptor
R 15034 5 296 fft_types nlm_d$p fft_type_descriptor
R 15035 5 297 fft_types nlm_d$o fft_type_descriptor
R 15037 5 299 fft_types tg_snd fft_type_descriptor
R 15039 5 301 fft_types tg_snd$sd fft_type_descriptor
R 15040 5 302 fft_types tg_snd$p fft_type_descriptor
R 15041 5 303 fft_types tg_snd$o fft_type_descriptor
R 15043 5 305 fft_types tg_rcv fft_type_descriptor
R 15045 5 307 fft_types tg_rcv$sd fft_type_descriptor
R 15046 5 308 fft_types tg_rcv$p fft_type_descriptor
R 15047 5 309 fft_types tg_rcv$o fft_type_descriptor
R 15049 5 311 fft_types tg_sdsp fft_type_descriptor
R 15051 5 313 fft_types tg_sdsp$sd fft_type_descriptor
R 15052 5 314 fft_types tg_sdsp$p fft_type_descriptor
R 15053 5 315 fft_types tg_sdsp$o fft_type_descriptor
R 15055 5 317 fft_types tg_rdsp fft_type_descriptor
R 15057 5 319 fft_types tg_rdsp$sd fft_type_descriptor
R 15058 5 320 fft_types tg_rdsp$p fft_type_descriptor
R 15059 5 321 fft_types tg_rdsp$o fft_type_descriptor
R 15061 5 323 fft_types has_task_groups fft_type_descriptor
R 15062 5 324 fft_types use_pencil_decomposition fft_type_descriptor
R 15063 5 325 fft_types rho_clock_label fft_type_descriptor
R 15064 5 326 fft_types wave_clock_label fft_type_descriptor
R 15065 5 327 fft_types grid_id fft_type_descriptor
R 15067 5 329 fft_types stream_scatter_yz fft_type_descriptor
R 15068 5 330 fft_types stream_scatter_yz$sd fft_type_descriptor
R 15069 5 331 fft_types stream_scatter_yz$p fft_type_descriptor
R 15070 5 332 fft_types stream_scatter_yz$o fft_type_descriptor
R 15073 5 335 fft_types stream_many fft_type_descriptor
R 15074 5 336 fft_types stream_many$sd fft_type_descriptor
R 15075 5 337 fft_types stream_many$p fft_type_descriptor
R 15076 5 338 fft_types stream_many$o fft_type_descriptor
R 15078 5 340 fft_types a2a_comp fft_type_descriptor
R 15080 5 342 fft_types bstreams fft_type_descriptor
R 15081 5 343 fft_types bstreams$sd fft_type_descriptor
R 15082 5 344 fft_types bstreams$p fft_type_descriptor
R 15083 5 345 fft_types bstreams$o fft_type_descriptor
R 15086 5 348 fft_types bevents fft_type_descriptor
R 15087 5 349 fft_types bevents$sd fft_type_descriptor
R 15088 5 350 fft_types bevents$p fft_type_descriptor
R 15089 5 351 fft_types bevents$o fft_type_descriptor
R 15091 5 353 fft_types batchsize fft_type_descriptor
R 15092 5 354 fft_types subbatchsize fft_type_descriptor
R 15093 5 355 fft_types nstream_many fft_type_descriptor
R 15094 5 356 fft_types srh fft_type_descriptor
R 15097 5 359 fft_types srh$sd fft_type_descriptor
R 15098 5 360 fft_types srh$p fft_type_descriptor
R 15099 5 361 fft_types srh$o fft_type_descriptor
R 15102 5 364 fft_types aux fft_type_descriptor
R 15103 5 365 fft_types aux$sd fft_type_descriptor
R 15104 5 366 fft_types aux$p fft_type_descriptor
R 15105 5 367 fft_types aux$o fft_type_descriptor
S 22284 27 0 0 0 9 22290 624 134757 0 8000000 A 0 0 0 0 B 0 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fft_scatter_gpu
S 22285 27 0 0 0 9 22311 624 134773 0 8000000 A 0 0 0 0 B 0 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fft_scatter_gpu_batch
S 22286 27 0 0 0 9 22360 624 134795 0 8000000 A 0 0 0 0 B 0 32 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fft_scatter_many_columns_to_planes_send
S 22287 27 0 0 0 9 22335 624 134835 0 8000000 A 0 0 0 0 B 0 32 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fft_scatter_many_columns_to_planes_store
S 22288 27 0 0 0 9 22410 624 134876 0 8000000 A 0 0 0 0 B 0 32 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fft_scatter_many_planes_to_columns_send
S 22289 27 0 0 0 9 22385 624 134916 0 8000000 A 0 0 0 0 B 0 32 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fft_scatter_many_planes_to_columns_store
S 22290 23 5 0 0 0 22301 624 134757 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fft_scatter_gpu
S 22291 6 3 1 0 3542 1 22290 107847 800014 3008 A 0 0 0 0 B 0 42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft
S 22292 7 3 3 0 6547 1 22290 134957 808214 3000 A 0 0 0 0 B 0 42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_in_d
S 22293 7 3 3 0 6553 1 22290 134964 800214 3000 A 0 0 0 0 B 0 42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_in
S 22294 1 3 1 0 6 1 22290 104546 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nr3x
S 22295 6 3 1 0 6 1 22290 134969 800014 3000 A 0 0 0 0 B 0 42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nxx_
S 22296 7 3 3 0 6550 1 22290 134974 808214 3000 A 0 0 0 0 B 0 42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_aux_d
S 22297 7 3 3 0 6556 1 22290 134982 800214 3000 A 0 0 0 0 B 0 42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_aux
S 22298 7 3 1 0 6541 1 22290 134988 20000014 10003000 A 0 0 0 0 B 0 42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ncp_
S 22299 7 3 1 0 6544 1 22290 134993 20000014 10003000 A 0 0 0 0 B 0 42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 npp_
S 22300 1 3 1 0 6 1 22290 134998 14 3000 A 0 0 0 0 B 0 42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 isgn
S 22301 14 5 0 0 0 1 22290 134757 20000200 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10523 10 0 0 0 0 0 0 0 0 0 0 0 0 42 0 624 0 0 0 0 fft_scatter_gpu fft_scatter_gpu 
F 22301 10 22291 22292 22293 22294 22295 22296 22297 22298 22299 22300
S 22302 6 1 0 0 7 1 22290 6793 40800016 3000 A 0 0 0 0 B 0 48 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 22303 6 1 0 0 7 1 22290 6801 40800016 3000 A 0 0 0 0 B 0 48 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22304 6 1 0 0 7 1 22290 6891 40800016 3000 A 0 0 0 0 B 0 48 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 22305 6 1 0 0 7 1 22290 135003 40800016 3000 A 0 0 0 0 B 0 48 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10844
S 22306 6 1 0 0 7 1 22290 6817 40800016 3000 A 0 0 0 0 B 0 48 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22307 6 1 0 0 7 1 22290 6825 40800016 3000 A 0 0 0 0 B 0 48 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22308 6 1 0 0 7 1 22290 6908 40800016 3000 A 0 0 0 0 B 0 48 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_7_1
S 22309 6 1 0 0 7 1 22290 135013 40800016 3000 A 0 0 0 0 B 0 48 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10851
S 22310 6 1 0 0 7 1 22290 135023 40800016 3000 A 0 0 0 0 B 0 49 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10854
S 22311 23 5 0 0 0 22324 624 134773 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fft_scatter_gpu_batch
S 22312 6 3 1 0 3542 1 22311 107847 800014 3008 A 0 0 0 0 B 0 360 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft
S 22313 7 3 3 0 6565 1 22311 134957 808214 3000 A 0 0 0 0 B 0 360 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_in_d
S 22314 7 3 3 0 6571 1 22311 134964 800214 3000 A 0 0 0 0 B 0 360 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_in
S 22315 1 3 1 0 6 1 22311 104546 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nr3x
S 22316 6 3 1 0 6 1 22311 134969 800014 3000 A 0 0 0 0 B 0 360 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nxx_
S 22317 7 3 3 0 6568 1 22311 134974 808214 3000 A 0 0 0 0 B 0 360 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_aux_d
S 22318 7 3 3 0 6574 1 22311 134982 800214 3000 A 0 0 0 0 B 0 360 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_aux
S 22319 7 3 1 0 6559 1 22311 134988 20000014 10003000 A 0 0 0 0 B 0 360 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ncp_
S 22320 7 3 1 0 6562 1 22311 134993 20000014 10003000 A 0 0 0 0 B 0 360 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 npp_
S 22321 1 3 1 0 6 1 22311 134998 14 3000 A 0 0 0 0 B 0 360 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 isgn
S 22322 6 3 1 0 6 1 22311 107203 800014 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 batchsize
S 22323 7 3 3 0 6577 1 22311 107239 800214 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 srh
S 22324 14 5 0 0 0 1 22311 134773 20000200 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10534 12 0 0 0 0 0 0 0 0 0 0 0 0 360 0 624 0 0 0 0 fft_scatter_gpu_batch fft_scatter_gpu_batch 
F 22324 12 22312 22313 22314 22315 22316 22317 22318 22319 22320 22321 22322 22323
S 22325 6 1 0 0 7 1 22311 6793 40800016 3000 A 0 0 0 0 B 0 369 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 22326 6 1 0 0 7 1 22311 6801 40800016 3000 A 0 0 0 0 B 0 369 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22327 6 1 0 0 7 1 22311 6891 40800016 3000 A 0 0 0 0 B 0 369 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 22328 6 1 0 0 7 1 22311 135033 40800016 3000 A 0 0 0 0 B 0 369 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10855
S 22329 6 1 0 0 7 1 22311 6817 40800016 3000 A 0 0 0 0 B 0 369 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22330 6 1 0 0 7 1 22311 6825 40800016 3000 A 0 0 0 0 B 0 369 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22331 6 1 0 0 7 1 22311 6908 40800016 3000 A 0 0 0 0 B 0 369 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_7_1
S 22332 6 1 0 0 7 1 22311 135043 40800016 3000 A 0 0 0 0 B 0 369 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10862
S 22333 6 1 0 0 7 1 22311 135053 40800016 3000 A 0 0 0 0 B 0 370 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10868
S 22334 6 1 0 0 7 1 22311 135063 40800016 3000 A 0 0 0 0 B 0 373 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10874
S 22335 23 5 0 0 0 22350 624 134835 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fft_scatter_many_columns_to_planes_store
S 22336 1 3 1 0 3542 1 22335 107847 14 3008 A 0 0 0 0 B 0 711 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft
S 22337 7 3 3 0 6586 1 22335 134957 808214 3000 A 0 0 0 0 B 0 711 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_in_d
S 22338 7 3 3 0 6595 1 22335 134964 800214 3000 A 0 0 0 0 B 0 711 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_in
S 22339 1 3 1 0 6 1 22335 104546 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nr3x
S 22340 6 3 1 0 6 1 22335 134969 800014 3000 A 0 0 0 0 B 0 711 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nxx_
S 22341 7 3 3 0 6589 1 22335 134974 808214 3000 A 0 0 0 0 B 0 711 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_aux_d
S 22342 7 3 3 0 6598 1 22335 134982 800214 3000 A 0 0 0 0 B 0 711 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_aux
S 22343 7 3 3 0 6592 1 22335 135073 808214 3000 A 0 0 0 0 B 0 711 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_aux2_d
S 22344 7 3 3 0 6601 1 22335 135082 800214 3000 A 0 0 0 0 B 0 711 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_aux2
S 22345 7 3 1 0 6580 1 22335 134988 20000014 10003000 A 0 0 0 0 B 0 711 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ncp_
S 22346 7 3 1 0 6583 1 22335 134993 20000014 10003000 A 0 0 0 0 B 0 711 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 npp_
S 22347 1 3 1 0 6 1 22335 134998 14 3000 A 0 0 0 0 B 0 711 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 isgn
S 22348 6 3 1 0 6 1 22335 107203 800014 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 batchsize
S 22349 1 3 1 0 6 1 22335 135089 14 3000 A 0 0 0 0 B 0 711 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 batch_id
S 22350 14 5 0 0 0 1 22335 134835 20000200 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10547 14 0 0 0 0 0 0 0 0 0 0 0 0 711 0 624 0 0 0 0 fft_scatter_many_columns_to_planes_store fft_scatter_many_columns_to_planes_store 
F 22350 14 22336 22337 22338 22339 22340 22341 22342 22343 22344 22345 22346 22347 22348 22349
S 22351 6 1 0 0 7 1 22335 6793 40800016 3000 A 0 0 0 0 B 0 717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 22352 6 1 0 0 7 1 22335 6801 40800016 3000 A 0 0 0 0 B 0 717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22353 6 1 0 0 7 1 22335 6891 40800016 3000 A 0 0 0 0 B 0 717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 22354 6 1 0 0 7 1 22335 135098 40800016 3000 A 0 0 0 0 B 0 717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10875
S 22355 6 1 0 0 7 1 22335 6817 40800016 3000 A 0 0 0 0 B 0 717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22356 6 1 0 0 7 1 22335 6825 40800016 3000 A 0 0 0 0 B 0 717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22357 6 1 0 0 7 1 22335 6908 40800016 3000 A 0 0 0 0 B 0 717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_7_1
S 22358 6 1 0 0 7 1 22335 135108 40800016 3000 A 0 0 0 0 B 0 717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10882
S 22359 6 1 0 0 7 1 22335 135118 40800016 3000 A 0 0 0 0 B 0 718 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10888
S 22360 23 5 0 0 0 22375 624 134795 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fft_scatter_many_columns_to_planes_send
S 22361 1 3 1 0 3542 1 22360 107847 14 3008 A 0 0 0 0 B 0 811 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft
S 22362 7 3 3 0 6610 1 22360 134957 808214 3000 A 0 0 0 0 B 0 811 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_in_d
S 22363 7 3 3 0 6619 1 22360 134964 800214 3000 A 0 0 0 0 B 0 811 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_in
S 22364 1 3 1 0 6 1 22360 104546 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nr3x
S 22365 6 3 1 0 6 1 22360 134969 800014 3000 A 0 0 0 0 B 0 811 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nxx_
S 22366 7 3 3 0 6613 1 22360 134974 808214 3000 A 0 0 0 0 B 0 811 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_aux_d
S 22367 7 3 3 0 6622 1 22360 134982 800214 3000 A 0 0 0 0 B 0 811 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_aux
S 22368 7 3 3 0 6616 1 22360 135073 808214 3000 A 0 0 0 0 B 0 811 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_aux2_d
S 22369 7 3 3 0 6625 1 22360 135082 800214 3000 A 0 0 0 0 B 0 811 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_aux2
S 22370 7 3 1 0 6604 1 22360 134988 20000014 10003000 A 0 0 0 0 B 0 811 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ncp_
S 22371 7 3 1 0 6607 1 22360 134993 20000014 10003000 A 0 0 0 0 B 0 811 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 npp_
S 22372 1 3 1 0 6 1 22360 134998 14 3000 A 0 0 0 0 B 0 811 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 isgn
S 22373 6 3 1 0 6 1 22360 107203 800014 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 batchsize
S 22374 1 3 1 0 6 1 22360 135089 14 3000 A 0 0 0 0 B 0 811 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 batch_id
S 22375 14 5 0 0 0 1 22360 134795 20000200 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10562 14 0 0 0 0 0 0 0 0 0 0 0 0 811 0 624 0 0 0 0 fft_scatter_many_columns_to_planes_send fft_scatter_many_columns_to_planes_send 
F 22375 14 22361 22362 22363 22364 22365 22366 22367 22368 22369 22370 22371 22372 22373 22374
S 22376 6 1 0 0 7 1 22360 6793 40800016 3000 A 0 0 0 0 B 0 817 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 22377 6 1 0 0 7 1 22360 6801 40800016 3000 A 0 0 0 0 B 0 817 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22378 6 1 0 0 7 1 22360 6891 40800016 3000 A 0 0 0 0 B 0 817 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 22379 6 1 0 0 7 1 22360 135128 40800016 3000 A 0 0 0 0 B 0 817 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10889
S 22380 6 1 0 0 7 1 22360 6817 40800016 3000 A 0 0 0 0 B 0 817 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22381 6 1 0 0 7 1 22360 6825 40800016 3000 A 0 0 0 0 B 0 817 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22382 6 1 0 0 7 1 22360 6908 40800016 3000 A 0 0 0 0 B 0 817 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_7_1
S 22383 6 1 0 0 7 1 22360 135138 40800016 3000 A 0 0 0 0 B 0 817 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10896
S 22384 6 1 0 0 7 1 22360 135148 40800016 3000 A 0 0 0 0 B 0 818 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10902
S 22385 23 5 0 0 0 22400 624 134916 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fft_scatter_many_planes_to_columns_store
S 22386 1 3 1 0 3542 1 22385 107847 14 3008 A 0 0 0 0 B 0 1016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft
S 22387 7 3 3 0 6634 1 22385 134957 808214 3000 A 0 0 0 0 B 0 1016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_in_d
S 22388 7 3 3 0 6643 1 22385 134964 800214 3000 A 0 0 0 0 B 0 1016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_in
S 22389 1 3 1 0 6 1 22385 104546 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nr3x
S 22390 6 3 1 0 6 1 22385 134969 800014 3000 A 0 0 0 0 B 0 1016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nxx_
S 22391 7 3 3 0 6637 1 22385 134974 808214 3000 A 0 0 0 0 B 0 1016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_aux_d
S 22392 7 3 3 0 6646 1 22385 134982 800214 3000 A 0 0 0 0 B 0 1016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_aux
S 22393 7 3 3 0 6640 1 22385 135073 808214 3000 A 0 0 0 0 B 0 1016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_aux2_d
S 22394 7 3 3 0 6649 1 22385 135082 800214 3000 A 0 0 0 0 B 0 1016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_aux2
S 22395 7 3 1 0 6628 1 22385 134988 20000014 10003000 A 0 0 0 0 B 0 1016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ncp_
S 22396 7 3 1 0 6631 1 22385 134993 20000014 10003000 A 0 0 0 0 B 0 1016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 npp_
S 22397 1 3 1 0 6 1 22385 134998 14 3000 A 0 0 0 0 B 0 1016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 isgn
S 22398 6 3 1 0 6 1 22385 107203 800014 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 batchsize
S 22399 1 3 1 0 6 1 22385 135089 14 3000 A 0 0 0 0 B 0 1016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 batch_id
S 22400 14 5 0 0 0 1 22385 134916 20000200 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10577 14 0 0 0 0 0 0 0 0 0 0 0 0 1016 0 624 0 0 0 0 fft_scatter_many_planes_to_columns_store fft_scatter_many_planes_to_columns_store 
F 22400 14 22386 22387 22388 22389 22390 22391 22392 22393 22394 22395 22396 22397 22398 22399
S 22401 6 1 0 0 7 1 22385 6793 40800016 3000 A 0 0 0 0 B 0 1022 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 22402 6 1 0 0 7 1 22385 6801 40800016 3000 A 0 0 0 0 B 0 1022 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22403 6 1 0 0 7 1 22385 6891 40800016 3000 A 0 0 0 0 B 0 1022 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 22404 6 1 0 0 7 1 22385 135158 40800016 3000 A 0 0 0 0 B 0 1022 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10903
S 22405 6 1 0 0 7 1 22385 6817 40800016 3000 A 0 0 0 0 B 0 1022 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22406 6 1 0 0 7 1 22385 6825 40800016 3000 A 0 0 0 0 B 0 1022 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22407 6 1 0 0 7 1 22385 6908 40800016 3000 A 0 0 0 0 B 0 1022 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_7_1
S 22408 6 1 0 0 7 1 22385 50597 40800016 3000 A 0 0 0 0 B 0 1022 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10910
S 22409 6 1 0 0 7 1 22385 50617 40800016 3000 A 0 0 0 0 B 0 1023 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10916
S 22410 23 5 0 0 0 22425 624 134876 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fft_scatter_many_planes_to_columns_send
S 22411 1 3 1 0 3542 1 22410 107847 14 3008 A 0 0 0 0 B 0 1162 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dfft
S 22412 7 3 3 0 6658 1 22410 134957 808214 3000 A 0 0 0 0 B 0 1162 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_in_d
S 22413 7 3 3 0 6667 1 22410 134964 800214 3000 A 0 0 0 0 B 0 1162 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_in
S 22414 1 3 1 0 6 1 22410 104546 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nr3x
S 22415 6 3 1 0 6 1 22410 134969 800014 3000 A 0 0 0 0 B 0 1162 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nxx_
S 22416 7 3 3 0 6661 1 22410 134974 808214 3000 A 0 0 0 0 B 0 1162 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_aux_d
S 22417 7 3 3 0 6670 1 22410 134982 800214 3000 A 0 0 0 0 B 0 1162 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_aux
S 22418 7 3 3 0 6664 1 22410 135073 808214 3000 A 0 0 0 0 B 0 1162 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_aux2_d
S 22419 7 3 3 0 6673 1 22410 135082 800214 3000 A 0 0 0 0 B 0 1162 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f_aux2
S 22420 7 3 1 0 6652 1 22410 134988 20000014 10003000 A 0 0 0 0 B 0 1162 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ncp_
S 22421 7 3 1 0 6655 1 22410 134993 20000014 10003000 A 0 0 0 0 B 0 1162 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 npp_
S 22422 1 3 1 0 6 1 22410 134998 14 3000 A 0 0 0 0 B 0 1162 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 isgn
S 22423 6 3 1 0 6 1 22410 107203 800014 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 batchsize
S 22424 1 3 1 0 6 1 22410 135089 14 3000 A 0 0 0 0 B 0 1162 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 batch_id
S 22425 14 5 0 0 0 1 22410 134876 20000200 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10592 14 0 0 0 0 0 0 0 0 0 0 0 0 1162 0 624 0 0 0 0 fft_scatter_many_planes_to_columns_send fft_scatter_many_planes_to_columns_send 
F 22425 14 22411 22412 22413 22414 22415 22416 22417 22418 22419 22420 22421 22422 22423 22424
S 22426 6 1 0 0 7 1 22410 6793 40800016 3000 A 0 0 0 0 B 0 1168 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 22427 6 1 0 0 7 1 22410 6801 40800016 3000 A 0 0 0 0 B 0 1168 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22428 6 1 0 0 7 1 22410 6891 40800016 3000 A 0 0 0 0 B 0 1168 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 22429 6 1 0 0 7 1 22410 135168 40800016 3000 A 0 0 0 0 B 0 1168 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10917
S 22430 6 1 0 0 7 1 22410 6817 40800016 3000 A 0 0 0 0 B 0 1168 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22431 6 1 0 0 7 1 22410 6825 40800016 3000 A 0 0 0 0 B 0 1168 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22432 6 1 0 0 7 1 22410 6908 40800016 3000 A 0 0 0 0 B 0 1168 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_7_1
S 22433 6 1 0 0 7 1 22410 135178 40800016 3000 A 0 0 0 0 B 0 1168 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10924
S 22434 6 1 0 0 7 1 22410 135188 40800016 3000 A 0 0 0 0 B 0 1169 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10930
A 16 2 0 0 0 6 632 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0
A 33 2 0 0 0 6 634 0 0 0 33 0 0 0 0 0 0 0 0 0 0 0
A 35 2 0 0 0 6 639 0 0 0 35 0 0 0 0 0 0 0 0 0 0 0
A 57 2 0 0 0 7 640 0 0 0 57 0 0 0 0 0 0 0 0 0 0 0
A 58 2 0 0 0 7 641 0 0 0 58 0 0 0 0 0 0 0 0 0 0 0
A 61 1 0 1 0 58 644 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 67 1 0 3 0 64 666 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 73 1 0 3 0 70 668 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 77 1 0 5 0 76 670 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 131 1 0 0 0 82 725 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 134 1 0 0 0 91 727 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 165 2 0 0 0 7 758 0 0 0 165 0 0 0 0 0 0 0 0 0 0 0
A 397 2 0 0 0 18 756 0 0 0 397 0 0 0 0 0 0 0 0 0 0 0
A 7701 2 0 0 7576 6 8459 0 0 0 7701 0 0 0 0 0 0 0 0 0 0 0
A 7753 1 0 0 28 2227 8490 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 9726 2 0 0 523 18 14737 0 0 0 9726 0 0 0 0 0 0 0 0 0 0 0
A 9727 2 0 0 511 22 14738 0 0 0 9727 0 0 0 0 0 0 0 0 0 0 0
A 10839 1 0 0 8209 7 22304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10840 1 0 0 8205 7 22302 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10841 1 0 0 9293 7 22305 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10842 1 0 0 8207 7 22303 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10843 1 0 0 8214 7 22308 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10844 1 0 0 8526 7 22306 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10845 1 0 0 8215 7 22309 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10846 1 0 0 8213 7 22307 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10847 1 0 0 8192 6 22295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10848 7 0 0 5119 7 10847 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10849 1 0 0 8216 7 22310 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10850 1 0 0 8233 7 22327 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10851 1 0 0 8231 7 22325 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10852 1 0 0 8371 7 22328 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10853 1 0 0 8232 7 22326 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10854 1 0 0 8237 7 22331 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10855 1 0 0 8235 7 22329 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10856 1 0 0 8238 7 22332 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10857 1 0 0 8236 7 22330 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10858 1 0 0 8222 6 22316 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10859 7 0 0 9114 9 10858 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10860 1 0 0 8228 6 22322 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10861 4 0 0 1615 9 10859 0 10860 0 0 0 0 3 0 0 0 0 0 0 0 0
A 10862 7 0 0 10452 7 10861 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10863 1 0 0 8239 7 22333 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10864 1 0 0 5633 3542 22312 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10865 1 0 0 8687 6 14754 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10866 9 0 0 5215 6 10864 10865 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10867 4 0 0 6474 6 10866 0 33 0 0 0 0 3 0 0 0 0 0 0 0 0
A 10868 7 0 0 5130 7 10867 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10869 1 0 0 8240 7 22334 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10870 1 0 0 8259 7 22353 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10871 1 0 0 8257 7 22351 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10872 1 0 0 8260 7 22354 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10873 1 0 0 8258 7 22352 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10874 1 0 0 8263 7 22357 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10875 1 0 0 8261 7 22355 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10876 1 0 0 8264 7 22358 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10877 1 0 0 8262 7 22356 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10878 1 0 0 8246 6 22340 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10879 7 0 0 5148 9 10878 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10880 1 0 0 8254 6 22348 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10881 4 0 0 4357 9 10879 0 10880 0 0 0 0 3 0 0 0 0 0 0 0 0
A 10882 7 0 0 9137 7 10881 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10883 1 0 0 8265 7 22359 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10884 1 0 0 4294 7 22378 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10885 1 0 0 4301 7 22376 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10886 1 0 0 4297 7 22379 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10887 1 0 0 4292 7 22377 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10888 1 0 0 4306 7 22382 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10889 1 0 0 4300 7 22380 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10890 1 0 0 4305 7 22383 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10891 1 0 0 4303 7 22381 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10892 1 0 0 8271 6 22365 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10893 7 0 0 10457 9 10892 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10894 1 0 0 4295 6 22373 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10895 4 0 0 7099 9 10893 0 10894 0 0 0 0 3 0 0 0 0 0 0 0 0
A 10896 7 0 0 5160 7 10895 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10897 1 0 0 4309 7 22384 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10898 1 0 0 4312 7 22403 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10899 1 0 0 4318 7 22401 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10900 1 0 0 4314 7 22404 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10901 1 0 0 4321 7 22402 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10902 1 0 0 4323 7 22407 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10903 1 0 0 4317 7 22405 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10904 1 0 0 4326 7 22408 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10905 1 0 0 4320 7 22406 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10906 1 0 0 4310 6 22390 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10907 7 0 0 8994 9 10906 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10908 1 0 0 4316 6 22398 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10909 4 0 0 7265 9 10907 0 10908 0 0 0 0 3 0 0 0 0 0 0 0 0
A 10910 7 0 0 5168 7 10909 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10911 1 0 0 4325 7 22409 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10912 1 0 0 4348 7 22428 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10913 1 0 0 4346 7 22426 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10914 1 0 0 4352 7 22429 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10915 1 0 0 10131 7 22427 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10916 1 0 0 4354 7 22432 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10917 1 0 0 4351 7 22430 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10918 1 0 0 10881 7 22433 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10919 1 0 0 4355 7 22431 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10920 1 0 0 4327 6 22415 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10921 7 0 0 5207 9 10920 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10922 1 0 0 9627 6 22423 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10923 4 0 0 6813 9 10921 0 10922 0 0 0 0 3 0 0 0 0 0 0 0 0
A 10924 7 0 0 5208 7 10923 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10925 1 0 0 4345 7 22434 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
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
T 772 136 0 3 0 0
A 776 18 0 0 1 397 1
A 777 18 0 0 1 397 1
A 778 6 0 0 1 2 1
A 779 6 0 0 1 3 1
A 780 6 0 0 1 3 1
A 794 6 0 0 1 33 1
A 795 6 0 0 1 2 1
R 796 154 0 1
A 0 6 0 165 1 2 0
R 797 157 0 0
A 0 6 0 165 1 2 0
T 14741 3542 0 3 0 0
A 14742 6 0 0 1 2 1
A 14743 6 0 0 1 2 1
A 14744 6 0 0 1 2 1
A 14745 6 0 0 1 2 1
A 14746 6 0 0 1 2 1
A 14747 6 0 0 1 2 1
A 14748 18 0 0 1 397 1
A 14749 18 0 0 1 397 1
A 14750 6 0 0 1 2 1
A 14751 6 0 0 1 33 1
A 14752 6 0 0 1 33 1
A 14753 6 0 0 1 33 1
A 14754 6 0 0 1 3 1
A 14755 6 0 0 1 3 1
A 14756 6 0 0 1 3 1
A 14757 6 0 0 1 2 1
A 14758 6 0 0 1 2 1
A 14759 6 0 0 1 2 1
A 14779 6 0 0 1 2 1
A 14780 6 0 0 1 2 1
A 14781 6 0 0 1 2 1
A 14782 6 0 0 1 2 1
A 14986 6 0 0 1 2 1
A 14987 6 0 0 1 2 1
A 14988 6 0 0 1 2 1
A 15061 18 0 0 1 397 1
A 15062 18 0 0 1 9726 1
A 15063 22 0 0 1 9727 1
A 15064 22 0 0 1 9727 1
A 15091 6 0 0 1 7701 1
A 15092 6 0 0 1 35 1
A 15093 6 0 0 1 7701 0
Z
