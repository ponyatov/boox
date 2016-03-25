#ifndef _H_SKELEX
#define _H_SKELEX

#include <iostream>
#include <sstream>
#include <cstdlib>
#include <vector>
#include <map>
using namespace std;

struct Sym {
	string tag,val;
	Sym(string,string); Sym(string);
	vector<Sym*> nest; void push(Sym*);
	map<string,Sym*> pars; void par(Sym*);
	virtual string tagval(); string tagstr();
	virtual string dump(int=0); string pad(int);
	virtual Sym* eval();
	virtual Sym* assign(Sym*);
	virtual Sym* apply(Sym*);
};

extern map<string,Sym*> env;
extern void env_init();

struct Str: Sym { Str(string); string tagval(); };

struct Int: Sym { Int(string); long val; string tagval(); };
struct Num: Sym { Num(string); double val; string tagval(); };
struct Hex: Sym { Hex(string); };
struct Bin: Sym { Bin(string); };

struct List: Sym { List(); };

struct Op: Sym { Op(string); };

typedef Sym*(*FN)(Sym*);
struct Fn: Sym { Fn(string,FN); FN fn; };

struct Lambda: Sym { Lambda(); };

extern int yylex();
extern int yylineno;
extern char* yytext;
#define TOC(C,X) { yylval.o = new C(yytext); return X; }
extern int yyparse();
extern void yyerror(string);
#include "ypp.tab.hpp"

#endif // _H_SKELEX
