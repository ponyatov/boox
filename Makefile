TEX = boox.tex header.tex

LATEX = pdflatex -halt-on-error
boox.pdf: $(TEX) Makefile
	$(LATEX) $< && $(LATEX) $<
