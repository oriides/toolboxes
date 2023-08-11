#!/bin/sh

cd images

file="./changed_images"

# Check if the file exists
if [ -f "$file" ]; then
    # Read and print each line
    while IFS= read -r line; do
        echo "Building $line image"

        # build image
        docker build -t $CI_REGISTRY/oriides/toolboxes/$line:$CI_COMMIT_SHORT_SHA -t $CI_REGISTRY/oriides/toolboxes/$line:latest ./$line/

        # push image to registry
        docker push --all-tags $CI_REGISTRY/oriides/toolboxes/$line

    done < "$file"
else
    echo "File not found: $file"
    echo "This file is supposed to be provided by previous job check-for-changes, did it run successfully and provide the artifact?"
    exit 1
fi