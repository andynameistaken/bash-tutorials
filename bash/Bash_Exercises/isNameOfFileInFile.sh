#!/bin/bash
echo "This program searches that how many 
occurences of filename contains file in specific directory"
echo
echo " What directory you want to search?"
read directory

for FILE in "$directory"/*
do
	echo "Name of file $FILE"
	echo "Occurences:"
	# cat $FILE
	fileName="$(basename $FILE)"
	
	total=`cat $FILE | grep -c "$fileName"`
	echo "In file $fileNane there are $total occurences of its name in it"
done

