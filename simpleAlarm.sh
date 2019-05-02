#!/bin/zsh

#this is an Alaram for reminding how much time we have

echo "Enter the time you want: "

echo "Hours: "; read  h
echo "Minutes: ";read  m
echo "Seconds: ";read  s

#first, we turning time into seconds
let time="h*3600+m*60+s"

echo "$time"

#we are using a loop to count down the remaining time
while [[ $time > 0 ]]; do
	let time--
#in here we are turning the ramaining seconds to hours and minutes
	let hrs="time/3600"
	let min="time/60-hrs*60"
	let sec="time-min*60-hrs*3600"
	
	echo "$hrs -- $min -- $sec ramaining!"
#with sleep command, we can pause the loop for each second
	sleep 1
done


echo "beep beep!"

#we can use vlc player to play a song so we will notice that time has ended!
cvlc /linux/somefile.mp3