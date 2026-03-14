V34 :0x24 fft_helper_subroutines
26 fft_helper_subroutines.f90 S624 0
03/13/2026  11:35:20
use stick_base private
use iso_fortran_env private
use nvf_acc_common private
use iso_c_binding private
use fft_types private
enduse
D 58 26 647 8 646 7
D 67 26 650 8 649 7
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
D 2725 26 7902 1232 7898 7
D 2743 23 6 1 11 709 0 0 0 0 0
 0 709 11 11 709 709
D 2746 23 6 1 11 709 0 0 0 0 0
 0 709 11 11 709 709
D 4795 26 647 8 646 7
D 4816 26 15587 8 15586 7
D 6131 26 21797 8680 21796 7
D 6541 23 6 1 10847 10846 0 1 0 0 1
 10841 10844 10845 10841 10844 10842
D 6544 23 7 1 0 1618 0 0 0 0 0
 0 1618 0 11 1618 0
D 6547 23 6 1 10856 10855 0 1 0 0 1
 10850 10853 10854 10850 10853 10851
D 6550 23 7 1 0 1618 0 0 0 0 0
 0 1618 0 11 1618 0
D 6553 23 10 1 10857 10860 1 1 0 0 1
 11 10858 11 11 10858 10859
D 6556 23 10 2 10861 10867 1 1 0 0 1
 11 10862 11 11 10862 10863
 11 10864 10865 11 10864 10866
D 6559 23 10 2 10868 10874 1 1 0 0 1
 11 10869 11 11 10869 10870
 11 10871 10872 11 10871 10873
D 6562 23 10 1 10875 10878 1 1 0 0 1
 11 10876 11 11 10876 10877
D 6565 23 10 2 10879 10885 1 1 0 0 1
 11 10880 11 11 10880 10881
 11 10882 10883 11 10882 10884
D 6568 23 10 2 10886 10892 1 1 0 0 1
 11 10887 11 11 10887 10888
 11 10889 10890 11 10889 10891
D 6571 23 10 2 10893 10899 1 1 0 0 1
 11 10894 11 11 10894 10895
 11 10896 10897 11 10896 10898
D 6574 23 14 1 10900 10903 1 1 0 0 1
 11 10901 11 11 10901 10902
D 6577 23 14 1 10904 10907 1 1 0 0 1
 11 10905 11 11 10905 10906
D 6580 23 14 2 10908 10914 1 1 0 0 1
 11 10909 11 11 10909 10910
 11 10911 10912 11 10911 10913
D 6583 23 14 2 10915 10921 1 1 0 0 1
 11 10916 11 11 10916 10917
 11 10918 10919 11 10918 10920
D 6586 23 10 2 10922 10928 1 1 0 0 1
 11 10923 11 11 10923 10924
 11 10925 10926 11 10925 10927
D 6589 23 10 1 10929 10932 1 1 0 0 1
 11 10930 11 11 10930 10931
D 6592 23 14 1 10933 10936 1 1 0 0 1
 11 10934 11 11 10934 10935
D 6595 23 14 2 10937 10943 1 1 0 0 1
 11 10938 11 11 10938 10939
 11 10940 10941 11 10940 10942
D 6598 23 14 1 10944 10947 1 1 0 0 1
 11 10945 11 11 10945 10946
D 6601 23 6 1 11 115 0 0 0 0 0
 0 115 11 11 115 115
D 6604 23 14 1 10948 10951 1 1 0 0 1
 11 10949 11 11 10949 10950
D 6607 23 14 1 10952 10955 1 1 0 0 1
 11 10953 11 11 10953 10954
D 6610 23 14 1 10956 10959 1 1 0 0 1
 11 10957 11 11 10957 10958
D 6613 23 14 1 10960 10963 1 1 0 0 1
 11 10961 11 11 10961 10962
D 6616 23 14 2 10964 10970 1 1 0 0 1
 11 10965 11 11 10965 10966
 11 10967 10968 11 10967 10969
D 6619 23 6 1 10971 10974 1 1 0 0 1
 11 10972 11 11 10972 10973
D 6622 23 14 1 10975 10978 1 1 0 0 1
 11 10976 11 11 10976 10977
D 6625 23 14 1 10979 10982 1 1 0 0 1
 11 10980 11 11 10980 10981
D 6628 23 14 1 10983 10986 1 1 0 0 1
 11 10984 11 11 10984 10985
D 6631 23 14 1 10987 10990 1 1 0 0 1
 11 10988 11 11 10988 10989
D 6634 23 14 1 10991 10994 1 1 0 0 1
 11 10992 11 11 10992 10993
D 6637 23 14 1 10995 10998 1 1 0 0 1
 11 10996 11 11 10996 10997
D 6640 23 14 1 10999 11002 1 1 0 0 1
 11 11000 11 11 11000 11001
D 6643 23 14 1 11003 11006 1 1 0 0 1
 11 11004 11 11 11004 11005
D 6646 23 14 1 11007 11010 1 1 0 0 1
 11 11008 11 11 11008 11009
D 6649 23 14 2 11011 11017 1 1 0 0 1
 11 11012 11 11 11012 11013
 11 11014 11015 11 11014 11016
D 6652 23 14 1 11018 11021 1 1 0 0 1
 11 11019 11 11 11019 11020
D 6655 23 14 1 11022 11025 1 1 0 0 1
 11 11023 11 11 11023 11024
D 6658 23 6 1 11 115 0 0 0 0 0
 0 115 11 11 115 115
D 6661 23 14 1 11026 11029 1 1 0 0 1
 11 11027 11 11 11027 11028
D 6664 23 14 1 11030 11033 1 1 0 0 1
 11 11031 11 11 11031 11032
D 6667 23 14 1 11034 11037 1 1 0 0 1
 11 11035 11 11 11035 11036
D 6670 23 14 1 11038 11041 1 1 0 0 1
 11 11039 11 11 11039 11040
D 6673 23 14 2 11042 11048 1 1 0 0 1
 11 11043 11 11 11043 11044
 11 11045 11046 11 11045 11047
D 6676 23 6 1 11049 11052 1 1 0 0 1
 11 11050 11 11 11050 11051
D 6679 23 6 1 11 115 0 0 0 0 0
 0 115 11 11 115 115
D 6682 23 14 1 11053 11056 1 1 0 0 1
 11 11054 11 11 11054 11055
D 6685 23 14 2 11057 11063 1 1 0 0 1
 11 11058 11 11 11058 11059
 11 11060 11061 11 11060 11062
D 6688 23 14 1 11064 11067 1 1 0 0 1
 11 11065 11 11 11065 11066
D 6691 23 14 2 11068 11074 1 1 0 0 1
 11 11069 11 11 11069 11070
 11 11071 11072 11 11071 11073
D 6694 23 6 1 11075 11078 1 1 0 0 1
 11 11076 11 11 11076 11077
D 6697 23 14 1 11079 11082 1 1 0 0 1
 11 11080 11 11 11080 11081
D 6700 23 14 2 11083 11089 1 1 0 0 1
 11 11084 11 11 11084 11085
 11 11086 11087 11 11086 11088
D 6703 23 14 1 11090 11093 1 1 0 0 1
 11 11091 11 11 11091 11092
D 6706 23 14 2 11094 11100 1 1 0 0 1
 11 11095 11 11 11095 11096
 11 11097 11098 11 11097 11099
D 6709 23 6 1 11101 11104 1 1 0 0 1
 11 11102 11 11 11102 11103
