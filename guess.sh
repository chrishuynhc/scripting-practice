#!/bin/bash

scores="highscores"
guess=-100
typeset -i num=0

(( random = RANDOM % 100 + 1 ))

echo "Guess a number between 0 and 128"

while (( guess != random )); do
	num=num+1
	read -p "Enter guess $num: " guess
	if (( guess < random )); then
		echo "low guess"
	elif (( guess > random )); then
		echo "high guess"
	fi
done

echo "Correct! That took $num guesses."

read -p "Enter your name: " name
echo $name $num >> $scores
echo "\nTop Three Scores:" 
sort -n -r $scores | head -3

