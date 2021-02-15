echo "This program will show you info about files in dir (is readable, executable etc)"
echo "In which directory you want to see info about files?"

read dir

for file in $dir/*
do 
		file_name="$(basename $file)"
		echo
		echo $file_name is a:
		
		# echo $(readlink -f $file)
		if [ -f $(readlink -f $file)  ]
		then
			echo regular file
		fi

		if [ -d $(readlink -f $file)  ]
		then
			echo directory
		fi

		if [ -L $(readlink -f $file)  ]
		then
			echo sym-link
		fi

		# if [ -d $(readlink - $file)  ]
		# then
		# 	echo directory
		# fi
done
