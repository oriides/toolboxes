# toolboxes

This repo contains the configuration files for my [toolbox](containertoolbx.org/) images.  
The images themselves can be found on [Docker HUB](https://hub.docker.com/u/oriides).

Images are automatically updated by the pipeline if changes have been made to the files in the image folders.  
![pipeline status](https://gitlab.com/oriides/toolboxes/badges/main/pipeline.svg)

## usage

1. [OPTIONAL]: log in to the container registry

    ```bash
    podman login docker.io
    ```

2. create a toolbox container using an image from the repository

    ```bash
    toolbox create <container-name> -i docker.io/oriides/toolbox-<image-name>:<image-tag>
    ```

    for example:

    ```bash
    toolbox create rust -i docker.io/oriides/toolbox-rust:latest
    ```

3. enter the toolbox container

    ```bash
    toolbox enter <container-name>
    ```
