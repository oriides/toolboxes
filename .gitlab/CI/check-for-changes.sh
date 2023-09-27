#!/bin/sh

cd images

touch changed_images

# Check if the UPDATE_ALL environment variable is set to true.
if [[ "${UPDATE_ALL:-}" == "true" ]]; then
  echo "UPDATE_ALL environment variable is set to true. Updating all images…"

  for folder in *; do
    echo "$folder" >> ./changed_images
  done

else

  for folder in *; do
    echo "checking $folder for changes"

    if git diff $CI_COMMIT_BEFORE_SHA..$CI_COMMIT_SHA | grep "images/$folder/"; then
        echo "Folder contents have changed. Running script…";
        
        echo "$folder" >> ./changed_images

      else
        echo "No changes in the folder. Skipping…";
      fi
  done

fi