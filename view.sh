#!/bin/bash

DIR=$(pwd)
PARENTDIR=$(dirname ${DIR})
NAME=$(basename ${DIR})

RUNNING=$(docker ps -a | grep ${NAME} > /dev/null 2>&1; echo $?)

if [ ${RUNNING} -eq 1 ]; then
    docker run -ti --name ${NAME} -p 1313:1313 -v ${DIR}:/website -w /website thevasin/myhugo
else
    docker start ${NAME}
    docker attach ${NAME}
fi