groupadd g1
groupadd g2
groupadd g3
useradd -m -g g1 u1	
useradd -m -g g2 u2
useradd -m -g g3 u3
mkdir /home/u1/test1
mkdir /home/u2/test2
mkdir /home/u3/abc3
touch /home/u1/test1/plik_info1
touch /home/u1/test1/plik_data1
touch /home/u3/abc3/plik_info3
cp /home/u1/test1/plik_info1 /home/u2/test2
cp /home/u1/test1/plik_info1 /home/u3/abc3
mkdir /home/kopia
cp -r /home/u* /home/kopia
tree /home
echo "31.10.2022" > /home/u1/test1/plik_data1
cat /home/u1/test1/plik_data1
userdel -r u1
userdel -r u2
userdel -r u3
rm -r -f /home/kopia
groupdel g1
groupdel g2
groupdel g3
