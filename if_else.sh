#!/bin/bash

read -p "Your marks" marks

if [ $marks -gt 80 ]
then 
	echo "Pass"
else
	echo "fail"
fi
