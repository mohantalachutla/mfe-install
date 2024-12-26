#! /bin/bash

# Build the docker images
. build.sh
docker-compose -f docker-compose.dev.yml up