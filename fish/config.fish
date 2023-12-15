set fish_greeting

# shortcut
alias ls="eza --icons"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias lt="ls -T"
alias e=helix

# use verbose
alias rm="rm -v"
alias mv="mv -v"
alias cp="cp -v"
alias ln="ln -v"
alias z=zellij

alias cat=bat

set -gx HELIX_RUNTIME "$HOME/.local/helix/runtime"
set -gx EDITOR "helix"

# local bin
set -gx PATH "$HOME/.local/bin:$PATH"



# rust path
set -gx PATH "$HOME/.cargo/bin:$PATH"

# ## bun
set -gx PATH "$HOME/.bun/bin:$PATH"

# if status is-interactive
#     # Commands to run in interactive sessions can go here
# end

# call gruvbox function
theme_gruvbox dark hard

starship init fish | source


