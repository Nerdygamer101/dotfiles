# Enable locally installed stuff
PATH="$HOME/.local/bin:$PATH"

# Enable gloabally installed node modules
PATH="$HOME/.local/node_modules/bin:$PATH"

# Colorize ls output
alias ls="ls --color=auto"

# Save a few keystrokes here and there
alias lah="ls -lah"

<<<<<<< HEAD
# Add fzf shell integration
# CTRL-T to paste the selected files/directories on the command line
# ALT-C cd into the selected directory
# CTRL-R paste the command from history on the command line
eval "$(fzf --bash)"

# Starship prompt
=======
# Starship shell prompt
>>>>>>> b1ac51a (Add extensions to PATH for locally installed items)
eval "$(starship init bash)"
