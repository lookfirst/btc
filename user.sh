#!/bin/bash

adduser btc
usermod -G sudo -a btc
usermod -G plugdev -a btc
