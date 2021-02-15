echo podaj uzytkownika
read UZYTKOWNIK
while [ `who|grep ^$UZYTKOWNIK|wc -l` -le 2 ]; do
echo jeszcze nie
done
echo JUZ  JUZ
