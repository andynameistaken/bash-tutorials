#!/bin/bash
read arg_1
while [ $arg_1 -gt 0 ]
do
		touch file_$arg_1
		((arg_1--))
done
