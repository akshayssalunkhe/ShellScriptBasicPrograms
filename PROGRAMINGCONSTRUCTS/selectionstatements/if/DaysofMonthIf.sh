#!/bin/bash -x

#USER INPUT FOR DAY AND MOUNTH
read -p "enter the month" m
read -p "enter day " d

if [[ $m -ge 3 && $m -le 6 ]]
then
	if [[ $m -eq 3 && $d -ge 20 && $d -le 31 ]] ||
       [[ $m -eq 4 && $d -ge 1 && $d -le 30 ]] ||
	   [[ $m -eq 5 && $d -ge 1 && $d -le 31 ]] ||
	   [[ $m -eq 6 && $m -ge 1 && $d -le 20 ]] 
		then
		echo "TRUE"
		else
		echo "FALSE"
    fi
else
	echo "FALSE"
fi
