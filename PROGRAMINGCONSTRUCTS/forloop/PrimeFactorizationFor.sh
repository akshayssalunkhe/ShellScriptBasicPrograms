#!/bin/bash -x

#INPUT FROM USER
read -p "Enter Number : " NUM

for (( i=2; i<=$NUM;  ))
do
	if [ $(($NUM%$i)) -eq 0 ]
then
		echo "$i"
		NUM=$(($NUM/$i))
else
		((i=$i+1))
fi
done

