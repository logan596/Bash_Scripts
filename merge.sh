#!/bin/sh
length=`wc -l $1 | awk '{print $1}'`
count=1
[ -f $3 ] && echo "Optionally removing $3" && rm -i $3
while [ "$count" -le "$length" ] ; do
      a=`head -$count $1 | tail -1`
      b=`head -$count $2 | tail -1`
      echo "$a      $b" >> $3
      count=`expr $count + 1`
done
