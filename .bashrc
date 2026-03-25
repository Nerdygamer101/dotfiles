# Enable locally installed stuff
PATH="$HOME/.local/bin:$PATH"

# Enable gloabally installed node modules
PATH="$HOME/.local/node_modules/bin:$PATH"

# Enable additional colorschemes in micro editor. Specifically catppuccin
export "MICRO_TRUECOLOR=1"

# Colorize ls output
alias ls="ls --color=auto"

# Save a few keystrokes here and there
alias lah="ls -lah"

# Add fzf shell integration
# CTRL-T to paste the selected files/directories on the command line
# ALT-C cd into the selected directory
# CTRL-R paste the command from history on the command line
eval "$(fzf --bash)"

# Starship shell prompt
eval "$(starship init bash)"
