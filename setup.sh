#
# My Dev Setup for Ubuntu
#

#

echo "Installing Git"
sudo apt-get install git-core

echo "Installing Mysql Server"
sudo apt-get install mysql-server

echo "Installing PyStuff"
sudo apt-get install python-pip
sudo apt-get install libmysqlclient18
sudo apt-get install python-mysqldb
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
sudo apt-get install sublime-text-2-dev


