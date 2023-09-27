FROM registry.fedoraproject.org/fedora-toolbox:latest

RUN dnf install -y zsh

# install rust toolchain
RUN dnf install -y rust
RUN dnf install -y cargo

# install common development dependencies
RUN dnf install -y openssl openssl-devel
RUN dnf install -y @c-development

# copy install script
COPY ./res/install-crates /usr/bin/install-crates