include skelex.mk

YPP = ypp/head.ypp ypp/union.ypp cr.cr ypp/tokscalars.ypp  
YPP += ypp/brackets.ypp ypp/ops.ypp 
YPP += cr.cr ypp/type.ypp cr.cr ypp/oprio.ypp cr.cr
YPP += lpp/pp.lpp ypp/repl.ypp ypp/scalar.ypp ypp/ex.ypp 
YPP += ypp/list.ypp ypp/lambda.ypp
YPP += lpp/pp.lpp

ypp.ypp: $(YPP) Makefile
	cat $(YPP) > $@
	
LPP = lpp/head.lpp lpp/xstring.lpp cr.cr lpp/yywrap.lpp lpp/lineno.lpp cr.cr 
LPP += lpp/xnum.lpp lpp/pp.lpp
LPP += lpp/comment.lpp cr.cr lpp/string.lpp cr.cr lpp/num.lpp cr.cr 
LPP += lpp/sym.lpp cr.cr
LPP += lpp/brackets.lpp cr.cr lpp/ops.lpp cr.cr 
LPP += lpp/spaces.lpp lpp/pp.lpp
	
lpp.lpp: $(LPP) Makefile
	cat $(LPP) > $@
	
HPP = hpp/head.hpp cr.cr hpp/include.hpp cr.cr hpp/sym.hpp cr.cr hpp/env.hpp
HPP += cr.cr hpp/string.hpp cr.cr hpp/num.hpp cr.cr hpp/list.hpp cr.cr
HPP += hpp/op.hpp hpp/fn.hpp hpp/lambda.hpp
HPP += cr.cr hpp/lex.hpp cr.cr hpp/foot.hpp

hpp.hpp: $(HPP) Makefile
	cat $(HPP) > $@
	
CPP = cpp/hpp.cpp cpp/error.cpp cpp/main.cpp
CPP += cr.cr cpp/sym.cpp cr.cr cpp/dump.cpp cr.cr cpp/eval.cpp
CPP += cr.cr cpp/string.cpp cr.cr cpp/num.cpp cr.cr
CPP += cpp/list.cpp cr.cr
CPP += cpp/cons.cpp cr.cr
CPP += cpp/op.cpp cr.cr cpp/fn.cpp cr.cr cpp/lambda.cpp cr.cr
CPP += cpp/env.cpp

cpp.cpp: $(CPP) Makefile
	cat $(CPP) > $@
	
SRC += src/comment.src src/coretypes.src

src.src: $(SRC) Makefile
	cat $(SRC) > $@	
