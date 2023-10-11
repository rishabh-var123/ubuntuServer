#!/bin/bash

echo "Welcome to interactive File & Directory !"

while true; 
do
	echo "Current files & directory in this path"
	ls -lh


	#read input
	read -p "Enter the input : " input

	#check if empty string
	if [ -z "$input" ];
	then 
		echo "GoodBye"
	break;
	fi

	#count number of character
	char_count = $(echo -n "$input" | wc -m)  
	echo "the number of character is : $char_count"
done

	



