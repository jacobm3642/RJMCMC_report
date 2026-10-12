#! /usr/bin/env bash

mkdir res_img

pushd coal_mining
Rscript -e "rmarkdown::render('coal_mining/main.Rmd')"
popd

pdflatex project.tex
biber project
pdflatex project.tex
pdflatex project.tex

rm project.aux project.bcf project.log project.run.xml project.blg project.bbl project.fls project.fdb_latexmk
clear
