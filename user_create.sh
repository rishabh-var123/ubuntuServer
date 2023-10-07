#!/bin/bash

#Check the root access to user
if [ "$(whoami)" ==  "root" ];
then
	echo "The script will run with super user privileges"
else
	echo "The script have not super user privileges"
	exit 1
fi

#User should provide atleat one argument as username
if [[ "${#}" -lt 1 ]]
then
	echo "Usage :${0} USER_NAME [COMMENT]..."
	echo 'Create a user with name USER_NAME and comments field of COMMENT'
	exit 1
fi

# store 1st argument
USER_NAME="${1}"
echo $USER_NAME

#Incase more than argument
shift
COMMENT="${@}"
echo $COMMENT

#create a password
PASSWORD=$(date +%s%n)


# create a user
useradd -c "${COMMENT}" -m $USER_NAME

#check if user is successfully created or not
if [[ $? -ne 0 ]]
then 
	echo 'The account could not be created'
	exit 1
fi

#set the password
echo "${USER_NAME}:${PASSWORD}" |chpasswd

#check if user is successfully created or not
if [[ $? -ne 0 ]]
then
        echo 'The account could not be created'
        exit 1
fi

#Force password change on first login
passwd -e $USER_NAME

#Display the username ,password
echo "User is added $USER_NAME"
echo 
echo "Password is $PASSWORD"
echo
echo "$(hostname)"



