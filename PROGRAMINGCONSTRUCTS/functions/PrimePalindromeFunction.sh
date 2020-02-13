#!/bin/bash -x

#VARIABLES
isprime=0;
number=0;
result=0;
revNumber=0;
temp=0;
originalNumber=0;
reverse=0;

#USER INPUT
read -p "Enter a Number : " number

#FUNCTION TO CHECK NUMBER IS PRIME OR NOT
function isPrime() {
	isprime=1;
	for (( index=2; index<=$number/2; index++ ))
	do
		if [ $(($number%$index)) -eq 0 ]
		then
			isprime=$(($isprime-1));
		break;
		fi
	done

	if [ $isprime -eq 0 ]
	then
		echo "Not Prime Number "
	else
		echo "prime Number"
		echo "$(isPalindrome $num)" #CALLING PALINDROME FUNCTION
	fi
}

#FUNCTION TO CHECK NUMBER IS PALINDROME OR NOT
function isPalindrome(){
	originalNumber=$number;
	revNumber=0;
	while [[ $number -ne 0 ]]
	do
		reverse=$(($number%10));
		revNumber=$((revNumber*10+$reverse));
		number=$(($number/10));
	done
	if [ $originalNumber -eq $revNumber ]
	then
		echo "Number is Palindrom "
	else
		echo "Number is Not Palindrom"
	fi
}

result= echo "$( isPrime $number )";
result= echo "$( isPrime $revNumber )";
