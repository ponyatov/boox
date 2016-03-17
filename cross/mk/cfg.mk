# configure parameters for all packages
CFG_ALL = --disable-nls --disable-werror \
	--docdir=$(TMP)/doc --mandir=$(TMP)/man --infodir=$(TMP)/info

# [B]uild host configure
BCFG = configure $(CFG_ALL) --prefix=$(TC)

# [T]arget configure
TCFG = configure $(CFG_ALL) --prefix=$(ROOT)

# get cpu cores
CPU_CORES ?= $(shell grep processor /proc/cpuinfo |wc -l)

# run make with -j flag or make CPU_CORES=<none> for one thread build
MAKE = make -j$(CPU_CORES)
INSTALL = make install