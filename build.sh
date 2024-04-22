#!/bin/bash
#export TAG=$1
#export CONTAINER_NAME=$2
export REPO_URL=$1
echo "Start building image"
echo "Hostname = "`hostname`
echo "REPO_URL = $REPO_URL"
docker build -t $REPO_URL:latest .
