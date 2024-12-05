#!/bin/bash

cp java-app/target/*.jar jenkins/

echo "***Building Docker Image***"

cd jenkins/ && docker compose build --no-cache
