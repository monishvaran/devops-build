#!/bin/bash

# Define variables
IMAGE_NAME="devopstest"
TAG="react-application"

# Build Docker image
docker build -t "$IMAGE_NAME:$TAG" .

