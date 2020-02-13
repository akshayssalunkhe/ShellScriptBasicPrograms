#!/bin/bash -x

#VARIABLES
number=0;
isprime=0;

#USER INPUT
read -p "Enter the Number: " number

#TO CHECK NUMBER IS PRIME OR NOT
for (( index=2; index<=$number/2; index++ ))
do
	if [ $(($number%$index)) -eq 0 ]
	then
		((isprime++));
		break;
	fi
done

if [ $isprime -eq 0 ]
then
	echo "Number Is Prime"
else
	echo "Number Is Not Prime"
fi
