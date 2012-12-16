#
#Installing Octopress in Ubuntu 
#

#Install dependencies
sudo aptitude install build-essential bison openssl libreadline5 libreadline-dev curl git-core zlib1g zlib1g-dev libssl-dev vim libsqlite3-0 libsqlite3-dev sqlite3 libreadline-dev libxml2-dev git-core subversion autoconf

#Download RVM
bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer )

#Add RVM to your .bashrc file
echo '[[ -s "/home/kiran/.rvm/scripts/rvm" ]] && source
"/home/kiran/.rvm/scripts/rvm"' >> ~/.bashrc  

#Refresh .bashrc
source ~/.bashrc

#Some more dependencies before installing ruby
rvm pkg install openssl
rvm pkg install iconv

#Installing ruby-1.9.2-head
rvm install 1.9.2-head -C
--with-openssl-dir=/home/kiran/.rvm/usr,--with-iconv-dir=/home/kiran/.rvm/usr

#Use the installed ruby as the default one 
rvm use 1.9.2-head --default

#Reload RVM
rvm reload

#Installing rubygems
rvm rubygems latest

#Installing bundler
gem install bundler


#Now proceeding to install Octopress

#First we need to clone the repo
git clone git://github.com/imathis/octopress.git octopress

#
#Warning: open the .rvmrc file inside the octopress directory, from outside and then make sure that the version you change this line
#          rvm use 1.9.3 
#to match the version you installed above
#

#Now cd into the dir
cd octopress

bundle install

rake install

