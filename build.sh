#! /bin/bash

# Install the dependencies
git submodule update --init --recursive
docker-compose build