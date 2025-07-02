#!/bin/bash
# VERSION_NUMBER="v3"
cd /root/PyFlaskDockerApp/
git pull
docker build -t custom-img-pyapp:$(cat version.txt) .
docker run --rm -p 8000:8000 custom-img-pyapp:$(cat version.txt)
