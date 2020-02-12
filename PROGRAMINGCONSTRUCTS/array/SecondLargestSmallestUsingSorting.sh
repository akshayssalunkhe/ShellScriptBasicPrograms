#!/bin/bash -x

#TO GENERATE ARRAY ELEMENTS
for (( i=0; i<=9; i++ ))
do
	a[i]=$((RANDOM%900+100));
done

#DISPLAYING ARRAY ELEMENTS
echo "${a[@]}"

#SORTING ARRAY
temp=0;
for (( i=0;i<9;i++ ))
do
	for (( j=0; j<9; j++ ))
	do
		if [[ a[j] -gt a[j+1] ]]
		then
			temp=${a[j]};
			a[j]=${a[j+1]};
			a[j+1]=$temp;
		fi
	done
done

echo "${a[@]}"
echo "Second Smallest Element in Array is = ${a[1]}"
echo "Second largest element in Array is = ${a[8]}"
