MK = mk/exec.mk mk/lexprog.mk ypp/ypp.mk lpp/lpp.mk
MK += mk/hpp.mk mk/cpp.mk mk/ypp.mk mk/lpp.mk mk/mk.mk
Makefile: $(MK)
	cat $(MK) > $@

