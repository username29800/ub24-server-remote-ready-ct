#!/usr/bin/env sh
sed -i "1cFROM ${1}:latest" */Dockerfile
sed -i "1cFROM docker.io/library/ubuntu:${3}" base/Dockerfile
podman build -t "$2" base --no-cache
podman build -t "$2" ssh --no-cache
podman build -t "$2" dev --no-cache
#podman build -t "$2" gui --no-cache
#podman build -t "$2" agent --no-cache
