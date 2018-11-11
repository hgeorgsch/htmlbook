# (C) 2018: Hans Georg Schaathun <georg@schaathun.net>
#
HBDIR=../
TOCCFG=$(HBDIR)/toc.cfg

export TEXINPUTS=.:$(HBDIR)styles4ht/:

CSSDIR=$(HBDIR)/css

INSDIR=
INCFILES=$(CSSDIR)/htmlbook.css
PDFFILES=
SVGFILES=
HTMLFILES=kokebok.html
PNGFILES=
WEBFILES=$(INCFILES) $(PDFFILES) $(SVGFILES) $(HTMLFILES) $(PNGFILES)

all: kokebok.html

%.pdf: %.py
	./$<
%.xbb: %.pdf
	ebb -x $<
%.eps: ../fig/%.pdf
	pdftops $< $@

toc.cfg: $(TOCCFG)
	cp $< $@

sample.html: toc.cfg 

install: $(WEBFILES)
	rsync -av $^ $(INSDIR)
	rsync -av kokebok*.css  kokebok*.html $(INSDIR)
	rsync -av PDF $(INSDIR)

%.pdf: %.aux
	pdflatex $*
	pdflatex $*
%.dvi: %.tex
	rm -f $*.aux 
	latex $*
	latex $*

%.aux: %.tex
	rm -f $*.aux 
	pdflatex $<

clean:
	rm -f *.aux *.log *.blg *.out *.toc *.nav *.snm *.vrb comment.cut
	rm -f *.4tc *.4ct *.xref *.tmp
	rm -f *.dvi 
	rm -f *.html

%.html: %.tex 
	rm -f $*.aux 
	htlatex $< "toc,mathml,charset=utf-8" " -cmozhtf -utf8" "-cvalidate" -shell-escape


