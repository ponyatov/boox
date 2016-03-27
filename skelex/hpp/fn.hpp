typedef Sym*(*FN)(Sym*);
struct Fn: Sym { Fn(string,FN); FN fn; };
