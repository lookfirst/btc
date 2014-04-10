#!/bin/bash

useradd btc
usermod -G sudo -a btc
usermod -G plugdev -a btc
