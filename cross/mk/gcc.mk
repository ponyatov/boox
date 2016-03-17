CFG_GCC0 = $(CFG_BINUTILS0) $(WITH_CCLIBS0) --enable-lanuages="c" \
	--disable-bootstrap --disable-threads \
	--disable-shared --without-headers --with-newlib		

.PHONY: gcc0
gcc0: $(SRC)/$(GCC)/README
	rm -rf $(TMP)/$(GCC) && mkdir -p $(TMP)/$(GCC) && cd $(TMP)/$(GCC) &&\
	$(SRC)/$(GCC)/$(BCFG) $(CFG_GCC0) && $(MAKE) && $(INSTALL)-strip