#!/bin/bash

# Download busybox
docker pull busybox

# Create the receiver
docker run -d --name recv busybox nc -l -p 38080

# Create the sender
docker run -d --rm --name send --link recv:recv -v $(pwd)/data:/data busybox sleep 5
docker exec send sh /data/send.sh

# Get Log
docker logs recv

# Delete container
docker rm recv
