#!/bin/bash

###  This script contains the program that prints words  ###
###     to the screen and has the user return them       ###

fileLines=$(wc -l < "words.txt")
score=0

while [ 1=1 ]
do
	randNum=$(( ( RANDOM % $fileLines ) +1 ))
	word=$(sed "${randNum}q;d" "words.txt")
	printf " %-10s score: $score\n" $word
	read userWord
	while [[ "$word" != *"$userWord" || "$userWord" == "" ]]
	do
		printf " $word\n"
		read userWord
	done
	((score++))
done

