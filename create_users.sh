#!/bin/bash


#A simple bash script that creates multiple users.
echo "What is the path to the list of users you want to create?"
read path

#check to ensure the variable path is not empty
if [ -n $path ]
then
	#loop thorugh the list of names and  create a user. 
	#-m is used to create a home directory of each user
	for i in `cat $path` ; do useradd -m $i ; done

fi
