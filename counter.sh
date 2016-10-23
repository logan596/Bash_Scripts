#!/bin/bash
counter=0
max_count=10
while true; do
counter=$((counter+1))
 if [ "$counter" -gt "$max_count" ]; then
	echo "Stopping the process"
	exit
 else
       echo "Counter: $counter time(s); Sleeping for another 1 sec" 
       sleep 1
  fi
done
