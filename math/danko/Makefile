FIG = g_1_1_1.pdf m_1_1_1.pdf o_1_1_1.pdf
FIG += m_1_1_2.log o_1_1_2.log
FIG += m_1_1_3.pdf
FIG += m_1_1_x.log

.PHONY: all
all: $(FIG) 

%.pdf: %.plot
	gnuplot $<
%.pdf: %.mac
	maxima < $<
%.log: %.mac
	maxima < $< > $@
%.pdf: %.m
	octave $< && pdfcrop o$@ $@
%.log: %.m
	octave $< > $@	