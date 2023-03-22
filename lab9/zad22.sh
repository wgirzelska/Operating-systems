#!/bin/bash

read -p "Podaj nazwę grupy: " grupa
read -p "Podaj nazwę uzytkownika: " nazwa

if grep -q $grupa /etc/group 
then 
    echo "Podana grupa juz istnieje"
elif grep -q $nazwa /etc/passwd
then
    echo "Podany uzytkownik juz istnieje"
else
    tab_grupy+=($grupa)
    tab_uzytkownicy+=($nazwa)
    echo "${tab_grupy[*]}"
    echo "${tab_uzytkownicy[*]}"
fi

groupadd ${tab_grupy[0]}
useradd -m -g ${tab_grupy[0]} ${tab_uzytkownicy[0]}

mkdir home
for ((i=1; i<4; i++))
do
    mkdir katalog$i
done
cd katalog1
for ((i=1; i<3; i++))
do
    touch plik$i
done

cd ..
touch katalog3/plik3
tree

mkdir Tar
tar -cf Tar/katalog1_arch.tar katalog1
tar -cf Tar/katalog2_arch.tar katalog2
tar -cf Tar/katalog3_arch.tar katalog3

mkdir backup
cp -r katalog1 backup
cp -r katalog2 backup
cp -r katalog3 backup

mkdir rozpakowane
tar -xf Tar/katalog1_arch.tar -C rozpakowane
tar -xf Tar/katalog2_arch.tar -C rozpakowane
tar -xf Tar/katalog3_arch.tar -C rozpakowane

