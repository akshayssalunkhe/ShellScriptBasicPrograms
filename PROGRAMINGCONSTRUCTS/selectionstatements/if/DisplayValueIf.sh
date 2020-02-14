#!/bin/bash -x

#VARIABLE
value=0

#INPUT FROM USER
read -p "Enter The Value: " value

#CHECKING FOR CONDITION
if [ $value -eq 1 ]
then
	echo "ONE"
fi

if [ $value -eq 10 ]
then
	echo "TEN"
fi

if [ $value -eq 100 ]
then
	echo "HUNDRED"
fi

if [ $value -eq 1000 ]
then
	echo "THOUSAND"
fi

if [ $value -eq 10000 ]
then
	echo "TEN THOUSAND"
fi

if [ $value -eq 100000 ]
then
	echo "HUNDRED THOUSAND"
fi

if [ $value -ne 1  -a  $value -ne 10 -a  $value -ne 100  -a  $value -ne 1000  -a  $value -ne 10000  -a  $value -ne 100000 ]
then
	echo "WRONG INPUT"
fi
