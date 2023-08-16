#!/bin/bash
read -p "IP Kharej:" EXTERNAL_IP
iptables -t nat -F
sysctl net.ipv4.ip_forward=1
iptables -t nat -A PREROUTING -p tcp --dport 22 -j DNAT --to-destination $(ip addr show | grep -oE 'inet ([0-9]{1,3}\.){3}[0-9]{1,3}' | awk 'NR==2{print $2}')
iptables -t nat -A PREROUTING -j DNAT --to-destination "$EXTERNAL_IP"
iptables -t nat -A POSTROUTING -j MASQUERADE
iptables -t nat -L
echo "Tunnel runned"
