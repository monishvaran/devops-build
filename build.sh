#!/bin/bash

#login into DockerHub:
docker login -u $DOCKER_USERNAME -p $DOCKER_PASS

#stopping existing container:
docker stop react
docker rm react

#building a image:
docker build -t devopstest:react-application .

#running a container from the created image:
docker run -d -it --name react -p 80:80 devopstest:react-application
