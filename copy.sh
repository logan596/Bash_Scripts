#!/bin/bash
a=3

if [ "$a" -gt "0" ];then 
	if [ "$a" -lt "5" ]; then
	echo "The $a is beween 0 and 5"
	fi	
fi


if [ "$a" -gt "0" -a "$a" -lt "5" ]; then
echo "The $a is between 0 and 5"
fi	
