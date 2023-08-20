#!/bin/bash

fu=$(df -H | grep "sda3" | awk '{print $5}' | tr -d %)

TO="rishabhanmol6@gmail.com"


if [[ $fu -ge 40 ]]
then 
	echo "Warning Disk space is low : $fu %" | mail -s "Disk Space Alert!" $TO
else
	echo "All good"
fi
