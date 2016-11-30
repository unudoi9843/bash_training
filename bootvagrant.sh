#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
   if ! [ -L /var/www ]; then
     rm -rf /var/www
     ln -fs /vagrant /var/www
     mkfs.ext4 /dev/sdb -F
     mount -t ext4 /dev/sdb /vagrant
   fi
