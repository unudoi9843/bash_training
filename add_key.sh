ALLOW=/home/vagrant/.ssh/authorized_keys
KEY=/vagrant/id_rsa.pub

cat "$KEY" >> "$ALLOW"
