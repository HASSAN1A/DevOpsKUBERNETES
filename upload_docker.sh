#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=hassan1a/house_pricing

# Step 2:  
# Authenticate & tag
docker login -u "jun222work "
docker tag house_pricing $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker image push $dockerpath
