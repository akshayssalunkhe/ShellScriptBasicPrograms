#!/bin/bash -x

#VARIABLES
unitPlace=0;
tenthPlace=0;
j=0;

#GENERATING NUMBERS AND FINDING REPETATION
for(( index=1; index<=100; index++ ))
do
	unitPlace=$(($index % 10))
	tenthPlace=$(($index / 10))

	if [ $unitPlace -eq $tenthPlace ]
	then
		repeatedNumbers[j]=$index
		((j++))
	fi
done
