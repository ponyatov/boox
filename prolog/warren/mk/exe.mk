C = cpp.cpp
H = hpp.hpp
CXXFLAGS = -std=gnu++11
./exe.exe: $(C) $(H) Makefile
	$(CXX) $(CXXFLAGS) -o $@ $(C)

