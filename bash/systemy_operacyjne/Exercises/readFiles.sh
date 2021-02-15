#!/bin/bash

for f in $(find $1 -type f -name "s[a-zA-Z][a-zA-Z][a-zA-Z]2017")
do
		wierszeParzyste=0
		wierszeNieprarzyste=0
		flagNiepar=0
		flagPar=0
		fileName=$(basename $f)

		echo "Filename $fileName"
		
		liczZer=0

		while read -r $line # r nur traktuje \ jako znaku specjalnego
		do
			for word in $line
			do
				if [ $((($word % 2)) -eq 0 ]; then
					if [ $word -eq 0 ]; then
						((liczZer++))
					fi
					echo "$word" >> "Parzyste.txt"
					echo "parzysta $word w wierszu $line"
					flagPar=1

					else
						echo "$word" >> "Nieparzyste.txt"
						echo "nieparzysta $word w wierszu $line"
						flagNiepar=1
				fi
			done
			if [ $flagPar -eq 1 ]; then
				((wierszeParzyste++))
			fi
			if [ $flagNiepar-eq 1 ]; then
				((wierszeNieParyste++))
			fi
		done < $f

		echo "ilosc wierszy z liczbami parzystymi $wierszeParszyste"
		echo "ilosc wierszy z liczbami nieparzystymi $wierszeNieParszyste"
done
