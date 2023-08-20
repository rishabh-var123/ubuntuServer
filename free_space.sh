#!/bin/bash

Free_space=$(free -mt | grep "Total" | awk '{print $4}')
TH=5000

if [[ $Free_space -lt $TH ]]
then
	echo "Warning , Ram is running low"
else
	echo "Ram space is sufficent - $Free_space M"
fi
