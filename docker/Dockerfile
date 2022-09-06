FROM rocker/shiny:latest
LABEL maintainer="joygram <joygram@gmail.com>"
RUN apt-get update && apt-get install -y --no-install-recommends \
	sudo \
	libcurl4-gnutls-dev \
	libcairo2-dev \
	libxt-dev \
	libssl-dev \
	libssh2-1-dev \
	pandoc \
	texlive-full \
	fonts-lmodern \
	fonts-nanum \
	fonts-unfonts-extra \
	&& rm -rf /var/lib/apt/lists/*

RUN addgroup --system app \
	&& adduser --system --ingroup app app

WORKDIR /home/app

# add custom fonts
RUN mkdir .fonts
COPY fonts .fonts
RUN fc-cache -rv

RUN Rscript -e 'install.packages("shinyAce")'
RUN Rscript -e 'install.packages("rmarkdown")'
RUN Rscript -e 'install.packages("markdown")'
RUN Rscript -e 'install.packages("ggplot2")'
RUN Rscript -e 'install.packages("showtext")'
RUN Rscript -e 'install.packages("curl")'


