# Makefile to generate PDFs from Markdown using pandoc

.PHONY: all clean mkout handson

TARGETS = out/project.pdf

all: 	$(TARGETS)
	$(MAKE) -C hands-on

out/%.pdf: %.md
	mkdir -p out
	pandoc $< -o $@ -V colorlinks=true \
			-V linkcolor=blue \
			-V urlcolor=red \
			-V toccolor=gray

clean:
	rm -rf out
	rm -rf hands-on/out