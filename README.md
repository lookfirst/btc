btc
===
This is intended as a minimal cgminer install on a raspberry pi. Minepeon is good and I borrowed a lot from that project, but I really don't want apache + php running and wasting memory/cpu time on my boxes. I also prefer the debian based system of wheezy.

1. Stick latest raspberry pi wheezy os on a 2mb+ card (ApplePi-Baker is easiest)
2. Figure out IP and SSH into the pi (pi/raspberry).
3. `sudo -s`
4. `cd /opt && git clone https://github.com/lookfirst/btc.git && cd btc`

First time, run the scripts in this order:

* apt.sh
* user.sh
* system.sh
* REBOOT
* compile.sh
* install.sh

Edit `conf/cgminer.conf` and specify your btc address and other settings
