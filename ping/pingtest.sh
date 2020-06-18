#!/bin/bash

# variables
## $1 is the ip address of the computer to ping, if this is not present then the IP address is deaulted as the local machine
IP="0.0.0.0"
if [ "$#" == 1 ]
then
	IP=$1
fi


# this is the ping command to test for packet loss over 10 packets
ping $IP -c 10


