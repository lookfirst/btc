#!/bin/bash

cd /opt
if [ ! -d "cgminer" ]; then
	git clone https://github.com/ckolivas/cgminer.git
else
	git pull origin master
fi

CFLAGS="-O2 -Wall" ./configure --enable-hashfast && make install
sudo cp 01-cgminer.rules /etc/udev/rules.d/
