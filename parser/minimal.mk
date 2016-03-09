APP = minimal
$(APP).log: ./$(APP).exe $(APP).src
	./$(APP).exe < $(APP).src > $@ && tail $(TAIL) $@
C = ../bi/cpp.cpp ypp.tab.cpp lex.yy.c
H = ../bi/hpp.hpp ypp.tab.hpp
CXXFILES += -I../bi -I. -std=gnu++11
./$(APP).exe: $(C) $(H) minimal.mk
	$(CXX) $(CXXFILES) -o $@ $(C)
ypp.tab.cpp: $(APP).ypp
	bison -o $@ $<
lex.yy.c: $(APP).lpp
	flex -o $@ $<
	
minimal.src: ../bi/cpp.cpp
	head -n11 $< > $@
comment.src: ../bi/cpp.cpp
	head -n11 $< > $@	