#!/bin/bash

cd /opt
if [ ! -d "cgminer" ]; then
	git clone https://github.com/ckolivas/cgminer.git
else
	( cd cgminer && git pull origin master )
fi

cd cgminer && ./autogen.sh
CFLAGS="-O2 -Wall" ./configure --enable-hashfast && make install
cp 01-cgminer.rules /etc/udev/rules.d/
