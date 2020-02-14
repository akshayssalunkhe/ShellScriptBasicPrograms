#!/bin/bash -x

#VARIABLE
number=0;

#USER INPUT
read -p" Enter Number: " number

#CHECKING FOR CONDITION
if [ $number -eq 1 ]
then
	echo "ONE"
elif [ $number -eq 10 ]
then
	echo "TEN"
elif [ $number -eq 100 ]
then
	echo "HUNDRED"
elif [ $number -eq 1000 ]
then
	echo "THOUSAND"
elif [ $number -eq 10000 ]
then
	echo "TEN THOUSAND"
elif [ $number -eq 100000 ]
then
	echo "HUNDRED THOUSAND"
else
	echo "WRONG INPUT"
fi

