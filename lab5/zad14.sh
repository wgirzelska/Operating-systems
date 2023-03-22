#!/bin/bash

rm -rf home
mkdir home
cd home
mkdir testowy
cd testowy
mkdir kat1
cd kat1
mkdir kat1a
mkdir kat1b
touch plik1
touch kat1a/plik1a
touch kat1b/plik1b
cd .. 
mkdir kopia
mkdir archiwum
mkdir rozpakowane
tree
cd kat1/kat1b
cp -r /Users/wiktoriagirzelska/Desktop/studia/systemy-operacyjne/systemy-operacyjne/lab5/home/testowy/kat1 /Users/wiktoriagirzelska/Desktop/studia/systemy-operacyjne/systemy-operacyjne/lab5/home/testowy/kopia
cd /Users/wiktoriagirzelska/Desktop/studia/systemy-operacyjne/systemy-operacyjne/lab5/home
ls testowy/archiwum
tar -cf testowy/archiwum/kat1_arch.tar testowy/kat1/ 
cd testowy/rozpakowane
tar -tf /Users/wiktoriagirzelska/Desktop/studia/systemy-operacyjne/systemy-operacyjne/lab5/home/testowy/archiwum/kat1_arch.tar
cd ..
cd kat1/kat1b
tar -xf ../../archiwum/kat1_arch.tar --directory ../../rozpakowane/
rm -rf ../../kopia
cd ..
cd ..
tree