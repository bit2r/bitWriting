FROM joygram/bit-shiny:latest
LABEL maintainer="joygram <joygram@gmail.com>"

WORKDIR /home/app
COPY app .


RUN chown app:app -R /home/app
USER app
CMD ["R", "-e", "shiny::runApp('/home/app', host = '0.0.0.0', port = 3838)"]