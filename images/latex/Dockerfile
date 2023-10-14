FROM registry.fedoraproject.org/fedora-toolbox:latest

RUN dnf install -y zsh

# install texlive latex distribution
RUN dnf install -y latexmk
RUN dnf install -y texlive
RUN dnf install -y texlive-collection-langgerman
RUN dnf install -y texlive-collection-latexextra
RUN dnf install -y texlive-latexindent