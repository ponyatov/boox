TEX = boox.tex header.tex intro.tex bib.tex

TEX += bi/AST.tex bi/fspfiles.tex bi/fspskel.bat

TEX += linux/build.tex linux/struc.tex

TEX += ML/4man.tex

TEX += ML/gilmore.tex

LATEX = pdflatex -halt-on-error
boox.pdf: $(TEX) Makefile
	$(LATEX) $< && $(LATEX) $<
