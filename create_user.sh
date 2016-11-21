#!/bin/bash

 if [ "$1" = "-u" ]; then

   if [ "$2" != "" ]; then

     if [ "$3" = "-p" ]; then

       if [ "$4" != "" ]; then

         useradd $2 -p $(perl -e'print crypt('$4',"aaa")') -m
       else
         echo "lipseste parola utilizatorului"
       fi
     else
       echo "lipseste parametrul -p"
     fi
   else
     echo "lipseste numele utilizatorului"
   fi
 else
   echo "lipseste parametrul -u"
 fi
