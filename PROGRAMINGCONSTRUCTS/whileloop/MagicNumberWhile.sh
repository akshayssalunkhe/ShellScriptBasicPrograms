#!/bin/bash -x

#VARIABLES
low=0;
high=100;
mid=0;
choice=0;
number=0;

#USER INPUT
read -p "Enter number between 1 to 100 : " number

#MAIN LOGIC
while [[ $low -lt $high ]]
do
	mid=$((($low+$high)/2))
	if [[ $mid -eq $number ]]
	then
		echo "Your Number Is $number"
	break;
	elif [[ $number -lt $mid ]]
	then
		echo "Your Number Is Less Than $mid Please Enter 0 "
		read -p " " choice ;
	elif [[ $number -gt $mid ]]
	then
		echo "Your Number Is Greater Than $mid Please Enter 1 "
		read -p " " choice ;
	fi
	case $choice in
			0) high=$mid
				;;
			1)low=$mid
				;;
			*)echo "WRONG INPUT"
	esac
done


