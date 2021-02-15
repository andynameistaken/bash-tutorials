#!/bin/bash
for directory in $(find . -type d -name "s[A-Z][A-Z][A-Z][0-9]")
do
    for file in "$directory"/*
    do
        if [ -f "$file" ]; then
            content=$(cat $file)
            echo "$content"
        fi
    done
done
