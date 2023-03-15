#/bin/bash

#Simple Script to extract v4 IPs from any file
#This script use awk command
#author @offensivekernel

echo "Please provide the Log Filename containing the IPs"
read FILEIPS
cat $FILEIPS | awk '{while ( match($0,/([0-9]+\.){3}[0-9]+/) ) { print substr($0,RSTART,RLENGTH); $0=substr($0,RSTART+RLENGTH) } }' | uniq -u > output.xtrator
echo `cat output.xtrator`

