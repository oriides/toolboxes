FROM registry.fedoraproject.org/fedora-toolbox:38

RUN dnf install -y zsh

# install rust toolchain
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# install common development dependencies
RUN dnf install -y openssl openssl-devel
RUN dnf install -y @c-development

# install helpful cargo utilities
RUN $HOME/.cargo/bin/cargo install cargo-update
RUN $HOME/.cargo/bin/cargo install cargo-audit
RUN $HOME/.cargo/bin/cargo install cargo-outdated
RUN $HOME/.cargo/bin/cargo install cargo-tarpaulin
RUN $HOME/.cargo/bin/cargo install cargo-geiger
RUN $HOME/.cargo/bin/rustup component add clippy

# cleanup build cache, since that doesn't need to be part of the image
RUN rm -rf $HOME/.cargo/registry/{cache,src}
