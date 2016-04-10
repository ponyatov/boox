HPP = hpp/head.hpp hpp/stdinc.hpp hpp/foot.hpp
hpp.hpp: $(HPP)
	cat $(HPP) > $@

