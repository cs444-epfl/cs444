# Makefile to generate PDFs from Markdown using pandoc

.PHONY: all clean

TARGETS = out/ho1.pdf out/ho2.pdf out/ho3.pdf out/ho4.pdf

all: $(TARGETS)

out/%.pdf: %.md
	mkdir -p out
	pandoc $< -o $@ -V colorlinks=true \
			-V linkcolor=blue \
			-V urlcolor=red \
			-V toccolor=gray

clean:
	rm -rf out