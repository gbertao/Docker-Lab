#!/bin/bash

# Download busybox
docker pull busybox

# Run netcat on busybox
docker run -d --name lab2 busybox nc -l -p 38080

# Send data to the container
CIP=$(docker inspect --format "{{ .NetworkSettings.IPAddress }}" lab2)
nc ${CIP} 38080 < data

# Confirm data
docker logs lab2

# Delete container
docker rm lab2
