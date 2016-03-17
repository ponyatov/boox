CWD = $(CURDIR)

GZ = $(CWD)/gz
SRC = $(CWD)/src
TMP = $(CWD)/tmp

ROOT = $(CWD)/$(APP)$(HW)
TC = $(CWD)/$(APP)$(HW).cross

DIRS = $(GZ) $(SRC) $(TMP) $(TC) $(ROOT)
.PHONY: dirs
dirs:
	mkdir -p $(DIRS)