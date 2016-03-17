WGET = -wget -N -P $(GZ) -t2 -T2

.PHONY: gz
gz: gz_cross gz_libs

.PHONY: gz_cross
gz_cross:
	$(WGET) ftp://ftp.gmplib.org/pub/gmp/$(GMP).tar.bz2
	$(WGET) http://www.mpfr.org/mpfr-current/$(MPFR).tar.bz2
	$(WGET) http://www.multiprecision.org/mpc/download/$(MPC).tar.gz
	$(WGET) ftp://gcc.gnu.org/pub/gcc/infrastructure/$(ISL).tar.bz2
	$(WGET) ftp://gcc.gnu.org/pub/gcc/infrastructure/$(CLOOG).tar.gz
	$(WGET) http://ftp.gnu.org/gnu/binutils/$(BINUTILS).tar.bz2
	$(WGET) http://gcc.skazkaforyou.com/releases/$(GCC)/$(GCC).tar.bz2

.PHONY: gz_libs
gz_libs:
	$(WGET) ftp://sourceware.org/pub/newlib/$(NEWLIB).tar.gz
	