#!/bin/bash

rm -rf home

mkdir home
mkdir home/us1
mkdir home/us2
mkdir home/us3

for ((i=11; i<13; i++))
do 
    mkdir home/us1/kat$i
done
mkdir home/us1/kat11/kat13
touch home/us1/kat11/kat13/plik13

for ((i=1; i<3; i++))
do
    touch home/us1/kat11/plik$i
done

for ((i=11; i<14; i++))
do 
    mkdir home/us2/kat$i
done
touch home/us2/kat11/plik1
touch home/us2/kat12/plik2

for ((i=11; i<14; i++))
do 
    mkdir home/us3/kat$i
done
touch home/us3/plik1
touch home/us3/kat11/plik2

mkdir home/archiwum
mkdir home/rozpakowane

cd home

for ((i=1; i<4; i++))
do
    tar -cf archiwum/arch_us$i.tar us$i/*
done

for ((i=1; i<4; i++))
do
    tar -xf archiwum/arch_us$i.tar -C rozpakowane
done

tree 

