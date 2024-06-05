#!/bin/bash
sudo apt-get install texlive-fonts-extra texlive-latex-recommended
sudo apt install texlive-lang-german
sudo apt install texlive-latex-extra
f=$1
if [[ ! -e $f ]]; then
  echo "File $f not found."
  exit 3
fi
pdflatex -halt-on-error $f
exit $?
 
