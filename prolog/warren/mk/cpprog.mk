C = cpp.cpp
H = hpp.hpp
./exe.exe: $(C) $(H) Makefile
	$(CXX) $(CXXFLAGS) -o $@ $(C)

