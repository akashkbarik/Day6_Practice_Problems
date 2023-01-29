#!/bin/bash

i=1;
while [ $i -lt 12 ]
do
	flip=$(($(($RANDOM%10))%2))
if [ $flip -eq 1 ]
then 
echo "head"
else
echo "tails"
fi

let i++
done
