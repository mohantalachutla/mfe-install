#! /bin/bash

# cleans up dangling containers
docker container prune -f
# cleans up dangling images
docker image prune -f

# cleans up images, containers volumes, networks, --all deletes everything including tags, build cache
# docker system prune -f