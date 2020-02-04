#!/bin/bash -x

#FUNCTIN TO CHECK WETHERE NUMBER IS PALINDROM OR NOT
function isPalindrome(){
	temp=$num;
	revNum=0;
	while [[ $num -ne 0 ]]
	do
		rev=$(($num%10));
		revNum=$((revNum*10+$rev));
		num=$(($num/10));
  done
	if [[ $temp -eq $revNum ]]
	then
		echo "Number is Palindrom "
	else
		echo "Number is Not Palindrom"
	fi 
}

read -p "Enter a Number : " num

result= echo "$( isPalindrome $(num) )"
