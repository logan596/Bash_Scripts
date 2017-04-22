#!/bin/bash

#This script is use to help NOC to run the monthly RWH CLI task on 1st and 16th.

repeat() {
today=`date +%a`
zenity --question --text "Hi today is ${today}" --display=:0.0

zenity --question --title "NOC Weekly Tasks" --text "You have to Perform NOC Weekly task script" --display=:0.0 --display=:0.0
answer=$(zenity --entry  --title "For ACK" --text "Please ack it by typing yes or no below" --display=:0.0 )

}
#echo "$answer"
repeat
if [ $answer = "YES" ] || [ $answer = "yes" ] || [ $answer = "Yes" ]; then

zenity --question --text "Thanks for the ack i will not ask this again" --display=:0.0

else
zenity --question --text "This warning will come again untill you ack it" --display=:0.0
sleep 100
repeat

fi

