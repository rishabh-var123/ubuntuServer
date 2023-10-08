#!/bin/bash

function display_usage {
	echo "Usage: $0 /path_to_search"
}
#check the directory is present or not
if [ $# -eq 0 ] || [ ! -d "$1" ];
then 
	echo "The directory is not present"
	display_usage
	exit 1
fi
#variable
source_path="$1"

#create a timestamp for backup folder
timestamp=$(date +%Y%m%d_%H%M)
echo "$timestamp"

#Define a backup directory with current timstamp folder
backup_dir="backup_${timestamp}"

#create a directory 
mkdir -p /home/risvarsh/backup_dir/$backup_dir

#copy the file from source location
cp -ru $source_path /home/risvarsh/backup_dir/$backup_dir

#function to perform rotation and keep only last 3 backup folder
function rotation {
	local list=($(ls -d /home/risvarsh/backup_dir/backup_* 2>/dev/null))
	#echo "Before script dir : ${#list[@]}"
	#check if more than 3 then remove then 
	if [ "${#list[@]}" -gt 3 ];
       	then
		local remove_dir= ("${list[@]:3}")
		rm -rf "{$remove_dir[@]}"	
	fi		
	
}

rotation


