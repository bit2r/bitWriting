#!/usr/bin/bash
docker stop $(docker ps -q --filter ancestor=r2bit/bit-writing)
docker image rm r2bit/bit-writing 
docker login -u r2bit
docker run -d --rm -p 3838:3838 r2bit/bit-writing
