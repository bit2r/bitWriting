#!/usr/bin/bash

wget https://quarto.org/download/latest/quarto-linux-amd64.deb
apt-get install gdebi-core
gdebi quarto-linux-amd64.deb
