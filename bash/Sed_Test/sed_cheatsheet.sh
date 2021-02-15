#!/usr/local/bin/bash

# -n blocks printing after readline 'p' is an printing option
sed -n 'p' oneOS.txt

#ranges:

sed -n '2p' oneOS.txt #second line
sed -n '3,5p'  oneOS.txt # 3 line to 5th
sed -n '$p' oneOS.txt # $ is last line
# not operator !
echo
sed -n '1,2!p' oneOS.txt # print all except 1 and 2 line

echo

# regex
# sed -n '/regexhere/p'
sed -n '/^One/p' oneOS.txt
sed -n '/OS/!p' oneOS.txt

#more than one regex /.../, /.../
echo two regex
#sed -n '/call/,/hackers/p' oneOS.txt

echo again

sed -n '/One/,/Where/p' oneOS.txt
echo
