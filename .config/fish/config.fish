
alias ls="eza"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias cp="cp -v"
alias mv="mv -v"
alias rm="rm -v"
alias cat="bat"
alias dotfiles="cd ~/Dotfiles"
alias dev="cd ~/Dev"
alias package="e ~/Dotfiles/packages.md"

if pgrep -f wezterm > /dev/null
    alias e="editor"
else
    alias e="helix"
end

set -U fish_greeting
set -Ux LS_COLORS $(vivid generate catppuccin-mocha)
set -Ux BAT_THEME "CatppuccinGscMod"
set -Ux EDITOR "helix"

# fcitx5
# set -Ux GTK_IM_MODULE fcitx
set -Ux QT_IM_MODULE fcitx
set -Ux SDL_IM_MODULE fcitx
set -Ux GLFW_IM_MODULE ibus
set -Ux XMODIFIERS @im=fcitx


# path
set -U fish_user_paths ~/.local/bin $fish_user_paths 
set -U fish_user_paths ~/.bun/bin $fish_user_paths

# install theme
# fish_config theme save "CatppuccinGscMod"



