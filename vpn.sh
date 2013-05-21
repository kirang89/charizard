#
# MateVPN setup with OpenVPN
#

echo "Installing OpenVPN"
sudo apt-get install openvpn
echo "Downloading MateVPN configs"
wget http://www.matevpn.com/MateVPN.zip -O ~/MateVPN.zip
unzip MateVPN.zip
cd ~/MateVPN
echo "Starting up VPN"
sudo openvpn MateVPN.ovpn
