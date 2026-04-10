#!/usr/bin/env bash

# Enable locally installed stuff
PATH="$HOME/.local/bin:$PATH"

# Enable gloabally installed node modules
PATH="$HOME/.local/node_modules/bin:$PATH"

# Add appimages to path
if [[ -d $HOME/AppImages ]]; then
	PATH="$HOME/AppImages:$PATH"
fi

# Enable additional colorschemes in micro editor. Specifically catppuccin
export "MICRO_TRUECOLOR=1"

# Use eza instead of ls if it's available, and use list all options by default
if [[ -x $(command -v eza) ]]; then
	ls () {
		command eza -la "$@"
	}
fi

# Colorize ls and auto format it
if ! [[ -x $(command -v eza) ]]; then
	ls () {
		command ls -la --color=auto "$@"
	}
fi
# Colorize ls output
#alias ls="ls --color=auto"

# Save a few keystrokes here and there
#alias lah="ls -lah"

# Add fzf shell integration
# CTRL-T to paste the selected files/directories on the command line
# ALT-C cd into the selected directory
# CTRL-R paste the command from history on the command line
[[ -x $(command -v fzf) ]] && eval "$(fzf --bash)"

# Starship shell prompt
[[ -x $(command -v starship) ]] && eval "$(starship init bash)"

