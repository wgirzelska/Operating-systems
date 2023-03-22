#!/bin/bash

rm -rf home
mkdir home
mkdir home/testowy
mkdir home/testowy/kat1

for ((i=11; i<13; i++))
do
    mkdir home/testowy/kat1/kat$i
    let n=i-10
    touch home/testowy/kat1/kat$i/plik$n
done

touch home/testowy/kat1/plik13

mkdir home/testowy/kopia
mkdir home/testowy/archiwum
mkdir home/testowy/rozpakowane

tree home/testowy
cd home/testowy/kat1/kat12

cp -r ../../kat1 ../../kopia
cd ../..

tar -cf archiwum/kat1_arch.tar kat1
cd rozpakowane
tar -tf ../archiwum/*

cd ../kat1/kat12
tar -xf ../../archiwum/kat1_arch.tar -C ../../rozpakowane
rm -r ../../kopia/*
tree ../../



