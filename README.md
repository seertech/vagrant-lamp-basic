vagrant-lamp-basic
==================

Basic LAMP development setup using Vagrant with the help of tutorials from all over the web.
* Installs Apache, PHP and MySQL.
* Also installs Git.
* Makes MySQL available remotely from the host. (for now, only supports SSH out-of-the-box)
* Sets up only one server containing everything that's needed.
* Relies on bootstrap.sh to set up Apache, PHP and MySQL.
* Forwards guest to host ports: 80 to 8080 (HTTP) and 3306 to 3306 (MySQL)

Limitations.
* Still relies only on bootstrap.sh and does take advantage of other forms of automation (e.g. Chef).

WARNING: Do not use in production environments as this is not a secure setup!
* Vagrant username and password are still assumed to be vagrant/vagrant
* MySQL's password has been left blank for convenience.
