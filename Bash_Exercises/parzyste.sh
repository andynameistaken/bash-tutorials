#!/bin/bash

#zadanie polega na znalezieniu pliku, ktrory zaczyna sie na s, ma 3 dowolne #znaki po s i na koncu wystepuje 2017
#jezeli taki plik istnieje to nalezy odczytac go, wypisac liczbe wierszy,
#w ktorych wystepuja ta liczba i utworzyc plik PARZYSTE z liczbami parzystymi z #tego pliku
#PPARZYSTE2 z wierszami gdzie liczby prarzyste wystepuja
#TO samo trzeba zrobic z nieparzystymi
#Upewnic sie czy pliki zostaly stworzone



for f in $(find $1 -type f -name "s[a-zA-Z][a-zA-Z][a-zA-Z]2017")
do
	wierszeParzyste=0
	wierszeNieparzyste=0

	fileName=$(basename $f)
	echo "Filename $fileName"
	liczZer=0

	while read -r line # r nie traktuje \ jako specjalnego znaku
	do
        flagPar=0
        flagNiepar=0
		for word in $line
		do
			if [ $((word % 2)) -eq 0 ]; then
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
		if [ $flagNiepar -eq 1 ]; then
			((wierszeNieparzyste++))
		fi
	done < $f
	echo "Ilosc wierszy z liczbami parzystymi $wierszeParzyste"
	echo "Ilosc wierszy z liczbami nieparzystymi $wierszeNieparzyste"
done
