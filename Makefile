TEX = boox.tex header.tex intro.tex bib.tex

TEX += bi/AST.tex

TEX += linux/build.tex linux/struc.tex

LATEX = pdflatex -halt-on-error
boox.pdf: $(TEX) Makefile
	$(LATEX) $< && $(LATEX) $<
