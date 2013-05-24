#
# My Dev Setup for Ubuntu
#

echo "Installing Vim"
sudo apt-get install vim

echo "Installing Git"
sudo apt-get install git-core

echo "Installing Mysql Server"
sudo apt-get install mysql-server mysql-client

echo "Installing Memcached"
sudo apt-get install memcached

echo "Installing Iotop"
# Iotop displays columns for the I/O bandwidth read and written by each process/thread during the sampling period
sudo apt-get install iotop

echo "Installing Curl"
sudo apt-get install curl

echo "Installing Sublime Text 2"
sudo sh sublimetext2.sh

echo "Installing Everpad"
sudo sh everpad.sh

echo "Installing htop"
sudo apt-get install htop

echo "Installing XChat"
sudo apt-get install xchat

echo "Installing Geary mail"
sudo sh geary.sh

echo "Installing VPNOneClick"
sudo sh vpn.sh

echo "Installing Spotify"
sudo sh spotify.sh
