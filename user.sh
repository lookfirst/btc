#!/bin/bash

useradd btc
passwd btc
usermod -G sudo -a btc
usermod -G plugdev -a btc
