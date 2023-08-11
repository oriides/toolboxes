#!/bin/sh

file="images/changed_images"

# Check if the file exists
if [ -f "$file" ]; then
    echo "creating build jobs for modified images..."

    # Read and print each line
    while IFS= read -r line; do
        echo "creating build job for \"$line\" image"

        IMAGE=$line .gitlab/CI/create-jobs.sh

    done < "$file"
else
    echo "File not found: $file"
    echo "This file is supposed to be provided by previous job check-for-changes, did it run successfully and provide the artifact?"
    exit 1
fi