#!/bin/bash

# nazwa, za ktorej pomoca wywolano skrypt
# echo $0
# # liczba argumentow skryptu
# echo $#

# # echo -n "Podaj argument: "
# # read a
# echo "argument a to: $a" 

# # wszystkie argumenty skryptu
# echo $@

# #deklaracja tablicy:
# numbers=( zero one two three )
# echo "numbers $numbers" 

# #odwolanie sie do elementu tablicy
# echo ${numbers[1]}

# #liczba elemntow w tablicy
# echo ${#numbers[@]}

# numbers+=(four)
# echo 
# echo ${numbers[*]}

# a=1
# b=2

# if ((a > b)); then
#     echo "$a > $b"
# elif ((a == b)); then
#     echo "$a == $b"
# else
#     echo "$a < $b"
# fi

for i in 1 2 3 4 5; do
    echo $i
done

for i in {1..5}
do
    echo "$i"
done

for i in $(ls):
do 
    echo $i
done

for ((i=1; i < 6; i++))
do
    echo "Welcome $i times"
done