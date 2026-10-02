#!/bin/bash

# this is a comment


if [ -z $1 ]; then
	echo "You did not ass any argumets to $0"

else
	echo "You passec the number -  $1 to the program $0"
fi



numprocesses=$(ps -ef --no-heading | wc -l)

if [ $numprocesses -le  $1 ]; then
	echo "There sre $numprocesses processes running on this machine"
else
	echo "The maximum nuber of processes exceded"
fi




