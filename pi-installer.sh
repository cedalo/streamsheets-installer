#!/bin/sh

#this is a script to install streamsheets on raspberry pi with raspbian buster
#sudo apt-get update
#sudo apt-get upgrade


#color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'
IP=$(hostname -I)

#download docker install script
#when installed with this script there will be a docker & docker-engine folder in /var/lib and docker folder in /usr/bin
cd ~


if [ -f /usr/bin/docker ]
then
	echo -e "${GREEN}Docker already exists${NC}"
else
	echo -e "${YELLOW}installing docker${NC}"
	echo ""
	sudo curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh
	sudo usermod -aG docker pi
	echo -e "${GREEN}installed docker${NC}"
fi

#run apt-get install pip, if pip is already installed this will do no harm
echo -e "${YELLOW}Now installing/updating python3-pip.${NC}"
sudo apt-get install python3-pip


if [ -d "/usr/local/lib/python3.7/dist-packages/compose" ]
then
	echo -e "${GREEN}docker-compose is already installed${NC}"
else
	echo -e "${YELLOW}installing docker-compose now${NC}"
	echo ""
	sudo pip3 install docker-compose
	echo -e "${GREEN}finished installing docker-compose${NC}"
fi

echo -e "${GREEN}docker & docker-compose is installed, now need to login${NC}"
echo "_______________________________________________________"

while [ ! -f ~/.docker/config.json ]
do
	sudo docker login
	sleep(1)
done

echo ""
echo -e "${YELLOW}now downloading streamsheet installing wizard${NC}"
mkdir cedalo
cd cedalo
sudo docker run -v ~/cedalo:/streamsheets cedalo/streamsheets-installer:1.3-rpi


echo ""
echo ""
echo ""
echo -e "${GREEN}Docker and the Streamsheet-Installer have been downloaded successfully. After installation and start, Streamsheets will be available under $(hostname):8081 in your browser (in your local network)${NC}"
#sleep 5
#echo ""
#echo ""
#echo ""
read -p "${YELLOW}Do you want to start and install streamsheets now? (Y/N)${NC}: " choice
case "$choice" in
	y|Y ) cd streamsheets/scripts; sh start.sh;;
	n|N ) echo -e "${GREEN}closing shell${NC}";;
	* ) echo -e "${RED}type in y/Y or n/N: ${NC}"
esac
