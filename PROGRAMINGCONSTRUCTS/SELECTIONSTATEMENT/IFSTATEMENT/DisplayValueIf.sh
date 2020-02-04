#!/bin/bash -x
read -p "Enter the Value: " V

if [ $V -eq 1 ]
then
		echo "ONE"
fi

if [ $V -eq 10 ]
then
      echo "TEN"
fi

if [ $V -eq 100 ]
then
      echo "HUNDRED"
fi

if [ $V -eq 1000 ]
then
      echo "THOUSAND"
fi

if [ $V -eq 10000 ]
then
      echo "TEN THOUSAND"
fi

if [ $V -eq 100000 ]
then
      echo "HUNDRED THOUSAND"
fi

if [ $V -ne 1  -a  $V -ne 10 -a  $V -ne 100  -a  $V -ne 1000  -a  $V -ne 10000  -a  $V -ne 100000 ]
then
      echo "WRONG INPUT"
fi

