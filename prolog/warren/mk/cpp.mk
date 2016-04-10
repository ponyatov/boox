CPP = cpp/main.cpp ../../skelex/cpp/error.cpp
cpp.cpp: $(CPP)
	cat $(CPP) > $@

