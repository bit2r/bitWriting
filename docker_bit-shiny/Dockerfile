# shinyAce를 사용하기 위한 추가 라이브러리와 latex패키지를 보강한 기반입니다.
# 기본 구성이라 추가적으로 변경 이슈는 없을 것 입니다. 
# by joygram 2022/09/07
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

# add custom fonts an register
RUN mkdir .fonts
COPY fonts .fonts
RUN fc-cache -rv

RUN Rscript -e 'install.packages("shinyAce")'
RUN Rscript -e 'install.packages("shinyjs")'

RUN Rscript -e 'install.packages("rmarkdown")'
RUN Rscript -e 'install.packages("markdown")'
RUN Rscript -e 'install.packages("ggplot2")'
RUN Rscript -e 'install.packages("showtext")'
RUN Rscript -e 'install.packages("curl")'
# add additional  package by joygram 2022/09/09
RUN Rscript -e 'install.packages("devtools")'
RUN Rscript -e 'devtools::install_github("rstudio/gridlayout")'
RUN Rscript -e 'install.packages("sass")'
RUN Rscript -e 'install.packages("here")'
RUN Rscript -e 'install.packages("dplyr")'
# add bootstraplib package by joygram 2022/09/13 
RUN Rscript -e 'devtools::install_github("rstudio/bootstraplib")'

# add additional library by joygram 2022/09/15
RUN Rscript -e 'devtools::install_github("rstudio/learnr")'
RUN Rscript -e 'install.packages("reticulate")'







