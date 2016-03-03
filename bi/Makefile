log.log: ./exe.exe src.src
	./exe.exe < src.src > $@ && tail $(TAIL) $@
C = cpp.cpp ypp.tab.cpp lex.yy.c
H = hpp.hpp ypp.tab.hpp
CXXFILES += -std=gnu++11
./exe.exe: $(C) $(H) Makefile
	$(CXX) $(CXXFILES) -o $@ $(C)
ypp.tab.cpp: ypp.ypp
	bison $<
lex.yy.c: lpp.lpp
	flex $<