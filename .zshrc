# ~/.zshrc

# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ll='ls -la'
alias gs='git status'
alias gc='git commit -m'
alias gp='git push'
alias gl='git log --oneline -20'
alias dps='docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"'
alias dlogs='docker logs -f'
alias vz='vim ~/.zshrc && source ~/.zshrc'

# Prompt
PROMPT='%F{cyan}%n%f@%F{blue}%m%f %F{yellow}%~%f %# '

# Path
export PATH="$HOME/.local/bin:$PATH"
export EDITOR=vim
