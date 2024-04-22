#!/bin/bash
#export TAG=$1
#export CONTAINER_NAME=$2
export REPO_URL=$1
export LOCAL_PATH=/home/ubuntu/app-git
echo "Start building image"
echo "Hostname = "`hostname`
echo "REPO_URL = $REPO_URL"
cd $LOCAL_PATH
docker build -t $REPO_URL:latest .
