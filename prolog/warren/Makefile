log.log: ./exe.exe
	./exe.exe > log.log && tail $(TAIL) log.log

C = cpp.cpp
H = hpp.hpp
CXXFLAGS = -std=gnu++11
./exe.exe: $(C) $(H) Makefile
	$(CXX) $(CXXFLAGS) -o $@ $(C)

HPP = hpp/head.hpp hpp/stdinc.hpp hpp/foot.hpp
hpp.hpp: $(HPP)
	cat $(HPP) > $@

CPP = cpp/main.cpp
cpp.cpp: $(CPP)
	cat $(CPP) > $@

MK = mk/exec.mk mk/exe.mk mk/hpp.mk mk/cpp.mk mk/mk.mk
Makefile: $(MK)
	cat $(MK) > $@

