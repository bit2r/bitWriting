FROM tattvafoundation/shinyserver_21052022:latest
LABEL maintainer="joygram <joygram@gmail.com>"

RUN apt-get update 
RUN apt-get install -y \
	git \
	texlive-xetex \
	fonts-lmodern \
	fonts-nanum \
	fonts-unfonts-extra 

#COPY scripts/shiny-server.conf /etc/shiny-server/shiny-server.conf
WORKDIR /home/install
COPY install_scripts ./install_scripts
COPY scripts/ ./scripts

# install required packages 
RUN R -f install_scripts/install_packages.R 
# install shinylive, quarto, etc.
RUN install_scripts/install_packages.sh
RUN git clone https://github.com/bit2r/bitWriting.git /home/shiny-server
RUN ln -s /home/shiny-server/docker_bit-server/scripts /home/shiny-server/scripts

WORKDIR /home/shiny-server


# copy shiny-server config site: /home/app/shiny-server/apps
RUN chown shiny:shiny -R /home/shiny-server

# USER shiny


## 패치 및 설정 반영 
CMD ["bash", "/home/shiny-server/scripts/update.sh"]