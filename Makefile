### DEFINITIONS ###
# LaTeX Definitions
MAIN_TEX=main.tex

TEX=$(wildcard *.tex)
BIB=$(wildcard *.bib)

MAIN_PDF=output.pdf


### TARGETS ###
# Generic Targets
.PHONY: all
.PHONY: check
.PHONY: clean

all: tex

check:
	find . -type f -name '*.tex' -exec \
		aspell check \
			--mode=tex {} \;

clean:
	rm -f $(MAIN_PDF) *.bak *.aux *.log *.out *.blg *.bbl *.bcf *.run.xml


# LaTeX Targets
.PHONY: tex
tex: $(MAIN_PDF)

$(MAIN_PDF): $(MAIN_TEX) $(BIB)
	pdflatex --jobname $(basename $(MAIN_PDF)) $(basename $(MAIN_TEX))
	biber $(basename $(MAIN_PDF))
	pdflatex --jobname $(basename $(MAIN_PDF)) $(basename $(MAIN_TEX))
