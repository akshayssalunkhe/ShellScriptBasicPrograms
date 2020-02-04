#!/bin/bash 

var1=10
var2=10

if [ $var1 -ge $var2 ]
then
 	echo "$var1 is greater than or equal to $var2"
else
 	echo "$var2 is greater than $var1"
fi

