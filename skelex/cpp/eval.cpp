Sym* Sym::eval() {
	Sym*E = env[val]; if (E) return E;
	for (auto it=nest.begin(),e=nest.end();it!=e;it++)
		(*it) = (*it)->eval();
	return this; }

Sym* Sym::assign(Sym*o) { env[val]=o; return o; }
Sym* Sym::apply(Sym*o) { push(o); return this; }
