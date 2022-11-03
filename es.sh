#!/usr/bin/env bash

ES_CONTAINER="es-morfologik:latest"

docker build -t $ES_CONTAINER .

docker run \
    -p 9200:9200 \
    -p 9300:9300 \
    -e "discovery.type=single-node" \
    -e "xpack.security.enabled=false" \
   $ES_CONTAINER