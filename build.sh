#! /usr/bin/env bash

mkdir res_img

pushd coal_mining
Rscript -e "rmarkdown::render('main.Rmd')"
popd

pdflatex project.tex
biber project
pdflatex project.tex
pdflatex project.tex

rm -f project.aux project.bcf project.log project.run.xml project.blg project.bbl project.fls project.fdb_latexmk

pdflatex presentation.tex
biber presentation
pdflatex presentation.tex
pdflatex presentation.tex

rm -f presentation.aux presentation.bcf presentation.log presentation.run.xml presentation.blg presentation.bbl presentation.nav presentation.snm presentation.toc presentation.fls presentation.fdb_latexmk
clear
