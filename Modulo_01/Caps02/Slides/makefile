DELAY = 1000

RMD_FILE   =  $(wildcard *.Rmd)
HTML_FILE  = $(patsubst %.Rmd, %.html, $(RMD_FILE))
PDF_FILE   = $(patsubst %.Rmd, %.pdf, $(RMD_FILE))

pdf: $(PDF_FILE)
html: $(HTML_FILE)
all: $(PDF_FILE) $(HTML_FILE)



%.pdf: %.html
	casperjs makepdf.js $< $@ $(DELAY)

%.html: %.Rmd
	cd $(dir $<) && Rscript -e "slidify::slidify('index.Rmd')" && cd ..

clean:
	rm -rf libraries
	rm -r $(PDF_FILE)
	rm -r $(HTML_FILE)

.PHONY: clean
