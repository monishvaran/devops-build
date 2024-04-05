#!/bin/bash

# Define variables
REMOTE_HOST="3.6.94.8"
REMOTE_USER="ubuntu"
REMOTE_DIR="/home/ubuntu/devops-build"
IMAGE_NAME="devopstest"
TAG="react-application"
REPOSITORY="docker.io/monishvaran"  # Replace 'monishvaran' with your Docker Hub username

# Tag the Docker image for pushing
docker tag "$IMAGE_NAME:$TAG" "$REPOSITORY/$IMAGE_NAME:$TAG"

# Push the Docker image to the remote registry
docker push "$REPOSITORY/$IMAGE_NAME:$TAG"

# SSH into the remote server and pull the latest image
ssh "$REMOTE_USER@$REMOTE_HOST" "docker pull $REPOSITORY/$IMAGE_NAME:$TAG"

# SSH into the remote server and restart the container with the new image
ssh "$REMOTE_USER@$REMOTE_HOST" "docker-compose -f $REMOTE_DIR/docker-compose.yml up -d"


