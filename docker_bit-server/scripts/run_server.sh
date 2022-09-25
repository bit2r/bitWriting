#!/usr/bin/bash

# update config 
cp ./shiny-server.conf /etc/shiny-server/shiny-server.conf

# update r-packages 
#R -f ./install_packages_additional.R

# change renv global path by joygram 2022/09/25
RENV_PATHS_ROOT=/home/shiny-server
export RENV_PATHS_ROOT

echo envroot[$RENV_PATHS_ROOT]
cd /home/shiny-server
R -e "renv::restore()"
R -e "renv::status()"


/init 
