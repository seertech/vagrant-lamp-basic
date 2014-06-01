#!/usr/bin/env bash

apt-get update

# The following line is needed to prevent MySQL from prompting for root password.
export DEBIAN_FRONTEND=noninteractive

# Install MySQL, Apache, PHP, etc.
apt-get -y install mysql-server-5.5 php5-mysql libsqlite3-dev apache2 php5 php5-dev build-essential php-pear

# Set Apache Document Root to /vagrant, which is the shared folder between this guest and the host
rm -rf /var/www
ln -fs /vagrant /var/www

echo "Making mysql available remotely. Just remember how unsecure this is. NOT FOR ANYTHING OTHER THAN LOCAL DEVELOPMENT!"
	#comment mysql conf lines to allow remote connection
	sed -i 's/skip-external-locking/#skip-external-locking/g' /etc/mysql/my.cnf
	sed -i 's/bind-address/#bind-address/g' /etc/mysql/my.cnf

# allow mysql to be accessed remotely
service mysql restart

# Install Git
apt-get install -y git-core

# CURL
apt-get install -y curl
