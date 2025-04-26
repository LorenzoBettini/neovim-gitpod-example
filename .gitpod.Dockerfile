# You can find the new timestamped tags here: https://hub.docker.com/r/gitpod/workspace-full/tags
FROM gitpod/workspace-full:2025-04-16-08-49-20

# Install packages that are not in the Ubuntu repos
# the version in Ubuntu repos is too old for lazy.vim
# shellcheck is not available at all in Ubuntu repos
RUN brew update
RUN brew install \
	neovim \
	shellcheck

# install-packages is a wrapper for `apt` that helps skip a few commands in the docker env.
# additional packages needed in neovim with this configuration
# (tree is just to inspect folders, not needed by neovim)
RUN sudo install-packages \
	fzf \
	ripgrep \
	stow \
	npm \
	tree
