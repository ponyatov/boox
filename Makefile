TEX = boox.tex ../texheader/mini.tex intro.tex 

TEX += ../bib/bib.tex

TEX += bi/dyntypes.tex bi/AST.tex
TEX += bi/parser.tex skelex/ypp.ypp skelex/lpp.lpp 
TEX += bi/fspfiles.tex bi/fspskel.bat bi/make.tex bi/Makefile
TEX += bi/scalar.tex bi/composite.tex bi/functional.tex

TEX += bi/DLR.tex
TEX += linux/build.tex linux/struc.tex

TEX += prolog/fisher/fisher.tex prolog/fisher/intro.tex
TEX += prolog/fisher/running.tex prolog/fisher/running.pl
TEX += prolog/fisher/2_2.tex prolog/fisher/2_2.pl 

TEX += prolog/warren/warren.tex prolog/warren/intro.tex 
TEX += prolog/warren/unification.tex
TEX += prolog/warren/resolution.tex prolog/warren/prolog.tex
TEX += prolog/warren/design.tex prolog/warren/conclusion.tex
TEX += prolog/warren/appendixA.tex prolog/warren/appendixB.tex

TEX += skelex/skelex.tex skelex/mkproject.rc skelex/bat.bat
TEX += skelex/Makefile skelex/git.ignore skelex/skelex.mk
TEX += skelex/ypp/head.ypp skelex/ypp/tokscalars.ypp skelex/ypp/scalar.ypp
TEX += skelex/ypp/brackets.ypp skelex/ypp/ops.ypp skelex/ypp/type.ypp
TEX += skelex/lpp/head.lpp skelex/lpp/yywrap.lpp skelex/lpp/lineno.lpp
TEX += skelex/lpp/pp.lpp
TEX += skelex/hpp/sym.hpp
TEX += skelex/src/comment.src skelex/src/coretypes.src

TEX += skelex/comment.log skelex/coretypes.log

skelex/%.log: skelex/src/%.src skelex/exe.exe 
	skelex/exe.exe < $< > $@

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

parser/%.log: parser/%.src
	touch $@
parser/%.src:
	touch $@

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
	