#
# Installing Oracle JDK 7 on Ubuntu
#

JVM_DIRECTORY=/usr/lib/jvm/jdk1.7.0
MOZILLA_PLUGINS_DIRECTORY=~/.mozilla/plugins/

echo "Installing Oracle JDK 7"
wget --no-cookies --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F" \
"http://download.oracle.com/otn-pub/java/jdk/7u10-b18/jdk-7u10-linux-i586.tar.gz"

tar -xvf jdk-7u10-linux-i586.tar.gz

if [ ! -d "$JVM_DIRECTORY" ]
    sudo mkdir -p $JVM_DIRECTORY
fi
sudo mv jdk1.7.0_10/* $JVM_DIRECTORY/

#Update Alternatives
sudo update-alternatives --install "/usr/bin/java" "java" "$JVM_DIRECTORY/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "$JVM_DIRECTORY/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "$JVM_DIRECTORY/bin/javaws" 1

#Run Java jdk configuration
sudo update-alternatives --config java
sudo update-alternatives --config javac
sudo update-alternatives --config javaws

#Optional - Install Mozilla Plugin
if [ ! -d "$MOZILLA_PLUGINS_DIRECTORY" ]
    sudo mkdir -p ~/.mozilla/plugins/
fi
ln -s /usr/lib/jvm/jdk1.7.0/jre/lib/i386/libnpjp2.so ~/.mozilla/plugins/
