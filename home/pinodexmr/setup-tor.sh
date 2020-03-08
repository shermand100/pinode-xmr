#!/bin/bash

whiptail --title "PiNode-XMR NoIP config" --msgbox "PiNode-XMR will now install 'tor' and it's monitoring tool 'nyx'" 8 78

##Setup tor + hidden service + monitor file
echo -e "\e[32mSetup tor hidden service and monitor file\e[0m"
sleep 3
sudo apt install tor nyx -y
echo -e "\e[32mDownloading PiNode-XMR config file\e[0m"
sleep 3
wget https://github.com/shermand100/pinode-xmr/raw/Raspbian-install/etc/tor/torrc
echo -e "\e[32mApplying Settings...\e[0m"
sleep 3
sudo mv /home/pinodexmr/torrc /etc/tor/torrc
sudo chmod 644 /etc/tor/torrc
sudo chown root /etc/tor/torrc
echo -e "\e[32mRestarting tor service...\e[0m"
sleep 3
sudo service tor restart
echo -e "\e[32mSuccess! Returning to menu\e[0m"
sleep 3

./setup.sh