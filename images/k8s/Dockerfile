FROM registry.fedoraproject.org/fedora-toolbox:latest

RUN dnf install -y zsh

RUN dnf install -y kubernetes
RUN dnf install -y helm
RUN curl -s https://fluxcd.io/install.sh | sudo bash