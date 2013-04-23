#
#Installing Octopress
#

echo "Cloning the octopress repo"
git clone git://github.com/imathis/octopress.git octopress

cd octopress

bundle install

echo "Installing octopress"
rake install
