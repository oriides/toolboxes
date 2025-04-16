FROM registry.fedoraproject.org/fedora-toolbox:latest

RUN dnf install -y zsh \
    latexmk \
    texlive \
    texlive-collection-langgerman \
    texlive-collection-latexextra \
    texlive-latexindent \
    && dnf clean all \
  	&& rm -rf /var/cache/yum
