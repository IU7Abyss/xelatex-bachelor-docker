#!/bin/bash

CWD="$(pwd)"
#LAST_RUN_CONTAINER_ID="$(docker ps -l -q)"
LAST_IMAGE_ID="$(docker ps -l --format "{{.Image}}")"

docker run -it -v $CWD/texprojects:/texprojects $LAST_IMAGE_ID bash
