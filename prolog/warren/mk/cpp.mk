CPP = cpp/main.cpp ../../skelex/cpp/error.cpp cpp/wam.cpp
cpp.cpp: $(CPP)
	cat $(CPP) > $@

