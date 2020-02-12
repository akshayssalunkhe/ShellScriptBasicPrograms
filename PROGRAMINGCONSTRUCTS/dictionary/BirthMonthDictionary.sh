#!/bin/bash -x

declare -A BirthMonth
#VARIABLE
count=1

#GENERATING BIRTH MONTH 
while [[ $count -le 50 ]]
do
result=$(( (RANDOM%12)+1 ))
BirthMonth[$result]=$((${BirthMonth[$result]}+1))
count=$(($count+1))
done

#DISPLAYING COUNT OF BIRTHDAY PER MONTHS
echo "${BirthMonth[@]}"

#DISPLAYING MONTHS
echo "${!BirthMonth[@]}"

#DISPLAYING INDIVIDUALS BIRTHDAY PER MONTH
for (( i=1; i<=12; i++ ))
do
	echo "In Month $i = ${BirthMonth[$i]} Individuals Having Birthday "
done
