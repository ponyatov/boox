TEX = boox.tex ../texheader/mini.tex intro.tex 

TEX += ../bib/bib.tex

TEX += bi/dyntypes.tex bi/AST.tex
TEX += bi/parser.tex bi/ypp.ypp bi/lpp.lpp 
TEX += bi/fspfiles.tex bi/fspskel.bat bi/make.tex bi/Makefile
TEX += bi/scalar.tex bi/composite.tex bi/functional.tex

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

TEX += gnubogo/gnubogo.tex

TEX += cross/cross.tex

LATEX = pdflatex -halt-on-error
boox.pdf: $(TEX) Makefile
	$(LATEX) $< && $(LATEX) $<
