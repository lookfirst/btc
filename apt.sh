#!/bin/bash

aptitude purge -y wolfram-engine python3-pifacedigital-scratch-handler omxplayer pulseaudio
aptitude update -y
aptitude safe-upgrade -y
aptitude install -y screen htop build-essential autoconf automake libtool pkg-config libcurl3-dev libudev-dev libcurl4-openssl-dev libncurses5-dev

update-rc.d -f triggerhappy remove

rpi-update
