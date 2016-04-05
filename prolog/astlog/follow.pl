// FOLLOW_STMT(P1 P2)
//    <=> P1 and P2 are true of consecutive statements in this AST

follow_stmt(p1, p2)
  <- if(op(#FUNCTION),
       kid(#FUNCTION/BODY, follow_stmt(p1,p2,*)),
       follow_stmt(p1,p2,*));

follow_stmt(p1, p2, after)
  <- cond(op(#BLOCK), follow_block_stmt(p1, p2, after),

          op(#IF), kid(not(#IF/PRED),follow_stmt(p1, p2, after)),
          op(#SWITCH), kid(#SWITCH/BODY, follow_stmt(p1, p2, after)),

          op(#WHILE), follow_iter_stmt(#WHILE/BODY,p1, p2, after),
          op(#DO), follow_iter_stmt(#DO/BODY, p1, p2, after),
          op(#FOR), follow_iter_stmt(#FOR/BODY, p1, p2, after),

          or(op(#LABEL),op(#CASE),op(#DEFAULT)),
            kid(#LABELSTMT/STMT, follow_stmt(p1, p2, after)),

          follow_simple_stmt(p1, p2, after));

follow_simple_stmt(p1, p2, after)
  <- with(after, not(*)), p1, with(after, first_stmt(p2));

follow_iter_stmt(nbody,p1,p2,after)
  <- or(follow_simple_stmt(p1, p2, after),
        and(this, kid(nbody, follow_stmt(p1, p2, this))));

follow_block_stmt(p1, p2, after)
  <- and(kid(minus(next,1), first),
         if(kid(next, second),
            with(first, follow_stmt(p1, p2, second)),
            with(first, follow_stmt(p1, p2, after))));

first_stmt(p)
  <- if(op(#BLOCK),
        kid(0,first_stmt(p)),
        stmt);

// CASEFALL()
//   emits all locations of switch-case fallthroughs in this AST tree
casefall()
  <- follow_stmt(and(not(op(or(#BREAK,#CONTINUE,#GOTO,#RETURN))),first),
                 op(#CASE)),
     with(first,sfa(emit("Fall through to next case.")));