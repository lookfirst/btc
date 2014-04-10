#!/bin/bash
sleep 5

while [ 1 ]; do
	echo "starting screen/cgminer"
	sleep 2
	/usr/bin/screen -dmS cgminer /opt/cgminer/cgminer -c /opt/btc/conf/cgminer.conf
	CHILD="$!"
	trap "kill $CHILD; exit" exit INT TERM
	wait
done
