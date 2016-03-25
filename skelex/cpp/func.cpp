Op::Op(string V):Sym("op",V) {}

Fn::Fn(string V, FN F):Sym("fn",V) { fn=F; }

Lambda::Lambda():Sym("^","^") {}
