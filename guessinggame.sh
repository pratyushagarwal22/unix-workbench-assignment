#!/bin/bash

clear
echo "UNIX PROGRAM TO GUESS THE NUMBER OF FILES IN WORKING DIRECTORY"

function guessing() {
	echo "PLEASE ENTER YOUR GUESS"
	read guess
	correct=$(ls -al | wc -l)-3

	if [[ $guess -gt 0 && $guess -ne $correct ]]
	then
		if [[ $guess == $correct ]]
		then
			echo
			echo "Correct Guess"
			exit 0
		fi
		while [[ $guess -ne $correct && $guess -gt 0 ]]
		do
			if [[ $guess -gt $correct ]]
			then
				echo "Guess too high."
				echo
				echo "GUESS AGAIN"
				read guess
			elif [[ $guess -lt $correct ]]
			then
				echo "Guess too low."
				echo
				echo "GUESS AGAIN"
				read guess
			fi
		done
	else
		echo "Wrong Input. Please execute program again."
		echo
		exit 0
	fi
	echo "Correct Files are...."
	ls -al
}

guessing
