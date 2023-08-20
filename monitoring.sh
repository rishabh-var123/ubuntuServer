#!/bin/bash
#Monitoring free ram disk space

Free=$(free -mt | grep "Total" | awk '{print $4}')
TH=800

if [[ $Free -lt $TH ]]
then 
	echo "Warning"
else
	echo "Ram is sufficent  $Free"
fi

