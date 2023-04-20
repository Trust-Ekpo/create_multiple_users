#!/bin/bash



#A simple bash script that check to see if those users were created. 


#get the path to the list of users
echo "What is the path to the list of users you want to check?"
read path

#check to see is the variable path is not empty
if [ -n $path ]
then
	#loop through the list of users and perfom id on each
	for i in `cat $path` ; do id $i ; done

fi
