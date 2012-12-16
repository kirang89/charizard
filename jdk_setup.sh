#
# Installing Oracle JDK 7 on Ubuntu
#

echo "Installing Oracle JDK 7"
wget --no-cookies --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F" \
"http://download.oracle.com/otn-pub/java/jdk/7u10-b18/jdk-7u10-linux-i586.tar.gz"
tar -xvf jdk-7u10-linux-i586.tar.gz

sudo mv jdk1.7.0_10/* /usr/lib/jvm/jdk1.7.0/

#Update Alternatives
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk1.7.0/bin/java" 1

sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.7.0/bin/javac" 1

sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jvm/jdk1.7.0/bin/javaws" 1

#Run Java jdk configuration
sudo update-alternatives --config java
sudo update-alternatives --config javac
sudo update-alternatives --config javaws

#Optional - Install Mozilla Plugin
mkdir ~/.mozilla/plugins/ 
ln -s /usr/lib/jvm/jdk1.7.0/jre/lib/i386/libnpjp2.so ~/.mozilla/plugins/
