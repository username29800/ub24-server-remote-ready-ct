#!/usr/bin/env sh
#configuration
builder="podman build"
baseimg="docker.io/library/debian"
buildbase="latest"
flags="--no-cache"

#runner
sed -i "1cFROM ${1}:$buildbase" */Dockerfile
sed -i "1cFROM $baseimg:${2}" base/Dockerfile

