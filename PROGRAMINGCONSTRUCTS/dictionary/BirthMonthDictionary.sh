#!/bin/bash -x

#DECLARING DICTIONARY
declare -A birthMonth

#VARIABLE
count=1;

#GENERATING BIRTH MONTH 
while [[ $count -le 50 ]]
do
	result=$(( (RANDOM%12)+1 ))
	birthMonth[$result]=$((${birthMonth[$result]}+1))
	count=$(($count+1))
done


#DISPLAYING INDIVIDUALS BIRTHDAY PER MONTH
for (( month=1; month<=12; month++ ))
do
	echo "In Month $month = ${birthMonth[$month]} Individuals Having Birthday "
done
