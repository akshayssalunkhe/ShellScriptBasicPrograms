#!/bin/bash -x

#VARIABLE
temp=0;

#TO GENERATE ARRAY ELEMENTS
for (( index=0; index<=9; index++ ))
do
	randomNumber[index]=$((RANDOM%900+100));
done

#SORTING ARRAY
for (( index=0; index<9; index++ ))
do
	for (( count=0; count<9; count++ ))
	do
		if [[ randomNumber[count] -gt randomNumber[count+1] ]]
		then
		temp=${randomNumber[count]};
		randomNumber[count]=${randomNumber[count+1]};
		randomNumber[count+1]=$temp;
		fi
	done
done

echo "Second Smallest Element in Array is = ${randomNumber[1]}"
echo "Second largest element in Array is = ${randomNumber[8]}"
