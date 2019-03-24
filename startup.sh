#!/bin/bash
apt-get update
apt-get install squid -y
sed -i '1s;^;http_access allow all\n;' /etc/squid/squid.conf
systemctl restart squid
