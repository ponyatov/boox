FIG = g_1_1_1.pdf m_1_1_1.pdf

.PHONY: all
all: $(FIG) 

%.pdf: %.plot
	gnuplot $<
%.pdf: %.mac
	maxima < $<
	