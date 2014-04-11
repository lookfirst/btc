#!/bin/bash

useradd btc
echo "Enter a password for the btc user..."
passwd btc
usermod -G sudo -a btc
usermod -G plugdev -a btc
