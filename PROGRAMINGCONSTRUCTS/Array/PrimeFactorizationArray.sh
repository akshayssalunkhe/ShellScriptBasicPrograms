#!/bin/bash -x

#INPUT FROM USER
read -p "Enter Number : " NUM

#VARIABLE
j=0;
for (( i=2; i<=$NUM;  ))
do
	if [ $(($NUM%$i)) -eq 0 ]
then
	a[j]=$i;
	j=$(($j+1));
	NUM=$(($NUM/$i))
else
	((i=$i+1))
fi
done

#DISPLAYING ARRAY OF PRIME FACTORS
echo "${a[@]}"
