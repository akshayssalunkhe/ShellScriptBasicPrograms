#!/bin/bash -x

#VARIABLES
year=0;
start=999;
end=10000;

#INPUT FROM USER
read -p "Enter Four Digit Number: " year;

if [[ $year -gt $start && $year -lt $end ]]
	then
 		if [[ $(($year%4)) -eq 0 ]] && [[ $(($year%100)) -ne 0 ]] || [[ $(($year%400)) -eq 0 ]]
		then
			echo "Year Is Leap Year"
		else
			echo "Not a Leap Year"
		fi
else
	echo "Enter The Right Value"
fi
