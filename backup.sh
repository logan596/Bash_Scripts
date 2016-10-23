#!/bin/bash

#This script is for taking a backup of Tickets_resolution files and delete files who older than 5 days.

date=`date +%d`
month=`date +%m`
year=`date +%Y`

mkdir /home/ygavhane/Documents/Tickets_Res/${date}_${month}_${year}

cp -r /home/ygavhane/Desktop/Data_xu/Ticket-Resolution-sheets/*  /home/ygavhane/Documents/Tickets_Res/${date}_${month}_${year}/

#find /home/ygavhane/Documents/Tickets_Res/ -mtime +5 -exec rm -rf {} \;
if [ ! -d /home/ygavhane/Documents/Tickets_Res/${date}_${month}_${year}/ ]; then
	
	#echo "Backup is not completed on ${date}_${month}_${year}"
	mail -s "Backup Failed on ${date}_${month}_${year}" ygavhane <<< "Please check the once the backup is not completed for sosme reason on ${date}_${month}_${year}"
else
	exit 0


fi

