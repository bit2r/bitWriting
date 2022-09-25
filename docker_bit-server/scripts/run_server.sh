#!/usr/bin/bash

# update config 
cp ./shiny-server.conf /etc/shiny-server/shiny-server.conf

# update r-packages 
#R -f ./install_packages_additional.R

# change renv global path by joygram 2022/09/25
#RENV_PATHS_CACHE=/home/shiny-server/renv/library/R-4.2/x86_64-pc-linux-gnu
#export RENV_PATHS_CACHE

echo envroot[$RENV_PATHS_CACHE]
cd /home/shiny-server
#R -e "renv::init()"
R -e "renv::restore()"
R -e "renv::status()"


/init 
