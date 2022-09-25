#!/usr/bin/bash

# update config 
cp ./shiny-server.conf /etc/shiny-server/shiny-server.conf

# update r-packages 
#R -f ./install_packages_additional.R
cd /home/shiny-server
R -e "renv::restore(confirm=TRUE)"
R -e "renv::status()"


/init 
