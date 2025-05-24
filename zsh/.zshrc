# System Admin .zshrc configuration
alias ls='lsd'
alias ll='lsd -alF'
alias la='lsd -A'
alias l='lsd -CF'
alias cat='batcat'
export PATH="/usr/local/bin:$PATH"
export GREP_OPTIONS='--color=always'
export EDITOR="nvim"
eval "$(zoxide init --cmd cd zsh)"
# A simple prompt
PROMPT='%F{green}%n%F{yellow}@%F{blue}%m %F{cyan}%~%f$ '

