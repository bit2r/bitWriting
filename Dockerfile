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
#RUN install.r shiny
#RUN echo "local(options(shiny.port = 9898, shiny.host = '0.0.0.0'))" > /usr/lib/R/etc/Rprofile.site
RUN addgroup --system app \
	&& adduser --system --ingroup app app
WORKDIR /home/app
COPY app .

RUN Rscript -e 'install.packages("shinyAce")'
RUN Rscript -e 'install.packages("rmarkdown")'
RUN Rscript -e 'install.packages("markdown")'
RUN Rscript -e 'install.packages("ggplot2")'

RUN chown app:app -R /home/app
USER app
CMD ["R", "-e", "shiny::runApp('/home/app', host = '0.0.0.0', port = 3838)"]