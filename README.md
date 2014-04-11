btc
===
1KUeUSKN31bPZHvFQ4G9MYRo3VBSsRKR3m - This took many hours of research. Donations appreciated.

This is intended as a super minimal [cgminer](https://github.com/ckolivas/cgminer) install on a raspberry pi. Minepeon is good and I borrowed a lot from that project, but I really don't want apache + php running and wasting memory/cpu time on my pi's. I also prefer running debian based systems.

Another complaint I have of Minepeon is that it has a binary version of cgminer. I'm sure the guy building it is trustworthy, but in the world of btc, you really shouldn't trust anyone. So, no binaries are packaged with this repository, it is just scripts and configuration for setting up the OS and cgminer. The idea is that you use these instructions to build your own image that you trust fully and then you can replicate that image however you like.

1. Stick latest [Raspbian OS](http://www.raspberrypi.org/downloads/) on a 2gb+ card ([ApplePi-Baker](http://www.tweaking4all.com/hardware/raspberry-pi/macosx-apple-pi-baker/) is easiest)
2. Figure out IP by looking at your DHCP table in your router and SSH into the pi (pi/raspberry).
3. `sudo -s`
4. `cd /opt && git clone https://github.com/lookfirst/btc.git && cd btc`

First time, run the scripts in the order below. All of the scripts are idempotent. Edit `compile.sh` to set your miner for cgminer.

1. `apt.sh`
2. `user.sh`
3. `system.sh`
4. REBOOT
5. `compile.sh`
6. `install.sh`

Edit `conf/cgminer.conf` and specify your btc address and other settings, then reboot again. When things come back up again, cgminer should be running in a screen session under the `btc` user. You can attach to it by logging in as that user and running `screen -x`. To get back to the console from the screen session: `CTRL-A D`
