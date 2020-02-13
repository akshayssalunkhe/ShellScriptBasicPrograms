#!/bin/bash -x

#VARIABLES
start=0;
end=0;
isprime=0;

#USER INPUT
read -p "Enter the Starting Number: " start
if [ $start -eq 1 ]
then
	start=$(( $start+1 ))
fi
read -p "Enter the Ending Number: " end

#CALCULATING PRIME NUMBERS BETWEEN RANGE
for (( index=$start; index<=$end; index++ ))
do
	isprime=1
	for (( j=2; j<=$(($index/j)); j++ ))
	do
		if [ $(($index%j)) -eq 0 ]
		then
			isprime=$(($isprime-1))
		break;
		fi
	done

	if [ $isprime -eq 1 ]
	then
		echo "$index";
	fi
done

