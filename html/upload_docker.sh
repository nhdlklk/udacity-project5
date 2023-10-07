#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="nhdlklk/microproject:${CIRCLE_WORKFLOW_ID:0:7}"

# Step 2:  
# Authenticate & tag
docker login -u="$DOCKERHUB_USERNAME" -p="$DOCKERHUB_PASSWORD"
docker tag microproject ${dockerpath}
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push ${dockerpath}
