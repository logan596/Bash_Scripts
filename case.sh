#!/bin/bash

#echo "Hello This is a test case statement program please select any number"

#echo "Enter a number"

read -p "Enter the case number do you want?" num
		
if [ "$num" -lt 4 ]; then

case "$num" in

1)	echo "Hello this is case 1"
	;;
2)	echo "Hello this is case 2"
	;;
3) 	echo "Hello this is case 3"
	;;

esac

else
	echo "Please provide a valid number"
fi
