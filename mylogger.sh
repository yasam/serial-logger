#!/bin/sh


logger "$0 started for $1"
DEV=$1

USB_PATH=`pwd`

SNAME=`basename $DEV`
HNAME=`hostname`
DT=`date +%Y%m%d_%H%M%S`

mkdir -p $USB_PATH/$HNAME
LPATH=$USB_PATH/$HNAME
logger "Logging to USB: $LPATH"


mkdir -p $LPATH/$SNAME
mkdir -p $LPATH/$SNAME/$DT

FDIR=$LPATH/$SNAME/$DT


while read line;
do
	DHR=`date +%F_%H`
	dt=`date +%F_%T`

	FNAME=$FDIR/$DHR.log
	echo [$dt]:$line >> $FNAME

done

