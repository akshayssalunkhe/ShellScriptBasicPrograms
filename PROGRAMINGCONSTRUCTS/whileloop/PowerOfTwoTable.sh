#!/bin/bash -x

#VARIABLES
result=1;
power=0;
index=1;
limit=256;

#USER INPUT
read -p "Enter Power of Two: " power;

#CALULATING POWER OF TWO
while [[ $result -lt $limit && $index -le $power ]]
do
	result=$(($result*2));
	echo "2 ^ $index =$result"
	index=$(($index+1));
	if [ $result -ge $limit ]
	then
		echo "Limit Exceeds";
	fi
done
