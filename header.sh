#!/usr/bin/env sh
sed -i "1cFROM ${1}:latest" */Dockerfile
sed -i "1cFROM docker.io/library/debian:${2}" base/Dockerfile
