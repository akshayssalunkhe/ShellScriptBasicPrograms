#!/bin/bash -x

#VARIABLEs
number=0;
j=0;

#INPUT FROM USER
read -p "Enter Number : " number

#FINDING PRIME FACTORES AND STORING IN ARRAY
for (( index=2; index<=$number;  ))
do
	if [ $(($number%$index)) -eq 0 ]
	then
		primefactors[j]=$index
		((j++))
		number=$(($number/$index))
	else
		((index++))
	fi
done

#DISPLYING PRIME FACTORS ARRAY
echo "Prime Factors Are:"${primefactors[@]}
