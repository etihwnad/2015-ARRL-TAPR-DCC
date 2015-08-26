#Makefile for general making of LaTeX files
source = paper

#--begin targets--#
default: all 

all: pdf

pdf: $(source).pdf

#html: pdf $(source).html


%.pdf: %.tex
	rubber --short --pdf $<

# hevea doesn't know about IEEEtran
#%.html: %.tex
	#hevea -s $<

.PHONY: clean
clean:
	rm -f *.bbl *.blg *.aux *.log *.toc *.nav *.out *.snm *.dvi

