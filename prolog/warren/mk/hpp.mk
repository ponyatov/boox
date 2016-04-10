HPP = hpp/head.hpp hpp/stdinc.hpp hpp/wam.hpp hpp/foot.hpp
hpp.hpp: $(HPP)
	cat $(HPP) > $@

