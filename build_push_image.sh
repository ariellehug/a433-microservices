#! /bin/bash

#Build image dengan tag v1
docker build -t item-app:v1 .

#List image lokal
docker images

#Rename nama container untuk di push ke repo
docker tag item-app:v1 ghcr.io/ariellehug/a433-microservices/item-app:v1

#Login github pakcages
echo $CR_PAT | docker login ghcr.io -u ariellehug -- password-stdin

#Push image ke github packages
docker push ghcr.io/ariellehug/a433-microservices/item-app:v1
