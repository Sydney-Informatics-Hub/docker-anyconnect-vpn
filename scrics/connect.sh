#!/bin/bash
echo $ANYCONNECT_PASSWORD|openconnect $ANYCONNECT_SERVER --user=$ANYCONNECT_USER --protocol=anyconnect --no-dtls -b 

sleep 5

iptables -t nat -A POSTROUTING -o tun0 -j MASQUERADE
iptables -A FORWARD -i eth0 -j ACCEPT

route del -net 172.10.0.0 netmask 255.255.255.0  dev tun0

/bin/bash
