#!/bin/bash -x

#USER INPUT
read -p "Enter a Number : " num

#function to check whether number is prime or not:
function isPrime() {
isprime=1;
for (( i=2; i<=$num/2; i++ ))
do
if [ $(($num%$i)) -eq 0 ]
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
		echo "$(isPalindrome $num)" #calling isPalindrome function to check whether prime number is palindrome or not. 
fi
}

#function to check whether number is palindrome or not:
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

result= echo "$( isPrime $num )";
result= echo "$( isPrime $revNum )";
