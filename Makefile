TEX = boox.tex header.tex intro.tex bib.tex

TEX += bi/AST.tex

LATEX = pdflatex -halt-on-error
boox.pdf: $(TEX) Makefile
	$(LATEX) $< && $(LATEX) $<
