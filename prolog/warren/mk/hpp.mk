HPP = hpp/head.hpp hpp/stdinc.hpp hpp/wam.hpp
HPP += ../../skelex/hpp/lex.hpp 
HPP += hpp/foot.hpp
hpp.hpp: $(HPP) Makefile
	cat $(HPP) > $@

