#!/bin/bash -x

#VARIABLE
number=0;

#USER INPUT
read -p "Enter The Number" number

if [ $number -eq 1 ]
then
	echo "SUNDAY"
elif [ $number -eq 2 ]
then
	echo "MONDAY"
elif [ $number -eq 3 ]
then
	echo "TUESDAY"
elif [ $number -eq 4 ]
then
	echo "WEDNESDAY"
elif [ $number -eq 5 ]
then
	echo "THURSDAY"
elif [ $number -eq 6 ]
then
	echo "FRIDAY"
elif [ $number -eq 7 ]
then
	echo "SATURDAY"
else
	echo "WRONG INPUT"
fi

