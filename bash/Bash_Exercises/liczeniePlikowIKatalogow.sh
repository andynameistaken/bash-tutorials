#!/bin/bash
echo "Skrypt uruchomiono z parametrami: $@"

echo " Zmienna nr 1 $1"

#
filePath="."
fileCount=0
dirCount=0
executableCount=0
readableCount=0

#ilość plików
fileCount=`ls -AlR "$filePath" | egrep '^-'| wc -l`
#find $filepath  -type f 

echo "Ilosc plikow $fileCount"

#ilosc folderow
dirCount=`ls -AlR "$filePath" | egrep '^d'| wc -l`
echo "Ilosc katalogow $dirCount"

#pliki wykonywalne
executableCount=`find $filePath -executable -type f | wc -l`
echo "ilosc plikow wykonywalnych $executableCount"

#pliki do odczytu
readableCount=`find $filePath -readable -type f | wc -l`
echo "ilosc plikow do odczytu $readableCount"



