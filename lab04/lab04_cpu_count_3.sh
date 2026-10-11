#!/bin/bash

trap "echo Exiting progrm - Goodbye!" EXIT			#intresting command that triggers on condition
								#in this case when progrm finishes or terminates


message(){
	echo "Usage: $0  [MAX_NUM_CORES]"
}



cpu=$(nproc)
echo "Current number of cores in use - $cpu"


if [ -z $1 ]; then						#Checking if user inputs anything
	echo "You did not pass any argumets to $0"	 	#letting them now a paramiter is required
	message
	exit 1

else										#If there was an input we inform 
	echo "You passed the number -  $1 to the program $0"		 	#the user what number was input
fi										#
		

case $1 in
	"$cpu")
		echo "Just enough cores available";;				#using case to print an extra message
										#when num passed is same as cores
	
	*)
		if [ $1 -gt $cpu  ]; then					#Checking if number specified is
        		echo "Not enough cores"				 	#grather than number of cores 
		else 								#available
        		echo "All good - number of cores available is greater than specified"
		fi;;
esac
