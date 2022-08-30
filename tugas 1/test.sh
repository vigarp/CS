#!/bin/bash

output=$(curl -i "$1")
DIR="/home/$USER/CS/pertemuan 1/tugas"

if [ "$1" ];
then
	
	if [ -d "$DIR" ];
	then
        echo "$output" >> tugas/tugas1.txt
	else 
        mkdir tugas && echo "$output" >> tugas/tugas1.txt
	fi

else
	echo "Error: parameter is empty"
	exit 1
fi

echo "done, see cat tugas/tugas1.txt"
