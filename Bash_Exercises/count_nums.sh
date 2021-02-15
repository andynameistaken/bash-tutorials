#!/bin/bash
# TO-DO: file=$1
echo "This programs counts occurences of 0 and numbers divisable by: 3, 5, 7 and it outputs it to file num_ocurrences.txt"

zeroes=$(grep -o '\<0\>' file | wc -l)
threes=0
fives=0
sevens=0
echo "0 occurences:         $zeroes" > num_occurences.txt

while read -r line # -r treats '\' as normal letter
do
	for word in $line
	do
		if (($word !=0)); then
			if [ $((word % 3)) -eq 0 ]; then 
				((threes++))
			fi

			if [ $((word % 5)) -eq 0 ]; then 
				((fives++))
			fi

			if [ $((word % 7)) -eq 0 ]; then 
				((sevens++))
			fi

		fi


	done
done < file 

echo "num / 3 occurences: $threes" >> num_occurences.txt
echo "num / 5 occurences: $fives" >> num_occurences.txt
echo "num / 7 occurences: $sevens" >> num_occurences.txt
