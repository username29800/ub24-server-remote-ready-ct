#!/usr/bin/env sh
sed -i "1cFROM ${1}:latest" */Dockerfile
sed -i "1cFROM docker.io/library/ubuntu:${2}" base/Dockerfile
