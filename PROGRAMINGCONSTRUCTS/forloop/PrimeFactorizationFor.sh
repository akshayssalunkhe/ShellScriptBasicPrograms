#!/bin/bash -x

#VARIABLE
number=0;

#INPUT FROM USER
read -p "Enter Number: " number

#CALCULATING PRIME FACTORS OF NUMBER
for (( index=2; index<=$number;  ))
do
	if [ $(($number%$index)) -eq 0 ]
	then
		echo $index
		number=$(($number/$index))
	else
		((index++))
	fi
done

