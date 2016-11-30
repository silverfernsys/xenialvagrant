#!/usr/bin/env bash
if [ ! -d ~/.gvm ]; then
  bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
  echo "[[ -s $HOME/.gvm/scripts/gvm ]] && source $HOME/.gvm/scripts/gvm" >> ~/.zshrc
  source $HOME/.gvm/scripts/gvm
  gvm install go1.4.3 --binary
  gvm use go1.4.3
  gvm install go1.7.3
  gvm use go1.7.3 --default
fi