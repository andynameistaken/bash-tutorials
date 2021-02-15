if (ls -laGg $1 |tr -s ' '|cut -f 4 -d ' ' >$2)
then
sort $2>$3
echo OK
cat $3
else
echo BLAD WYKONANIA SKRYPTU
fi

