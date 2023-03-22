#!/bin/bash
rm -r Pulpit || true
mkdir Pulpit
cd Pulpit
mkdir test
cd test
touch info1
echo "Wiktoria Girzelska" >> info1
touch info2
echo "15.10.2022" >> info2
cd ..
mkdir kopia
cd test
cp info2 /Users/wiktoriagirzelska/Desktop/studia/systemy/lab2/Pulpit/kopia
cd ..
cd kopia
mv info2 info3
echo "INFORMATYKA" > info3
cp info3 /Users/wiktoriagirzelska/Desktop/studia/systemy/lab2/Pulpit/test
mv /Users/wiktoriagirzelska/Desktop/studia/systemy/lab2/Pulpit/test/info3 /Users/wiktoriagirzelska/Desktop/studia/systemy/lab2/Pulpit/test/info4
cd
ls
tree ./Desktop/
cat /Users/wiktoriagirzelska/Desktop/studia/systemy/lab2/Pulpit/test/info1
cat /Users/wiktoriagirzelska/Desktop/studia/systemy/lab2/Pulpit/test/info4


