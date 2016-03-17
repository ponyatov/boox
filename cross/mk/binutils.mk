#CFG_WITHCCLIBS = --with-gmp=$(TC) --with-mpfr=$(TC) --with-mpc=$(TC)
#	--with-isl=$(TC) --with-cloog=$(TC)

CFG_BINUTILS0 = --target=$(TARGET) $(CFG_ARCH) $(CFG_CPU) \
	--with-sysroot=$(ROOT) --with-native-system-header-dir=/include \
	--enable-lto --disable-multilib
#	$(CFG_WITHCCLIBS)

.PHONY: binutils0
binutils0: $(SRC)/$(BINUTILS)/README
	rm -rf $(TMP)/$(BINUTILS) && mkdir -p $(TMP)/$(BINUTILS) &&\
	cd $(TMP)/$(BINUTILS) &&\
	$(SRC)/$(BINUTILS)/$(BCFG) $(CFG_BINUTILS0) &&\
	$(MAKE) && $(INSTALL)-strip