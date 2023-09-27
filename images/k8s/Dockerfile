FROM registry.fedoraproject.org/fedora-toolbox:latest

RUN dnf install -y zsh

RUN dnf install -y kubernetes
RUN dnf install -y helm
RUN curl -s https://fluxcd.io/install.sh | sudo bash
# RUN curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-latest.x86_64.rpm
# RUN rpm -Uvh minikube-latest.x86_64.rpm