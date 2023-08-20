#!/bin/bash


echo "username  $1"
shift
echo "description $@"


<<comment
for i in $@
do
	echo "names:  $i"
done

comment


