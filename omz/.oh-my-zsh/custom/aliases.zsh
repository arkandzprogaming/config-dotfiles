# Genreral Aliases
alias aide="arduino-ide"
alias arduino-ide="/home/butter/ProgramFiles/arduino-ide-2/arduino-ide_2*.AppImage"
alias ged="gnome-text-editor"
alias libreoffice="libreoffice25.2"
alias p="python"
alias p3="python3"
alias python="python3"

alias sptop="sudo /home/butter/.nix-profile/bin/powertop"

# Git Aliases
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gd="git diff"
alias gf="git fetch"
alias gp="git push"
alias gl="git log"

alias gaa="git add --all"
alias gdh="git diff HEAD~"
alias gss="git status -s"
alias gcl="git clone"
alias glo="git log --oneline"
alias gpo="git push origin"
alias gpm="git push origin main"
alias gch="git checkout"

alias glog="git log --oneline --graph"
alias gmot="git remote -v"

alias gcmes="git commit -m"
alias gpull="git pull"
alias gstor="git restore"
alias gsets="git reset --soft HEAD~1"
alias gsetm="git reset --mixed HEAD~1"
alias gseth="git reset --hard"

alias gstors="git restore --staged"

# Nix Aliases
alias nfu="nix flake update"
alias nph="nix profile history"
alias npl="nix profile list"
alias npr="nix profile rollback"
alias npu="nix profile upgrade"
alias nsp="nix search nixpkgs"
alias nsh="nix-shell -p"

alias nprt="nix profile rollback --to"
alias npua="nix profile upgrade --all"
alias snfu="sudo nix flake update"

alias nrnvd="nix run nixpkgs#nvd -- diff /nix/var/nix/profiles/per-user/root/profile-1-link /nix/var/nix/profiles/per-user/root/profile-2-link"

# Darwin Nix Aliases
alias das="darwin-rebuild switch"
alias sdas="sudo darwin-rebuild switch"
