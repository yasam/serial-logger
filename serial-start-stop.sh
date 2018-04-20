#!/bin/sh


logger "$0 started"

for d in /dev/ttyUSB*;
do
	./serial-logger/serial-logger.sh $d &
done

logger "$0 exited"
exit 0
