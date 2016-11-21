#!/bin/bash

 if [ "$1" = "-u" ]; then

   if [ "$2" != "" ]; then

     if [ "$3" = "-p" ]; then

       if [ "$4" != "" ]; then

         useradd $2
         echo "utilizator adaugat"
         echo -e "$4\n$4" | (passwd $2)
         mkdir /home/$2
         chown $2:$2 /home/$2
         echo "parola utilizator adaugata"
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
