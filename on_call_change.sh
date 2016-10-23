#!/bin/bash


#This script is for changing the OnCall person every Tuesday..


#The order of the ONCALL's are as follows 

#1.) LEON

#2.) LEE

#3.) BRUCE

#4.) ROB

#5.) JLO


change=$(date +%A)

#if [ $change = "Tuesday" ]; 

for i in LEON LEE BRUCE ROB JLO ;do

echo $i

done

#fi

echo $change








