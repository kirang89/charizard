#
# Installing Oh-my-zsh
#

echo "Setting up oh-my-zsh from the github repo"
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

echo "Changing default shell to zsh"
chsh -s `which zsh`

#Restarting
#sudo init 6
