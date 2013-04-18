#
# Installing zsh
#

sudo apt-get update && sudo apt-get install zsh

#Setting up Oh-my-zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

#Changing default shell to zsh
chsh -s `which zsh`

#Restarting
sudo init 6
