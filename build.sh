#!/bin/bash

DIR=$(pwd)
PARENTDIR=$(dirname ${DIR})
NAME=$(basename ${DIR})

RUNNING=$(docker ps -a | grep ${NAME} > /dev/null 2>&1; echo $?)

docker rm ${NAME}
docker run -ti --entrypoint="" --name ${NAME} -p 1313:1313 -v ${DIR}:/website -w /website thevasin/myhugo hugo