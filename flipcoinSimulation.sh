#!/bin/bash -x

Heads=0
Tails=0

while [[ ($Heads != 21) && ($Tails != 21) ]]
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
done

if [ $Heads -eq $Tails ]
then
	echo both are tie
elif [ $Heads -gt $Tails ]
then
	diff=$(($Heads - $Tails))
	echo Heads won by $diff times
elif [ $Tails -gt $Heads ]
then
	diff=$(($Tails -$Heads))
	echo Tails won by $diff times
fi
