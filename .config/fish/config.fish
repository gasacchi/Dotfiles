set -U fish_greeting

alias ls="eza"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias e="helix"
alias cp="cp -v"
alias mv="mv -v"

set -Ux LS_COLORS $(vivid generate catppuccin-mocha)

fish_config theme save "CatppuccinGscMod"


