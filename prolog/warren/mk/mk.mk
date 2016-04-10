MK = mk/exec.mk mk/cpprog.mk mk/hpp.mk mk/cpp.mk mk/mk.mk
Makefile: $(MK)
	cat $(MK) > $@

