#!/usr/bin/bash

sudo su 
# update config 
cp ./shiny-server.conf /etc/shiny-server/shiny-server.conf

# update r-packages 
R -f ./install_packages.R

/init 
