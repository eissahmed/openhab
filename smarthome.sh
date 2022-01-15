#!/bin/bash
#This is to install apps neeeded for the smart home server and to run Openhab and CONbeeII containers
sudo apt update
sudo apt upgrade
sudo apt install docker docker-compose
sudo apt-get install samba samba-common-bin
#The coming is for CONbeeII setup
#Set USB access rights for users
sudo gpasswd -a hobs dialout
#pull images and run the containers
docker-compose pull
docker-compose up -d