#!/bin/bash -x

#VARIABLES
day=0;
month=0;

#USER INPUT FOR DAY AND MONTH
read -p "Enter The Month Number" month
read -p "Enter Day Number" day

if [[ $month -ge 3 && $month -le 6 ]]
then
	if [[ $month -eq 3 && $day -ge 20 && $day -le 31 ]] ||
		[[ $month -eq 4 && $day -ge 1 && $day -le 30 ]] ||
		[[ $month -eq 5 && $day -ge 1 && $day -le 31 ]] ||
		[[ $month -eq 6 && $month -ge 1 && $day -le 20 ]] 
	then
		echo "TRUE"
	else
		echo "FALSE"
	fi
else
	echo "FALSE"
fi
