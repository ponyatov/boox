CFG_NEWLIB = --host=$(TARGET)
.PHONY: newlib
newlib: $(SRC)/$(NEWLIB)/README
	rm -rf $(TMP)/$(NEWLIB) && mkdir -p $(TMP)/$(NEWLIB) && cd $(TMP)/$(NEWLIB) &&\
	$(XPATH) $(SRC)/$(NEWLIB)/$(TCFG) $(CFG_NEWLIB)
#	 && $(MAKE) && $(INSTALL)-strip