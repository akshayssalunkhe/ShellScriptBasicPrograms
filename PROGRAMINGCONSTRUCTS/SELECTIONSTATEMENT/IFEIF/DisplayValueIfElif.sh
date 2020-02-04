#!/bin/bash -x
read -p" enter Number: " n

if [ $n -eq 1 ]
then
   echo "ONE"
elif [ $n -eq 10 ]
then
    echo "TEN"
elif [ $n -eq 100 ]
then
    echo "HUNDRED"
elif [ $n -eq 1000 ]
then
    echo "THOUSAND"
elif [ $n -eq 10000 ]
then
    echo "TEN THOUSAND"
elif [ $n -eq 100000 ]
then
 	 echo "HUNDRED THOUSAND"
else
	 echo "WRONG INPUT"
fi

