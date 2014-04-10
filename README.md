btc
===
1KUeUSKN31bPZHvFQ4G9MYRo3VBSsRKR3m - This took many hours of research. Donations appreciated.

This is intended as a minimal cgminer install on a raspberry pi. Minepeon is good and I borrowed a lot from that project, but I really don't want apache + php running and wasting memory/cpu time on my boxes. I also prefer the debian based system of wheezy.

1. Stick latest [Raspbian OS](http://www.raspberrypi.org/downloads/) on a 2gb+ card ([ApplePi-Baker](http://www.tweaking4all.com/hardware/raspberry-pi/macosx-apple-pi-baker/) is easiest)
2. Figure out IP by looking at your DHCP table in your router and SSH into the pi (pi/raspberry).
3. `sudo -s`
4. `cd /opt && git clone https://github.com/lookfirst/btc.git && cd btc`

First time, run the scripts in this order:

* apt.sh
* user.sh
* system.sh
* REBOOT
* compile.sh
* install.sh

Edit `conf/cgminer.conf` and specify your btc address and other settings, then reboot again. When things come back up again, cgminer should be running in a screen session under the `btc` user. You can attach to it by switching to that user `su - btc` and running `screen -x`.
