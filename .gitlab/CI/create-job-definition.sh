#!/bin/sh

cat >> .gitlab/CI/dynamic-gitlab-ci.yml <<- EOM

build:$IMAGE:
  stage: build
  variables:
    IMAGE: $IMAGE
  script:
    - docker build -t $CONTAINER_REGISTRY/oriides/toolbox-$IMAGE:$CI_COMMIT_SHORT_SHA -t $CONTAINER_REGISTRY/oriides/toolbox-$IMAGE:latest ./images/$IMAGE/
    - docker push --all-tags $CONTAINER_REGISTRY/oriides/toolbox-$IMAGE
EOM