#!/bin/bash

output=$(curl -i "$1")

if [ -d "/home/vigar/CS/tugas" ]; #please change the user directory
then
	echo "$output" >> tugas/tugas1.txt
else 
	mkdir tugas && echo "$output" >> tugas/tugas1.txt
fi

echo "done, see cat tugas/tugas1.txt"
