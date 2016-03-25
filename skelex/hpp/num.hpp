struct Int: Sym { Int(string); long val; string tagval(); };
struct Num: Sym { Num(string); double val; string tagval(); };
struct Hex: Sym { Hex(string); };
struct Bin: Sym { Bin(string); };
