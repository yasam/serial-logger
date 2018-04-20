#!/bin/sh


#DATE=`date '+%Y-%m-%d_%H:%M:%S'`
#SERIAL_INT=`echo $1 | cut -d '/' -f 3`

logger "$0 started for $1"

#stty -F $1 115200

#cat $1 >serial_${SERIAL_INT}_$DATE.log

stty -F $1 115200 -brkint -icrnl -imaxbel -opost -isig -icanon -iexten -echo -echoe -echok

#cat $1 | ../serial-usb/mylogger.sh

logger "$0: starting : cat $1  | ./serial-usb/mylogger.sh  $1"

cat $1 | ./serial-logger/mylogger.sh  $1


logger "$0: exited for $1"

