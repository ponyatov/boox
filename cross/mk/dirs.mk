CWD = $(CURDIR)

GZ = $(CWD)/gz
SRC = $(CWD)/src
TMP = $(CWD)/tmp

ROOT = $(CWD)/root
TC = $(CWD)/toolchain

DIRS = $(GZ) $(SRC) $(TMP) $(TC) $(ROOT)
.PHONY: dirs
dirs:
	mkdir -p $(DIRS)