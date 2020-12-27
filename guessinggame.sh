#!/usr/bin/env bash
# File: guessinggame.sh

archivos=($(ls))

num_archivos=${#archivos[*]}

function ask_user {
	echo "Guess how many files are in the current directory? Type a number and then press Enter"
	read guess
}

ask_user

while [[ $guess != $num_archivos ]]; do
	if [[ guess -lt num_archivos ]]; then
		echo "The guess number is lower than the real number"
	else
		echo "The guess number is higher than the real number"
	fi
	ask_user
done

echo "Yes! The real number is" $num_archivos "and the one given is $guess. Congratulations!"
