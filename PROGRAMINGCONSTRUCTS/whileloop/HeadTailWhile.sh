#!/bin/bash -x

#VARIABLES
countHead=0;
countTail=0;
limit=11;
result=0;

#LOOP TO CHECK CONDITION
while [[ $countHead -lt $limit && $countTail -lt $limit ]]
do
	result=$((RANDOM%2));
	if [[ $result -eq 0 ]]
	then
		countHead=$(($countHead+1));
		echo "Head $countHead";
	else
		countTail=$(($countTail+1));
		echo "Tail $countTail";
	fi
done
