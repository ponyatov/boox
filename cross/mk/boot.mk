CFG_SYSLINUX =
.PHONY: boot boot_i386
boot: boot_$(ARCH)
boot_i386: syslinux

.PHONY: syslinux
syslinux: $(SRC)/$(SYSLINUX)/README
