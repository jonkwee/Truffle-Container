#!/bin/bash

# if there is no local truffle image, then build image
if ! docker images | grep local/truffle; then
    docker build --tag local/truffle .
else 
    printf 'Image found.'
fi

# if there is no container, then create container
if ! docker container ls -a | grep truffle; then
    docker run \
        -it \
        --rm \
        -v /${PWD}/dev_env:/truffle \ # escape ${PWD} due to using git bash: https://stackoverflow.com/a/50608818
        --name truffle \
        local/truffle
else
    printf 'Container found.'
fi

