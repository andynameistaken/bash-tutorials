#!/bin/bash

echo "What directory you want to search?"
read directory
echo "directory: $directory"
for FILE in "$directory"/*
do
	fileName="$(basename $FILE)"
	echo "fileName = $fileName"

	total=`cat $FILE | grep -c "$fileName"`
	echo "In file $fileName there are $total occurences 
	of its name in it"
done
