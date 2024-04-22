#!/bin/bash
#export TAG=$1
#export CONTAINER_NAME=$2
export REPO_URL=$1
export IMAGE_TAG=$2
export LOCAL_PATH=/home/ubuntu/app-git
echo "Start pushing image"
echo "Hostname = "`hostname`
echo "REPO_URL = $REPO_URL"
cd $LOCAL_PATH
echo "CURRENT DIRECTORY="`pwd`

docker push $REPO_URL:$IMAGE_TAG
docker push $REPO_URL:latest
