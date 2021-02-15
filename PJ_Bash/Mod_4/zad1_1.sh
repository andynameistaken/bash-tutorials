#!/usr/local/bin/bash

# Zadanie 1. Napisz skrypt,
# - który wyświetli wszystkie pliki z katalogu /dev, 
# - które: - są urządzeniami blokowymi.
# - na końcu nazwy mają cyfrę.
# - są urządzeniami blokowymi i na końcu nazwy mają cyfrę. - w nazwie mają wyłącznie i dokładnie 3 dowolne znaki.
# - w nazwie mają nie więcej niż 3 dowolne znaki.

dir_name="/dev"

for FILE in "$dir_name"/*
do
    # echo "$FILE"
    if [ -b $FILE ]
    then
        echo "$FILE is a block device"
    fi
done
