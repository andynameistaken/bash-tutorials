#!/bin/bash

for N in 1 2 3 4 5
do
		echo $N
done


for dir in $(ls) 
do
		echo $dir
done


for i in {1..5}
do
		echo $i
done


for i in $(seq 1 2 10)
do 
	echo $i
done

for ((i=0; i<10; i++))
do 
	echo $i
done

# for((; ;)) infinite loop


