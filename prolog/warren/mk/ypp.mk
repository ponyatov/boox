YPP = ypp/head.ypp ypp/repl.ypp ypp/foot.ypp
ypp.ypp: $(YPP) Makefile
	cat $(YPP) > $@

