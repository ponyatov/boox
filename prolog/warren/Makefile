log.log: ./exe.exe src.src
	./exe.exe < src.src > log.log && tail $(TAIL) log.log

C = cpp.cpp ypp.tab.cpp lex.yy.c
H = hpp.hpp ypp.tab.hpp
CXXFLAGS = -std=gnu++11 -DMODULE=\"$(notdir $(CURDIR))\"
./exe.exe: $(C) $(H) Makefile
	$(CXX) $(CXXFLAGS) -o $@ $(C)

ypp.tab.cpp: ypp.ypp
	bison $<

lex.yy.c: lpp.lpp
	flex $<

HPP = hpp/head.hpp hpp/stdinc.hpp hpp/wam.hpp
HPP += ../../skelex/hpp/lex.hpp 
HPP += hpp/foot.hpp
hpp.hpp: $(HPP) Makefile
	cat $(HPP) > $@

CPP = cpp/main.cpp ../../skelex/cpp/error.cpp cpp/wam.cpp
cpp.cpp: $(CPP)
	cat $(CPP) > $@

YPP = ypp/head.ypp ypp/repl.ypp ypp/foot.ypp
ypp.ypp: $(YPP) Makefile
	cat $(YPP) > $@

LPP = ../../skelex/lpp/head.lpp lpp/opt.lpp lpp/prolog.lpp lpp/foot.lpp
lpp.lpp: $(LPP) Makefile
	cat $(LPP) > $@

MK = mk/exec.mk mk/lexprog.mk ypp/ypp.mk lpp/lpp.mk
MK += mk/hpp.mk mk/cpp.mk mk/ypp.mk mk/lpp.mk mk/mk.mk
Makefile: $(MK)
	cat $(MK) > $@

