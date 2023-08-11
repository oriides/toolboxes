FROM registry.fedoraproject.org/fedora-toolbox:38

RUN dnf install -y zsh

RUN dnf install -y openssl openssl-devel
RUN dnf install -y @c-development
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

RUN $HOME/.cargo/bin/cargo install cargo-update
