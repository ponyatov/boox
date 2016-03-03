#ifndef _H_bI
#define _H_bI
							// std.includes
#include <iostream>
#include <cstdlib>
#include <vector>
#include <map>
using namespace std;

// ============================================== ABSTRACT SYMBOLIC TYPE (AST)
struct Sym {
// ---------------------------------------------------------------------------
	string tag;							// data type / class
	string val;							// symbol value
// -------------------------------------------------------------- constructors
	Sym(string,string);					// <T:V>
	Sym(string);						// token
// --------------------------------------------------------- nest[]ed elements
	vector<Sym*> nest;
	void push(Sym*);
	void pop();
// -------------------------------------------------------------- par{}ameters
	map<string,Sym*> pars;
	void par(Sym*);						// add parameter
// ------------------------------------------------------------------- dumping
	virtual string dump(int depth=0);	// dump symbol object as text
	virtual string tagval();			// <T:V> header string
	string tagstr();					// <T:'V'> Str-like header string
	string pad(int);					// padding with tree decorators
// -------------------------------------------------------- compute (evaluate)
	virtual Sym* eval();
// ----------------------------------------------------------------- operators
};

// ============================================== lexer/parser interface
extern int yylex();
extern int yylineno;
extern char* yytext;
#define TOC(C,X) { yylval.o = new C(yytext); return X; }
extern int yyparse();
extern void yyerror(string);
#include "ypp.tab.hpp"

#endif // _H_bI
