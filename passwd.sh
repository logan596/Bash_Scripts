#!/bin/bash

while IFS=: read -r f1 f2 f3 f4 f5 f6 f7 
do
	if [ $# -eq 0 ]; then
	echo "You must pass the username" 
	elif [ ${1} = ${f1} ]; then	
	 
	echo -e "Username is $f1 \nUses $f7 as shell \nAnd his home dir is $f6"
fi
done < /etc/passwd
