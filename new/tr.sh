#!/bin/sh
for i in `ls -1`; do
        file1=`echo $i | tr [A-Z] [a-z] `
        mv $i $file1 2>/dev/null
done
