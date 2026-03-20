# Source bashrc if we haven't already, like for a login shell
if [[ -f "$HOME/.bashrc" ]]; then
  . "$HOME/.bashrc"
fi

# Prepend Homebrew path if we're on a Mac
if [[ $(uname) == 'Darwin' ]]; then
  export PATH="/opt/homebrew/bin:$PATH"
fi

eval keychain
