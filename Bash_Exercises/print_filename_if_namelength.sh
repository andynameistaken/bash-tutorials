#!/usr/bin/bash

echo "This program prints only filenames with specific filelengthes give "

dir=$1
min=$2
max=$3

# echo "$#"

ls "$dir" | grep -x ".\{$min,$max\}" 
