FROM r2bit/bit-shiny:latest
LABEL maintainer="joygram <joygram@gmail.com>"

WORKDIR /home/app
COPY app .


RUN chown app:app -R /home/app
USER app
CMD ["R", "-e", "library(shiny);library(shinyAce);library(markdown);library(rmarkdown);shiny::runApp('/home/app', host = '0.0.0.0', port = 3838)"]