TEX = boox.tex ../texheader/mini.tex intro.tex 

TEX += ../bib/bib.tex

TEX += ../texheader/comp.tex

TEX += bi/dyntypes.tex bi/AST.tex
TEX += bi/parser.tex skelex/ypp.ypp skelex/lpp.lpp 
TEX += bi/fspfiles.tex bi/fspskel.bat bi/make.tex bi/Makefile
TEX += bi/scalar.tex bi/composite.tex bi/functional.tex

TEX += bi/DLR.tex
TEX += linux/build.tex linux/struc.tex

TEX += prolog/fisher/fisher.tex prolog/fisher/intro.tex
TEX += prolog/fisher/running.tex prolog/fisher/running.pl
TEX += prolog/fisher/2_2.tex prolog/fisher/2_2.pl prolog/fisher/2_2_2.pl 
TEX += prolog/fisher/2_7.tex prolog/fisher/2_7.pl
TEX += prolog/fisher/2_1.tex prolog/fisher/f2_1_2.pdf prolog/fisher/f2_1_3.pdf
TEX += prolog/fisher/f21_*.pl prolog/fisher/f2_2.pdf
TEX += prolog/fisher/2_3.tex prolog/fisher/2_3.pl prolog/fisher/f2_3.png
TEX += prolog/fisher/2_4.tex
TEX += prolog/fisher/3_1.tex 
TEX += prolog/fisher/3_1.pl prolog/fisher/3_1.trace
TEX += prolog/fisher/f3_1_1.png prolog/fisher/f3_1_2.png
TEX += prolog/fisher/3_2.tex

TEX += prolog/cohen/cohen.tex prolog/cohen/1intro.tex prolog/cohen/2parsing.tex 
TEX += prolog/cohen/3syntax.tex prolog/cohen/4m.tex 
TEX += prolog/cohen/5grammar.tex prolog/cohen/6lexical.tex
TEX += prolog/cohen/7codegen.tex prolog/cohen/71polish.tex
TEX += prolog/cohen/72trees.tex prolog/cohen/73independent.tex
TEX += prolog/cohen/74labeled.tex  
TEX += prolog/cohen/8optimizations.tex prolog/cohen/81compiletime.tex
TEX += prolog/cohen/82peephole.tex prolog/cohen/9proposed.tex
TEX += prolog/cohen/10final.tex

#TEX += prolog/datomic/datomic.tex prolog/datomic/basic.tex
#TEX += prolog/datomic/notation.tex

TEX += prolog/warren/warren.tex prolog/warren/intro.tex 
TEX += prolog/warren/unification.tex
TEX += prolog/warren/resolution.tex prolog/warren/prolog.tex
TEX += prolog/warren/design.tex prolog/warren/conclusion.tex
TEX += prolog/warren/appendixA.tex prolog/warren/appendixB.tex
TEX += prolog/warren/termrepr.tex prolog/warren/fig21.pdf
TEX += prolog/warren/compiling.tex prolog/warren/cpp.tex
TEX += prolog/warren/23compiLprog.tex prolog/warren/24argregs.tex
TEX += prolog/warren/31facts.tex prolog/warren/32rules.tex
TEX += prolog/warren/41env.tex prolog/warren/42what.tex
TEX += prolog/warren/51heap.tex
TEX += prolog/warren/52const.tex
TEX += prolog/warren/53note.tex
TEX += prolog/warren/54regalloc.tex
TEX += prolog/warren/55lastcall.tex
TEX += prolog/warren/56chain.tex
TEX += prolog/warren/57env.tex
TEX += prolog/warren/58stack.tex
TEX += prolog/warren/59var.tex
TEX += prolog/warren/5Aindexing.tex
TEX += prolog/warren/5Bcut.tex


TEX += prolog/warren/hpp.hpp prolog/warren/cpp.cpp prolog/warren/Makefile
TEX += prolog/warren/ypp.ypp prolog/warren/lpp.lpp prolog/warren/log.log

TEX += prolog/crew/astlog.tex prolog/crew/follow.pl

TEX += prolog/pelin/pelin.tex

TEX += prolog/mmalg/mmalg.tex prolog/mmalg/1intro.tex 
TEX += prolog/mmalg/2unification.tex prolog/mmalg/31basic.tex
TEX += prolog/mmalg/32trans.tex prolog/mmalg/33solving.tex
TEX += prolog/mmalg/34uni.tex prolog/mmalg/4eff.tex 
TEX += prolog/mmalg/5improv.tex prolog/mmalg/6impl.tex
TEX += prolog/mmalg/7compar.tex prolog/mmalg/8con.tex prolog/mmalg/ref.tex

TEX += prolog/adventure/adventure.tex prolog/adventure/preface.tex
TEX += prolog/adventure/tools.tex prolog/adventure/getstart.tex
TEX += prolog/adventure/plato.pl
TEX += prolog/adventure/facts.tex prolog/adventure/query.tex 
TEX += prolog/adventure/fig31.pl
TEX += prolog/adventure/compound.tex
TEX += prolog/adventure/5rules.tex prolog/adventure/6arith.tex
TEX += prolog/adventure/7managing.tex
TEX += prolog/adventure/appendix.tex

