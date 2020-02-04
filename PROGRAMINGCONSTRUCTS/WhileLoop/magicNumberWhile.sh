#!/bin/bash -x

#VARIABLES
low=0;
high=100;
mid=0;

#USER INPUT
read -p "Enter number between 1 to 100 : " n

#MAIN LOGIC
while [[ $low -lt $high ]]
do
	mid=$((($low+$high)/2))
	if [[ $mid -eq $n ]]
	then
		echo "$n"
	elif [[ $n -lt $mid ]]
		then
			echo "Enter 0" c;
	elif [[ $n -gt $mid ]]
		then
		echo"Enter 1" c;

	fi 
		
		case $c in
			0) high=$mid
				;;
			1)low=$mid
				;;
		esac

done
echo "$mid"

