#!/bin/bash

myvar="hi I am rishabh"
myvarlen=${#myvar}
echo "$myvarlen"

echo "Upper case is ${myvar^^}"
echo "lower case is ${myvar,,}"
# to replace a string 

newvar=${myvar/rishabh/anmol}
echo "New var is $newvar"


#slice
echo"$newvar:3:5"
