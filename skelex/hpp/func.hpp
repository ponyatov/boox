struct Op: Sym { Op(string); };

typedef Sym*(*FN)(Sym*);
struct Fn: Sym { Fn(string,FN); FN fn; };

struct Lambda: Sym { Lambda(); };
