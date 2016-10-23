
#!/bin/bash

array_name=($1 $2 $3 $4 $5)
counter=0
max=5
while true; do

	if [ $counter -lt $max ]; then
	counter=$((counter+1))
	for i in "${array_name[$counter]}"
	do

	echo "Argument at position is $i"
	done

	else
	exit 0
	fi
done 


#array_second=(Hello my name is olliver queen)


#echo "At 0 location $array_second{0}"

#echo "At 1st location $array_"

