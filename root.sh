#!/bin/bash

ROOT_UID=0

if [ $UID -ne $ROOT_UID ];then
	echo "You must have root to run this script"

else echo "Hello root"

fi

echo Hello ; echo There?
