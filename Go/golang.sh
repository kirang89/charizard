#
# Script to install and setup Go workspace in Linux
#

ZSHRC='~/.zshrc'

read -p "Enter golang version to download and install: " gover
read -p "32-bit ? [yn] " type
case $type in
    [Yy]* ) arch='386'
            ;;
    [Nn]* ) arch='amd64'
            ;;
        * ) echo "Invalid architecture"
            exit 1
            ;;
esac

package=go$gover.linux-$arch.tar.gz
wget http://go.googlecode.com/files/$package
tar -C /usr/local -xzf $package

read -p "Enter the directory to be used in GOPATH: " gopath

if [ ! -d $gopath ]; then
    echo "Directory does not exist. Creating it.."
    mkdir -p $gopath/src
fi

gopath='export GOPATH="$gopath"'
goenv='export PATH="/usr/local/go/bin:${PATH}"'

if [ -f $ZSHRC ]; then
    echo $gopath >> ~/.zshrc
    echo $goenv >> ~/.zshrc
    echo "Added GOPATH and go to zshrc"
else
    echo $gopath >> ~/.bashrc
    echo $goenv >> ~/.bashrc
    echo "Added GOPATH and go to bashrc"
fi
