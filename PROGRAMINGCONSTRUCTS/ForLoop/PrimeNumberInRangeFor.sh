#!/bin/bash -x

#USER INPUT 
read -p "Enter the Starting Number: " S
if [ $S -eq 1 ]
then
		S=$(( $S+1 ))
fi
read -p "Enter the Ending Number: " E

#CALCULATING PRIME NUMBERS BETWEEN RANGE
for (( i=$S; i<=$E; i++ ))
do
	isprime=1

	for (( j=2; j<=$(($i/j)); j++ ))
	do
	if [ $(($i%j)) -eq 0 ]
	then
		isprime=$(($isprime-1))
	break;
	fi
	done

if [ $isprime -eq 1 ]
then
	echo "$i";
fi
done

