#!/bin/bash

USER=root
NUMBER_OF_VM=3

# create the bridge
brctl addbr br0

# create the taps and insert them into the bridge

NB=1
while [ $NB -le $NUMBER_OF_VM ]
do
   tunctl -t tap$NB -u $USER
   ip link set up dev tap$NB
   brctl addif br0 tap$NB
   NB=`expr $NB + 1`
done

# set the IP address and routing
ip link set up dev br0
ip addr add 10.1.1.1/24 dev br0
ip route add 10.1.1.0/24 dev br0


INTIF="br0"
EXTIF="eth0"
EXTIFW="wlan0"

echo 1 > /proc/sys/net/ipv4/ip_forward

# clear existing iptable rules, set a default policy
iptables -P INPUT ACCEPT
iptables -F INPUT 
iptables -P OUTPUT ACCEPT
iptables -F OUTPUT 
iptables -P FORWARD DROP
iptables -F FORWARD 
iptables -t nat -F

# set forwarding and nat rules
iptables -A FORWARD -i $INTIF -o $INTIF -j ACCEPT
iptables -A FORWARD -i $EXTIF -o $INTIF -j ACCEPT
iptables -A FORWARD -i $INTIF -o $EXTIF -j ACCEPT
iptables -t nat -A POSTROUTING -o $EXTIF -j MASQUERADE

iptables -A FORWARD -i $EXTIFW -o $INTIF -j ACCEPT
iptables -A FORWARD -i $INTIF -o $EXTIFW -j ACCEPT
iptables -t nat -A POSTROUTING -o $EXTIFW -j MASQUERADE
