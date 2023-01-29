#!/bin/bash

read -p "enter the number : " num

function isprime()
{

for (( i=2; i<=$num/2; i++ ))
do
	if [ $((num%i)) -eq 0 ]
	then
		echo "$num is not prime"
		exit
	fi
done
	echo "$num is prime"
}

function ispalindrome()
{
	number=$num
	rev=0
		while [ $num -gt 0 ]
		do
			rem=$(( $num % 10 ))
        		rev=$(( $rev*10 +$rem ))
        		num=$(( $num / 10 ))
		done
			echo $rev
		if [ "$number" = "$rev" ]
		then
			echo "number is palindrome"
		else
			echo "number is not palindrome"
		fi
}

function isalsoprime()
{

for (( i=2; i<=rev/2 ; i++ ))
do
	if [ $(( rev % i )) -eq 0 ]
	then
		echo "$num is not a prime"
		exit
	fi
done
	echo "$rev is a prime number"
}

prime=$(isprime)
	echo $prime
palindrome=$(ispalindrome)
	echo $palindrome
isalsoprime=$(isalsoprime)
	echo $isalsoprime
