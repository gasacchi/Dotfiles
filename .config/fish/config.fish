
alias ls="eza"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias e="helix"
alias cp="cp -v"
alias mv="mv -v"
alias rm="rm -v"
alias cat="bat"

set -U fish_greeting
set -Ux LS_COLORS $(vivid generate catppuccin-mocha)
set -Ux BAT_THEME "CatppuccinGscMod"
set -Ux EDITOR "helix"

# path
set -U fish_user_paths ~/.local/bin $fish_user_paths 

# install theme
# fish_config theme save "CatppuccinGscMod"


