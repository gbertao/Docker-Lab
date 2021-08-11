#!/bin/sh

if [ $1 ]; then
  echo Received $1

  sleep $1
else
  echo ARG1 is empty
fi
