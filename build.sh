#!/usr/bin/env sh
#configuration
builder="podman build"
baseimg="docker.io/library/debian"
buildbase="latest"
flags="--no-cache"

#runner
sed -i "1cFROM ${1}:$buildbase" */Dockerfile
sed -i "1cFROM $baseimg:${2}" base/Dockerfile
$builder -t "$1" base $flags
$builder -t "$1" ssh $flags
$builder -t "$1" dev $flags
$builder -t "$1" gui $flags
$builder -t "$1" agent $flags

