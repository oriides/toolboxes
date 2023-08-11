#!/bin/sh

cd images

for folder in *; do
    echo "Building $folder image"

    # build image
    docker build -t $CI_REGISTRY/oriides/toolboxes/$folder:$CI_COMMIT_SHORT_SHA -t $CI_REGISTRY/oriides/toolboxes/$folder:latest ./images/$folder/

    # push image to registry
    docker push --all-tags $CI_REGISTRY/oriides/toolboxes/$folder
done