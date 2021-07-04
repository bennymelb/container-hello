#! /usr/bin/env bash

app="hello"

# Test if podman is installed
t=$(podman --version)
ec=$?

if [ $ec -gt 0 ]
then
    echo "building $app using docker"
    docker build -t $app .
else
    echo "building $app using podman"
    podman build -t $app .
fi