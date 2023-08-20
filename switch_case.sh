#!/bin/bash

echo "Provide an option"

echo "a. present current date"
echo "b. list of scripts"
echo "c. to check out current location"

read choice 

case $choice in
	a)date;;
	b)ls;;
	c)pwd;;
	*)echo "Please provide a valid input"
esac
