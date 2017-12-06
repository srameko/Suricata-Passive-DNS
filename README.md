# Suricata-Passive-DNS
How to use Suricata (offline analysis, PCAP) as Passive DNS records producer

## How to setup Suricata as Passive DNS records
```bash
	cd /etc/suricata/
	cp pdns.yaml /etc/suricata/
	mkdir scripts
	cp pdns.lua scripts/
```
## Test
Don't forget to test your pdns config file `suricata -c <path-to-pdns.yaml> -T`

## Log path
Default log path is `/var/log/suricata/pdns.log`

Passive DNS log format: `TIMESTAMP TYPE RRNAME ADDR`
