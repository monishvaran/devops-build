#!/bin/bash

# Define variables
DOCKER_IMAGE="devopstest"
TAG="react-application"

# Log in to Docker Hub
echo "Logging in to Docker Hub..."
docker login -u monishvaran -p subha@0103

# Tag the Docker image
echo "Tagging the Docker image..."
docker tag $DOCKER_IMAGE:$TAG monishvaran/dev:react-application

# Push the Docker image to Docker Hub
echo "Pushing the Docker image to Docker Hub..."
docker push monishvaran/dev:react-application

echo "Image deployment completed successfully."
