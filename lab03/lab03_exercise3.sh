#!/bin/bash

if [ -z $1 ]; then						#Checking if user inputs anything
	echo "You did not pass any argumets for the check or select the mode - screen or file"  #letting them now a paramiter is required
	exit 1
fi


# this is a comment
if ! [[ "$1" =~ ^[0-9]+$ ]]; then
   echo "Error: '$1' is not a number"
   exit 1
fi



if [ -z $2 ]; then						#Checking if user inputs anything
	echo "You did not pass any argumets to select the mode - screen or file"  #letting them now a paramiter is required
	exit 1
fi




if [ "$2" == "file" ]; then
	echo $(date) >> Ex2out.txt 		#appending the timestamp to file
	
					
	echo "You passec the number -  $1 to the program $0" >> Ex2out.txt 	#the user what number was input
											#
											#appending to txt log file
	
	
	numprocesses=$(ps -ef --no-heading | wc -l)					#variable containing the count of
											#processes, we exclude the headings
	
												#We check if number entered is
	if [ $numprocesses -le  "$1" ]; then							#less or eaqul to num of
		echo "Max number of processes not exceeded. There are $numprocesses processes running on this machine" >> Ex2out.txt	#proceses, if its over we let
	else											#the user know
		echo "The maximum nuber of processes exceded" >> Ex2out.txt			#
		exit 1
	fi

elif [ "$2" == "screen" ]; then
	echo $(date) 		#appending the timestamp to file
	
											#If there was an input we inform 
	echo "You passec the number -  $1 to the program $0" 	#the user what number was input
											#
											#appending to txt log file
	
	
	numprocesses=$(ps -ef --no-heading | wc -l)					#variable containing the count of
											#processes, we exclude the headings
	
												#We check if number entered is
	if [ $numprocesses -le  "$1" ]; then							#less or eaqul to num of
		echo "Max number of processes not exceeded. There are $numprocesses processes running on this machine"	#proceses, if its over we let
	else											#the user know
		echo "The maximum nuber of processes exceded"		#
		exit 1
	fi
else
	echo "Error whrong mode selected"
	exit 1
fi

					
					

