#!/bin/bash -x

read -p "Enter Power of Two: " power;
result=1;
i=1;
while [[ $result -lt 256 && $i -le $power ]]
do
		result=$(($result*2));
		echo "2 ^ $i =$result"
		i=$(($i+1));
if [ $result -gt 256 ]
then
		echo "Limit Exceeds";
fi
done

