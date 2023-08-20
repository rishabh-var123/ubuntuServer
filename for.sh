#!/bin/bash

file="/home/risvarsh/shell_script/names.txt"

for name in $(cat $file)
do
	echo "Name is $name"
done


###############################

array=(26 27 28 29 23)

length=${#array[*]}
for(( i=0;i<$length;i++))
do
	echo "${array[i]}"
done
