#
# My Dev Setup for Ubuntu
#

echo "Installing Vim"
sudo apt-get install vim

echo "Installing Git"
sudo apt-get install git-core

echo "Installing Mysql Server"
sudo apt-get install mysql-server mysql-client

echo "Installing PyStuff"
sudo apt-get install python-dev
sudo apt-get install python-pip
sudo apt-get install libmysqlclient18
sudo apt-get install python-mysqldb
sudo apt-get install python-gevent
chmod +x py_setup.sh
./py_setup.sh

echo "Installing Memcached"
sudo apt-get install memcached

echo "Installing Maven"
sudo apt-get install maven2

echo "Installing Iotop"
# Iotop displays columns for the I/O bandwidth read and written by each process/thread during the sampling period
sudo apt-get install iotop

echo "Installing Curl"
sudo apt-get install curl

echo "Installing Sublime Text 2"
sudo add-apt-repository ppa:webupd8team/sublime-text-2
sudo apt-get update
sudo apt-get install sublime-text-2

echo "Installing Everpad"
sudo add-apt-repository ppa:nvbn-rm/ppa
sudo apt-get update
sudo apt-get install everpad

echo "Installing htop"
sudo apt-get install htop

echo "Installing ZSH"
sudo apt-get install zsh
