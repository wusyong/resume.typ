#!/bin/bash

echo "======generating LaTeX========"

cabal run resume --verbose=0 -- en >> latex/resume.tex
cabal run resume --verbose=0 -- elab >> latex/resume-elab.tex
# cabal run resume --verbose=0 -- cn >> latex/resume-cn.tex

echo "=======building LaTeX========="

make -C latex
mv latex/*.pdf .
make -C latex clean-tex

echo "====removing useless files===="

rm *~
rm latex/*.log
rm latex/*.aux
rm latex/*.out
rm latex/*.fls
rm latex/*.xdv
rm latex/*.fdb_latexmk

echo "========all tasks done========"

rm *.log
