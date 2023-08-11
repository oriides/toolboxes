# toolboxes

This repo contains the configuration files for my [toolbox](containertoolbx.org/) images.  
The images themselves can be found in the [container registry](https://gitlab.com/oriides/toolboxes/container_registry) of this repository

Images are automatically updated by the pipeline if changes have been made to the files in the image folders.  
![pipeline status](https://gitlab.com/oriides/toolboxes/badges/main/pipeline.svg)

## usage

1. log in to the container registry of this repo

    ```bash
    podman login registry.gitlab.com
    ```

2. create a toolbox container using an image from the repository

    ```bash
    toolbox create <container-name> -i registry.gitlab.com/oriides/toolboxes/<image-name>:<image-tag>
    ```

    for example:

    ```bash
    toolbox create rust -i registry.gitlab.com/oriides/toolboxes/rust:latest
    ```

3. enter the toolbox container

    ```bash
    toolbox enter <container-name>
    ```