TARGET=webster-resume

.PHONY: all

all: $(TARGET).pdf

single:
	pdflatex -shell-escape $(TARGET).tex

spell:
	hunspell -l -t -i utf-8 $(TARGET).tex

$(TARGET).pdf: $(TARGET).tex $(shell find . -type f -name "*.tex")
	git rev-parse HEAD > commithash.tex
	latexmk -f -pdf -pdflatex="pdflatex -interaction nonstopmode -shell-escape" -use-make $(TARGET).tex

# Remove build files plus all the latex turds.
clean:
	latexmk -CA
	rm -f commithash.tex
	rm -f $(TARGET)Notes.bib
	rm -f $(TARGET).bbl
	rm -f $(TARGET).tdo
	rm -f $(TARGET).figlist
	rm -f $(TARGET).makefile
	rm -f $(TARGET).auxlock
	rm -f $(TARGET).pyg
