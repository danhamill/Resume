BUILDDIR = build
DOC1 = hamill_resume
DOC1S = $(DOC1).tex

all: pdf view

pdf: $(DOC1S)
	-mkdir $(BUILDDIR)
	pdflatex -output-directory=$(BUILDDIR) $(DOC1S)

clean:
	rm -rf $(BUILDDIR)

view:
	okular $(BUILDDIR)/$(DOC1).pdf
