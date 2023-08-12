#!/bin/sh

cat >> .gitlab/CI/dynamic-gitlab-ci.yml <<- EOM

build:$IMAGE:
  stage: build
  variables:
    IMAGE: $IMAGE
  script:
    - docker build -t $CONTAINER_REGISTRY/$CONTAINER_REGISTRY_USER/toolbox-$IMAGE:$CI_COMMIT_SHORT_SHA -t $CONTAINER_REGISTRY/$CONTAINER_REGISTRY_USER/toolbox-$IMAGE:latest ./images/$IMAGE/
    - docker push --all-tags $CONTAINER_REGISTRY/$CONTAINER_REGISTRY_USER/toolbox-$IMAGE
EOM