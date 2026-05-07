#!/usr/bin/env sh
sed -i "1cFROM ${1}:latest" */Dockerfile
sed -i "1cFROM docker.io/library/ubuntu:${2}" base/Dockerfile
podman build -t "$1" base --no-cache
podman build -t "$1" ssh --no-cache
podman build -t "$1" dev --no-cache
#podman build -t "$1" gui --no-cache
