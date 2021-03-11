#!/bin/sh

#this is a script to install Streamsheets on Raspberry Pi with raspbian buster


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
cd $H

#check if docker is installed
if [ -f /usr/bin/docker ]
then
	echo "${GREEN}Docker already exists${NC}"
else
	echo "${YELLOW}Installing Docker${NC}"
	echo ""
	sudo curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh
	sudo usermod -aG docker pi
	if [ -f /usr/bin/docker ]
	then
		echo "${GREEN}Installed Docker${NC}"
	else
		echo "${RED}Installation of Docker failed, try again or search for help at https://forum.cedalo.com ${NC}"
		exit 1
	fi
fi

#run apt-get install pip, if pip is already installed this will do no harm
echo "${YELLOW}Installing/updating python3-pip${NC}"
sudo apt-get install python3-pip

#check if docker-compose is installed
if [ -f /usr/local/bin/docker-compose ]
then
	echo "${GREEN}docker-compose is already installed${NC}"
else
	echo "${YELLOW}Installing docker-compose${NC}"
	echo ""
	sudo pip3 install docker-compose
	if [ -f /usr/local/bin/docker-compose ]
	then
		echo "${GREEN}Finished installing docker-compose${NC}"
	else
		echo "${RED}Installation of docker-compose failed, try again or search for help at http://forum.cedalo.com ${NC}"
		exit 2
	fi
fi



echo ""
echo "${YELLOW}Downloading and running Cedalo-Platform installer${NC}"
mkdir cedalo_platform
cd cedalo_platform
sudo docker rmi $(docker images -q cedalo/installer:2-rpi) -f
sudo docker run --rm -it -v $H/cedalo_platform:/cedalo cedalo/installer:2-rpi


echo ""
echo ""
echo "${GREEN}Docker and Streamsheet have been installed successfully. After starting Streamsheets, it will be available under http://$(hostname):8081 in your browser (on your local network)${NC}"
while true; do
	read -p "Do you want to start Streamsheets now? (Y/n): " choice
	case "$choice" in
		y|Y ) cd ~/cedalo_platform; sudo sh start.sh;;
		n|N ) break;;
		* ) echo "${RED}type in y/Y or n/N: ${NC}";;
	esac
done
