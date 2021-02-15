#!/bin/bash
wierszeParzyste=0
wierszeNieparzyste=0



	
	while read -r line # r nie traktuje \ jako specjalnego znaku
	do
		wordCount=$(echo $line | wc -w | sed  's/^ *//' | cut -f1 -d ' ')
		if [ ((wordCount % 2)) == 0 ]; then
			echo $line >> "PARZYSTE_3.txt" 
			((wierszeParzyste++))
		else
			echo $line >> "NIEPARZYSTE_3.txt"
			((wierszeNieparzyste++))
		fi
	done < $1
	













