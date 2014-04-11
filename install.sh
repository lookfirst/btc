#!/bin/bash

cp etc/init.d/cgminer /etc/init.d
update-rc.d cgminer defaults

cp conf/cgminer-base.conf conf/cgminer.conf
