#!/usr/bin/env bash

stow -t ~/ neovim || (stow -t ~/ --adopt neovim && git reset --hard && stow -t ~/ neovim)

