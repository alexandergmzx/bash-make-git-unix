#!/usr/bin/env bash
# File: guessinggame.sh

archivos=($(ls))

num_archivos=${#archivos[*]}

echo "Guess how many files are in the current directory? Type a number and then press Enter"

read guess

while [[ $guess != $num_archivos ]]; do
	if [[ guess -lt num_archivos ]]; then
		echo "The guess number is lower than the real number, try again:"
	else
		echo "The guess number is higher than the real number, try again:"
	fi
	read guess
done

echo "Yes! The real number is" $num_archivos "and the one given is $guess. Congratulations!"
