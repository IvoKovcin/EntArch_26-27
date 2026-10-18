#!/bin/bash

trap "echo Exiting progrm - Goodbye!" EXIT		#intresting command that triggers on condition
							#in this case when progrm finishes or terminates


message(){
	echo "Usage: $0  [MAX_NUM_CORES]"
}



cpu=$(nproc)
echo "Current number of cores in use - $cpu"


if [ -z "$1" ]; then						#Checking if user inputs anything
	echo "You did not pass any argumets to $0"	 	#letting them now a paramiter is required
	message
	exit 1
fi


if ! [[ "$1" =~ ^[0-9]+$ ]]; then					#regular expression to check for numeric input
	echo "Error $1 is not a number"				#had to look it up online
	exit 1

else									#If there was an input we inform 
	echo "You passed the number -  $1 to the program $0"		#the user what number was input
fi									#
		

case $1 in
	"$cpu")
		echo "Just enough cores available";;			#using case to print an extra message
									#when num passed is same as cores
	
	*)
		if [ $1 -gt $cpu  ]; then				#Checking if number specified is
        	echo "Not enough cores"			 	#grather than number of cores 
		 	exit 1						#available
		
		else
			echo "All good - number of cores available is greater than specified"
		fi;;
esac

echo "--- Additional commands used in this script ---"
echo "Trap - command executes on a condition, in this case EXIT, it triggers when the program finishes or terminates. Here it iformes the user tha the progeam has finished. Helps the user knwo that program stopped "
echo "Case - command compares a set variable or value to one or more cases. Here it checks for a case where the cores available and number passed to the program are the same to print a special message, if the case does not match it goes to a catch all case *, allows for better user information and makes adding additional cases easier that nested  if else"
