#!/bin/bash

#This script is use for calculating the cpu usage of the server for two mins.
#Its really useful for monitoring the server CPU usages.
#You can extend the time as you want just edit the #SEC variable from the script.
SEC=120
UNIT_TIME=60

STEPS=$((${SEC} / ${UNIT_TIME}))
echo "Watching CPU usage.."
echo "...WAIT..."
for ((i=0;i<STEPS;i++))
do
ps -eocomm,pcpu | tail -n +2 >> /tmp/cpu_usage_$$
#echo $$
sleep $UNIT_TIME
done
echo 
echo CPU eaters :
cat /tmp/cpu_usage_$$ | \
awk '
{process[$1]+=$2; }
END{
for(i in process)
{
printf("%-20s %s\n",i, process[i]);
}
}' | sort -nrk2 | head
