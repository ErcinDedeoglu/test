#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT

docker run -it --rm dslim/slim build ubuntu:latest

echo "end."
