#!/bin/sh

cd images

touch changed_images

for folder in *; do
    echo "checking $folder for changes"

    if git diff $CI_COMMIT_BEFORE_SHA..$CI_COMMIT_SHA | grep "images/$folder/"; then
        echo "Folder contents have changed. Running script...";
        
        echo "$folder" >> ./changed_images

      else
        echo "No changes in the folder. Skipping...";
      fi
done