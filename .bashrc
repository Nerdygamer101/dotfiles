# Colorize ls output
alias ls="ls --color=auto"
# Save a few keystrokes here and there
alias lah="ls -lah"

# Add fzf shell integration
# CTRL-T to paste the selected files/directories on the command line
# ALT-C cd into the selected directory
# CTRL-R paste the command from history on the command line
eval "$(fzf --bash)"

# Starship prompt
eval "$(starship init bash)"
