#!/bin/bash

# Build images
docker build -f Dockerfile-send -t send .
docker build -f Dockerfile-recv -t recv .

# Deploy recv
docker run --name recv -d recv

# Deploy send
docker run --rm --link recv:recv send

# Check logs
docker logs recv

# Delete container
docker rm recv
