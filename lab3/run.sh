#!/bin/bash

# Download busybox
docker pull busybox

# Wait for connection
docker run -d --name lab3 -p 12345:38080 busybox nc -l -p 38080

# Send data to the container
nc localhost 12345 < data

# Check logs
docker logs lab3

# Delete container
docker rm lab3
