set fish_greeting

# fast access
alias tea="cd ~/Dev/teapot"
alias dotfiles="cd ~/Dotfiles"
alias code="zeditor"

# shortcut
alias ls="eza --icons"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias lt="ls -T"
alias e=helix

# git
alias gadd="git add"
alias gcom="git commit"
alias gpush="git push"

# use verbose
alias rm="rm -v"
alias mv="mv -v"
alias cp="cp -v"
alias ln="ln -v"

alias cat=bat

# set -gx HELIX_RUNTIME "$HOME/.config/helix/runtime"
set -gx EDITOR helix

# local bin and scripts
set -gx PATH "$HOME/.local/bin:$PATH"
set -gx PATH "$HOME/.local/scripts:$PATH"


# rust path
set -gx PATH "$HOME/.cargo/bin:$PATH"

# bun path
set -gx PATH "$HOME/.bun/bin:$PATH"

# bun path
set -gx PATH "$HOME/.zig:$PATH"



# if status is-interactive
#     # Commands to run in interactive sessions can go here
# end




# Kanagawa Fish shell theme
# A template was taken and modified from Tokyonight:
# https://github.com/folke/tokyonight.nvim/blob/main/extras/fish_tokyonight_night.fish
set -l foreground DCD7BA normal
set -l selection 2D4F67 brcyan
set -l comment 727169 brblack
set -l red C34043 red
set -l orange FF9E64 brred
set -l yellow C0A36E yellow
set -l green 76946A green
set -l purple 957FB8 magenta
set -l cyan 7AA89F cyan
set -l pink D27E99 brmagenta

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment

starship init fish | source
