#!/bin/bash



# find -p $path_to_folder -t $days_old

 if [ "$1" = "-p" ] and [ "$2" != "" ]; then
     if [ "$3" = "-t" ] and [ "$4" != "" ]; then
         find $2 -mtime +$4 -type f -delete
     else
        echo "time limit is missing"
     fi
 else
    echo "path to folder is missing"
 fi
