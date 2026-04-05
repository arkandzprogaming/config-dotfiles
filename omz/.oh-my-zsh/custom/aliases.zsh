# Genreral Aliases
alias aide="arduino-ide"
alias arduino-ide="/home/butter/ProgramFiles/arduino-ide-2/arduino-ide_2*.AppImage"
alias ged="gnome-text-editor"
alias p="python3"
alias p3="python3"

alias sptop="sudo /home/butter/.nix-profile/bin/powertop"

# Ubuntu Battery Info Dump
alias batinfo="echo \"-- Battery Information --\" && echo \"Status: \" && cat /sys/class/power_supply/BAT0/status && echo \"Current Capacity: \" && cat /sys/class/power_supply/BAT0/energy_now && echo \"Full Capacity: \" && cat /sys/class/power_supply/BAT0/energy_full && echo \"Design Capacity: \" && cat /sys/class/power_supply/BAT0/energy_full_design && echo \"Cycle Count: \" && cat /sys/class/power_supply/BAT0/cycle_count"

# ESP-IDF Aliases
alias espidf=". $HOME/esp-env/esp-idf/export.sh"
alias getidf=". $HOME/esp-env/esp-idf/export.sh"
alias idfhere=". $HOME/esp-env/esp-idf/export.sh"

# Flatpak Aliases
alias chrome="flatpak run com.google.Chrome"
alias code="flatpak run com.visualstudio.code"
alias discord="flatpak run com.discordapp.Discord"
alias libreoffice="flatpak run org.libreoffice.LibreOffice"
alias obs="flatpak run com.obsproject.Studio"
alias proton-pass="flatpak run me.proton.Pass"
alias soffice="libreoffice"
alias vivaldi="flatpak run com.vivaldi.Vivaldi"
alias vlc="flatpak run org.videolan.VLC"
alias xournalpp="flatpak run com.github.xournalpp.xournalpp"

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
alias gds="git diff --staged"
alias gss="git status -s"
alias gcl="git clone"
alias glo="git log --oneline"
alias gpo="git push origin"
alias gpm="git push origin main"
alias gch="git checkout"

alias gchb="git checkout -b"
alias glog="git log --oneline --graph"
alias gmot="git remote -v"

alias gcmes="git commit -m"
alias gpull="git pull"
alias gstor="git restore"
alias gsets="git reset --soft"
alias gsetm="git reset --mixed"
alias gseth="git reset --hard"

alias gstors="git restore --staged"

# Nix Aliases
alias ncg="nix-collect-garbage -d"
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
