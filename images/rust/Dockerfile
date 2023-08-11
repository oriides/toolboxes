FROM registry.fedoraproject.org/fedora-toolbox:38

RUN dnf install -y zsh

# install rust toolchain
RUN dnf install -y rust

# install common development dependencies
RUN dnf install -y openssl openssl-devel
RUN dnf install -y @c-development

# install helpful cargo utilities
RUN cargo install cargo-update
RUN cargo install cargo-audit
RUN cargo install cargo-outdated
RUN cargo install cargo-tarpaulin
RUN cargo install cargo-geiger

# cleanup build cache, since that doesn't need to be part of the image
# RUN rm -rf $HOME/.cargo/registry/{cache,src}