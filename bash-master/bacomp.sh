#!/bin/bash
file=$1
if [ $file != ${file%.*} ]; then
    cp $file ${file%.*}
fi
file=${file%.*}
chmod u+x $file
sudo mv $file /usr/local/bin/
