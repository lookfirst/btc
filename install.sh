#!/bin/bash

cp etc/init.d/cgminer /etc/init.d
update-rc.d cgminer defaults

if [ -f "conf/cgminer.conf" ]; then
	echo "Not overwriting your cgminer.conf! Check the base file for relevant changes."
else
	cp conf/cgminer-base.conf conf/cgminer.conf
fi
