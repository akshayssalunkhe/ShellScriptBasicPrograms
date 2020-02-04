#!/bin/bash -x
a=$(( RANDOM%900+100 ));
b=$(( RANDOM%900+100 ));
c=$(( RANDOM%900+100 ));
d=$(( RANDOM%900+100 ));
e=$(( RANDOM%900+100 ));


if [ $a -gt $b  -a  $a -gt $c  -a  $a -gt $d  -a  $a -gt $e ]
then
	echo "$a is greater ";
elif
[ $b -gt $a  -a  $b -gt $c -a  $b -gt $d -a  $b -gt $e ]
then
	echo "$b is greater ";

elif
[ $c -gt $d -a  $c -gt $e ]
then
	echo "$c is greater ";

elif
[ $d -gt $e ]
then
	echo "$d is greater ";

else
	echo "$e is greater ";
fi

if [ $a -lt $b -a   $a -lt $c -a  $a -lt $d -a  $a -lt $e ]
then
        echo "$a is Mini ";
elif
[ $b -lt $c -a  $b -lt $d -a  $b -lt $e ]
then
        echo "$b is min ";

elif
[ $c -lt $d -a  $c -lt $e ]
then
        echo "$c is min ";

elif
[ $d -ls  $e ]
then
        echo "$d is min ";
else
	echo "$e  is min ";

fi
