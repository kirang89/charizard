#!/bin/bash

#
#Script to install Play Framework 1.2.5
#
wget http://download.playframework.org/releases/play-1.2.5.zip
unzip play-1.2.5.zip
echo "Moving play installation dir to /opt/"
sudo mv play-1.2.5 /opt/
echo "Creating entry for play-1.2.5 in .bashrc"
echo "export PATH="/opt/play-1.2.5:${PATH}"" >> ~/.bashrc
echo "Play Framework 1.2.5 has been installed"
source ~/.bashrc
