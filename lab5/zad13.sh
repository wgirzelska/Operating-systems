#!/bin/bash

rm -rf home
groupadd gr1
groupadd gr2
groupadd gr3
useradd -m -g gr1 us1	
useradd -m -g gr2 us2
useradd -m -g gr3 us3
mkdir home/us1/kat1a
mkdir home/us1/kat1b
mkdir home/us1/kat1a/kat1c
touch home/us1/kat1a/plik1a
touch home/us1/kat1a/plik1b
touch home/us1/kat1a/kat1c/plik1
mkdir home/us2/kat1a
touch home/us2/kat1a/plik1a
mkdir home/us2/kat1c
touch home/us2/kat1c/plik1
mkdir home/us2/kat1b
mkdir home/us3/kat1a
touch home/us3/kat1a/plik1a
mkdir home/us3/kat1c
touch home/us3/plik1
mkdir home/us3/kat1b
cd home
mkdir archiwum 
mkdir rozpakowane
tar -cf archiwum/us1_arch.tar us1/*
tar -cf archiwum/us2_arch.tar us2/*
tar -cf archiwum/us3_arch.tar us3/*
tar -xf archiwum/us1_arch.tar -C rozpakowane/
tar -xf archiwum/us2_arch.tar -C rozpakowane/
tar -xf archiwum/us3_arch.tar -C rozpakowane/
tree
