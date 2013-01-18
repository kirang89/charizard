#
# Installing RVM and Ruby
#

echo "Downloading dependencies"
sudo apt-get install build-essential openssl libreadline6 libreadline6-dev curl
git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev
sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool
bison subversion

echo "Downloading rvm"
curl -L https://get.rvm.io | bash -s stable --ruby

echo ". ~/.rvm/scripts/rvm" >> ~/.bashrc
