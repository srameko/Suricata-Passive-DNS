# Suricata-Passive-DNS
How to use Suricata (offline analysis, PCAP) as Passive DNS records producer

## How to setup Suricata as Passive DNS records
```bash
	wget https://github.com/srameko/Suricata-Passive-DNS/archive/master.zip
	cd /Suricata-Passive-DNS/
	cp pdns.yaml /etc/suricata/
	mkdir /etc/suricata/scripts
	cp pdns.lua /etc/suricata/scripts/
```
## Tested on
Suricata 3.2.4@CentOS 7.4.1708 (rpm package)

## Test
Don't forget to test your pdns config file `suricata -c <path-to-pdns.yaml> -T`

## Log path
Default log path is `/var/log/suricata/pdns.log`

Passive DNS log format: `TIMESTAMP TYPE RRNAME ADDR`

## Thanks
Thanks to Jason Ish and his Suricata Verification Tests Project (Lua Output DNS) which I used to edit and create this Project.
