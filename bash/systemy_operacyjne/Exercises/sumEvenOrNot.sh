#!/bin/bash
wierszeParzyste=0
wierszeNieParzyste=0

while read -r
do
    wordCount=$(echo $line | wc -w | sed 's/^ *//' | cut -f1 -d ' ')
    if [ ((wordCount % 2)) == 0 ]; then
        echo $line >> "PARZYSTE_1.txt"
        ((wierszeParzyste++))
    else
        echo $line >> "NIEPARZYSTE.txt"
        ((wierszeNieparzyste++))

done <$1