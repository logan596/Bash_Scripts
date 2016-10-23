#!/bin/bash
file=$1
str=""

for var in "$@"
do
    str+="$var "
done

g++ -Wall -o ${file%.*} $str
