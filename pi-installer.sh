#!/bin/sh

#this is a script to install streamsheets on raspberry pi with raspbian buster


#get user and user home directory
U=$SUDO_USER
H=$(eval echo "~$U")


#color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
WHITE="\[\033[0;37m\]"
NC='\033[0m'
IP=$(hostname -I)

#download docker install script
#when installed with this script there will be a docker & docker-engine folder in /var/lib and docker folder in /usr/bin
cd $H


if [ -f /usr/bin/docker ]
then
	echo "${GREEN}Docker already exists${NC}"
else
	echo "${YELLOW}installing docker${NC}"
	echo ""
	sudo curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh
	sudo usermod -aG docker pi
	if [ -f /usr/bin/docker ]
	then
		echo "${GREEN}installed docker${NC}"
	else
		echo "${RED}installation of docker failed, try again or search for help at: forum.streamsheets.com ${NC}"
		exit 1
	fi
fi

#run apt-get install pip, if pip is already installed this will do no harm
echo "${YELLOW}Now installing/updating python3-pip${NC}"
sudo apt-get install python3-pip


if [ -d "/usr/local/lib/python3.7/dist-packages/compose" ]
then
	echo "${GREEN}docker-compose is already installed${NC}"
else
	echo "${YELLOW}installing docker-compose now${NC}"
	echo ""
	sudo pip3 install docker-compose
	if [ -d "/usr/local/lib/python3.7/dist-packages/compose" ]
	then
		echo "${GREEN}finished installing docker-compose${NC}"
	else
		echo "${RED}installation of docker-compose failed, try again or search for help at: forum.streamsheets.com ${NC}"
		exit 2
	fi
fi



echo ""
echo "${YELLOW}now downloading streamsheet installing wizard${NC}"
mkdir cedalo
cd cedalo
sudo docker run -v $H/cedalo:/streamsheets cedalo/streamsheets-installer:1.3-rpi


echo ""
echo ""
echo ""
echo "${GREEN}Docker and the Streamsheet-Installer have been downloaded successfully. After installation and start, Streamsheets will be available under $(hostname):8081 in your browser (on your local network)${NC}"
while true; do
	read -p "Do you want to start and install streamsheets now? (Y/n): " choice
	case "$choice" in
		y|Y ) cd streamsheets/scripts; sh start.sh;;
		n|N ) echo "${GREEN}closing shell${NC}";;
		* ) echo "${RED}type in y/Y or n/N: ${NC}";;
	esac
done
