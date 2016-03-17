TEX = boox.tex ../texheader/mini.tex intro.tex 

TEX += ../bib/bib.tex

TEX += bi/dyntypes.tex bi/AST.tex
TEX += bi/parser.tex ../stoned/ypp.ypp ../stoned/lpp.lpp 
TEX += bi/fspfiles.tex bi/fspskel.bat bi/make.tex bi/Makefile
TEX += bi/scalar.tex bi/composite.tex bi/functional.tex

TEX += bi/DLR.tex

TEX += linux/build.tex linux/struc.tex

TEX += ML/4man.tex

TEX += ML/gilmore.tex

TEX += vim/vim.tex

TEX += misc/fazli.tex

TEX += kumar/kumar.tex 
TEX += kumar/add.objdump kumar/add.s kumar/add.disasm 
TEX += kumar/arrsum.s kumar/strlen.s
TEX += kumar/summain.s kumar/sumsub.s
TEX += kumar/2.mk kumar/Makefile
TEX += ../gnu-eprog/sections.png

TEX += gnubogo/gnubogo.tex

TEX += cross/cross.tex cross/Makefile
SRC += cross/mk/dirs.mk cross/fstab.txt cross/mk/pack_cross.mk
SRC += cross/mk/gz.mk cross/mk/src.mk cross/mk/cfg.mk
SRC += cross/mk/binutils.mk cross/crossbinutils.txt

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

FIG = math/danko/Makefile math/danko/g_1_1_1.pdf math/danko/o_1_1_1.pdf

MAC = math/danko/m_1_1_1.pdf

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
	cd math/danko ; make
math/danko/%.pdf: math/danko/%.mac
	cd math/danko ; make
math/danko/%.pdf: math/danko/%.m
	cd math/danko ; make
	