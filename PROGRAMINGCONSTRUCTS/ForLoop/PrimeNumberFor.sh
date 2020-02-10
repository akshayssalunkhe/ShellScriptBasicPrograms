#!/bin/bash -x

#USER INPUT
read -p "Enter the Number: " NUM

#VARIABLE
isprime=1;

#TO CHECK NUMBER IS PRIME OR NOT
for (( i=2; i<=$NUM/2; i++ ))
do
	if [ $(($NUM%$i)) -eq 0 ]
	then
		isprime=$(($isprime-1));
		break;
	fi
done

if [ $isprime -eq 0 ]
then
	echo "Not a Prime Number "
else
	echo "Prime Number "
fi 
