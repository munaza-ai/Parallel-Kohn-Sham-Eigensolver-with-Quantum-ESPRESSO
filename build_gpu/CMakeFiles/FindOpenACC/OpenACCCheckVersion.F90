
      program acc_ver
      implicit none
      integer, parameter :: zero = ichar('0')
      character, dimension(25), parameter :: accver_str =&
      (/ 'I', 'N', 'F', 'O', ':', 'O', 'p', 'e', 'n', 'A', 'C', 'C', '-',&
         'd', 'a', 't', 'e', '[',&
         char(zero + mod(_OPENACC/100000, 10)),&
         char(zero + mod(_OPENACC/10000, 10)),&
         char(zero + mod(_OPENACC/1000, 10)),&
         char(zero + mod(_OPENACC/100, 10)),&
         char(zero + mod(_OPENACC/10, 10)),&
         char(zero + mod(_OPENACC/1, 10)), ']' /)
      print *, accver_str
      end program acc_ver
