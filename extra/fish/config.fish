set fish_greeting

# shortcut
alias ls=exa
alias ll="exa -l"
alias la="exa -a"
alias lla="exa -la"
alias e=hx
alias p=pnpm

# use verbose
alias rm="rm -v"
alias mv="mv -v"
alias cp="cp -v"
alias ln="ln -v"

alias cat=bat
# alias g="gitui -t catppuccin.ron"
# alias du=dust
# alias ping=gping
# alias top='btm'
# alias loc='tokei'
# alias sed='sd'

# git
alias gp="git push"
alias gc="git commit"
alias gs="git status"
alias ga="git add"

# pnpm end Env
set -gx EDITOR "hx"

# local bin
set -gx PATH "$HOME/.local/bin:$PATH"

# rust path
set -gx PATH "$HOME/.cargo/bin:$PATH"

## pnpm
set -gx PNPM_HOME "$HOME/.local/share/pnpm"
set -gx PATH "$PNPM_HOME:$PATH"

# if status is-interactive
#     # Commands to run in interactive sessions can go here
# end


starship init fish | source
