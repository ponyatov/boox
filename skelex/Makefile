include skelex.mk

YPP = ypp/head.ypp ypp/union.ypp ypp/tokscalars.ypp ypp/brackets.ypp
YPP += ypp/ops.ypp 
YPP += ypp/type.ypp
YPP += lpp/pp.lpp 
YPP += ypp/scalar.ypp
YPP += lpp/pp.lpp

ypp.ypp: $(YPP) Makefile
	cat $(YPP) > $@
	
LPP = lpp/head.lpp lpp/pp.lpp lpp/pp.lpp
	
lpp.lpp: $(LPP) Makefile
	cat $(LPP) > $@