#!/bin/bash

content=$(cat $1)
numberOfLines=`wc -l < $1`
echo "$numberOfLines"
echo 1
line=1


#head -$line $1 | tail -"$numberOfLines"
# while [ $line -le $numberOfLines ]
# do
# 	 head -$line $1|tail -$line
# 	 line=$(($line+1))
# done