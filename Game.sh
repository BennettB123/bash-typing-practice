#!/bin/bash

###     This is a game to practice your typing speed      ###
###   Random words appear and must be typed by the user   ###
###   You may choose how long you want the game to last   ###

echo "Welcome to the typing game!"
echo "Repeat the words that are given to you"
echo "How long would you like to play? (select 1, 2, or 3)"
select TIME in "15 seconds" "30 seconds" "60 seconds"
do
	echo "You have chosen to play for" $TIME
	break
done

echo "Game starting..."
  sleep 0.5
echo "3..."
  sleep 1
echo "2..."
  sleep 1
echo "1..."
  sleep 1

if [[ "$TIME" == "15 seconds" ]]
	then
		timeout --foreground 15s ./backgroundcode.sh
fi
if [[ "$TIME" == "30 seconds" ]]
	then
		timeout --foreground  30s ./backgroundcode.sh
fi
if [[ "$TIME" == "60 seconds" ]]
	then
		timeout --foreground 60s ./backgroundcode.sh
fi

echo
echo "TIME'S UP"
echo "I hope you enjoyed the typing game!"
sleep 1
