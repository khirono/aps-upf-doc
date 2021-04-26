PICS:=$(wildcard *.pikchr)
SVGS:=$(PICS:.pikchr=.svg)

all: $(SVGS)

clean:
	rm -f $(SVGS) *~

$(SVGS): %.svg : %.pikchr
	pikchr --svg-only $< > $@
