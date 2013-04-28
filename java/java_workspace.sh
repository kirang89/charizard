#
# Java workspace setup
#

echo "Installing Maven"
sudo apt-get install maven2

echo "Installing JDK 7"
sudo sh jdk7.sh

while true; do
    read -p "> Install Play Framework 1.2.5 ? (Yes/No): " yn
    case $yn in
        [Yy]* ) sudo sh play1.2.5.sh; return 0;;
        [Nn]* ) echo "> Skipping...."; return 1;;
            * ) echo "Din't get that. Was it a 'y' or a 'n' ?";;
    esac
done
