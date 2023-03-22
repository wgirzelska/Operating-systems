groupadd g1
groupadd g2
groupadd g3
useradd -m -g g1 u1	
useradd -m -g g2 u2
useradd -m -g g3 u3
mkdir /home/u1/u1
mkdir /home/u2/u2
mkdir /home/u3/u3
touch /home/u1/u1/plik_info1
touch /home/u1/u1/plik_data1
touch /home/u3/u3/plik_info3
chmod 444 /home/u1/u1
chmod 444 /home/u2/u2
chmod 444 /home/u3/u3
ls -l /home/u1 /home/u2 /home/u3
chmod 460 /home/u1/u1
chmod 044 /home/u2/u2
chmod 606 /home/u3/u3
ls -l /home/u1 /home/u2 /home/u3
userdel -r u1
userdel -r u2
userdel -r u3
groupdel g1
groupdel g2
groupdel g3