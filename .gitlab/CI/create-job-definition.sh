#!/bin/sh

cat >> .gitlab/CI/dynamic-gitlab-ci.yml <<- EOM

build:$IMAGE:
  stage: build
  variables:
    IMAGE: $IMAGE
  script:
    - docker build -t $CI_REGISTRY/oriides/toolboxes/$IMAGE:$CI_COMMIT_SHORT_SHA -t $CI_REGISTRY/oriides/toolboxes/$IMAGE:latest ./images/$IMAGE/
    - docker push --all-tags $CI_REGISTRY/oriides/toolboxes/$IMAGE
EOM