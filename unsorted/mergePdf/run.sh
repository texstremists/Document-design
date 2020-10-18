#!/bin/bash

pdflatex file1.tex
pdflatex file2.tex
pdflatex file2.tex
pdfannotextractor file1.pdf
pdfannotextractor file2.pdf
pdflatex combined.tex
rm *.out *.aux *.log
