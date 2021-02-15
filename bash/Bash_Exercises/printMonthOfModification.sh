#!/bin/bash


dirName=$1

fileName=$2

#Check number of parameters
if [ $# -ne 2 ]; then
	echo "illegal number of parameters"
	exit 1
fi
	

#Check if directory exists
if [ ! -d "$dirName" ]; then
	echo "Error: directory: $dirName  not exists"
	exit 1
fi



#check if directory is NOT reable
if [ ! -r $dirName ]; then
	echo "Error: directory: $dirName is not readable"
	exit 1
fi

#check if file EXISTS
if [ -f "$fileName" ]; then
	echo "Error: file: $fileName  exists"
	exit 1
fi


touch $fileName 2> /dev/null

#check if file has been NOT created
if [ ! -f $fileName ]; then
	echo "File not created"
fi
	

#Loop in directory to:
#	print filename and print return of date  second row delimted by space
#	and then put it into some file
#
#	and yes this is awful as hell

for FILE in  "$dirName"/*
do
	echo "$FILE"  `date -r $FILE | cut -f 2 -d ' '` >> $fileName 
	#date -r $FILE | cut -f 2 -d ' ' >> $fileName
done

sort -o $fileName $fileName



# elif [ -d "./$fiName" ]; then
# 	echo "Error: file: $fileName exists"
# 	exit 1
# fi


