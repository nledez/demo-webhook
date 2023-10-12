#!/bin/bash
set -e
DOCKER_IMAGE=nledez/sandbox:latest
DOCKER_NAME=demo-webhook

docker pull ${DOCKER_IMAGE}

docker kill ${DOCKER_NAME} || true
docker rm ${DOCKER_NAME} || true
docker container run -d --rm --name ${DOCKER_NAME} -p 8000:8000 ${DOCKER_IMAGE}
