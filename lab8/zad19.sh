#!/bin/bash

cd home
rm -rf testowy/*
mkdir testowy/kat1

for ((i=12; i<14; i++))
do
    mkdir testowy/kat1/kat$i
done

touch testowy/kat1/plik11

for ((i=12; i<14; i++))
do
    touch testowy/kat1/kat12/plik$i
done

mkdir testowy/kat1/kat12/kat14

mkdir testowy/kopia
mkdir testowy/archiwum
mkdir testowy/rozpakowane

cd testowy/kat1/kat13
cp -r ../../kat1 ../../kopia

cd ../..
tar -cf archiwum/kat1_arch.tar kat1/*
cd kat1/kat12/kat14
tar -tf ../../../archiwum/* 

cd ..
tar -xf ../../archiwum/kat1_arch.tar -C ../../rozpakowane

rm -rf ../../kopia/*

tree ../..
