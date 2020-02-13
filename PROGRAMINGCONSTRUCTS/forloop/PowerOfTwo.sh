#!/bin/bash

#VARIABLE
sum=1;

#COMMAND LINE INPUT
power=$1;

#CALCULATING POWER OF TWO
if [ $power -eq 0 ]
then
	echo "2 ^ 0 = 1"
else
	for (( index=1; index<=$power; index++ ))
	do
		sum=$(( $sum * 2 ))
		echo "2 ^ $index = $sum"
	done
fi
