struct Sym {
	string tag,val;
	Sym(string,string); Sym(string);
	vector<Sym*> nest; void push(Sym*);
	map<string,Sym*> pars; void par(Sym*);
	virtual string tagval(); string tagstr();
	virtual string dump(int=0); string pad(int);
	virtual Sym* eval();
	virtual Sym* eq(Sym*);
	virtual Sym* at(Sym*);
};
