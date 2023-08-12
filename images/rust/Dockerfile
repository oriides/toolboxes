FROM registry.fedoraproject.org/fedora-toolbox:38

RUN dnf install -y zsh

# install rust toolchain
RUN dnf install -y rust
RUN dnf install -y cargo

# install common development dependencies
RUN dnf install -y openssl openssl-devel
RUN dnf install -y @c-development

# copy install script
COPY ./install.sh /usr/bin/install.sh