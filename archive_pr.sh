#!/bin/bash

#Variables

path=/home/risvarsh
Days=0
log=/home/risvarsh/pratice

#check if the directory present or not

if [ ! -d $path ]
then 
	echo "directory does not exist : $path"
	exit 1
fi

#Create archive folder if not present

if  [ ! -d $path/archive ]
then
	mkdir $path/archive
fi

#Find the files largest then 1KB

find "$log" -type f -mtime +$Days -exec mv {} "$path/archive" \;

echo "Log files older than ${Days} days have been archived."

