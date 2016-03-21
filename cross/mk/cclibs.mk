WITH_CCLIBS0 = --with-gmp=$(TC) --with-mpfr=$(TC) --with-mpc=$(TC) \
	--without-ppl --without-cloog
#	--with-isl=$(TC) --with-cloog=$(TC)
	
CFG_CCLIBS0 = $(WITH_CCLIBS0) --disable-shared
.PHONY: cclibs0
cclibs0: gmp0 mpfr0 mpc0
# cloog0 isl0

CFG_GMP0 = $(CFG_CCLIBS0)
.PHONY: gmp0
gmp0: $(SRC)/$(GMP)/README
	rm -rf $(TMP)/$(GMP) && mkdir -p $(TMP)/$(GMP) && cd $(TMP)/$(GMP) &&\
	$(SRC)/$(GMP)/$(BCFG) $(CFG_GMP0) && $(MAKE) && $(INSTALL)-strip
	
CFG_MPFR0 = $(CFG_CCLIBS0) 
.PHONY: mpfr0
mpfr0: $(SRC)/$(MPFR)/README
	rm -rf $(TMP)/$(MPFR) && mkdir -p $(TMP)/$(MPFR) && cd $(TMP)/$(MPFR) &&\
	$(SRC)/$(MPFR)/$(BCFG) $(CFG_MPFR0) && $(MAKE) && $(INSTALL)-strip

CFG_MPC0 = $(CFG_CCLIBS0) 
.PHONY: mpc0
mpc0: $(SRC)/$(MPC)/README
	rm -rf $(TMP)/$(MPC) && mkdir -p $(TMP)/$(MPC) && cd $(TMP)/$(MPC) &&\
	$(SRC)/$(MPC)/$(BCFG) $(CFG_MPC0) && $(MAKE) && $(INSTALL)-strip

CFG_CLOOG0 = --with-gmp-prefix=$(TC) $(CFG_CCLIBS00)
.PHONY: cloog0
cloog0: $(SRC)/$(CLOOG)/README
	rm -rf $(TMP)/$(CLOOG) && mkdir $(TMP)/$(CLOOG) && cd $(TMP)/$(CLOOG) &&\
	$(SRC)/$(CLOOG)/$(BCFG) $(CFG_CLOOG0) && $(MAKE) && $(INSTALL)-strip

CFG_ISL0 = --with-gmp-prefix=$(TC) $(CFG_CCLIBS00)
.PHONY: isl0
isl0: $(SRC)/$(ISL)/README
	rm -rf $(TMP)/$(ISL) && mkdir $(TMP)/$(ISL) && cd $(TMP)/$(ISL) &&\
	$(SRC)/$(ISL)/$(BCFG) $(CFG_ISL0) && $(MAKE) && $(INSTALL)-strip