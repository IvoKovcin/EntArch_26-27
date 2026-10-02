#!/bin/bash

# this is a comment


if [ -z $1 ]; then						#Checking if user inputs anything
	echo "You did not ass any argumets to $0" >> Ex2out.txt #letting them now a paramiter is required

else										#If there was an input we inform 
	echo "You passec the number -  $1 to the program $0" >> Ex2out.txt 	#the user what number was input
fi										#
										#appending to txt log file


numprocesses=$(ps -ef --no-heading | wc -l)					#variable containing the count of
										#processes, we exclude the headings

											#We check if number entered is
if [ $numprocesses -le  $1 ]; then							#less or eaqul to num of
	echo "There sre $numprocesses processes running on this machine" >> Ex2out.txt	#proceses, if its over we let
else											#the user know
	echo "The maximum nuber of processes exceded" >> Ex2out.txt			#
fi

					
					
echo $(date) >> Ex2out.txt 		#appending the timestamp to file
