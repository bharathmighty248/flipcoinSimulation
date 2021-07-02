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

	if [ $Heads -eq $Tails ]
	then
		echo both are tie then
		while true
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
			if [ $(($Heads - $Tails)) == 2 ]
			then
				echo Heads : $Heads
				echo Tails : $Tails
				exit
			elif [ $(($Tails - $Heads)) == 2 ]
			then
				echo Heads : $Heads
            echo Tails : $Tails
				exit
			fi
		done
	fi
done


