#!/bin/bash
export TAG=$1
export CONTAINER_NAME=$2
echo "GITHUB sources --"

aws ecr get-login-password --region eu-west-3 | sudo docker login --username AWS --password-stdin 992382634925.dkr.ecr.eu-west-3.amazonaws.com
COMMIT_HASH=$(echo $CODEBUILD_RESOLVED_SOURCE_VERSION | cut -c 1-7)
#IMAGE_TAG=${COMMIT_HASH:=latest}
IMAGE_TAG=latest
REPO_URL=992382634925.dkr.ecr.eu-west-3.amazonaws.com/$IMAGE_REPO_NAME

echo "Hostname = "`hostname`
echo "COMMAND info == docker stop $CONTAINER_NAME"
echo "COMMAND info == docker container rm $CONTAINER_NAME"
echo "COMMAND info == docker pull 992382634925.dkr.ecr.eu-west-3.amazonaws.com/exampleapp:$TAG"
echo "COMMAND info == docker run -dti -p 80:3000 --name $CONTAINER_NAME 992382634925.dkr.ecr.eu-west-3.amazonaws.com/exampleapp:$TAG"
docker ps -a
docker images

# Vérifier si le conteneur existe et s'il est en cours d'exécution
if docker ps -a | grep -q "$CONTAINER_NAME"; then
    echo "Le conteneur existe, arrêt et suppression..."
    # Arrêter le conteneur s'il est en cours d'exécution
    docker stop "$CONTAINER_NAME"
    # Supprimer le conteneur
    docker container rm $CONTAINER_NAME
else
    echo "no container found"
fi

# Démarrer un nouveau conteneur
sudo usermod -aG docker ubuntu
echo "Démarrage d'un nouveau conteneur..."
sudo docker pull 992382634925.dkr.ecr.eu-west-3.amazonaws.com/exampleapp:$TAG
sudo docker run -dti -p 80:3000 --name $CONTAINER_NAME 992382634925.dkr.ecr.eu-west-3.amazonaws.com/exampleapp:$TAG