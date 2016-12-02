#!/bin/bash



# find -p $path_to_folder -t $days_old

 if [ "$1" = "-p" ]; then
 	if [ "$2" != "" ]; then
 		if [ "$3" = "-t" ]; then
 			if [ "$4" != "" ]; then
 				find $2 -mtime +$4 -delete
 			else
 				echo "time limit is missing"
 			fi
 		else
 			echo "-t is missing"
 		fi
 	else
 		echo "path to folder is missing"
 	fi
 else
 	echo "-p is missing"
 fi
