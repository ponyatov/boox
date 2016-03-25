#include "hpp.hpp"
#define YYERR "\n\n"<<yylineno<<":"<<msg<<"["<<yytext<<"]\n\n"
void yyerror(string msg) { cout<<YYERR; cerr<<YYERR; exit(-1); }
int main() { env_init(); return yyparse(); }

Sym::Sym(string T,string V) { tag=T; val=V; }
Sym::Sym(string V):Sym("",V) {}

void Sym::push(Sym*o) { nest.push_back(o); }
void Sym::par(Sym*o) { pars[o->val]=o; }

string Sym::tagval() { return "<"+tag+":"+val+">"; }
string Sym::pad(int n) { string S; for (int i=0;i<n;i++) S+='\t'; return S; }
string Sym::dump(int depth) { string S = "\n"+pad(depth)+tagval();
	for (auto it=nest.begin(),e=nest.end();it!=e;it++)
		S += (*it)->dump(depth+1);
	return S; }

Sym* Sym::eval() {
	Sym*E = env[val]; if (E) return E;
	for (auto it=nest.begin(),e=nest.end();it!=e;it++)
		(*it) = (*it)->eval();
	return this; }

Sym* Sym::assign(Sym*o) { env[val]=o; return o; }
Sym* Sym::apply(Sym*o) { push(o); return this; }

Str::Str(string V):Sym("str",V) {}
string Str::tagval() { return tagstr(); }
string Sym::tagstr() { string S = "'";
	for (int i=0,n=val.length();i<n;i++) {
		char c=val[i]; switch (c) {
		case '\t': S+="\\t"; break;
		case '\n': S+="\\n"; break;
		default: S+=c;
		}}
	return S+"'"; }

Int::Int(string V):Sym("int","") { val=atoi(V.c_str()); }
string Int::tagval() { ostringstream os;
	os << "<" << tag << ":" << val << ">" ; return os.str(); }

Num::Num(string V):Sym("num","") { val=atof(V.c_str()); }
string Num::tagval() { ostringstream os;
	os << "<" << tag << ":" << val << ">" ; return os.str(); }

Hex::Hex(string V):Sym("hex",V) {}
Bin::Bin(string V):Sym("bin",V) {}

List::List():Sym("","") {}

Op::Op(string V):Sym("op",V) {}

Fn::Fn(string V, FN F):Sym("fn",V) { fn=F; }

Lambda::Lambda():Sym("^","^") {}


map<string,Sym*> env;
void env_init() {
	env["MODULE"] = new Sym(MODULE);
}
