#!/bin/bash
#echo "Podane argumenty $@"
echo "Podaj ścieżkę"
read filePath
echo "Podana ścieżka $filePath"
ls -lR "$filePath" | grep ^d | wc -l
ls -lR $filePath | grep ^d
# find $1 -type d
# find $1 -type d | wc -l
