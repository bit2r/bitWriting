#!/usr/bin/bash


if [ ! -d shiny-server ]; then
	echo git clone 
	sudo -u shiny git clone https://github.com/bit2r/bitWriting.git /home/app/shiny-server
else 
	echo git update 
	cd /home/app/shiny-server
	sudo -u shiny git reset --hard
	sudo -u shiny git pull 
fi

cd /home/app/shiny-server/docker_bit-server/assets
source ./run_server.sh
