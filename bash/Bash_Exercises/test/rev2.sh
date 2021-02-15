#!/bin/bash

for f in $(find $1 -type f -name "s[a-zA-Z][a-zA-Z][a-zA-Z]2017")
do
	wierszPar=0
	wierszNiepar=0
	numZer=0
	while read -r line
	do
		flagPar=0
		flagNiepar=0
		
		for word in $line
		do
			if [ $((word % 2)) -eq 0 ]; then
				
				if [ $word -eq 0 ]; then
						((numZer++))
				fi
				echo "parzysta liczba $word w wierszu $line"
				echo $word >> "Parzyste.txt"
				flagPar=1
			else
				echo "nieparzysta liczba $word w wierszu $line "
				echo $word >> "Nieparzyste.txt"
				flagNiepar=1
			fi	
		done
		if [ $flagPar -eq 1 ]; then
			((wierszPar++))
		fi
		if [ $flagNiepar -eq 1 ]; then
			((wierszNiepar++))
		fi
	done < $f
	echo "ilosc wierzsy z liczbami parzystymi $wierszPar"
	echo "ilosc wierzsy z liczbami nieparzystymi $wierszNiepar"
done