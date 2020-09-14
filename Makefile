
# ---------------------------
#   Makefile for bsm
# ---------------------------

TARGET := main.pdf

all : $(TARGET)

clean : 
	rm *.aux *.dvi *.log


%.pdf : %.dvi
	dvipdfmx $<
	open main.pdf

%.dvi : %.tex 
	# ./section/*.tex
	uplatex $<

