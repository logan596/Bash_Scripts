#!/bin/bash


IP=`ifconfig  | grep 'inet addr' | tail -2 | head -1 | cut -d ':' -f2 | cut -d ' ' -f1`

zenity --question --text "You are using proxy server since 3 hours"

zenity --entry --title 'WARNING!' --text "Enter Your name or i have your IP adddree i.e ${IP}"

zenity --question --text "This is reported to Sysadmin"

zenity --question --text "Sending mail to Rahul Mutha"

zenity --question --text "You are FIRED"

zenity --question --text "Submit your resignation letter ASAP"






