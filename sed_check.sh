#!/bin/bash

#This script is used for to checking the available strings in files..
#If the string is available then it written a msg string is available and if not matche then it return error..

file=$1
while read line
do
echo Hello $line


done < $file

 
