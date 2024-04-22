#!/bin/bash
export TAG=$1
export CONTAINER_NAME=$2
echo "GITHUB sources"
echo "Hostname = "`hostname`
echo "COMMAND info == docker stop $CONTAINER_NAME"
echo "COMMAND info == docker container rm $CONTAINER_NAME"
echo "COMMAND info == docker pull 992382634925.dkr.ecr.eu-west-3.amazonaws.com/exampleapp:$TAG"
echo "COMMAND info == docker run -dti -p 80:3000 --name $CONTAINER_NAME 992382634925.dkr.ecr.eu-west-3.amazonaws.com/exampleapp:$TAG"
##docker ps -a
##docker images
##docker stop $CONTAINER_NAME
##docker container rm $CONTAINER_NAME
##docker pull 992382634925.dkr.ecr.eu-west-3.amazonaws.com/exampleapp:$TAG
##docker run -dti -p 80:3000 --name $CONTAINER_NAME 992382634925.dkr.ecr.eu-west-3.amazonaws.com/exampleapp:$TAG
