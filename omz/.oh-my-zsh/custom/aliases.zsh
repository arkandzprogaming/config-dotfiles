# Git Aliases
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gd="git diff"
alias gl="git log --oneline"

alias gaa="git add --all"
alias gss="git status -s"
alias gcl="git clone"
alias glg="git log --oneline --graph"
alias gpo="git push origin"
alias gpm="git push origin main"
alias gch="git checkout"

alias gmot="git remote -v"
alias gset="git reset --soft HEAD~1"

alias gstor="git restore --staged"
alias gsetm="git reset --mixed HEAD~1"

# Nix Aliases
alias nfu="nix flake update"
alias snfu="sudo nix flake update"
alias nsp="nix search nixpkgs"
alias nsh="nix-shell -p"
alias das="darwin-rebuild switch"
alias sdas="sudo darwin-rebuild switch"
