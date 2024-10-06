#!/bin/bash
# VERSION_NUMBER="v3"
cd /root/PyFlaskDocker/
git pull
docker build -t custom-img-pyapp:v3 .
docker run --rm -p 8000:8000 custom-img-pyapp:v3