TEX += prolog/dcg/dcg.tex prolog/dcg/intro.tex
TEX += prolog/dcg/1def.tex prolog/dcg/2left.tex prolog/dcg/3right.tex
TEX += prolog/dcg/4impli.tex prolog/dcg/5parsing.tex
TEX += prolog/dcg/6implement.tex prolog/dcg/7error.tex prolog/dcg/8few.tex
TEX += prolog/dcg/9hints.tex

TEX += tree/papegaij/papegaij.tex tree/papegaij/intro.tex

TEX += skelex/skelex.tex skelex/mkproject.rc skelex/bat.bat
TEX += skelex/Makefile skelex/git.ignore skelex/skelex.mk
TEX += skelex/ypp/head.ypp skelex/ypp/tokscalars.ypp skelex/ypp/scalar.ypp
TEX += skelex/ypp/brackets.ypp skelex/ypp/ops.ypp skelex/ypp/type.ypp
TEX += skelex/lpp/head.lpp skelex/lpp/yywrap.lpp skelex/lpp/lineno.lpp
TEX += skelex/lpp/pp.lpp
TEX += skelex/hpp/sym.hpp
TEX += skelex/src/comment.src skelex/src/coretypes.src

TEX += skelex/comment.log skelex/coretypes.log

TEX += ML/4man.tex

TEX += ML/gilmore.tex

TEX += vim/vim.tex

TEX += misc/fazli.tex

TEX += kumar/kumar.tex 
TEX += kumar/add.objdump kumar/add.s kumar/add.disasm 
TEX += kumar/arrsum.s kumar/strlen.s
TEX += kumar/summain.s kumar/sumsub.s
TEX += kumar/2.mk kumar/Makefile
#TEX += ../gnu-eprog/sections.png

TEX += gnubogo/gnubogo.tex

TEX += cross/cross.tex cross/Makefile
SRC += cross/mk/dirs.mk cross/fstab.txt cross/mk/pack_cross.mk
SRC += cross/mk/gz.mk cross/mk/src.mk cross/mk/cfg.mk
SRC += cross/mk/binutils.mk cross/crossbinutils.txt
SRC += cross/mk/cclibs.mk cross/mk/gcc.mk

TEX += gcc/gcc.tex

TEX += parser/parser.tex 
TEX += parser/minimal.tex parser/minimal.lpp parser/minimal.ypp parser/minimal.mk
TEX += parser/comment.tex parser/comment.lpp
TEX += parser/string.tex parser/string.lpp
TEX += parser/brackets.tex parser/brackets.ypp parser/brackets.lpp
TEX += parser/ops.lpp parser/ops.ypp parser/brackets.lpp parser/brackets.ypp

TEX += math/math.tex
TEX += math/danko/danko.tex

SRC += parser/minimal.log
SRC += parser/comment.log parser/string.log parser/ops.log
SRC += parser/brackets.log

#FIG = math/danko/Makefile math/danko/g_1_1_1.pdf math/danko/o_1_1_1.pdf
#FIG += math/danko/m_1_1_2.log math/danko/o_1_1_2.log
#
#MAC = math/danko/m_1_1_1.pdf 
#MAC += math/danko/m_1_1_3.pdf math/danko/m_1_1_x.log
#MAC += math/danko/o_1_1_5.log math/danko/m_1_1_6.log

TEX += os86/os86.tex

SRC += os86/Makefile 

LATEX = pdflatex -halt-on-error
work.pdf: work.tex $(TEX) $(SRC) $(FIG) $(MAC) Makefile
	$(LATEX) $< && makeindex work && $(LATEX) $<
boox.pdf: boox.tex $(TEX) $(SRC) $(FIG) $(MAC) Makefile
	$(LATEX) $< && makeindex boox && $(LATEX) $<
.PHONY: clean
clean:
	rm -f *.aux *.out *.toc *.idx *.log *.ind *.ilg	
	
skelex/%.log: skelex/src/%.src skelex/exe.exe 
	skelex/exe.exe < $< > $@

prolog/warren/hpp.hpp: prolog/warren/hpp/*.hpp
	cd prolog/warren ; make hpp.hpp
prolog/warren/cpp.cpp: prolog/warren/cpp/*.cpp
	cd prolog/warren ; make cpp.cpp
prolog/warren/ypp.ypp: prolog/warren/ypp/*.ypp
	cd prolog/warren ; make ypp.ypp
prolog/warren/lpp.lpp: prolog/warren/lpp/*.lpp
	cd prolog/warren ; make lpp.lpp
prolog/warren/log.log: prolog/warren/src.src
	cd prolog/warren ; make
prolog/warren/Makefile: \
	prolog/warren/mk/exec.mk prolog/warren/mk/lexprog.mk \
	prolog/warren/mk/*.mk
	cd prolog/warren ; make Makefile
prolog/warren/mk/%.mk: skelex/mk/%.mk
	cat $< > $@

parser/%.log: parser/%.src
	touch $@
parser/%.src:
	touch $@

%.pdf: %.dot
	dot -Tpdf -o $@ $<
	
math/danko/%.pdf: math/danko/%.plot
	cd math/danko ; $(MAKE)
math/danko/%.pdf: math/danko/%.mac
	cd math/danko ; $(MAKE)
math/danko/%.log: math/danko/%.mac
	cd math/danko ; $(MAKE)
math/danko/%.pdf: math/danko/%.m
	cd math/danko ; $(MAKE)
math/danko/%.log: math/danko/%.m
	cd math/danko ; $(MAKE)
	