S 624 24 0 0 0 9 1 0 5012 10015 0 A 0 0 0 0 B 0 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 10 0 0 0 0 0 0 fft_helper_subroutines
S 627 23 0 0 0 9 21796 624 5055 14 0 A 0 0 0 0 B 400000 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fft_type_descriptor
S 629 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 630 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 631 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
R 646 25 7 iso_c_binding c_ptr
R 647 5 8 iso_c_binding val c_ptr
R 649 25 10 iso_c_binding c_funptr
R 650 5 11 iso_c_binding val c_funptr
R 684 6 45 iso_c_binding c_null_ptr$ac
R 686 6 47 iso_c_binding c_null_funptr$ac
R 687 26 48 iso_c_binding ==
R 689 26 50 iso_c_binding !=
S 721 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 722 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 725 7 3 iso_fortran_env character_kinds$ac
R 747 7 25 iso_fortran_env integer_kinds$ac
R 749 7 27 iso_fortran_env logical_kinds$ac
R 751 7 29 iso_fortran_env real_kinds$ac
S 765 3 0 0 0 18 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 18
S 766 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 833 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 834 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 7886 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 7887 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 7890 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 7892 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 7898 25 5 stick_base sticks_map
R 7902 5 9 stick_base lgamma sticks_map
R 7903 5 10 stick_base lpara sticks_map
R 7904 5 11 stick_base mype sticks_map
R 7905 5 12 stick_base nproc sticks_map
R 7906 5 13 stick_base nyfft sticks_map
R 7907 5 14 stick_base iproc sticks_map
R 7910 5 17 stick_base iproc$sd sticks_map
R 7911 5 18 stick_base iproc$p sticks_map
R 7912 5 19 stick_base iproc$o sticks_map
R 7914 5 21 stick_base iproc2 sticks_map
R 7916 5 23 stick_base iproc2$sd sticks_map
R 7917 5 24 stick_base iproc2$p sticks_map
R 7918 5 25 stick_base iproc2$o sticks_map
R 7920 5 27 stick_base comm sticks_map
R 7921 5 28 stick_base nstx sticks_map
R 7922 5 29 stick_base lb sticks_map
R 7923 5 30 stick_base ub sticks_map
R 7924 5 31 stick_base idx sticks_map
R 7926 5 33 stick_base idx$sd sticks_map
R 7927 5 34 stick_base idx$p sticks_map
R 7928 5 35 stick_base idx$o sticks_map
R 7930 5 37 stick_base ist sticks_map
R 7933 5 40 stick_base ist$sd sticks_map
R 7934 5 41 stick_base ist$p sticks_map
R 7935 5 42 stick_base ist$o sticks_map
R 7937 5 44 stick_base stown sticks_map
R 7940 5 47 stick_base stown$sd sticks_map
R 7941 5 48 stick_base stown$p sticks_map
R 7942 5 49 stick_base stown$o sticks_map
R 7944 5 51 stick_base indmap sticks_map
R 7947 5 54 stick_base indmap$sd sticks_map
R 7948 5 55 stick_base indmap$p sticks_map
R 7949 5 56 stick_base indmap$o sticks_map
R 7951 5 58 stick_base bg sticks_map
S 8169 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 15586 25 6 nvf_acc_common c_devptr
R 15587 5 7 nvf_acc_common cptr c_devptr
R 15593 6 13 nvf_acc_common c_null_devptr$ac
R 15631 26 51 nvf_acc_common =
S 21792 3 0 0 0 18 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 18
S 21793 3 0 0 0 22 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 131422 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 1 20
R 21796 25 3 fft_types fft_type_descriptor
R 21797 5 4 fft_types nr1 fft_type_descriptor
R 21798 5 5 fft_types nr2 fft_type_descriptor
R 21799 5 6 fft_types nr3 fft_type_descriptor
R 21800 5 7 fft_types nr1x fft_type_descriptor
R 21801 5 8 fft_types nr2x fft_type_descriptor
R 21802 5 9 fft_types nr3x fft_type_descriptor
R 21803 5 10 fft_types lpara fft_type_descriptor
R 21804 5 11 fft_types lgamma fft_type_descriptor
R 21805 5 12 fft_types root fft_type_descriptor
R 21806 5 13 fft_types comm fft_type_descriptor
R 21807 5 14 fft_types comm2 fft_type_descriptor
R 21808 5 15 fft_types comm3 fft_type_descriptor
R 21809 5 16 fft_types nproc fft_type_descriptor
R 21810 5 17 fft_types nproc2 fft_type_descriptor
R 21811 5 18 fft_types nproc3 fft_type_descriptor
R 21812 5 19 fft_types mype fft_type_descriptor
R 21813 5 20 fft_types mype2 fft_type_descriptor
R 21814 5 21 fft_types mype3 fft_type_descriptor
R 21815 5 22 fft_types iproc fft_type_descriptor
R 21818 5 25 fft_types iproc$sd fft_type_descriptor
R 21819 5 26 fft_types iproc$p fft_type_descriptor
R 21820 5 27 fft_types iproc$o fft_type_descriptor
R 21822 5 29 fft_types iproc2 fft_type_descriptor
R 21824 5 31 fft_types iproc2$sd fft_type_descriptor
R 21825 5 32 fft_types iproc2$p fft_type_descriptor
R 21826 5 33 fft_types iproc2$o fft_type_descriptor
R 21828 5 35 fft_types iproc3 fft_type_descriptor
R 21830 5 37 fft_types iproc3$sd fft_type_descriptor
R 21831 5 38 fft_types iproc3$p fft_type_descriptor
R 21832 5 39 fft_types iproc3$o fft_type_descriptor
R 21834 5 41 fft_types my_nr3p fft_type_descriptor
R 21835 5 42 fft_types my_nr2p fft_type_descriptor
R 21836 5 43 fft_types my_i0r3p fft_type_descriptor
R 21837 5 44 fft_types my_i0r2p fft_type_descriptor
R 21838 5 45 fft_types nr3p fft_type_descriptor
R 21840 5 47 fft_types nr3p$sd fft_type_descriptor
R 21841 5 48 fft_types nr3p$p fft_type_descriptor
R 21842 5 49 fft_types nr3p$o fft_type_descriptor
R 21844 5 51 fft_types nr3p_offset fft_type_descriptor
R 21846 5 53 fft_types nr3p_offset$sd fft_type_descriptor
R 21847 5 54 fft_types nr3p_offset$p fft_type_descriptor
R 21848 5 55 fft_types nr3p_offset$o fft_type_descriptor
R 21850 5 57 fft_types nr2p fft_type_descriptor
R 21852 5 59 fft_types nr2p$sd fft_type_descriptor
R 21853 5 60 fft_types nr2p$p fft_type_descriptor
R 21854 5 61 fft_types nr2p$o fft_type_descriptor
R 21856 5 63 fft_types nr2p_offset fft_type_descriptor
R 21858 5 65 fft_types nr2p_offset$sd fft_type_descriptor
R 21859 5 66 fft_types nr2p_offset$p fft_type_descriptor
R 21860 5 67 fft_types nr2p_offset$o fft_type_descriptor
R 21862 5 69 fft_types nr1p fft_type_descriptor
R 21864 5 71 fft_types nr1p$sd fft_type_descriptor
R 21865 5 72 fft_types nr1p$p fft_type_descriptor
R 21866 5 73 fft_types nr1p$o fft_type_descriptor
R 21868 5 75 fft_types nr1w fft_type_descriptor
R 21870 5 77 fft_types nr1w$sd fft_type_descriptor
R 21871 5 78 fft_types nr1w$p fft_type_descriptor
R 21872 5 79 fft_types nr1w$o fft_type_descriptor
R 21874 5 81 fft_types nr1w_tg fft_type_descriptor
R 21875 5 82 fft_types i0r3p fft_type_descriptor
R 21877 5 84 fft_types i0r3p$sd fft_type_descriptor
R 21878 5 85 fft_types i0r3p$p fft_type_descriptor
R 21879 5 86 fft_types i0r3p$o fft_type_descriptor
R 21881 5 88 fft_types i0r2p fft_type_descriptor
R 21883 5 90 fft_types i0r2p$sd fft_type_descriptor
R 21884 5 91 fft_types i0r2p$p fft_type_descriptor
R 21885 5 92 fft_types i0r2p$o fft_type_descriptor
R 21887 5 94 fft_types ir1p fft_type_descriptor
R 21889 5 96 fft_types ir1p$sd fft_type_descriptor
R 21890 5 97 fft_types ir1p$p fft_type_descriptor
R 21891 5 98 fft_types ir1p$o fft_type_descriptor
R 21893 5 100 fft_types indp fft_type_descriptor
R 21896 5 103 fft_types indp$sd fft_type_descriptor
R 21897 5 104 fft_types indp$p fft_type_descriptor
R 21898 5 105 fft_types indp$o fft_type_descriptor
R 21900 5 107 fft_types ir1w fft_type_descriptor
R 21902 5 109 fft_types ir1w$sd fft_type_descriptor
R 21903 5 110 fft_types ir1w$p fft_type_descriptor
R 21904 5 111 fft_types ir1w$o fft_type_descriptor
R 21906 5 113 fft_types indw fft_type_descriptor
R 21909 5 116 fft_types indw$sd fft_type_descriptor
R 21910 5 117 fft_types indw$p fft_type_descriptor
R 21911 5 118 fft_types indw$o fft_type_descriptor
R 21913 5 120 fft_types ir1w_tg fft_type_descriptor
R 21915 5 122 fft_types ir1w_tg$sd fft_type_descriptor
R 21916 5 123 fft_types ir1w_tg$p fft_type_descriptor
R 21917 5 124 fft_types ir1w_tg$o fft_type_descriptor
R 21919 5 126 fft_types indw_tg fft_type_descriptor
R 21921 5 128 fft_types indw_tg$sd fft_type_descriptor
R 21922 5 129 fft_types indw_tg$p fft_type_descriptor
R 21923 5 130 fft_types indw_tg$o fft_type_descriptor
R 21925 5 132 fft_types ir1p_d fft_type_descriptor
R 21927 5 134 fft_types ir1p_d$sd fft_type_descriptor
R 21928 5 135 fft_types ir1p_d$p fft_type_descriptor
R 21929 5 136 fft_types ir1p_d$o fft_type_descriptor
R 21931 5 138 fft_types ir1w_d fft_type_descriptor
R 21933 5 140 fft_types ir1w_d$sd fft_type_descriptor
R 21934 5 141 fft_types ir1w_d$p fft_type_descriptor
R 21935 5 142 fft_types ir1w_d$o fft_type_descriptor
R 21937 5 144 fft_types ir1w_tg_d fft_type_descriptor
R 21939 5 146 fft_types ir1w_tg_d$sd fft_type_descriptor
R 21940 5 147 fft_types ir1w_tg_d$p fft_type_descriptor
R 21941 5 148 fft_types ir1w_tg_d$o fft_type_descriptor
R 21943 5 150 fft_types indp_d fft_type_descriptor
R 21946 5 153 fft_types indp_d$sd fft_type_descriptor
R 21947 5 154 fft_types indp_d$p fft_type_descriptor
R 21948 5 155 fft_types indp_d$o fft_type_descriptor
R 21950 5 157 fft_types indw_d fft_type_descriptor
R 21953 5 160 fft_types indw_d$sd fft_type_descriptor
R 21954 5 161 fft_types indw_d$p fft_type_descriptor
R 21955 5 162 fft_types indw_d$o fft_type_descriptor
R 21957 5 164 fft_types indw_tg_d fft_type_descriptor
R 21960 5 167 fft_types indw_tg_d$sd fft_type_descriptor
R 21961 5 168 fft_types indw_tg_d$p fft_type_descriptor
R 21962 5 169 fft_types indw_tg_d$o fft_type_descriptor
R 21964 5 171 fft_types nr1p_d fft_type_descriptor
R 21966 5 173 fft_types nr1p_d$sd fft_type_descriptor
R 21967 5 174 fft_types nr1p_d$p fft_type_descriptor
R 21968 5 175 fft_types nr1p_d$o fft_type_descriptor
R 21970 5 177 fft_types nr1w_d fft_type_descriptor
R 21972 5 179 fft_types nr1w_d$sd fft_type_descriptor
R 21973 5 180 fft_types nr1w_d$p fft_type_descriptor
R 21974 5 181 fft_types nr1w_d$o fft_type_descriptor
R 21976 5 183 fft_types nr1w_tg_d fft_type_descriptor
R 21978 5 185 fft_types nr1w_tg_d$sd fft_type_descriptor
R 21979 5 186 fft_types nr1w_tg_d$p fft_type_descriptor
R 21980 5 187 fft_types nr1w_tg_d$o fft_type_descriptor
R 21982 5 189 fft_types nst fft_type_descriptor
R 21983 5 190 fft_types nsp fft_type_descriptor
R 21985 5 192 fft_types nsp$sd fft_type_descriptor
R 21986 5 193 fft_types nsp$p fft_type_descriptor
R 21987 5 194 fft_types nsp$o fft_type_descriptor
R 21989 5 196 fft_types nsp_offset fft_type_descriptor
R 21992 5 199 fft_types nsp_offset$sd fft_type_descriptor
R 21993 5 200 fft_types nsp_offset$p fft_type_descriptor
R 21994 5 201 fft_types nsp_offset$o fft_type_descriptor
R 21996 5 203 fft_types nsw fft_type_descriptor
R 21998 5 205 fft_types nsw$sd fft_type_descriptor
R 21999 5 206 fft_types nsw$p fft_type_descriptor
R 22000 5 207 fft_types nsw$o fft_type_descriptor
R 22002 5 209 fft_types nsw_offset fft_type_descriptor
R 22005 5 212 fft_types nsw_offset$sd fft_type_descriptor
R 22006 5 213 fft_types nsw_offset$p fft_type_descriptor
R 22007 5 214 fft_types nsw_offset$o fft_type_descriptor
R 22009 5 216 fft_types nsw_tg fft_type_descriptor
R 22011 5 218 fft_types nsw_tg$sd fft_type_descriptor
R 22012 5 219 fft_types nsw_tg$p fft_type_descriptor
R 22013 5 220 fft_types nsw_tg$o fft_type_descriptor
R 22015 5 222 fft_types ngl fft_type_descriptor
R 22017 5 224 fft_types ngl$sd fft_type_descriptor
R 22018 5 225 fft_types ngl$p fft_type_descriptor
R 22019 5 226 fft_types ngl$o fft_type_descriptor
R 22021 5 228 fft_types nwl fft_type_descriptor
R 22023 5 230 fft_types nwl$sd fft_type_descriptor
R 22024 5 231 fft_types nwl$p fft_type_descriptor
R 22025 5 232 fft_types nwl$o fft_type_descriptor
R 22027 5 234 fft_types ngm fft_type_descriptor
R 22028 5 235 fft_types ngw fft_type_descriptor
R 22029 5 236 fft_types iplp fft_type_descriptor
R 22031 5 238 fft_types iplp$sd fft_type_descriptor
R 22032 5 239 fft_types iplp$p fft_type_descriptor
R 22033 5 240 fft_types iplp$o fft_type_descriptor
R 22035 5 242 fft_types iplw fft_type_descriptor
R 22037 5 244 fft_types iplw$sd fft_type_descriptor
R 22038 5 245 fft_types iplw$p fft_type_descriptor
R 22039 5 246 fft_types iplw$o fft_type_descriptor
R 22041 5 248 fft_types nnp fft_type_descriptor
R 22042 5 249 fft_types nnr fft_type_descriptor
R 22043 5 250 fft_types nnr_tg fft_type_descriptor
R 22044 5 251 fft_types iss fft_type_descriptor
R 22046 5 253 fft_types iss$sd fft_type_descriptor
R 22047 5 254 fft_types iss$p fft_type_descriptor
R 22048 5 255 fft_types iss$o fft_type_descriptor
R 22050 5 257 fft_types isind fft_type_descriptor
R 22052 5 259 fft_types isind$sd fft_type_descriptor
R 22053 5 260 fft_types isind$p fft_type_descriptor
R 22054 5 261 fft_types isind$o fft_type_descriptor
R 22056 5 263 fft_types ismap fft_type_descriptor
R 22058 5 265 fft_types ismap$sd fft_type_descriptor
R 22059 5 266 fft_types ismap$p fft_type_descriptor
R 22060 5 267 fft_types ismap$o fft_type_descriptor
R 22062 5 269 fft_types ismap_d fft_type_descriptor
R 22064 5 271 fft_types ismap_d$sd fft_type_descriptor
R 22065 5 272 fft_types ismap_d$p fft_type_descriptor
R 22066 5 273 fft_types ismap_d$o fft_type_descriptor
R 22068 5 275 fft_types nl fft_type_descriptor
R 22070 5 277 fft_types nl$sd fft_type_descriptor
R 22071 5 278 fft_types nl$p fft_type_descriptor
R 22072 5 279 fft_types nl$o fft_type_descriptor
R 22074 5 281 fft_types nlm fft_type_descriptor
R 22076 5 283 fft_types nlm$sd fft_type_descriptor
R 22077 5 284 fft_types nlm$p fft_type_descriptor
R 22078 5 285 fft_types nlm$o fft_type_descriptor
R 22080 5 287 fft_types nl_d fft_type_descriptor
R 22082 5 289 fft_types nl_d$sd fft_type_descriptor
R 22083 5 290 fft_types nl_d$p fft_type_descriptor
R 22084 5 291 fft_types nl_d$o fft_type_descriptor
R 22086 5 293 fft_types nlm_d fft_type_descriptor
R 22088 5 295 fft_types nlm_d$sd fft_type_descriptor
R 22089 5 296 fft_types nlm_d$p fft_type_descriptor
R 22090 5 297 fft_types nlm_d$o fft_type_descriptor
R 22092 5 299 fft_types tg_snd fft_type_descriptor
R 22094 5 301 fft_types tg_snd$sd fft_type_descriptor
R 22095 5 302 fft_types tg_snd$p fft_type_descriptor
R 22096 5 303 fft_types tg_snd$o fft_type_descriptor
R 22098 5 305 fft_types tg_rcv fft_type_descriptor
R 22100 5 307 fft_types tg_rcv$sd fft_type_descriptor
R 22101 5 308 fft_types tg_rcv$p fft_type_descriptor
R 22102 5 309 fft_types tg_rcv$o fft_type_descriptor
R 22104 5 311 fft_types tg_sdsp fft_type_descriptor
R 22106 5 313 fft_types tg_sdsp$sd fft_type_descriptor
R 22107 5 314 fft_types tg_sdsp$p fft_type_descriptor
R 22108 5 315 fft_types tg_sdsp$o fft_type_descriptor
R 22110 5 317 fft_types tg_rdsp fft_type_descriptor
R 22112 5 319 fft_types tg_rdsp$sd fft_type_descriptor
R 22113 5 320 fft_types tg_rdsp$p fft_type_descriptor
R 22114 5 321 fft_types tg_rdsp$o fft_type_descriptor
R 22116 5 323 fft_types has_task_groups fft_type_descriptor
R 22117 5 324 fft_types use_pencil_decomposition fft_type_descriptor
R 22118 5 325 fft_types rho_clock_label fft_type_descriptor
R 22119 5 326 fft_types wave_clock_label fft_type_descriptor
R 22120 5 327 fft_types grid_id fft_type_descriptor
R 22122 5 329 fft_types stream_scatter_yz fft_type_descriptor
R 22123 5 330 fft_types stream_scatter_yz$sd fft_type_descriptor
R 22124 5 331 fft_types stream_scatter_yz$p fft_type_descriptor
R 22125 5 332 fft_types stream_scatter_yz$o fft_type_descriptor
R 22128 5 335 fft_types stream_many fft_type_descriptor
R 22129 5 336 fft_types stream_many$sd fft_type_descriptor
R 22130 5 337 fft_types stream_many$p fft_type_descriptor
R 22131 5 338 fft_types stream_many$o fft_type_descriptor
R 22133 5 340 fft_types a2a_comp fft_type_descriptor
R 22135 5 342 fft_types bstreams fft_type_descriptor
R 22136 5 343 fft_types bstreams$sd fft_type_descriptor
R 22137 5 344 fft_types bstreams$p fft_type_descriptor
R 22138 5 345 fft_types bstreams$o fft_type_descriptor
R 22141 5 348 fft_types bevents fft_type_descriptor
R 22142 5 349 fft_types bevents$sd fft_type_descriptor
R 22143 5 350 fft_types bevents$p fft_type_descriptor
R 22144 5 351 fft_types bevents$o fft_type_descriptor
R 22146 5 353 fft_types batchsize fft_type_descriptor
R 22147 5 354 fft_types subbatchsize fft_type_descriptor
R 22148 5 355 fft_types nstream_many fft_type_descriptor
R 22149 5 356 fft_types srh fft_type_descriptor
R 22152 5 359 fft_types srh$sd fft_type_descriptor
R 22153 5 360 fft_types srh$p fft_type_descriptor
R 22154 5 361 fft_types srh$o fft_type_descriptor
R 22157 5 364 fft_types aux fft_type_descriptor
R 22158 5 365 fft_types aux$sd fft_type_descriptor
R 22159 5 366 fft_types aux$p fft_type_descriptor
R 22160 5 367 fft_types aux$o fft_type_descriptor
S 22283 19 0 0 0 9 1 624 134753 4000 0 A 0 0 0 0 B 0 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1848 5 0 0 0 0 0 624 0 0 0 0 tg_reduce_rho
O 22283 5 22288 22287 22286 22285 22284
S 22284 27 0 0 0 9 22324 624 134767 10 400000 A 0 0 0 0 B 0 23 0 0 0 0 1849 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 tg_reduce_rho_1
Q 22284 22283 0
S 22285 27 0 0 0 9 22351 624 134783 10 400000 A 0 0 0 0 B 0 23 0 0 0 0 1850 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 tg_reduce_rho_2
Q 22285 22283 0
S 22286 27 0 0 0 9 22368 624 134799 10 400000 A 0 0 0 0 B 0 23 0 0 0 0 1851 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 tg_reduce_rho_3
Q 22286 22283 0
S 22287 27 0 0 0 9 22387 624 134815 10 400000 A 0 0 0 0 B 0 23 0 0 0 0 1852 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 tg_reduce_rho_4
Q 22287 22283 0
S 22288 27 0 0 0 9 22400 624 134831 10 400000 A 0 0 0 0 B 0 23 0 0 0 0 1853 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 tg_reduce_rho_5
Q 22288 22283 0
S 22289 27 0 0 0 9 22562 624 134847 0 8000000 A 0 0 0 0 B 0 29 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fftx_threed2oned
S 22290 27 0 0 0 9 22526 624 134864 0 8000000 A 0 0 0 0 B 0 29 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fftx_oned2threed
S 22291 27 0 0 0 9 22419 624 134881 0 8000000 A 0 0 0 0 B 0 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 tg_get_nnr
S 22292 27 0 0 0 9 22431 624 134892 0 8000000 A 0 0 0 0 B 0 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 tg_get_recip_inc
S 22293 27 0 0 0 9 22435 624 134909 0 8000000 A 0 0 0 0 B 0 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fftx_ntgrp
S 22294 27 0 0 0 9 22439 624 134920 0 8000000 A 0 0 0 0 B 0 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fftx_tgpe
S 22295 27 0 0 0 9 22427 624 134930 0 8000000 A 0 0 0 0 B 0 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 tg_get_group_nr3
S 22296 27 0 0 0 9 22544 624 134947 0 8000000 A 0 0 0 0 B 0 34 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fftx_add_threed2oned_gamma
S 22297 27 0 0 0 9 22581 624 134974 0 8000000 A 0 0 0 0 B 0 34 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fftx_psi2c_gamma
S 22298 27 0 0 0 9 22463 624 134991 0 8000000 A 0 0 0 0 B 0 34 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fftx_c2psi_gamma
S 22299 27 0 0 0 9 22643 624 135008 0 8000000 A 0 0 0 0 B 0 34 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fftx_c2psi_gamma_tg
S 22300 27 0 0 0 9 22503 624 135028 0 8000000 A 0 0 0 0 B 0 34 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fftx_c2psi_k
S 22301 27 0 0 0 9 22661 624 135041 0 8000000 A 0 0 0 0 B 0 34 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fftx_c2psi_k_tg
S 22302 27 0 0 0 9 22621 624 135057 0 8000000 A 0 0 0 0 B 0 34 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fftx_psi2c_k
S 22303 27 0 0 0 9 22684 624 135070 0 8000000 A 0 0 0 0 B 0 34 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fftx_psi2c_gamma_tg
S 22304 27 0 0 0 9 22702 624 135090 0 8000000 A 0 0 0 0 B 0 34 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fftx_psi2c_k_tg
S 22305 27 0 0 0 9 22447 624 135106 0 8000000 A 0 0 0 0 B 0 34 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fftx_add_field
S 22306 27 0 0 0 9 22725 624 135121 0 8000000 A 0 0 0 0 B 0 37 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fft_dist_info
S 22307 27 0 0 0 9 22443 624 135135 0 8000000 A 0 0 0 0 B 0 39 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fftx_tgcomm
S 22308 27 0 0 0 9 22603 624 135147 0 8000000 A 0 0 0 0 B 0 42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fftx_psi2c_gamma_gpu
S 22309 27 0 0 0 9 22485 624 135168 0 8000000 A 0 0 0 0 B 0 42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fftx_c2psi_gamma_gpu
S 22310 6 4 0 0 7 22316 624 135189 40800016 0 A 0 0 0 0 B 0 47 0 0 0 0 0 0 0 0 0 0 22322 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 z_b_0_1
S 22311 7 6 0 0 6541 1 624 133367 10a08014 14 A 0 0 0 0 B 0 0 0 0 0 0 22313 0 0 0 22315 0 0 0 0 0 0 0 0 22312 0 0 22314 624 0 0 0 0 nl_d
S 22312 8 4 0 0 6544 22319 624 135197 40822014 1020 A 0 0 0 0 B 0 47 0 0 0 0 0 0 0 0 0 0 22323 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nl_d$sd1
S 22313 6 4 0 0 7 22314 624 135206 40802071 1020 A 0 0 0 0 B 0 47 0 0 0 0 0 0 0 0 0 0 22323 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nl_d$p2
S 22314 6 4 0 0 7 22312 624 135214 40802070 1020 A 0 0 0 0 B 0 47 0 0 0 8 0 0 0 0 0 0 22323 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nl_d$o3
S 22315 22 1 0 0 6 1 624 135222 40000000 1000 A 0 0 0 0 B 0 47 0 0 0 0 0 22311 0 0 0 0 22312 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nl_d$arrdsc4
S 22316 6 4 0 0 7 1 624 37621 40800016 0 A 0 0 0 0 B 0 47 0 0 0 8 0 0 0 0 0 0 22322 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 z_b_1_1
S 22317 7 6 0 0 6547 1 624 133406 10a08014 14 A 0 0 0 0 B 0 0 0 0 0 0 22319 0 0 0 22321 0 0 0 0 0 0 0 0 22318 0 0 22320 624 0 0 0 0 nlm_d
S 22318 8 4 0 0 6550 1 624 135235 40822014 1020 A 0 0 0 0 B 0 47 0 0 0 0 0 0 0 0 0 0 22323 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nlm_d$sd5
S 22319 6 4 0 0 7 22320 624 135245 40802071 1020 A 0 0 0 0 B 0 47 0 0 0 16 0 0 0 0 0 0 22323 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nlm_d$p6
S 22320 6 4 0 0 7 22318 624 135254 40802070 1020 A 0 0 0 0 B 0 47 0 0 0 24 0 0 0 0 0 0 22323 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nlm_d$o7
S 22321 22 1 0 0 6 1 624 135263 40000000 1000 A 0 0 0 0 B 0 47 0 0 0 0 0 22317 0 0 0 0 22318 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nlm_d$arrdsc8
S 22322 11 0 0 0 9 22173 624 135277 40800010 805000 A 0 0 0 0 B 0 52 0 0 0 16 0 0 22310 22316 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 _fft_helper_subroutines$6
S 22323 11 0 0 0 9 22322 624 135303 40808010 805000 A 0 0 0 0 B 0 52 0 0 0 288 0 0 22313 22318 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 _fft_helper_subroutines$16
S 22324 23 5 0 0 0 22332 624 134767 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 tg_reduce_rho_1
S 22325 7 3 2 0 6559 1 22324 135330 20000014 10003000 A 0 0 0 0 B 0 55 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 rhos
S 22326 7 3 3 0 6556 1 22324 135335 20000014 10003000 A 0 0 0 0 B 0 55 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 tg_rho_nc
S 22327 7 3 3 0 6553 1 22324 135345 20000014 10003000 A 0 0 0 0 B 0 55 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 tg_rho
S 22328 1 3 1 0 6 1 22324 135352 14 3000 A 0 0 0 0 B 0 55 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ispin
S 22329 1 3 1 0 18 1 22324 135358 14 3000 A 0 0 0 0 B 0 55 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 noncolin
S 22330 1 3 1 0 18 1 22324 135367 14 3000 A 0 0 0 0 B 0 55 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 domag
S 22331 1 3 1 0 6131 1 22324 134353 14 3000 A 0 0 0 0 B 0 55 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22332 14 5 0 0 0 1 22324 134767 20000010 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10523 7 0 0 0 0 0 0 0 0 0 0 0 0 55 0 624 0 0 0 0 tg_reduce_rho_1 tg_reduce_rho_1 
F 22332 7 22325 22326 22327 22328 22329 22330 22331
S 22333 6 1 0 0 7 1 22324 135373 40800016 3000 A 0 0 0 0 B 0 63 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_2
S 22334 6 1 0 0 7 1 22324 37629 40800016 3000 A 0 0 0 0 B 0 63 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22335 6 1 0 0 7 1 22324 37712 40800016 3000 A 0 0 0 0 B 0 63 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 22336 6 1 0 0 7 1 22324 135381 40800016 3000 A 0 0 0 0 B 0 63 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10862
S 22337 6 1 0 0 7 1 22324 37645 40800016 3000 A 0 0 0 0 B 0 64 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22338 6 1 0 0 7 1 22324 37653 40800016 3000 A 0 0 0 0 B 0 64 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22339 6 1 0 0 7 1 22324 37679 40800016 3000 A 0 0 0 0 B 0 64 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_8_1
S 22340 6 1 0 0 7 1 22324 37687 40800016 3000 A 0 0 0 0 B 0 64 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_9_1
S 22341 6 1 0 0 7 1 22324 134429 40800016 3000 A 0 0 0 0 B 0 64 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_10_1
S 22342 6 1 0 0 7 1 22324 135391 40800016 3000 A 0 0 0 0 B 0 64 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10872
S 22343 6 1 0 0 7 1 22324 135401 40800016 3000 A 0 0 0 0 B 0 64 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10875
S 22344 6 1 0 0 7 1 22324 135411 40800016 3000 A 0 0 0 0 B 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_12_1
S 22345 6 1 0 0 7 1 22324 134457 40800016 3000 A 0 0 0 0 B 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_13_1
S 22346 6 1 0 0 7 1 22324 134475 40800016 3000 A 0 0 0 0 B 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_15_1
S 22347 6 1 0 0 7 1 22324 135420 40800016 3000 A 0 0 0 0 B 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_16_1
S 22348 6 1 0 0 7 1 22324 134494 40800016 3000 A 0 0 0 0 B 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_17_1
S 22349 6 1 0 0 7 1 22324 135429 40800016 3000 A 0 0 0 0 B 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10885
S 22350 6 1 0 0 7 1 22324 135439 40800016 3000 A 0 0 0 0 B 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10888
S 22351 23 5 0 0 0 22356 624 134783 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 tg_reduce_rho_2
S 22352 7 3 2 0 6565 1 22351 135330 20000014 10003000 A 0 0 0 0 B 0 109 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 rhos
S 22353 7 3 3 0 6562 1 22351 135449 20000014 10003000 A 0 0 0 0 B 0 109 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 tmp_rhos
S 22354 1 3 1 0 6 1 22351 135352 14 3000 A 0 0 0 0 B 0 109 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ispin
S 22355 1 3 1 0 6131 1 22351 134353 14 3000 A 0 0 0 0 B 0 109 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22356 14 5 0 0 0 1 22351 134783 20000010 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10531 4 0 0 0 0 0 0 0 0 0 0 0 0 109 0 624 0 0 0 0 tg_reduce_rho_2 tg_reduce_rho_2 
F 22356 4 22352 22353 22354 22355
S 22357 6 1 0 0 7 1 22351 135373 40800016 3000 A 0 0 0 0 B 0 116 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_2
S 22358 6 1 0 0 7 1 22351 37629 40800016 3000 A 0 0 0 0 B 0 116 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22359 6 1 0 0 7 1 22351 37712 40800016 3000 A 0 0 0 0 B 0 116 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 22360 6 1 0 0 7 1 22351 135458 40800016 3000 A 0 0 0 0 B 0 116 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10880
S 22361 6 1 0 0 7 1 22351 37645 40800016 3000 A 0 0 0 0 B 0 117 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22362 6 1 0 0 7 1 22351 37653 40800016 3000 A 0 0 0 0 B 0 117 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22363 6 1 0 0 7 1 22351 37679 40800016 3000 A 0 0 0 0 B 0 117 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_8_1
S 22364 6 1 0 0 7 1 22351 37687 40800016 3000 A 0 0 0 0 B 0 117 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_9_1
S 22365 6 1 0 0 7 1 22351 134429 40800016 3000 A 0 0 0 0 B 0 117 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_10_1
S 22366 6 1 0 0 7 1 22351 135468 40800016 3000 A 0 0 0 0 B 0 117 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10890
S 22367 6 1 0 0 7 1 22351 135478 40800016 3000 A 0 0 0 0 B 0 117 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10893
S 22368 23 5 0 0 0 22372 624 134799 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 tg_reduce_rho_3
S 22369 7 3 2 0 6571 1 22368 135330 20000014 10003000 A 0 0 0 0 B 0 140 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 rhos
S 22370 7 3 3 0 6568 1 22368 135449 20000014 10003000 A 0 0 0 0 B 0 140 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 tmp_rhos
S 22371 1 3 1 0 6131 1 22368 134353 14 3000 A 0 0 0 0 B 0 140 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22372 14 5 0 0 0 1 22368 134799 20000010 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10536 3 0 0 0 0 0 0 0 0 0 0 0 0 140 0 624 0 0 0 0 tg_reduce_rho_3 tg_reduce_rho_3 
F 22372 3 22369 22370 22371
S 22373 6 1 0 0 7 1 22368 135373 40800016 3000 A 0 0 0 0 B 0 146 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_2
S 22374 6 1 0 0 7 1 22368 37629 40800016 3000 A 0 0 0 0 B 0 146 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22375 6 1 0 0 7 1 22368 37637 40800016 3000 A 0 0 0 0 B 0 146 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_4_1
S 22376 6 1 0 0 7 1 22368 37645 40800016 3000 A 0 0 0 0 B 0 146 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22377 6 1 0 0 7 1 22368 37653 40800016 3000 A 0 0 0 0 B 0 146 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22378 6 1 0 0 7 1 22368 135488 40800016 3000 A 0 0 0 0 B 0 146 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10894
S 22379 6 1 0 0 7 1 22368 135498 40800016 3000 A 0 0 0 0 B 0 146 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10897
S 22380 6 1 0 0 7 1 22368 37679 40800016 3000 A 0 0 0 0 B 0 147 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_8_1
S 22381 6 1 0 0 7 1 22368 37687 40800016 3000 A 0 0 0 0 B 0 147 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_9_1
S 22382 6 1 0 0 7 1 22368 134438 40800016 3000 A 0 0 0 0 B 0 147 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_11_1
S 22383 6 1 0 0 7 1 22368 135411 40800016 3000 A 0 0 0 0 B 0 147 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_12_1
S 22384 6 1 0 0 7 1 22368 134457 40800016 3000 A 0 0 0 0 B 0 147 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_13_1
S 22385 6 1 0 0 7 1 22368 77971 40800016 3000 A 0 0 0 0 B 0 147 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10907
S 22386 6 1 0 0 7 1 22368 77981 40800016 3000 A 0 0 0 0 B 0 147 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10910
S 22387 23 5 0 0 0 22391 624 134815 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 tg_reduce_rho_4
S 22388 7 3 2 0 6577 1 22387 135330 20000014 10003000 A 0 0 0 0 B 0 173 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 rhos
S 22389 7 3 3 0 6574 1 22387 135449 20000014 10003000 A 0 0 0 0 B 0 173 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 tmp_rhos
S 22390 1 3 1 0 6131 1 22387 134353 14 3000 A 0 0 0 0 B 0 173 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22391 14 5 0 0 0 1 22387 134815 20000010 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10540 3 0 0 0 0 0 0 0 0 0 0 0 0 173 0 624 0 0 0 0 tg_reduce_rho_4 tg_reduce_rho_4 
F 22391 3 22388 22389 22390
S 22392 6 1 0 0 7 1 22387 135373 40800016 3000 A 0 0 0 0 B 0 179 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_2
S 22393 6 1 0 0 7 1 22387 37629 40800016 3000 A 0 0 0 0 B 0 179 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22394 6 1 0 0 7 1 22387 37712 40800016 3000 A 0 0 0 0 B 0 179 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 22395 6 1 0 0 7 1 22387 135508 40800016 3000 A 0 0 0 0 B 0 179 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10905
S 22396 6 1 0 0 7 1 22387 37645 40800016 3000 A 0 0 0 0 B 0 180 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22397 6 1 0 0 7 1 22387 37653 40800016 3000 A 0 0 0 0 B 0 180 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22398 6 1 0 0 7 1 22387 37729 40800016 3000 A 0 0 0 0 B 0 180 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_7_1
S 22399 6 1 0 0 7 1 22387 135518 40800016 3000 A 0 0 0 0 B 0 180 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10912
S 22400 23 5 0 0 0 22404 624 134831 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 tg_reduce_rho_5
S 22401 7 3 2 0 6583 1 22400 135330 20000014 10003000 A 0 0 0 0 B 0 206 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 rhos
S 22402 7 3 3 0 6580 1 22400 135449 20000014 10003000 A 0 0 0 0 B 0 206 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 tmp_rhos
S 22403 1 3 1 0 6131 1 22400 134353 14 3000 A 0 0 0 0 B 0 206 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22404 14 5 0 0 0 1 22400 134831 20000010 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10544 3 0 0 0 0 0 0 0 0 0 0 0 0 206 0 624 0 0 0 0 tg_reduce_rho_5 tg_reduce_rho_5 
F 22404 3 22401 22402 22403
S 22405 6 1 0 0 7 1 22400 135373 40800016 3000 A 0 0 0 0 B 0 212 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_2
S 22406 6 1 0 0 7 1 22400 37629 40800016 3000 A 0 0 0 0 B 0 212 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22407 6 1 0 0 7 1 22400 37637 40800016 3000 A 0 0 0 0 B 0 212 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_4_1
S 22408 6 1 0 0 7 1 22400 37645 40800016 3000 A 0 0 0 0 B 0 212 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22409 6 1 0 0 7 1 22400 37653 40800016 3000 A 0 0 0 0 B 0 212 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22410 6 1 0 0 7 1 22400 78001 40800016 3000 A 0 0 0 0 B 0 212 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10916
S 22411 6 1 0 0 7 1 22400 78011 40800016 3000 A 0 0 0 0 B 0 212 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10919
S 22412 6 1 0 0 7 1 22400 37679 40800016 3000 A 0 0 0 0 B 0 213 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_8_1
S 22413 6 1 0 0 7 1 22400 37687 40800016 3000 A 0 0 0 0 B 0 213 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_9_1
S 22414 6 1 0 0 7 1 22400 134438 40800016 3000 A 0 0 0 0 B 0 213 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_11_1
S 22415 6 1 0 0 7 1 22400 135411 40800016 3000 A 0 0 0 0 B 0 213 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_12_1
S 22416 6 1 0 0 7 1 22400 134457 40800016 3000 A 0 0 0 0 B 0 213 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_13_1
S 22417 6 1 0 0 7 1 22400 135528 40800016 3000 A 0 0 0 0 B 0 213 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10929
S 22418 6 1 0 0 7 1 22400 135538 40800016 3000 A 0 0 0 0 B 0 213 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10932
S 22419 23 5 0 0 0 22422 624 134881 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 tg_get_nnr
S 22420 1 3 1 0 6131 1 22419 134353 14 3000 A 0 0 0 0 B 0 239 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22421 1 3 2 0 6 1 22419 135548 14 3000 A 0 0 0 0 B 0 239 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 right_nnr
S 22422 14 5 0 0 0 1 22419 134881 0 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10548 2 0 0 0 0 0 0 0 0 0 0 0 0 239 0 624 0 0 0 0 tg_get_nnr tg_get_nnr 
F 22422 2 22420 22421
S 22423 23 5 0 0 0 22426 624 135558 10 0 A 0 0 0 0 B 0 247 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 tg_get_local_nr3
S 22424 1 3 1 0 6131 1 22423 134353 14 3000 A 0 0 0 0 B 0 247 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22425 1 3 2 0 6 1 22423 5164 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 val
S 22426 14 5 0 0 0 1 22423 135558 10 400000 A 0 0 0 0 B 0 247 0 0 0 0 0 10551 2 0 0 0 0 0 0 0 0 0 0 0 0 247 0 624 0 0 0 0 tg_get_local_nr3 tg_get_local_nr3 
F 22426 2 22424 22425
S 22427 23 5 0 0 0 22430 624 134930 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 tg_get_group_nr3
S 22428 1 3 1 0 6131 1 22427 134353 14 3000 A 0 0 0 0 B 0 255 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22429 1 3 2 0 6 1 22427 5164 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 val
S 22430 14 5 0 0 0 1 22427 134930 0 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10554 2 0 0 0 0 0 0 0 0 0 0 0 0 255 0 624 0 0 0 0 tg_get_group_nr3 tg_get_group_nr3 
F 22430 2 22428 22429
S 22431 23 5 0 0 0 22434 624 134892 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 tg_get_recip_inc
S 22432 1 3 1 0 6131 1 22431 134353 14 3000 A 0 0 0 0 B 0 263 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22433 1 3 2 0 6 1 22431 5164 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 val
S 22434 14 5 0 0 0 1 22431 134892 0 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10557 2 0 0 0 0 0 0 0 0 0 0 0 0 263 0 624 0 0 0 0 tg_get_recip_inc tg_get_recip_inc 
F 22434 2 22432 22433
S 22435 23 5 0 0 9 22437 624 134909 1000 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fftx_ntgrp
S 22436 1 3 1 0 6131 1 22435 134353 14 3000 A 0 0 0 0 B 0 271 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22437 14 5 0 0 6 1 22435 134909 1004 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10560 1 0 0 22438 0 0 0 0 0 0 0 0 0 271 0 624 0 0 0 0 fftx_ntgrp fftx_ntgrp fftx_ntgrp
F 22437 1 22436
S 22438 1 3 0 0 6 1 22435 134909 14 1003000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fftx_ntgrp
S 22439 23 5 0 0 9 22441 624 134920 1000 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fftx_tgpe
S 22440 1 3 1 0 6131 1 22439 134353 14 3000 A 0 0 0 0 B 0 279 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22441 14 5 0 0 6 1 22439 134920 1004 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10562 1 0 0 22442 0 0 0 0 0 0 0 0 0 279 0 624 0 0 0 0 fftx_tgpe fftx_tgpe fftx_tgpe
F 22441 1 22440
S 22442 1 3 0 0 6 1 22439 134920 14 1003000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fftx_tgpe
S 22443 23 5 0 0 9 22445 624 135135 1000 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fftx_tgcomm
S 22444 1 3 1 0 6131 1 22443 134353 14 3000 A 0 0 0 0 B 0 287 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22445 14 5 0 0 6 1 22443 135135 1004 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10564 1 0 0 22446 0 0 0 0 0 0 0 0 0 287 0 624 0 0 0 0 fftx_tgcomm fftx_tgcomm fftx_tgcomm
F 22445 1 22444
S 22446 1 3 0 0 6 1 22443 135135 14 1003000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fftx_tgcomm
S 22447 23 5 0 0 0 22451 624 135106 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fftx_add_field
S 22448 7 3 3 0 6586 1 22447 24598 20000014 10003000 A 0 0 0 0 B 0 295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 r
S 22449 7 3 1 0 6589 1 22447 109146 20000014 10003000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f
S 22450 1 3 1 0 6131 1 22447 134353 14 3000 A 0 0 0 0 B 0 295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22451 14 5 0 0 0 1 22447 135106 20000000 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10566 3 0 0 0 0 0 0 0 0 0 0 0 0 295 0 624 0 0 0 0 fftx_add_field fftx_add_field 
F 22451 3 22448 22449 22450
S 22452 6 1 0 0 7 1 22447 135373 40800016 3000 A 0 0 0 0 B 0 298 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_2
S 22453 6 1 0 0 7 1 22447 37629 40800016 3000 A 0 0 0 0 B 0 298 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22454 6 1 0 0 7 1 22447 37637 40800016 3000 A 0 0 0 0 B 0 298 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_4_1
S 22455 6 1 0 0 7 1 22447 37645 40800016 3000 A 0 0 0 0 B 0 298 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22456 6 1 0 0 7 1 22447 37653 40800016 3000 A 0 0 0 0 B 0 298 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22457 6 1 0 0 7 1 22447 135575 40800016 3000 A 0 0 0 0 B 0 298 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10930
S 22458 6 1 0 0 7 1 22447 135585 40800016 3000 A 0 0 0 0 B 0 298 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10933
S 22459 6 1 0 0 7 1 22447 37679 40800016 3000 A 0 0 0 0 B 0 299 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_8_1
S 22460 6 1 0 0 7 1 22447 37687 40800016 3000 A 0 0 0 0 B 0 299 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_9_1
S 22461 6 1 0 0 7 1 22447 134429 40800016 3000 A 0 0 0 0 B 0 299 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_10_1
S 22462 6 1 0 0 7 1 22447 135595 40800016 3000 A 0 0 0 0 B 0 299 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10940
S 22463 23 5 0 0 0 22469 624 134991 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fftx_c2psi_gamma
S 22464 1 3 1 0 6131 1 22463 134353 14 3000 A 0 0 0 0 B 0 324 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22465 7 3 2 0 6592 1 22463 135605 20000014 10003000 A 0 0 0 0 B 0 324 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 psi
S 22466 7 3 1 0 6595 1 22463 135609 20000014 10003000 A 0 0 0 0 B 0 324 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 c
S 22467 7 3 1 0 6598 1 22463 135611 a0000014 10003000 A 0 0 0 0 B 0 324 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ca
S 22468 7 3 1 0 6601 1 22463 135614 80800014 3000 A 0 0 0 0 B 0 324 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 howmany_set
S 22469 14 5 0 0 0 1 22463 134991 20000000 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10570 5 0 0 0 0 0 0 0 0 0 0 0 0 324 0 624 0 0 0 0 fftx_c2psi_gamma fftx_c2psi_gamma 
F 22469 5 22464 22465 22466 22467 22468
S 22470 6 1 0 0 7 1 22463 135373 40800016 3000 A 0 0 0 0 B 0 333 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_2
S 22471 6 1 0 0 7 1 22463 37629 40800016 3000 A 0 0 0 0 B 0 333 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22472 6 1 0 0 7 1 22463 37712 40800016 3000 A 0 0 0 0 B 0 333 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 22473 6 1 0 0 7 1 22463 135626 40800016 3000 A 0 0 0 0 B 0 333 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10938
S 22474 6 1 0 0 7 1 22463 37645 40800016 3000 A 0 0 0 0 B 0 335 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22475 6 1 0 0 7 1 22463 37653 40800016 3000 A 0 0 0 0 B 0 335 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22476 6 1 0 0 7 1 22463 37679 40800016 3000 A 0 0 0 0 B 0 335 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_8_1
S 22477 6 1 0 0 7 1 22463 37687 40800016 3000 A 0 0 0 0 B 0 335 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_9_1
S 22478 6 1 0 0 7 1 22463 134429 40800016 3000 A 0 0 0 0 B 0 335 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_10_1
S 22479 6 1 0 0 7 1 22463 135636 40800016 3000 A 0 0 0 0 B 0 335 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10948
S 22480 6 1 0 0 7 1 22463 135646 40800016 3000 A 0 0 0 0 B 0 335 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10951
S 22481 6 1 0 0 7 1 22463 135411 40800016 3000 A 0 0 0 0 B 0 337 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_12_1
S 22482 6 1 0 0 7 1 22463 134457 40800016 3000 A 0 0 0 0 B 0 337 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_13_1
S 22483 6 1 0 0 7 1 22463 134466 40800016 3000 A 0 0 0 0 B 0 337 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_14_1
S 22484 6 1 0 0 7 1 22463 135656 40800016 3000 A 0 0 0 0 B 0 337 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10958
S 22485 23 5 0 0 0 22490 624 135168 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fftx_c2psi_gamma_gpu
S 22486 1 3 1 0 6131 1 22485 134353 14 3000 A 0 0 0 0 B 0 423 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22487 7 3 2 0 6604 1 22485 135605 20008014 10003000 A 0 0 0 0 B 0 423 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 psi
S 22488 7 3 1 0 6607 1 22485 135609 20008014 10003000 A 0 0 0 0 B 0 423 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 c
S 22489 7 3 1 0 6610 1 22485 135611 a0008014 10003000 A 0 0 0 0 B 0 423 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ca
S 22490 14 5 0 0 0 1 22485 135168 20000000 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10576 4 0 0 0 0 0 0 0 0 0 0 0 0 423 0 624 0 0 0 0 fftx_c2psi_gamma_gpu fftx_c2psi_gamma_gpu 
F 22490 4 22486 22487 22488 22489
S 22491 6 1 0 0 7 1 22485 135373 40800016 3000 A 0 0 0 0 B 0 430 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_2
S 22492 6 1 0 0 7 1 22485 37629 40800016 3000 A 0 0 0 0 B 0 430 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22493 6 1 0 0 7 1 22485 37712 40800016 3000 A 0 0 0 0 B 0 430 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 22494 6 1 0 0 7 1 22485 78178 40800016 3000 A 0 0 0 0 B 0 430 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10953
S 22495 6 1 0 0 7 1 22485 37645 40800016 3000 A 0 0 0 0 B 0 431 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22496 6 1 0 0 7 1 22485 37653 40800016 3000 A 0 0 0 0 B 0 431 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22497 6 1 0 0 7 1 22485 37729 40800016 3000 A 0 0 0 0 B 0 431 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_7_1
S 22498 6 1 0 0 7 1 22485 135666 40800016 3000 A 0 0 0 0 B 0 431 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10960
S 22499 6 1 0 0 7 1 22485 37687 40800016 3000 A 0 0 0 0 B 0 432 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_9_1
S 22500 6 1 0 0 7 1 22485 134429 40800016 3000 A 0 0 0 0 B 0 432 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_10_1
S 22501 6 1 0 0 7 1 22485 134438 40800016 3000 A 0 0 0 0 B 0 432 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_11_1
S 22502 6 1 0 0 7 1 22485 135676 40800016 3000 A 0 0 0 0 B 0 432 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10967
S 22503 23 5 0 0 0 22510 624 135028 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fftx_c2psi_k
S 22504 1 3 1 0 6131 1 22503 134353 14 3000 A 0 0 0 0 B 0 456 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22505 7 3 2 0 6613 1 22503 135605 20000014 10003000 A 0 0 0 0 B 0 456 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 psi
S 22506 7 3 1 0 6616 1 22503 135609 20000014 10003000 A 0 0 0 0 B 0 456 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 c
S 22507 7 3 1 0 6619 1 22503 135686 20000014 10003000 A 0 0 0 0 B 0 456 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 igk
S 22508 1 3 1 0 6 1 22503 135690 14 3000 A 0 0 0 0 B 0 456 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ngk
S 22509 1 3 1 0 6 1 22503 135694 80000014 3000 A 0 0 0 0 B 0 456 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 howmany
S 22510 14 5 0 0 0 1 22503 135028 20000000 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10581 6 0 0 0 0 0 0 0 0 0 0 0 0 456 0 624 0 0 0 0 fftx_c2psi_k fftx_c2psi_k 
F 22510 6 22504 22505 22506 22507 22508 22509
S 22511 6 1 0 0 7 1 22503 135373 40800016 3000 A 0 0 0 0 B 0 465 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_2
S 22512 6 1 0 0 7 1 22503 37629 40800016 3000 A 0 0 0 0 B 0 465 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22513 6 1 0 0 7 1 22503 37712 40800016 3000 A 0 0 0 0 B 0 465 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 22514 6 1 0 0 7 1 22503 135702 40800016 3000 A 0 0 0 0 B 0 465 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10965
S 22515 6 1 0 0 7 1 22503 37645 40800016 3000 A 0 0 0 0 B 0 467 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22516 6 1 0 0 7 1 22503 37653 40800016 3000 A 0 0 0 0 B 0 467 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22517 6 1 0 0 7 1 22503 37679 40800016 3000 A 0 0 0 0 B 0 467 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_8_1
S 22518 6 1 0 0 7 1 22503 37687 40800016 3000 A 0 0 0 0 B 0 467 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_9_1
S 22519 6 1 0 0 7 1 22503 134429 40800016 3000 A 0 0 0 0 B 0 467 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_10_1
S 22520 6 1 0 0 7 1 22503 135712 40800016 3000 A 0 0 0 0 B 0 467 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10975
S 22521 6 1 0 0 7 1 22503 78338 40800016 3000 A 0 0 0 0 B 0 467 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10978
S 22522 6 1 0 0 7 1 22503 135411 40800016 3000 A 0 0 0 0 B 0 469 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_12_1
S 22523 6 1 0 0 7 1 22503 134457 40800016 3000 A 0 0 0 0 B 0 469 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_13_1
S 22524 6 1 0 0 7 1 22503 134466 40800016 3000 A 0 0 0 0 B 0 469 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_14_1
S 22525 6 1 0 0 7 1 22503 135722 40800016 3000 A 0 0 0 0 B 0 469 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10985
S 22526 23 5 0 0 0 22531 624 134864 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fftx_oned2threed
S 22527 1 3 1 0 6131 1 22526 134353 14 3000 A 0 0 0 0 B 0 526 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22528 7 3 2 0 6622 1 22526 135605 20000014 10003000 A 0 0 0 0 B 0 526 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 psi
S 22529 7 3 1 0 6625 1 22526 135609 20000014 10003000 A 0 0 0 0 B 0 526 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 c
S 22530 7 3 1 0 6628 1 22526 135611 a0000014 10003000 A 0 0 0 0 B 0 526 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ca
S 22531 14 5 0 0 0 1 22526 134864 20000000 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10588 4 0 0 0 0 0 0 0 0 0 0 0 0 526 0 624 0 0 0 0 fftx_oned2threed fftx_oned2threed 
F 22531 4 22527 22528 22529 22530
S 22532 6 1 0 0 7 1 22526 135373 40800016 3000 A 0 0 0 0 B 0 536 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_2
S 22533 6 1 0 0 7 1 22526 37629 40800016 3000 A 0 0 0 0 B 0 536 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22534 6 1 0 0 7 1 22526 37712 40800016 3000 A 0 0 0 0 B 0 536 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 22535 6 1 0 0 7 1 22526 135732 40800016 3000 A 0 0 0 0 B 0 536 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10980
S 22536 6 1 0 0 7 1 22526 37645 40800016 3000 A 0 0 0 0 B 0 538 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22537 6 1 0 0 7 1 22526 37653 40800016 3000 A 0 0 0 0 B 0 538 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22538 6 1 0 0 7 1 22526 37729 40800016 3000 A 0 0 0 0 B 0 538 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_7_1
S 22539 6 1 0 0 7 1 22526 78368 40800016 3000 A 0 0 0 0 B 0 538 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10987
S 22540 6 1 0 0 7 1 22526 37687 40800016 3000 A 0 0 0 0 B 0 540 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_9_1
S 22541 6 1 0 0 7 1 22526 134429 40800016 3000 A 0 0 0 0 B 0 540 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_10_1
S 22542 6 1 0 0 7 1 22526 134438 40800016 3000 A 0 0 0 0 B 0 540 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_11_1
S 22543 6 1 0 0 7 1 22526 135742 40800016 3000 A 0 0 0 0 B 0 540 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10994
S 22544 23 5 0 0 0 22549 624 134947 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fftx_add_threed2oned_gamma
S 22545 1 3 1 0 6131 1 22544 134353 14 3000 A 0 0 0 0 B 0 585 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22546 7 3 1 0 6637 1 22544 135752 20000014 10003000 A 0 0 0 0 B 0 585 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 vin
S 22547 7 3 3 0 6631 1 22544 135756 20000014 10003000 A 0 0 0 0 B 0 585 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 vout1
S 22548 7 3 3 0 6634 1 22544 135762 a0000014 10003000 A 0 0 0 0 B 0 585 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 vout2
S 22549 14 5 0 0 0 1 22544 134947 20000000 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10593 4 0 0 0 0 0 0 0 0 0 0 0 0 585 0 624 0 0 0 0 fftx_add_threed2oned_gamma fftx_add_threed2oned_gamma 
F 22549 4 22545 22546 22547 22548
S 22550 6 1 0 0 7 1 22544 135373 40800016 3000 A 0 0 0 0 B 0 589 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_2
S 22551 6 1 0 0 7 1 22544 37629 40800016 3000 A 0 0 0 0 B 0 589 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22552 6 1 0 0 7 1 22544 37712 40800016 3000 A 0 0 0 0 B 0 589 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 22553 6 1 0 0 7 1 22544 135768 40800016 3000 A 0 0 0 0 B 0 589 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10992
S 22554 6 1 0 0 7 1 22544 37645 40800016 3000 A 0 0 0 0 B 0 590 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22555 6 1 0 0 7 1 22544 37653 40800016 3000 A 0 0 0 0 B 0 590 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22556 6 1 0 0 7 1 22544 37729 40800016 3000 A 0 0 0 0 B 0 590 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_7_1
S 22557 6 1 0 0 7 1 22544 135778 40800016 3000 A 0 0 0 0 B 0 590 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_10999
S 22558 6 1 0 0 7 1 22544 37687 40800016 3000 A 0 0 0 0 B 0 591 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_9_1
S 22559 6 1 0 0 7 1 22544 134429 40800016 3000 A 0 0 0 0 B 0 591 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_10_1
S 22560 6 1 0 0 7 1 22544 134438 40800016 3000 A 0 0 0 0 B 0 591 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_11_1
S 22561 6 1 0 0 7 1 22544 135788 40800016 3000 A 0 0 0 0 B 0 591 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11006
S 22562 23 5 0 0 0 22568 624 134847 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fftx_threed2oned
S 22563 1 3 1 0 6131 1 22562 134353 14 3000 A 0 0 0 0 B 0 610 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22564 7 3 1 0 6646 1 22562 135752 20000014 10003000 A 0 0 0 0 B 0 610 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 vin
S 22565 7 3 2 0 6640 1 22562 135756 20000014 10003000 A 0 0 0 0 B 0 610 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 vout1
S 22566 7 3 2 0 6643 1 22562 135762 a0000014 10003000 A 0 0 0 0 B 0 610 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 vout2
S 22567 1 3 1 0 6 1 22562 135798 80000014 3000 A 0 0 0 0 B 0 610 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 iigs
S 22568 14 5 0 0 0 1 22562 134847 20000000 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10598 5 0 0 0 0 0 0 0 0 0 0 0 0 610 0 624 0 0 0 0 fftx_threed2oned fftx_threed2oned 
F 22568 5 22563 22564 22565 22566 22567
S 22569 6 1 0 0 7 1 22562 135373 40800016 3000 A 0 0 0 0 B 0 617 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_2
S 22570 6 1 0 0 7 1 22562 37629 40800016 3000 A 0 0 0 0 B 0 617 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22571 6 1 0 0 7 1 22562 37712 40800016 3000 A 0 0 0 0 B 0 617 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 22572 6 1 0 0 7 1 22562 135803 40800016 3000 A 0 0 0 0 B 0 617 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11004
S 22573 6 1 0 0 7 1 22562 37645 40800016 3000 A 0 0 0 0 B 0 618 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22574 6 1 0 0 7 1 22562 37653 40800016 3000 A 0 0 0 0 B 0 618 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22575 6 1 0 0 7 1 22562 37729 40800016 3000 A 0 0 0 0 B 0 618 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_7_1
S 22576 6 1 0 0 7 1 22562 135813 40800016 3000 A 0 0 0 0 B 0 618 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11011
S 22577 6 1 0 0 7 1 22562 37687 40800016 3000 A 0 0 0 0 B 0 619 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_9_1
S 22578 6 1 0 0 7 1 22562 134429 40800016 3000 A 0 0 0 0 B 0 619 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_10_1
S 22579 6 1 0 0 7 1 22562 134438 40800016 3000 A 0 0 0 0 B 0 619 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_11_1
S 22580 6 1 0 0 7 1 22562 78525 40800016 3000 A 0 0 0 0 B 0 619 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11018
S 22581 23 5 0 0 0 22587 624 134974 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fftx_psi2c_gamma
S 22582 1 3 1 0 6131 1 22581 134353 14 3000 A 0 0 0 0 B 0 658 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22583 7 3 1 0 6655 1 22581 135752 20000014 10003000 A 0 0 0 0 B 0 658 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 vin
S 22584 7 3 2 0 6649 1 22581 135756 20000014 10003000 A 0 0 0 0 B 0 658 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 vout1
S 22585 7 3 2 0 6652 1 22581 135762 a0000014 10003000 A 0 0 0 0 B 0 658 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 vout2
S 22586 7 3 1 0 6658 1 22581 135614 80800014 3000 A 0 0 0 0 B 0 658 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 howmany_set
S 22587 14 5 0 0 0 1 22581 134974 20000000 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10604 5 0 0 0 0 0 0 0 0 0 0 0 0 658 0 624 0 0 0 0 fftx_psi2c_gamma fftx_psi2c_gamma 
F 22587 5 22582 22583 22584 22585 22586
S 22588 6 1 0 0 7 1 22581 135373 40800016 3000 A 0 0 0 0 B 0 664 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_2
S 22589 6 1 0 0 7 1 22581 37629 40800016 3000 A 0 0 0 0 B 0 664 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22590 6 1 0 0 7 1 22581 37637 40800016 3000 A 0 0 0 0 B 0 664 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_4_1
S 22591 6 1 0 0 7 1 22581 37645 40800016 3000 A 0 0 0 0 B 0 664 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22592 6 1 0 0 7 1 22581 37653 40800016 3000 A 0 0 0 0 B 0 664 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22593 6 1 0 0 7 1 22581 135823 40800016 3000 A 0 0 0 0 B 0 664 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11019
S 22594 6 1 0 0 7 1 22581 135833 40800016 3000 A 0 0 0 0 B 0 664 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11022
S 22595 6 1 0 0 7 1 22581 37679 40800016 3000 A 0 0 0 0 B 0 665 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_8_1
S 22596 6 1 0 0 7 1 22581 37687 40800016 3000 A 0 0 0 0 B 0 665 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_9_1
S 22597 6 1 0 0 7 1 22581 134429 40800016 3000 A 0 0 0 0 B 0 665 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_10_1
S 22598 6 1 0 0 7 1 22581 135843 40800016 3000 A 0 0 0 0 B 0 665 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11029
S 22599 6 1 0 0 7 1 22581 135411 40800016 3000 A 0 0 0 0 B 0 666 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_12_1
S 22600 6 1 0 0 7 1 22581 134457 40800016 3000 A 0 0 0 0 B 0 666 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_13_1
S 22601 6 1 0 0 7 1 22581 134466 40800016 3000 A 0 0 0 0 B 0 666 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_14_1
S 22602 6 1 0 0 7 1 22581 135853 40800016 3000 A 0 0 0 0 B 0 666 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11036
S 22603 23 5 0 0 0 22608 624 135147 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fftx_psi2c_gamma_gpu
S 22604 1 3 1 0 6131 1 22603 134353 14 3000 A 0 0 0 0 B 0 734 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22605 7 3 1 0 6667 1 22603 135752 20008014 10003000 A 0 0 0 0 B 0 734 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 vin
S 22606 7 3 2 0 6661 1 22603 135756 20008014 10003000 A 0 0 0 0 B 0 734 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 vout1
S 22607 7 3 2 0 6664 1 22603 135762 a0008014 10003000 A 0 0 0 0 B 0 734 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 vout2
S 22608 14 5 0 0 0 1 22603 135147 20000000 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10610 4 0 0 0 0 0 0 0 0 0 0 0 0 734 0 624 0 0 0 0 fftx_psi2c_gamma_gpu fftx_psi2c_gamma_gpu 
F 22608 4 22604 22605 22606 22607
S 22609 6 1 0 0 7 1 22603 135373 40800016 3000 A 0 0 0 0 B 0 740 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_2
S 22610 6 1 0 0 7 1 22603 37629 40800016 3000 A 0 0 0 0 B 0 740 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22611 6 1 0 0 7 1 22603 37712 40800016 3000 A 0 0 0 0 B 0 740 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 22612 6 1 0 0 7 1 22603 135863 40800016 3000 A 0 0 0 0 B 0 740 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11031
S 22613 6 1 0 0 7 1 22603 37645 40800016 3000 A 0 0 0 0 B 0 741 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22614 6 1 0 0 7 1 22603 37653 40800016 3000 A 0 0 0 0 B 0 741 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22615 6 1 0 0 7 1 22603 37729 40800016 3000 A 0 0 0 0 B 0 741 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_7_1
S 22616 6 1 0 0 7 1 22603 135873 40800016 3000 A 0 0 0 0 B 0 741 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11038
S 22617 6 1 0 0 7 1 22603 37687 40800016 3000 A 0 0 0 0 B 0 742 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_9_1
S 22618 6 1 0 0 7 1 22603 134429 40800016 3000 A 0 0 0 0 B 0 742 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_10_1
S 22619 6 1 0 0 7 1 22603 134438 40800016 3000 A 0 0 0 0 B 0 742 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_11_1
S 22620 6 1 0 0 7 1 22603 135883 40800016 3000 A 0 0 0 0 B 0 742 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11045
S 22621 23 5 0 0 0 22627 624 135057 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fftx_psi2c_k
S 22622 1 3 1 0 6131 1 22621 134353 14 3000 A 0 0 0 0 B 0 767 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22623 7 3 1 0 6670 1 22621 135752 20000014 10003000 A 0 0 0 0 B 0 767 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 vin
S 22624 7 3 2 0 6673 1 22621 135893 20000014 10003000 A 0 0 0 0 B 0 767 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 vout
S 22625 7 3 1 0 6676 1 22621 135686 20000014 10003000 A 0 0 0 0 B 0 767 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 igk
S 22626 7 3 1 0 6679 1 22621 135614 80800014 3000 A 0 0 0 0 B 0 767 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 howmany_set
S 22627 14 5 0 0 0 1 22621 135057 20000000 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10615 5 0 0 0 0 0 0 0 0 0 0 0 0 767 0 624 0 0 0 0 fftx_psi2c_k fftx_psi2c_k 
F 22627 5 22622 22623 22624 22625 22626
S 22628 6 1 0 0 7 1 22621 135373 40800016 3000 A 0 0 0 0 B 0 773 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_2
S 22629 6 1 0 0 7 1 22621 37629 40800016 3000 A 0 0 0 0 B 0 773 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22630 6 1 0 0 7 1 22621 37712 40800016 3000 A 0 0 0 0 B 0 773 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 22631 6 1 0 0 7 1 22621 135898 40800016 3000 A 0 0 0 0 B 0 773 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11043
S 22632 6 1 0 0 7 1 22621 37645 40800016 3000 A 0 0 0 0 B 0 774 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22633 6 1 0 0 7 1 22621 37653 40800016 3000 A 0 0 0 0 B 0 774 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22634 6 1 0 0 7 1 22621 37679 40800016 3000 A 0 0 0 0 B 0 774 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_8_1
S 22635 6 1 0 0 7 1 22621 37687 40800016 3000 A 0 0 0 0 B 0 774 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_9_1
S 22636 6 1 0 0 7 1 22621 134429 40800016 3000 A 0 0 0 0 B 0 774 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_10_1
S 22637 6 1 0 0 7 1 22621 135908 40800016 3000 A 0 0 0 0 B 0 774 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11053
S 22638 6 1 0 0 7 1 22621 135918 40800016 3000 A 0 0 0 0 B 0 774 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11056
S 22639 6 1 0 0 7 1 22621 135411 40800016 3000 A 0 0 0 0 B 0 775 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_12_1
S 22640 6 1 0 0 7 1 22621 134457 40800016 3000 A 0 0 0 0 B 0 775 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_13_1
S 22641 6 1 0 0 7 1 22621 134466 40800016 3000 A 0 0 0 0 B 0 775 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_14_1
S 22642 6 1 0 0 7 1 22621 135928 40800016 3000 A 0 0 0 0 B 0 775 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11063
S 22643 23 5 0 0 0 22649 624 135008 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fftx_c2psi_gamma_tg
S 22644 1 3 1 0 6131 1 22643 134353 14 3000 A 0 0 0 0 B 0 816 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22645 7 3 2 0 6682 1 22643 135938 20000014 10003000 A 0 0 0 0 B 0 816 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 psis
S 22646 7 3 1 0 6685 1 22643 135943 20000014 10003000 A 0 0 0 0 B 0 816 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 c_bgrp
S 22647 1 3 1 0 6 1 22643 15860 14 3000 A 0 0 0 0 B 0 816 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 n
S 22648 1 3 1 0 6 1 22643 135950 14 3000 A 0 0 0 0 B 0 816 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dbnd
S 22649 14 5 0 0 0 1 22643 135008 20000000 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10621 5 0 0 0 0 0 0 0 0 0 0 0 0 816 0 624 0 0 0 0 fftx_c2psi_gamma_tg fftx_c2psi_gamma_tg 
F 22649 5 22644 22645 22646 22647 22648
S 22650 6 1 0 0 7 1 22643 135373 40800016 3000 A 0 0 0 0 B 0 824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_2
S 22651 6 1 0 0 7 1 22643 37629 40800016 3000 A 0 0 0 0 B 0 824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22652 6 1 0 0 7 1 22643 37712 40800016 3000 A 0 0 0 0 B 0 824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 22653 6 1 0 0 7 1 22643 135955 40800016 3000 A 0 0 0 0 B 0 824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11058
S 22654 6 1 0 0 7 1 22643 37645 40800016 3000 A 0 0 0 0 B 0 825 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22655 6 1 0 0 7 1 22643 37653 40800016 3000 A 0 0 0 0 B 0 825 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22656 6 1 0 0 7 1 22643 37679 40800016 3000 A 0 0 0 0 B 0 825 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_8_1
S 22657 6 1 0 0 7 1 22643 37687 40800016 3000 A 0 0 0 0 B 0 825 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_9_1
S 22658 6 1 0 0 7 1 22643 134429 40800016 3000 A 0 0 0 0 B 0 825 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_10_1
S 22659 6 1 0 0 7 1 22643 135965 40800016 3000 A 0 0 0 0 B 0 825 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11068
S 22660 6 1 0 0 7 1 22643 135975 40800016 3000 A 0 0 0 0 B 0 825 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11071
S 22661 23 5 0 0 0 22668 624 135041 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fftx_c2psi_k_tg
S 22662 1 3 1 0 6131 1 22661 134353 14 3000 A 0 0 0 0 B 0 902 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22663 7 3 2 0 6688 1 22661 135938 20000014 10003000 A 0 0 0 0 B 0 902 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 psis
S 22664 7 3 3 0 6691 1 22661 135943 20000014 10003000 A 0 0 0 0 B 0 902 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 c_bgrp
S 22665 7 3 1 0 6694 1 22661 135686 20000014 10003000 A 0 0 0 0 B 0 902 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 igk
S 22666 1 3 1 0 6 1 22661 135690 14 3000 A 0 0 0 0 B 0 902 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ngk
S 22667 1 3 1 0 6 1 22661 135950 14 3000 A 0 0 0 0 B 0 902 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dbnd
S 22668 14 5 0 0 0 1 22661 135041 20000000 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10627 6 0 0 0 0 0 0 0 0 0 0 0 0 902 0 624 0 0 0 0 fftx_c2psi_k_tg fftx_c2psi_k_tg 
F 22668 6 22662 22663 22664 22665 22666 22667
S 22669 6 1 0 0 7 1 22661 135373 40800016 3000 A 0 0 0 0 B 0 910 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_2
S 22670 6 1 0 0 7 1 22661 37629 40800016 3000 A 0 0 0 0 B 0 910 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22671 6 1 0 0 7 1 22661 37712 40800016 3000 A 0 0 0 0 B 0 910 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 22672 6 1 0 0 7 1 22661 135985 40800016 3000 A 0 0 0 0 B 0 910 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11069
S 22673 6 1 0 0 7 1 22661 37645 40800016 3000 A 0 0 0 0 B 0 911 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22674 6 1 0 0 7 1 22661 37653 40800016 3000 A 0 0 0 0 B 0 911 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22675 6 1 0 0 7 1 22661 37679 40800016 3000 A 0 0 0 0 B 0 911 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_8_1
S 22676 6 1 0 0 7 1 22661 37687 40800016 3000 A 0 0 0 0 B 0 911 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_9_1
S 22677 6 1 0 0 7 1 22661 134429 40800016 3000 A 0 0 0 0 B 0 911 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_10_1
S 22678 6 1 0 0 7 1 22661 135995 40800016 3000 A 0 0 0 0 B 0 911 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11079
S 22679 6 1 0 0 7 1 22661 136005 40800016 3000 A 0 0 0 0 B 0 911 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11082
S 22680 6 1 0 0 7 1 22661 135411 40800016 3000 A 0 0 0 0 B 0 912 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_12_1
S 22681 6 1 0 0 7 1 22661 134457 40800016 3000 A 0 0 0 0 B 0 912 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_13_1
S 22682 6 1 0 0 7 1 22661 134466 40800016 3000 A 0 0 0 0 B 0 912 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_14_1
S 22683 6 1 0 0 7 1 22661 136015 40800016 3000 A 0 0 0 0 B 0 912 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11089
S 22684 23 5 0 0 0 22690 624 135070 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fftx_psi2c_gamma_tg
S 22685 1 3 1 0 6131 1 22684 134353 14 3000 A 0 0 0 0 B 0 958 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22686 7 3 1 0 6697 1 22684 135752 20000014 10003000 A 0 0 0 0 B 0 958 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 vin
S 22687 7 3 2 0 6700 1 22684 135893 20000014 10003000 A 0 0 0 0 B 0 958 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 vout
S 22688 1 3 1 0 6 1 22684 15860 14 3000 A 0 0 0 0 B 0 958 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 n
S 22689 1 3 1 0 6 1 22684 135950 14 3000 A 0 0 0 0 B 0 958 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dbnd
S 22690 14 5 0 0 0 1 22684 135070 20000000 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10634 5 0 0 0 0 0 0 0 0 0 0 0 0 958 0 624 0 0 0 0 fftx_psi2c_gamma_tg fftx_psi2c_gamma_tg 
F 22690 5 22685 22686 22687 22688 22689
S 22691 6 1 0 0 7 1 22684 135373 40800016 3000 A 0 0 0 0 B 0 968 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_2
S 22692 6 1 0 0 7 1 22684 37629 40800016 3000 A 0 0 0 0 B 0 968 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22693 6 1 0 0 7 1 22684 37712 40800016 3000 A 0 0 0 0 B 0 968 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 22694 6 1 0 0 7 1 22684 136025 40800016 3000 A 0 0 0 0 B 0 968 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11084
S 22695 6 1 0 0 7 1 22684 37645 40800016 3000 A 0 0 0 0 B 0 969 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22696 6 1 0 0 7 1 22684 37653 40800016 3000 A 0 0 0 0 B 0 969 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22697 6 1 0 0 7 1 22684 37679 40800016 3000 A 0 0 0 0 B 0 969 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_8_1
S 22698 6 1 0 0 7 1 22684 37687 40800016 3000 A 0 0 0 0 B 0 969 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_9_1
S 22699 6 1 0 0 7 1 22684 134429 40800016 3000 A 0 0 0 0 B 0 969 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_10_1
S 22700 6 1 0 0 7 1 22684 136035 40800016 3000 A 0 0 0 0 B 0 969 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11094
S 22701 6 1 0 0 7 1 22684 136045 40800016 3000 A 0 0 0 0 B 0 969 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11097
S 22702 23 5 0 0 0 22709 624 135090 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fftx_psi2c_k_tg
S 22703 1 3 1 0 6131 1 22702 134353 14 3000 A 0 0 0 0 B 0 1013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22704 7 3 1 0 6703 1 22702 135752 20000014 10003000 A 0 0 0 0 B 0 1013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 vin
S 22705 7 3 2 0 6706 1 22702 135893 20000014 10003000 A 0 0 0 0 B 0 1013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 vout
S 22706 7 3 1 0 6709 1 22702 135686 20000014 10003000 A 0 0 0 0 B 0 1013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 igk
S 22707 1 3 1 0 6 1 22702 15860 14 3000 A 0 0 0 0 B 0 1013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 n
S 22708 1 3 1 0 6 1 22702 135950 14 3000 A 0 0 0 0 B 0 1013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dbnd
S 22709 14 5 0 0 0 1 22702 135090 20000000 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10640 6 0 0 0 0 0 0 0 0 0 0 0 0 1013 0 624 0 0 0 0 fftx_psi2c_k_tg fftx_psi2c_k_tg 
F 22709 6 22703 22704 22705 22706 22707 22708
S 22710 6 1 0 0 7 1 22702 135373 40800016 3000 A 0 0 0 0 B 0 1023 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_2
S 22711 6 1 0 0 7 1 22702 37629 40800016 3000 A 0 0 0 0 B 0 1023 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 22712 6 1 0 0 7 1 22702 37712 40800016 3000 A 0 0 0 0 B 0 1023 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 22713 6 1 0 0 7 1 22702 136055 40800016 3000 A 0 0 0 0 B 0 1023 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11095
S 22714 6 1 0 0 7 1 22702 37645 40800016 3000 A 0 0 0 0 B 0 1024 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 22715 6 1 0 0 7 1 22702 37653 40800016 3000 A 0 0 0 0 B 0 1024 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 22716 6 1 0 0 7 1 22702 37679 40800016 3000 A 0 0 0 0 B 0 1024 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_8_1
S 22717 6 1 0 0 7 1 22702 37687 40800016 3000 A 0 0 0 0 B 0 1024 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_9_1
S 22718 6 1 0 0 7 1 22702 134429 40800016 3000 A 0 0 0 0 B 0 1024 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_10_1
S 22719 6 1 0 0 7 1 22702 136065 40800016 3000 A 0 0 0 0 B 0 1024 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11105
S 22720 6 1 0 0 7 1 22702 136075 40800016 3000 A 0 0 0 0 B 0 1024 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11108
S 22721 6 1 0 0 7 1 22702 135411 40800016 3000 A 0 0 0 0 B 0 1025 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_12_1
S 22722 6 1 0 0 7 1 22702 134457 40800016 3000 A 0 0 0 0 B 0 1025 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_13_1
S 22723 6 1 0 0 7 1 22702 134466 40800016 3000 A 0 0 0 0 B 0 1025 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_14_1
S 22724 6 1 0 0 7 1 22702 136085 40800016 3000 A 0 0 0 0 B 0 1025 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_11115
S 22725 23 5 0 0 0 22728 624 135121 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fft_dist_info
S 22726 1 3 1 0 6131 1 22725 134353 14 3000 A 0 0 0 0 B 0 1050 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22727 1 3 1 0 6 1 22725 3868 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 unit
S 22728 14 5 0 0 0 1 22725 135121 0 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10647 2 0 0 0 0 0 0 0 0 0 0 0 0 1050 0 624 0 0 0 0 fft_dist_info fft_dist_info 
F 22728 2 22726 22727
S 22729 23 5 0 0 0 22731 624 136095 10 0 A 0 0 0 0 B 0 1083 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 alloc_nl_pntrs
S 22730 1 3 1 0 6131 1 22729 134353 14 3000 A 0 0 0 0 B 0 1083 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22731 14 5 0 0 0 1 22729 136095 10 400000 A 0 0 0 0 B 0 1083 0 0 0 0 0 10650 1 0 0 0 0 0 0 0 0 0 0 0 0 1083 0 624 0 0 0 0 alloc_nl_pntrs alloc_nl_pntrs 
F 22731 1 22730
S 22732 23 5 0 0 0 22734 624 136110 10 0 A 0 0 0 0 B 0 1107 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dealloc_nl_pntrs
S 22733 1 3 1 0 6131 1 22732 134353 14 3000 A 0 0 0 0 B 0 1107 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 desc
S 22734 14 5 0 0 0 1 22732 136110 10 400000 A 0 0 0 0 B 0 1107 0 0 0 0 0 10652 1 0 0 0 0 0 0 0 0 0 0 0 0 1107 0 624 0 0 0 0 dealloc_nl_pntrs dealloc_nl_pntrs 
F 22734 1 22733
A 13 2 0 0 0 6 629 0 0 0 13 0 0 0 0 0 0 0 0 0 0 0
A 15 2 0 0 0 6 630 0 0 0 15 0 0 0 0 0 0 0 0 0 0 0
A 17 2 0 0 0 6 631 0 0 0 17 0 0 0 0 0 0 0 0 0 0 0
A 68 1 0 0 0 58 684 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 71 1 0 0 0 67 686 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 114 2 0 0 0 7 721 0 0 0 114 0 0 0 0 0 0 0 0 0 0 0
A 115 2 0 0 0 7 722 0 0 0 115 0 0 0 0 0 0 0 0 0 0 0
A 118 1 0 1 0 76 725 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 124 1 0 3 0 82 747 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 130 1 0 3 0 88 749 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 134 1 0 5 0 94 751 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 158 2 0 0 10 18 765 0 0 0 158 0 0 0 0 0 0 0 0 0 0 0
A 173 2 0 0 0 6 766 0 0 0 173 0 0 0 0 0 0 0 0 0 0 0
A 514 2 0 0 0 7 833 0 0 0 514 0 0 0 0 0 0 0 0 0 0 0
A 709 2 0 0 0 7 834 0 0 0 709 0 0 0 0 0 0 0 0 0 0 0
A 1323 2 0 0 0 7 7892 0 0 0 1323 0 0 0 0 0 0 0 0 0 0 0
A 1325 2 0 0 0 7 7886 0 0 0 1325 0 0 0 0 0 0 0 0 0 0 0
A 1327 2 0 0 0 7 7887 0 0 0 1327 0 0 0 0 0 0 0 0 0 0 0
A 1331 2 0 0 0 7 7890 0 0 0 1331 0 0 0 0 0 0 0 0 0 0 0
A 1618 2 0 0 1424 7 8169 0 0 0 1618 0 0 0 0 0 0 0 0 0 0 0
A 8913 1 0 0 7038 4816 15593 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10837 2 0 0 6330 18 21792 0 0 0 10837 0 0 0 0 0 0 0 0 0 0 0
A 10838 2 0 0 10514 22 21793 0 0 0 10838 0 0 0 0 0 0 0 0 0 0 0
A 10840 1 0 25 5742 6544 22312 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10841 10 0 0 2918 7 10840 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1325
A 10842 10 0 0 10841 7 10840 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1327
A 10843 4 0 0 6114 7 10842 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 10844 4 0 0 5852 7 10841 0 10843 0 0 0 0 1 0 0 0 0 0 0 0 0
A 10845 10 0 0 10842 7 10840 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1331
A 10846 10 0 0 10845 7 10840 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 514
A 10847 10 0 0 10846 7 10840 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1323
A 10849 1 0 25 10515 6550 22318 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10850 10 0 0 7545 7 10849 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1325
A 10851 10 0 0 10850 7 10849 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1327
A 10852 4 0 0 9484 7 10851 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 10853 4 0 0 5705 7 10850 0 10852 0 0 0 0 1 0 0 0 0 0 0 0 0
A 10854 10 0 0 10851 7 10849 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1331
A 10855 10 0 0 10854 7 10849 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 514
A 10856 10 0 0 10855 7 10849 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1323
A 10857 1 0 0 7247 7 22335 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10858 1 0 0 7245 7 22333 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10859 1 0 0 7226 7 22336 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10860 1 0 0 9621 7 22334 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10861 1 0 0 9629 7 22341 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10862 1 0 0 7228 7 22337 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10863 1 0 0 10522 7 22342 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10864 1 0 0 7234 7 22339 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10865 1 0 0 7231 7 22338 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10866 1 0 0 7246 7 22343 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10867 1 0 0 7237 7 22340 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10868 1 0 0 7254 7 22348 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10869 1 0 0 7249 7 22344 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10870 1 0 0 7258 7 22349 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10871 1 0 0 7251 7 22346 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10872 1 0 0 7252 7 22345 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10873 1 0 0 7257 7 22350 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10874 1 0 0 7255 7 22347 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10875 1 0 0 7250 7 22359 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10876 1 0 0 7269 7 22357 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10877 1 0 0 7253 7 22360 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10878 1 0 0 7248 7 22358 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10879 1 0 0 7268 7 22365 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10880 1 0 0 7256 7 22361 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10881 1 0 0 2586 7 22366 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10882 1 0 0 7262 7 22363 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10883 1 0 0 7259 7 22362 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10884 1 0 0 2588 7 22367 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10885 1 0 0 7265 7 22364 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10886 1 0 0 7280 7 22377 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10887 1 0 0 7274 7 22373 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10888 1 0 0 7279 7 22378 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10889 1 0 0 10626 7 22375 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10890 1 0 0 7273 7 22374 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10891 1 0 0 10226 7 22379 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10892 1 0 0 10551 7 22376 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10893 1 0 0 10559 7 22384 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10894 1 0 0 7282 7 22380 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10895 1 0 0 7291 7 22385 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10896 1 0 0 7285 7 22382 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10897 1 0 0 10634 7 22381 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10898 1 0 0 7270 7 22386 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10899 1 0 0 7289 7 22383 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10900 1 0 0 7293 7 22394 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10901 1 0 0 10642 7 22392 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10902 1 0 0 7296 7 22395 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10903 1 0 0 7290 7 22393 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10904 1 0 0 7298 7 22398 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10905 1 0 0 7295 7 22396 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10906 1 0 0 7302 7 22399 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10907 1 0 0 7299 7 22397 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10908 1 0 0 7294 7 22409 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10909 1 0 0 7311 7 22405 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10910 1 0 0 7297 7 22410 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10911 1 0 0 9682 7 22407 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10912 1 0 0 7310 7 22406 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10913 1 0 0 9557 7 22411 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10914 1 0 0 7292 7 22408 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10915 1 0 0 2634 7 22416 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10916 1 0 0 7303 7 22412 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10917 1 0 0 2638 7 22417 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10918 1 0 0 7309 7 22414 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10919 1 0 0 10588 7 22413 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10920 1 0 0 9565 7 22418 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10921 1 0 0 7312 7 22415 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10922 1 0 0 7367 7 22456 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10923 1 0 0 7365 7 22452 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10924 1 0 0 2675 7 22457 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10925 1 0 0 7362 7 22454 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10926 1 0 0 7368 7 22453 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10927 1 0 0 10633 7 22458 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10928 1 0 0 7364 7 22455 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10929 1 0 0 0 7 22461 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10930 1 0 0 0 7 22459 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10931 1 0 0 0 7 22462 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10932 1 0 0 0 7 22460 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10933 1 0 0 7374 7 22472 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10934 1 0 0 7369 7 22470 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10935 1 0 0 7377 7 22473 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10936 1 0 0 7371 7 22471 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10937 1 0 0 7385 7 22478 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10938 1 0 0 10649 7 22474 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10939 1 0 0 7388 7 22479 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10940 1 0 0 7382 7 22476 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10941 1 0 0 7383 7 22475 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10942 1 0 0 7379 7 22480 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10943 1 0 0 7386 7 22477 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10944 1 0 0 7387 7 22483 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10945 1 0 0 7381 7 22481 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10946 1 0 0 2702 7 22484 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10947 1 0 0 10657 7 22482 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10948 1 0 0 7392 7 22493 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10949 1 0 0 7390 7 22491 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10950 1 0 0 7396 7 22494 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10951 1 0 0 7393 7 22492 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10952 1 0 0 7398 7 22497 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10953 1 0 0 7395 7 22495 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10954 1 0 0 10673 7 22498 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10955 1 0 0 7399 7 22496 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10956 1 0 0 7394 7 22501 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10957 1 0 0 7389 7 22499 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10958 1 0 0 7397 7 22502 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10959 1 0 0 7391 7 22500 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10960 1 0 0 7404 7 22513 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10961 1 0 0 7414 7 22511 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10962 1 0 0 10689 7 22514 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10963 1 0 0 7402 7 22512 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10964 1 0 0 2747 7 22519 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10965 1 0 0 7410 7 22515 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10966 1 0 0 2746 7 22520 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10967 1 0 0 9506 7 22517 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10968 1 0 0 7413 7 22516 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10969 1 0 0 2750 7 22521 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10970 1 0 0 2743 7 22518 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10971 1 0 0 7416 7 22524 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10972 1 0 0 10697 7 22522 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10973 1 0 0 7419 7 22525 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10974 1 0 0 2753 7 22523 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10975 1 0 0 7415 7 22534 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10976 1 0 0 7427 7 22532 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10977 1 0 0 7417 7 22535 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10978 1 0 0 7430 7 22533 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10979 1 0 0 10713 7 22538 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10980 1 0 0 7420 7 22536 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10981 1 0 0 7429 7 22539 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10982 1 0 0 7423 7 22537 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10983 1 0 0 7434 7 22542 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10984 1 0 0 7432 7 22540 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10985 1 0 0 7438 7 22543 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10986 1 0 0 7435 7 22541 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10987 1 0 0 7436 7 22552 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10988 1 0 0 7431 7 22550 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10989 1 0 0 10650 7 22553 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10990 1 0 0 7433 7 22551 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10991 1 0 0 2775 7 22556 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10992 1 0 0 10729 7 22554 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10993 1 0 0 2779 7 22557 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10994 1 0 0 7445 7 22555 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10995 1 0 0 2781 7 22560 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10996 1 0 0 2778 7 22558 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10997 1 0 0 6141 7 22561 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10998 1 0 0 10658 7 22559 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 10999 1 0 0 7459 7 22571 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11000 1 0 0 7456 7 22569 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11001 1 0 0 7463 7 22572 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11002 1 0 0 10745 7 22570 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11003 1 0 0 7447 7 22575 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11004 1 0 0 7462 7 22573 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11005 1 0 0 7449 7 22576 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11006 1 0 0 7465 7 22574 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11007 1 0 0 7458 7 22579 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11008 1 0 0 7452 7 22577 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11009 1 0 0 7461 7 22580 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11010 1 0 0 10753 7 22578 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11011 1 0 0 7481 7 22592 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11012 1 0 0 7475 7 22588 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11013 1 0 0 7484 7 22593 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11014 1 0 0 7478 7 22590 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11015 1 0 0 7479 7 22589 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11016 1 0 0 10769 7 22594 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11017 1 0 0 9581 7 22591 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11018 1 0 0 7474 7 22597 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11019 1 0 0 7468 7 22595 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11020 1 0 0 7477 7 22598 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11021 1 0 0 7471 7 22596 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11022 1 0 0 2837 7 22601 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11023 1 0 0 7480 7 22599 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11024 1 0 0 10782 7 22602 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11025 1 0 0 7483 7 22600 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11026 1 0 0 7492 7 22611 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11027 1 0 0 7489 7 22609 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11028 1 0 0 7491 7 22612 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11029 1 0 0 7488 7 22610 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11030 1 0 0 10790 7 22615 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11031 1 0 0 7495 7 22613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11032 1 0 0 9921 7 22616 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11033 1 0 0 7494 7 22614 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11034 1 0 0 7504 7 22619 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11035 1 0 0 7501 7 22617 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11036 1 0 0 7503 7 22620 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11037 1 0 0 7500 7 22618 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11038 1 0 0 7508 7 22630 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11039 1 0 0 7502 7 22628 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11040 1 0 0 7511 7 22631 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11041 1 0 0 7505 7 22629 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11042 1 0 0 7516 7 22636 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11043 1 0 0 7510 7 22632 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11044 1 0 0 7520 7 22637 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11045 1 0 0 7513 7 22634 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11046 1 0 0 7514 7 22633 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11047 1 0 0 10687 7 22638 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11048 1 0 0 7517 7 22635 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11049 1 0 0 7526 7 22641 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11050 1 0 0 7523 7 22639 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11051 1 0 0 7525 7 22642 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11052 1 0 0 7522 7 22640 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11053 1 0 0 10829 7 22652 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11054 1 0 0 7524 7 22650 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11055 1 0 0 2886 7 22653 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11056 1 0 0 7527 7 22651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11057 1 0 0 2879 7 22658 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11058 1 0 0 10581 7 22654 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11059 1 0 0 10589 7 22659 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11060 1 0 0 2873 7 22656 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11061 1 0 0 10831 7 22655 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11062 1 0 0 7532 7 22660 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11063 1 0 0 10105 7 22657 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11064 1 0 0 2919 7 22671 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11065 1 0 0 212 7 22669 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11066 1 0 0 10847 7 22672 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11067 1 0 0 2916 7 22670 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11068 1 0 0 7543 7 22677 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11069 1 0 0 2922 7 22673 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11070 1 0 0 7537 7 22678 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11071 1 0 0 7541 7 22675 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11072 1 0 0 9517 7 22674 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11073 1 0 0 7539 7 22679 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11074 1 0 0 7540 7 22676 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11075 1 0 0 7548 7 22682 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11076 1 0 0 7542 7 22680 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11077 1 0 0 7547 7 22683 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11078 1 0 0 10856 7 22681 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11079 1 0 0 2941 7 22693 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11080 1 0 0 4929 7 22691 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11081 1 0 0 2940 7 22694 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11082 1 0 0 2938 7 22692 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11083 1 0 0 7557 7 22699 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11084 1 0 0 7552 7 22695 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11085 1 0 0 7560 7 22700 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11086 1 0 0 7554 7 22697 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11087 1 0 0 7555 7 22696 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11088 1 0 0 7551 7 22701 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11089 1 0 0 7558 7 22698 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11090 1 0 0 7563 7 22712 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11091 1 0 0 7570 7 22710 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11092 1 0 0 7566 7 22713 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11093 1 0 0 7561 7 22711 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11094 1 0 0 505 7 22718 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11095 1 0 0 7569 7 22714 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11096 1 0 0 507 7 22719 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11097 1 0 0 359 7 22716 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11098 1 0 0 357 7 22715 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11099 1 0 0 2960 7 22720 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11100 1 0 0 361 7 22717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11101 1 0 0 7575 7 22723 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11102 1 0 0 2963 7 22721 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11103 1 0 0 7574 7 22724 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 11104 1 0 0 7572 7 22722 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
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
J 36 1 1
V 8913 4816 7 0
S 0 4816 0 0 0
A 0 4795 0 0 1 68 0
T 7898 2725 0 3 0 0
A 7902 18 0 0 1 158 1
A 7903 18 0 0 1 158 1
A 7904 6 0 0 1 2 1
A 7905 6 0 0 1 3 1
A 7906 6 0 0 1 3 1
A 7920 6 0 0 1 15 1
A 7921 6 0 0 1 2 1
R 7922 2743 0 1
A 0 6 0 709 1 2 0
R 7923 2746 0 0
A 0 6 0 709 1 2 0
T 21796 6131 0 3 0 0
A 21797 6 0 0 1 2 1
A 21798 6 0 0 1 2 1
A 21799 6 0 0 1 2 1
A 21800 6 0 0 1 2 1
A 21801 6 0 0 1 2 1
A 21802 6 0 0 1 2 1
A 21803 18 0 0 1 158 1
A 21804 18 0 0 1 158 1
A 21805 6 0 0 1 2 1
A 21806 6 0 0 1 15 1
A 21807 6 0 0 1 15 1
A 21808 6 0 0 1 15 1
A 21809 6 0 0 1 3 1
A 21810 6 0 0 1 3 1
A 21811 6 0 0 1 3 1
A 21812 6 0 0 1 2 1
A 21813 6 0 0 1 2 1
A 21814 6 0 0 1 2 1
A 21834 6 0 0 1 2 1
A 21835 6 0 0 1 2 1
A 21836 6 0 0 1 2 1
A 21837 6 0 0 1 2 1
A 22041 6 0 0 1 2 1
A 22042 6 0 0 1 2 1
A 22043 6 0 0 1 2 1
A 22116 18 0 0 1 158 1
A 22117 18 0 0 1 10837 1
A 22118 22 0 0 1 10838 1
A 22119 22 0 0 1 10838 1
A 22146 6 0 0 1 173 1
A 22147 6 0 0 1 13 1
A 22148 6 0 0 1 173 0
Z
