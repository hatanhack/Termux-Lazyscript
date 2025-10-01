#!/bin/bash
# Termux-Lazyscript. This script is specially designed for termux beginner users.
# Modified by: hatanhack

clear

#--- colors ---
red='\033[1;91m'
green='\033[1;92m'
yellow='\033[1;93m'
blue='\033[1;94m'
purple='\033[1;95m'
cyan='\033[1;96m'
white='\033[1;97m'

echo -e "${green}Updating Termux...."
apt update && apt upgrade -y
echo ""
echo -e "${green}Installing Termux-API...."
pkg install termux-api -y
echo ""
echo -e "${green}Installing PHP...."
pkg install php -y
echo ""
echo -e "${green}Installing curl....."
pkg install curl -y
echo ""
echo -e "${green}Installing hydra....."
pkg install hydra -y
apt install hydra -y || true
echo ""
echo -e "${green}Installing Python + requirements...."
pkg install python -y
pkg install python2 -y
pip install requests || true
pip2 install requests || true
pip install colorama || true
pip2 install colorama || true

if [ -f /data/data/com.termux/files/usr/bin/lolcat ]; then
    echo -e "${green}lolcat installed! .... Done"
else
    echo -e "${red}[!] lolcat not found!"
    echo ""
    echo -e "${cyan}Installing lolcat"
    pkg install ruby -y
    gem install lolcat || true
    echo -e "${green}installation of lolcat ...... DONE!"
fi

# ensure executables are executable
chmod +x *

# clone supporting repo (changed to your account)
cd core 2>/dev/null || mkdir -p core && cd core
git clone https://github.com/hatanhack/Termux-speak.git || echo "Could not clone Termux-speak (check repo URL)"
cd Termux-speak 2>/dev/null || true
chmod +x * 2>/dev/null
cd ../..

echo ""
echo -e "${green}Installation Finished!"
echo ""
echo -e "${yellow}Now run ls.py with: python2 ls.py"
echo ""
echo -e "${cyan}If you like this tool, consider following/subscribe to hatanhack for more tools."
echo ""
