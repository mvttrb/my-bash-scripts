#!/bin/bash
#By: Ubermensch

if [ "$1" == "" ]
	then
	"Usage: ./arp-scan.sh 192.168.1.0/24"

printf "Scanning network... \n\n"

sudo arp-scan --localnet $1

printf "Done.\n"
fi
