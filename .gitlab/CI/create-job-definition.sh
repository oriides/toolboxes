#!/bin/sh

cat >> .gitlab/CI/dynamic-gitlab-ci.yml <<- EOM

build:$IMAGE:
  stage: build
  variables:
    IMAGE: $IMAGE
  script:
    - docker build -t docker.io/oriides/toolbox-$IMAGE:$CI_COMMIT_SHORT_SHA -t docker.io/oriides/toolbox-$IMAGE:latest ./images/$IMAGE/
    - docker push --all-tags docker.io/oriides/toolbox-$IMAGE
EOM