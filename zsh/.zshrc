# Default Programs
export EDITOR="nvim"
export XDG_CONFIG_HOME="$HOME/.config"

# ~/.zshrc
command -v starship &> /dev/null && eval "$(starship init zsh)"

if command -v eza &> /dev/null; then
  alias ls='eza --icons=auto'
  alias ll='eza --icons=auto -alF'
  alias la='eza --icons=auto -A'
elif command -v lsd &> /dev/null; then
  alias ls='lsd'
  alias ll='lsd -alF'
  alias la='lsd -A'
fi

alias cat='bat'
alias vim='nvim'

alias tms='tmux new-session -s'

alias fdp='file=$(fd -t f | fzf-tmux -p) && [ -n "$file" ] && nvim "$file"'

zstyle ':completion:*' menu select
autoload -U compinit && compinit

export PATH="$HOME/.local/bin:$PATH"

# zoxide must be initialized last
command -v zoxide &> /dev/null && eval "$(zoxide init --cmd cd zsh)"
