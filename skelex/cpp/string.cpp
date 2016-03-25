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
