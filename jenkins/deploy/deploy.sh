#!/bin/bash

echo "***************************"
echo "Deploying the application"
echo "***************************"

ssh -i $DOCKER_MACHINE_PVK ahmed@192.168.1.6 

docker login -u ahmedelenany703 -p $PASS 

echo "********************"
echo "Pulling the image"
echo "********************"
docker pull ahmedelenany703/maven-image:$BUILD_TAG 
docker run ahmedelenany703/maven-image:$BUILD_TAG -d 
