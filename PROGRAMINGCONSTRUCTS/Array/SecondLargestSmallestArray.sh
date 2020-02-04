#!/bin/bash -x

counter=0;
for((i=0;i<=9;i++))
do
	a[i]=$((RANDOM%900+100))
done

echo ${a[@]}

min=0;
max=0;
#secmin=0;
secmax=0;

for (( i=0; i<=9; i++ ))
do
	if [[ a[i] -gt $max ]]
	then
			secmax=$max;
			max=${a[i]};
	elif [[ a[i] -gt $secmax  &&  a[i] -lt $max ]]
		then
			secmax=${a[i]};
	fi
done
echo " $secmax ";
