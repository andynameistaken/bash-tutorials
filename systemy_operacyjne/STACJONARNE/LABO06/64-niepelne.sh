rm ~/koniec/64list.txt
lista=`ls -1 *.txt`

echo $lista

tail -qn 1 $lista >> ~/koniec/64list.txt

cat ~/koniec/64list.txt
