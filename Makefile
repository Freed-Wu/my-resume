.PHONY: default
default: all

.PHONY: all
all: images/main-%.png

main.pdf: main.tex
	latexmk -pvc- main.tex

images/main-%.png: main.pdf
	mkdir -p images
	pdftocairo -png $< images/main

clean:
	latexmk -C main.tex
