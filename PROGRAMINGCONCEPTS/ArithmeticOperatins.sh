#!/bin/bash -x

read -p "enter value of a: " a
read -p "enter value of b: " b
read -p "enter value of c: " c

con=`echo "scale=2; ($a+ $b * $c )" | bc`
echo $con

echo "( a % b + c ) = " $z  $(( $a % $b + $c ))

tom=`echo "scale=2; ($c + $a / $b )" | bc`
echo $tom

echo  "( a * b + c ) = " $z  $(( $a * $b + $c ))
echo  "( a * b / c ) = " $z  $(( $a * $b / $c))

#z=$((RANDOM))
#echo $z
#x=$(( $z % 2 ))
#echo $x
