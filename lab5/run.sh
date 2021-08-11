#!/bin/bash

# Build image
docker build . -t my-sleep

# Run
docker run --rm my-sleep

# Run with other sleep value
docker run --rm my-sleep 3

# Use the sleep2.sh
docker run --rm --entrypoint "sleep2.sh" my-sleep 5
