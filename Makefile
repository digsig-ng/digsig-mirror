obj-m := digsig_verif.o
digsig_verif-objs := ./dsi_sig_verify.o ./digsig.o ./gnupg/mpi/generic/mpih-lshift.o ./gnupg/mpi/generic/mpih-mul1.o ./gnupg/mpi/generic/mpih-mul2.o ./gnupg/mpi/generic/mpih-mul3.o ./gnupg/mpi/generic/mpih-rshift.o ./gnupg/mpi/generic/mpih-sub1.o ./gnupg/mpi/generic/udiv-w-sdiv.o ./gnupg/mpi/generic/mpih-add1.o ./gnupg/mpi/mpicoder.o ./gnupg/mpi/mpi-add.o ./gnupg/mpi/mpi-bit.o ./gnupg/mpi/mpi-div.o ./gnupg/mpi/mpi-cmp.o ./gnupg/mpi/mpi-gcd.o ./gnupg/mpi/mpih-cmp.o ./gnupg/mpi/mpih-div.o ./gnupg/mpi/mpih-mul.o ./gnupg/mpi/mpi-inline.o ./gnupg/mpi/mpi-inv.o ./gnupg/mpi/mpi-mpow.o ./gnupg/mpi/mpi-mul.o ./gnupg/mpi/mpi-pow.o ./gnupg/mpi/mpi-scan.o ./gnupg/mpi/mpiutil.o ./gnupg/cipher/rsa-verify.o
clean-files := *.o *.ko *.mod.* .*.o.cmd .*.cmd ./gnupg/cipher/*.o ./gnupg/cipher/*.ko ./gnupg/cipher/*.mod.c ./gnupg/cipher/.*.o.cmd ./gnupg/mpi/*.o ./gnupg/mpi/*.ko ./gnupg/mpi/.*.o.cmd ./gnupg/mpi/*.mod.c ./gnupg/mpi/generic/*.mod.c ./gnupg/mpi/generic/*.o ./gnupg/mpi/generic/*.ko ./gnupg/mpi/generic/.*.o.cmd
EXTRA_CFLAGS += -DDSI_DEBUG
