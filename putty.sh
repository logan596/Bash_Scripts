#!/bin/bash

#opnening muiltipleputty sessions
#functions for different servers

function yogesh() {

putty 10.20.10.110 -l ygavhane -pw mailjol@123 & 
putty 10.20.10.110 -l ygavhane -pw mailjol@123 &
putty 10.20.10.110 -l ygavhane -pw mailjol@123 &
putty 10.20.10.110 -l ygavhane -pw mailjol@123 &
putty 10.20.10.110 -l ygavhane -pw mailjol@123 &
putty 10.20.10.110 -l ygavhane -pw mailjol@123 &
putty 10.20.10.110 -l ygavhane -pw mailjol@123 &
putty 10.20.10.110 -l ygavhane -pw mailjol@123 &

}

function kundan() {

putty 10.20.10.140 -l kumark -pw NineCon28@ &
putty 10.20.10.140 -l kumark -pw NineCon28@ &
putty 10.20.10.140 -l kumark -pw NineCon28@ &
putty 10.20.10.140 -l kumark -pw NineCon28@ &
putty 10.20.10.140 -l kumark -pw NineCon28@ &
putty 10.20.10.140 -l kumark -pw NineCon28@ &
putty 10.20.10.140 -l kumark -pw NineCon28@ &
putty 10.20.10.140 -l kumark -pw NineCon28@ &

}


function ganesh() {

putty 10.20.10.151 -l gchitkote -pw ElevenCon37$ &
putty 10.20.10.151 -l gchitkote -pw ElevenCon37$ &
putty 10.20.10.151 -l gchitkote -pw ElevenCon37$ &
putty 10.20.10.151 -l gchitkote -pw ElevenCon37$ &
putty 10.20.10.151 -l gchitkote -pw ElevenCon37$ &
putty 10.20.10.151 -l gchitkote -pw ElevenCon37$ &
putty 10.20.10.151 -l gchitkote -pw ElevenCon37$ &
putty 10.20.10.151 -l gchitkote -pw ElevenCon37$ &
putty 10.20.10.151 -l gchitkote -pw ElevenCon37$ &
}
#calling function

#yogesh &
#kundan &
#ganesh &


if [ "$1" = 'yogesh' ]; then
	yogesh &

	elif [ "$1" == 'kundan' ]; then
	kundan &
		elif [ "$1" == 'ganesh' ]; then
		ganesh &
else
	echo "Please provide a valid agrument"
fi

