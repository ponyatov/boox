CFG_GCC_DISABLE = 

CFG_GCC00 = $(CFG_BINUTILS0) $(CFG_GCC_DISABLE) \
	--disable-threads --disable-shared --without-headers --with-newlib \
	--enable-languages="c"

CFG_GCC0 = $(CFG_BINUTILS0) $(CFG_GCC_DISABLE) \
	--with-newlib \
	--enable-languages="c,c++"

.PHONY: gcc00
gcc00: $(SRC)/$(GCC)/README
	rm -rf $(TMP)/$(GCC) && mkdir -p $(TMP)/$(GCC) && cd $(TMP)/$(GCC) &&\
	$(SRC)/$(GCC)/$(BCFG) $(CFG_GCC00)
	cd $(TMP)/$(GCC) && $(MAKE) all-gcc && $(INSTALL)-gcc
	cd $(TMP)/$(GCC) && $(MAKE) all-target-libgcc && $(INSTALL)-target-libgcc