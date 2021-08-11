#!/bin/bash

# Download busybox image
docker pull busybox

# Run busybox mapping the tmp folder
docker run -d -v $(pwd)/tmp:/lab --name lab1 --rm busybox sleep 20

# Exec the script
docker exec -it lab1 sh /lab/hello.sh
