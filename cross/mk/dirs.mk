CWD = $(CURDIR)
GZ = $(CWD)/gz
SRC = $(CWD)/src
TMP = $(CWD)/tmp

DIRS = $(GZ) $(SRC) $(TMP)
.PHONY: dirs
dirs:
	mkdir -p $(DIRS)