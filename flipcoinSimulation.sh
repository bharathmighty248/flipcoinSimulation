#!/bin/bash -x

Heads=0
Tails=0
read -p "Enter simulation num : " n
simulation=0

while [ $simulation != $n ]
do
	coinFlip=$((RANDOM%2))
	case $coinFlip in
	1)
		Heads=$(($Heads + 1))
	;;
	0)
		Tails=$(($Tails + 1))
	;;
	esac
	((simulation++))
done

echo Heads won : $Heads times
echo Tails won : $Tails times

