#!/usr/bin/bash env
#File: guessinggame.sh

function filescounter () {
ls | wc -l 
}

f="$(filescounter)"
#echo $f

echo "Welcome to this guessing game, lets see how good you are at guessing."
echo "Can you guess how many files are in this directory ?"
echo "Enter your guess: (Press Enter after giving input)"
read response

until [[ $response -eq $f ]]; do
if [[ $response -gt $f ]]
then 
	echo "$response is a greater number than what we've here."
	echo "Enter again:"
	read response
elif [[ $response -lt $f ]]
then 
	echo "You entered: $response, which is smaller than the actual number."
	echo "Enter again:"
	read response
fi

if [[ $response -eq $f ]] 
then
echo "Congratulations, right. You're good at this."
fi	

done
