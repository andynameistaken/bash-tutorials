#!/bin/bash
#argumenty
echo $@
#liczba argumentów
echo $#
#lista z argumentami
args=($@)
nums=$#
for ((i= $nums; i>=0; i--))
do
	echo -n "${args[i]} "
done
