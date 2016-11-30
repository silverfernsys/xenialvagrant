#!/usr/bin/env bash
if [ ! -d ~/.cargo/bin ]; then
    curl https://sh.rustup.rs -sSf | sh -s -- -y
    cat ~/.cargo/env >> ~/.zshrc
    if [ ! -d ~/.zfunc ]; then
      mkdir -p ~/.zfunc/;
    fi
    rustup completions zsh > ~/.zfunc/_rustup
    echo >> ~/.zshrc
    echo 'fpath+=~/.zfunc' >> ~/.zshrc
fi