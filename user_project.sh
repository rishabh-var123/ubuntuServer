#!/bin/bash

echo "Welcome to the User Management Project created by - Rishabh Varshney"

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
	
		



done
