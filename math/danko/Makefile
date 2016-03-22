FIG = g_1_1_1.pdf m_1_1_1.pdf o_1_1_1.pdf
FIG += m_1_1_2.log o_1_1_2.log
FIG += m_1_1_1.pdf m_1_1_3.pdf
FIG += m_1_1_x.log o_1_1_5.log

.PHONY: all
all: $(FIG) 

%.pdf: %.plot
	gnuplot $<
%.pdf: %.mac
	maxima -q < $<
%.log: %.mac
	maxima -q < $< > $@
%.pdf: %.m Makefile
	octave -q $< && pdfcrop o$@ $@
%.log: %.m Makefile
	octave -q $< > $@