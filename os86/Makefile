APP = bare
HW = x86
TARGET = i386-pc-elf

TODO = gz dirs cclibs0 binutils0 gcc00
.PHONY: toolchain
toolchain: $(APP)$(HW).cross/bin/$(TARGET)-gcc
$(APP)$(HW).cross/bin/$(TARGET)-gcc:
	cd ../cross; $(MAKE) $(TODO) \
		CWD=$(CURDIR) GZ=$(HOME)/L/gz SRC=$(HOME)/L/src TMP=$(HOME)/L/tmp \
		APP=$(APP) HW=$(HW)