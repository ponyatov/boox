MK = mk/exec.mk mk/exe.mk mk/hpp.mk mk/cpp.mk mk/mk.mk
Makefile: $(MK)
	cat $(MK) > $@

