#!/bin/bash -x

#VARIABLES
number=0;
revnumber=0;
reverse=0;
originalNumber=0;

#FUNCTIN TO CHECK WETHERE NUMBER IS PALINDROM OR NOT
function isPalindrome(){
	originalNumber=$number;
	while [[ $number -ne 0 ]]
	do
		reverse=$(($number%10));
		revnumber=$((revnumber*10+$reverse));
		number=$(($number/10));
	done
	if [[ $originalNumber -eq $revnumber ]]
	then
		echo "number is Palindrom "
	else
		echo "number is Not Palindrom"
	fi
}

read -p "Enter a number : " number
result= echo "$( isPalindrome $(number) )"
