#!/bin/bash -x
count=1;
flip=$(( RANDOM%2 ));
if [ $count -eq $flip ]
then
	echo "Head"
else
	echo "TAIL"
fi
