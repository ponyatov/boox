Int::Int(string V):Sym("int","") { val=atoi(V.c_str()); }
string Int::tagval() { ostringstream os;
	os << "<" << tag << ":" << val << ">" ; return os.str(); }

Num::Num(string V):Sym("num","") { val=atof(V.c_str()); }
string Num::tagval() { ostringstream os;
	os << "<" << tag << ":" << val << ">" ; return os.str(); }

Hex::Hex(string V):Sym("hex",V) {}
Bin::Bin(string V):Sym("bin",V) {}
