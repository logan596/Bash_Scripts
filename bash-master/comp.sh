#!/bin/bash
file=$1
str=""

for var in "$@"
do
    str+="$var "
done

gcc -Wall -o ${file%.*} -lm -lpthread $str
