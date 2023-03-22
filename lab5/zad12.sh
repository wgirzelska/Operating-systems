#!/bin/bash

rm -rf home/testowy/*
cd home/testowy
mkdir kat1
mkdir kat1/kat1a
mkdir kat1/kat1b
touch kat1/plik1
touch kat1/kat1a/plik1a
touch kat1/kat1a/plik1b
mkdir kat1/kat1a/kat1c
mkdir kopia
mkdir archiwum
mkdir rozpakowane
tree
cd kat1/kat1a/kat1c
cp -r ../../../kat1 ../../../kopia
cd ../../../..
tar -cf testowy/archiwum/kat1_arch.tar testowy/kat1
cd testowy/rozpakowane
tar -tf ../archiwum/kat1_arch.tar
cd ../kat1/kat1b
tar -xf ../../archiwum/kat1_arch.tar -C ../../rozpakowane
cd ../..
tree
