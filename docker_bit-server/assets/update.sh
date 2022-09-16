#!/usr/bin/bash


if [ ! -d shiny-server ]; then
	echo git clone 
	git clone https://github.com/bit2r/bitWriting.git /home/app/shiny-server
else 
	echo git update 
	cd /home/app/shiny-server
	git reset --hard
	git pull 
fi

/init 
