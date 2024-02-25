#!/usr/bin/env bash

stow -t ~/ */ || (stow -t ~/ --adopt */ && git reset --hard && stow -t ~/ */)

