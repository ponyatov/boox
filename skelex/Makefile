include skelex.mk

YPP = ypp/head.ypp ypp/union.ypp cr.cr ypp/tokscalars.ypp 
YPP += ypp/brackets.ypp ypp/ops.ypp 
YPP += cr.cr ypp/type.ypp cr.cr
YPP += lpp/pp.lpp ypp/repl.ypp ypp/scalar.ypp ypp/ex.ypp
YPP += lpp/pp.lpp

ypp.ypp: $(YPP) Makefile
	cat $(YPP) > $@
	
LPP = lpp/head.lpp lpp/yywrap.lpp lpp/lineno.lpp lpp/pp.lpp lpp/pp.lpp
	
lpp.lpp: $(LPP) Makefile
	cat $(LPP) > $@
	
HPP = hpp/head.hpp cr.cr hpp/include.hpp cr.cr hpp/sym.hpp cr.cr hpp/env.hpp
HPP += cr.cr hpp/lex.hpp cr.cr hpp/foot.hpp

hpp.hpp: $(HPP) Makefile
	cat $(HPP) > $@
	
CPP = cpp/hpp.cpp cpp/error.cpp cpp/main.cpp
CPP += cr.cr cpp/sym.cpp cr.cr cpp/dump.cpp cr.cr cpp/eval.cpp
CPP += cr.cr cpp/env.cpp

cpp.cpp: $(CPP) Makefile
	cat $(CPP) > $@
	
SRC += src/comment.src

src.src: $(SRC) Makefile
	cat $(SRC) > $@	