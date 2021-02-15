#!/usr/local/bin/bash
# zadanie polega na znalezieniu pliku, który zaczyna się na s, ma 3 dowolne znaki (po s) i na koncu wystepuje rok 2017
# jezeli taki plik istnieje to nalezy odczytac go, wypisac liczbe wierszy. 
# Jezeli wiersz ma parzysta ilosc slow to wrzucamy te informacje do pliku Parzyste.txt, a jezeli nie to do Nieparzyste.txt. Ma byc tam tez informacj
# o ilosci wierzy z liczbami niepar i analogicznie z par.

for f in $(find $1 find . -type f -name  "s[A-Z][A-Z][A-Z]2017")
do
    echo $f 
done