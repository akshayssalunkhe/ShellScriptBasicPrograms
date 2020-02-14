#!/bin/bash -x

#VARIABLE
result=0;

#GENERATING RANDOM VALUES
result=$((RANDOM%2))

#CHECKING CONDITION
if [[ $result -eq 0 ]]
then
	echo "HEADS"
else
	echo "TAILS"
fi
