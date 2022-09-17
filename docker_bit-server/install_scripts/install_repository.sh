#!/usr/bin/bash
pushd .
echo git clone 
git clone https://github.com/bit2r/bitWriting.git /home/shiny-server
ln -s /home/shiny-server/docker_bit-server/scripts /home/shiny-server/scripts
popd 
