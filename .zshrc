# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Autocomplete
autoload -Uz compinit
zstyle ':completion:*' menu select
compinit

# Asdf
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

# Aliases
alias l="eza -l --icons"
alias la="eza -la --icons"

# Init
eval "$(starship init zsh)"
