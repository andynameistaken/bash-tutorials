#!/bin/bash

read directory

for FILE in "$directory"/*
do 
    echo "Name of file: $FILE"
    echo "Occurences:"

    file_name="$(basename $FILE)"
    total=` cat $FILE | grep -c "$file_name"`
    echo "In file $file_name there are $total occurences of ints name in it"
done