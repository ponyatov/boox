C = cpp.cpp ypp.tab.cpp lex.yy.c
H = hpp.hpp ypp.tab.hpp
CXXFLAGS = -std=gnu++11 -DMODULE=\"$(notdir $(CURDIR))\"
./exe.exe: $(C) $(H) Makefile
	$(CXX) $(CXXFLAGS) -o $@ $(C)

