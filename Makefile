TEX = boox.tex ../texheader/mini.tex intro.tex 

TEX += ../bib/bib.tex

TEX += bi/AST.tex bi/fspfiles.tex bi/fspskel.bat

TEX += linux/build.tex linux/struc.tex

TEX += ML/4man.tex

TEX += ML/gilmore.tex

TEX += vim/vim.tex

TEX += misc/fazli.tex

TEX += kumar/kumar.tex 
TEX += kumar/add.objdump kumar/add.s kumar/add.disasm 
TEX += kumar/arrsum.s

TEX += gnubogo/gnubogo.tex

TEX += cross/cross.tex

LATEX = pdflatex -halt-on-error
boox.pdf: $(TEX) Makefile
	$(LATEX) $< && $(LATEX) $<
