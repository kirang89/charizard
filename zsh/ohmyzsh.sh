#
# Installing Oh-my-zsh
#

echo "Installing ZSH"
sudo apt-get install zsh

while true; do
    read -p "System needs to be rebooted after installing Oh-My-Zsh. Continue?: " yn
    case $yn in
        [Yy]* ) 
            echo "Setting up oh-my-zsh from the github repo"
            wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
            echo "Changing default shell to zsh"
            chsh -s `which zsh`
            echo "Restarting system"
            sudo init 6
            ;;
        [Nn]* )
            exit 1
            ;;
        * )
            echo "Din't get that. Was that a 'y' or a 'n' ? "
    esac
done
