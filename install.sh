#!/bin/bash

cp etc/sysctl.d/* /etc/sysctl.d
cp boot/* /boot

cp etc/init.d/cgminer /etc/init.d
update-rc.d cgminer defaults
