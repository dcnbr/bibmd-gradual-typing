SRC := ./pkg
.DEFAULT_GOAL := all

all: $(SRC)/%.md
	@cat $(SRC)/*.md | bibtool -q -s -o all.bib

%.md: ;

clean: 
	@rm *.bib

