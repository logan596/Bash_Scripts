#!/bin/bash

#Hand made calculator

#read -p "Enter the first value:" a
#read -p "Enter the second value:" b 

#read -p "Which operation would you like to perform?" c

a=$1
b=$2
c=$3

if [ $# -eq 3 ]; then

	if [ "$c" = "+" ]; then
	expr "$a" + "$b"

	elif [ "$c" = "-" ]; then
	expr $a - $b

		elif [ "$c" = "/" ]; then
		expr $a \/ $b
			elif [ "$c" = "*" ]; then 
			expr $a \* $b
	fi
else	echo "Please provide the valid ARGV"
fi
