#!/bin/bash

echo "Enter users FIRST name"
read FNAME

echo "Enter LAST name"
read LNAME

echo "Enter the users INITIAL group"
read IGROUP

echo "Enter the users ADDITIONAL groups"
read AGROUP

# Now trim the output

DNFNAME=`echo $FNAME | tr [:upper:] [:lower:]`
DNLNAME=`echo $LNAME | tr [:upper:] [:lower:]`

LOWIGROUP=`echo $IGROUP | tr [:upper:[ [:lower:]`
LOWAGROUP=`echo $AGROUP | tr [:upper:] [:lower:]`

UFNAME=`echo $FNAME | tr [:lower:] [:upper:] | cut -c 1`
DFNAME=`echo $DNFNAME | cut -c 2-`

ULNAME=`echo $LNAME | tr [:lower:] [:upper:] | cut -c 1`
DLNAME=`echo $DNLNAME | cut -c 2-`

CFFNAME=`echo $UFNAME$DFNAME`
CFLNAME=`echo $ULNAME$DLNAME`

LOGIN=`echo $DNLNAME$DNFNAME`
useradd -c "$CFLNAME, $CFFNAME" -g $LOWIGROUP -G $LOWAGROUP $LOGIN
echo 123456 | passwd --stdin $LOGIN

# repeat script below

echo "Press (y) to add another user"
read YORN

CLEANYORN=`echo $YORN | cut -c 1 | tr [:upper:] [:lower:]`

if [ "CLEANYORN" = "y" ] ; then

./script1

fi
