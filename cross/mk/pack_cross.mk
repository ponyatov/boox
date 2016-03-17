# bintuils: assembler, linker, objfile tools
BINUTILS_VER = 2.24
# 2.25 build error

# gcc: C/C++ cross-compiler
GCC_VER = 4.9.2
# 4.9.2 used: bug arm/62098 fixed

# gcc support libraries
## required for GCC build
GMP_VER = 5.1.3
MPFR_VER = 3.1.3
MPC_VER = 1.0.2
## loop optimisation
ISL_VER = 0.11.1
# 0.11 need for binutils build
CLOOG_VER = 0.18.1

# packages
BINUTILS	= binutils-$(BINUTILS_VER)
GCC 		= gcc-$(GCC_VER)
GMP			= gmp-$(GMP_VER)
MPFR		= mpfr-$(MPFR_VER)
MPC 		= mpc-$(MPC_VER)
ISL			= isl-$(ISL_VER)
CLOOG		= cloog-$(CLOOG_VER)