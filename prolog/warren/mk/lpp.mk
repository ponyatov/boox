LPP = ../../skelex/lpp/head.lpp lpp/opt.lpp lpp/prolog.lpp lpp/foot.lpp
lpp.lpp: $(LPP) Makefile
	cat $(LPP) > $@

