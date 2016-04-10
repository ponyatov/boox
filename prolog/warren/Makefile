log.log: ./exe.exe
	./exe.exe > log.log && tail $(TAIL) log.log
C = cpp.cpp
H = hpp.hpp
./exe.exe: $(C) $(H) Makefile
	$(CXX) -o $@ $(C)
