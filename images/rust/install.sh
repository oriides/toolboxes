#!/bin/bash

cargo install cargo-update
cargo install cargo-audit
cargo install cargo-outdated
cargo install cargo-tarpaulin
cargo install cargo-geiger

rm -rf $HOME/.cargo/registry/{cache,src}