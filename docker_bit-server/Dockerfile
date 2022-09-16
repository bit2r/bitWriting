FROM tattvafoundation/shinyserver_21052022:latest
LABEL maintainer="joygram <joygram@gmail.com>"

RUN apt-get update 
RUN apt-get install -y git 

RUN addgroup --system app
RUN adduser --system --ingroup app app

COPY assets/shiny-server.conf /etc/shiny-server/shiny-server.conf
COPY assets/update.sh /home/app/update.sh


WORKDIR /home/app
# copy shiny-server config site: /home/app/shiny-server/apps
RUN chown app:app -R /home/app
USER app

## 패치 및 설정 반영 
CMD ["bash", "/home/app/update.sh"]
# CMD ["R", "-e", "library(shiny);library(shinyAce);library(markdown);library(rmarkdown);shiny::runApp('/home/app', host = '0.0.0.0', port = 3838)"]