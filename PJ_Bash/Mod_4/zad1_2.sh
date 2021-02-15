#!/usr/local/bin/bash

# - na końcu nazwy mają cyfrę.

# - są urządzeniami blokowymi i na końcu nazwy mają cyfrę. - w nazwie mają wyłącznie i dokładnie 3 dowolne znaki.
# - w nazwie mają nie więcej niż 3 dowolne znaki.

for FILE in ./*
do 
    echo "$FILE" | grep ".*[0-9]$" 
done