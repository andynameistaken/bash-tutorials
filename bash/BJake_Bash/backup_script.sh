#!/bin/bash
FILES="$@"

echo "FILES: $FILES"

for file in $FILES
do
		echo $(pwd)"/${file}.bckp"
		if [ -a $(pwd)"/${file}.bckp" ]
		then
				echo in if condition
				echo "Backup of $file exists"
				continue
		fi
		cp $file $file.bckp

done
