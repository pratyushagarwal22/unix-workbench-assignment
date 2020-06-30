#!/bin/bash

clear
echo "UNIX PROGRAM TO GUESS THE NUMBER OF FILES IN WORKING DIRECTORY"


function guessing() {
	echo "PLEASE ENTER YOUR GUESS"
	read guess

	correct=$(ls -al | wc -l)-1

	while [[ $guess -ne $correct ]]
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
		else
			echo "Correct Guess"
		fi
	done

	echo "Congratulations! You have succeeded!"
	echo
	echo "Actual Files: "
	files=$(ls)
	echo $files
}

guessing
