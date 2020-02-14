#!/bin/bash -x

read -p"Enter four Digit Number " year;
check=999;
#zero=0;
if [ $year -gt $check ]
	then
 		if [[ $(($year%4)) -eq 0 ]] && [[ $(($year%100)) -ne 0 ]] || [[ $(($year%400)) -eq 0 ]]

		then
			echo "year is leap year"
		else
			echo "not a leap year"
   	fi
else
	echo "enter right value"
fi 
