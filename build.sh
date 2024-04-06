#!/bin/bash

#login into DockerHub:
docker login -u $DOCKER_USERNAME -p $DOCKER_PASS



#building a image:
docker build -t devopstest:react-application .

docker-compose down || true

docker-compose up -d
