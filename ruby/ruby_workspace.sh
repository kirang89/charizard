#
# Installing Ruby environment and dependencies
#

echo "Installing dependencies"
sudo apt-get install build-essential bison openssl libreadline5 libreadline-dev curl git-core zlib1g zlib1g-dev libssl-dev vim libsqlite3-0 libsqlite3-dev sqlite3 libreadline-dev libxml2-dev git-core subversion autoconf

echo "Downloading RVM"
bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer )

echo "Add RVM to your .bashrc file"
echo '[[ -s "/home/kiran/.rvm/scripts/rvm" ]] && source "/home/kiran/.rvm/scripts/rvm"' >> ~/.bashrc

source ~/.bashrc

echo "Installing dependencies before installing ruby"
rvm pkg install openssl
rvm pkg install iconv
 
echo "Installing ruby-1.9.2-head"
rvm install 1.9.2-head -C --with-openssl-dir=/home/kiran/.rvm/usr,--with-iconv-dir=/home/kiran/.rvm/usr

echo "Use the installed ruby as the default one"
rvm use 1.9.2-head --default

echo "Reloading RVM"
rvm reload

echo "Installing rubygems"
rvm rubygems latest

echo "Installing bundler"
gem install bundler
