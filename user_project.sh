#!/bin/bash

echo "Welcome to the User Management Project created by - Rishabh Varshney"
#to create a user
function create_user {
read -p "Enter the user name :- " user
	if id "$user" &>/dev/null;then
		echo "Error: The username "$user" is already present.Please enter the differnt user."
	else
       		read -p "Enter the password for user:- " password
		useradd -m -p "$password" "$user"
		echo "Useradd Successfully"
	fi
}

#to delete a user
function delete_user {
read -p "Enter the user for delete :" username
if id "$username" &>/dev/null;then
	userdel -r "$username"
	echo "Username "$username" is deleted successfully"
else
	echo "Error: Username "$username" is not present"
fi
}

#to reset password of a user
function reset_user {
read -p "Enter the user for reset the password :" username
if id "$username" &>/dev/null;then
	read -p "Enter the new password for user" pass
	echo "$username:$pass" | chpasswd
        echo "Username "$username" password is change successfully"
else
        echo "Error: Username "$username" is not present"
fi
}

#to list a user
function list_user {
echo "User accounts on the system "
cut -d: f1 /etc/passwd 
}

#to display user option
function display_usage {
	echo "Usage : $0 [Options]"
	echo "[Option]: -"
	echo "-c or --create  Create a new user account"
        echo "-d or --delete  Delete a user account"
        echo "-r or --reset   Reset the password for user account"
        echo "-l or --list    List all the  user account"
        echo "-h or --help  Display the help and exit"
}

#check if no argument provide or --help option
if [ $# -eq 0 ] || [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
	display_usage
fi

#for command line arguents
while [ $# -gt 0 ];do

	case "$1" in
		-c | --create)
			create_user
			;;
		-d | --delete)
			delete_user
			;;
		-r | --reset)
			reset_user
			;;
		-l | --list)
			list_user
			;;
		*)
			echo "Invalid option :'$1' .Use '--help' to see available option."
			exit 1
			;;
	esac
	shift
done
	
		




