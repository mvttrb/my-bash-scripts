# By: Ubermensch
# A simple script to scan a local network.

#!/bin/bash

if [ "$1" == "" ]
then
echo "Usage: ./ping.sh 192.168.2"

else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi
