#!/bin/bash

echo "*****************************"
echo "** Pushing The Image **"
echo "*****************************"

echo "*** Logging In ***"
docker login -u ahmedelenany703 -p $PASS 

docker tag maven-image:$BUILD_TAG ahmedelenany703/maven-image:$BUILD_TAG

echo "*** Starting Pushing ***"

docker push ahmedelenany703/maven-image:$BUILD_TAG
