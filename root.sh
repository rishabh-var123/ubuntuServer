#!/bin/bash

#checking is the user is root

if [[ $UID -eq 0 ]]
then 
	echo "User is root"
else
	echo "User is not root"
fi
