List::List():Sym("[","]") {}

Cons::Cons(Sym*A,Sym*B):Sym("","") { push(A); push(B); }
