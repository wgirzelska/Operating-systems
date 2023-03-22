rm -rf home
groupadd gr1
groupadd gr2
groupadd gr3
useradd -m -g gr1 user1	
useradd -m -g gr2 user2
useradd -m -g gr3 user3
mkdir home/user1/kat1
mkdir home/user1/kat5
mkdir home/user1/kat5/kat2
touch home/user1/kat5/plik_info1
mkdir home/user1/kat5/kat2/kat3
touch home/user1/kat5/kat2/info2
mkdir home/user2/kat1
mkdir home/user2/kat3
touch home/user2/kat3/plik_info3
mkdir home/user2/kat1/kat2
touch home/user2/kat1/plik_info2
mkdir home/user2/kat1/kat2/kat5
mkdir home/user3/kat5
mkdir home/user3/kat6
touch home/user3/kat5/plik_info2
touch home/user3/kat5/plik_info3
touch home/user3/kat6/plik_info4
mkdir home/user3/kat6/kat
mkdir home/user3/kat6/kat/kat1
tree home/
mkdir /Archiwum-user1
mkdir /Archiwum-user2
mkdir /Archiwum-user3
mkdir /root
mkdir /root/backup
tar -cf /Archiwum-user1/user1_arch.tar home/user1/*
tar -cf /Archiwum-user2/user2_arch.tar home/user2/*
tar -cf /Archiwum-user3/user3_arch.tar home/user3/*
tar -tf /Archiwum-user1/user1_arch.tar
tar -tf /Archiwum-user2/user2_arch.tar
tar -tf /Archiwum-user3/user3_arch.tar
cp -r /Archiwum-user1/user1_arch.tar /root/backup/
cp -r /Archiwum-user2/user2_arch.tar /root/backup/
cp -r /Archiwum-user3/user3_arch.tar /root/backup/
ls /root/backup