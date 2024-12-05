#!/bin/bash

echo "*********************"
echo "**Building the JAR**"
echo "*********************"

path=/home/ahmedelenany/jenkins/workspace/CICD-pipeline

docker run --rm -v $path/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3.9.2 $@
