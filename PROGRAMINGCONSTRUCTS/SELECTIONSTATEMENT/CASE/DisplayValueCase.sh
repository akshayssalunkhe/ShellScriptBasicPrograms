#!/bin/bash

#USER INPUT
read -p "Enter the value: " Value

case $Value in
	1) echo "One"
		;;
	10) echo "Ten"
		;;
	100) echo "Hundred"
		;;
	1000) echo "Thousand"
		;;
	10000) echo "Ten Thousand"
		;;
	100000) echo "Hundred Thousand"
		;;
	*)
		echo "Wrong Input"
		;;
esac

