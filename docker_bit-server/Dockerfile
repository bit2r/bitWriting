FROM tattvafoundation/shinyserver_21052022:latest
LABEL maintainer="joygram <joygram@gmail.com>"

RUN apt-get update 
RUN apt-get install -y \
	git \
	texlive-xetex \
	fonts-lmodern \
	fonts-nanum \
	fonts-unfonts-extra 

COPY assets/shiny-server.conf /etc/shiny-server/shiny-server.conf
COPY assets/update.sh /home/app/update.sh
COPY assets/install_packages.R /home/app/install_packages.R

# install required packages 
RUN R -f /home/app/install_packages.R 

# install shinylive, quarto, etc.
RUN /home/app/install_packages.sh

WORKDIR /home/app

# copy shiny-server config site: /home/app/shiny-server/apps
RUN chown shiny:shiny -R /home/app

# USER shiny


## 패치 및 설정 반영 
CMD ["bash", "/home/app/update.sh"]