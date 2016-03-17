CFG_BINUTILS0 = --target=$(TARGET) $(CFG_ARCH) $(CFG_CPU) \
	--with-sysroot=$(ROOT) --with-native-system-header-dir=/include \
	--enable-lto --disable-multilib $(WITH_CCLIBS0)

.PHONY: binutils0
binutils0: $(SRC)/$(BINUTILS)/README
	rm -rf $(TMP)/$(BINUTILS) && mkdir -p $(TMP)/$(BINUTILS) && cd $(TMP)/$(BINUTILS) &&\
	$(SRC)/$(BINUTILS)/$(BCFG) $(CFG_BINUTILS0) && $(MAKE) && $(INSTALL)-strip