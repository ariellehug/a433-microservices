#! /bin/bash

#Build image karsajobs-ui dengan tag latest
docker build -t ghcr.io/ariellehug/a433-microservices/karsajobs-ui:latest .

#Login github pakcages
echo $CR_PAT | docker login ghcr.io -u ariellehug --password-stdin

#Push image ke github packages
docker push ghcr.io/ariellehug/a433-microservices/karsajobs-ui:latest