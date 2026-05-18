# GIT
alias gs='git status'
alias ga='git add '
alias gp='git push '
alias gb='git branch '
alias gc='git commit --verbose '
alias gca='git commit --amend --verbose '
alias gco='git checkout '
alias grh='git reset --hard HEAD'
alias gd='git diff'
alias gl='git log --oneline --decorate --graph'

# Terminal
alias q='exit'

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# List
alias ls="eza --icons --group-directories-first --color=always"

# Services
alias bsl='brew services list'
alias bss='brew services start'
alias bst='brew services stop'
alias bsr='brew services restart'
