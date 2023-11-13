#!/bin/bash

#check if the user provided the log file path as a command-line 
if [ "$#" -ne 1 ]; then
	echo "Usage: $0 <path of log>"
	exit 1
fi
#get the log file path from the command 
log_path="$1"
# check if the file exists
if [ ! -f "$log_path" ]; then
	echo "Error log file not found: $log_path"
	exit 1
fi
echo "log path $log_path"
#step 1: count the total number of lines in the log file
total_count= $(wc -l < "$log_path")


# step 2: count the number of error message 

# step 3: search for critical events


# step 4: Identity the top 5 most common error message



# sort the error message by occurence count


# step 5: generate the summary report in a seperate file:
