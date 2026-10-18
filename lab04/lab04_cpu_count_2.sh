#!/bin/bash



message(){
	echo "Usage: $0  [MAX_NUM_CORES]"
}



cpu=$(nproc)
echo "Current number of cores available - $cpu"


if [ -z "$1" ]; then						#Checking if user inputs anything
	echo "You did not pass any argumets to $0"	 	#letting them now a paramiter is required
	message
	exit 1

else									#If there was an input we inform 
	echo "You passed the number -  $1 to the program $0"		#the user what number was input
fi									#
		


if [ $1 -gt $cpu  ]; then						#Checking if number specified is
        echo "Not enough cores available" 				#grather than number of cores 
	exit 1								#available
else 										
        echo "All good - enough cores available"		
fi
