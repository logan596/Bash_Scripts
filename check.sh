#!/bin/bash


while read line
do	
#	echo $line
	sed -n "/$line/p" $1
done < /home/ygavhane/apr1.txt

