#!/bin/bash

if ! command -v docker &> /dev/null; then
  echo "Docker is not running. Please start Docker before running this script."
  exit 1
fi

# Build the Docker image
# checks build.sh exit code
if ! . ./build.sh ; then
  echo "Build failed."
  exit 1
fi

# set the Docker Hub username
username="mohantalachutla"
echo "Username: $username"

# Login to Docker Hub
if ! docker login; then echo "Login failed."; exit 1; fi

# List all images with the tag 'latest'
latest_images=$(docker images --filter "reference=*:*latest" --format "{{.Repository}}:{{.Tag}}")

if [ -z "$latest_images" ]; then
  echo "No images with the 'latest' tag found."
  exit 0
fi

# Iterate over each image and perform actions
echo "Pushing latest images:"
while IFS= read -r image; do
  if [[ "$image" == mongo* ]]; then
    continue
  fi
  echo "Image: $image"
  target="${username}/mf-${image}"
  echo "Target: $target"
  # Tag the image for Docker Hub
  docker tag "$image" "$target"
  # Push to Docker Hub
  docker push $target
  # echo "Pushed $image to $target on Docker Hub."
done <<< "$latest_images"

echo "Pushed latest images to Docker Hub."

docker image prune -f