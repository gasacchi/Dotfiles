set fish_greeting

# shortcut
alias ls=exa
alias ll="exa -l"
alias la="exa -a"
alias lla="exa -la"
alias e=hx

# use verbose
alias rm="rm -v"
alias mv="mv -v"
alias cp="cp -v"
alias ln="ln -v"

alias cat=bat

# pnpm end Env
set -gx EDITOR "hx"

# local bin
set -gx PATH "$HOME/.local/bin:$PATH"

# rust path
set -gx PATH "$HOME/.cargo/bin:$PATH"

## bun
set -gx PATH "$HOME/.bun/bin:$PATH"

# if status is-interactive
#     # Commands to run in interactive sessions can go here
# end


starship init fish | source


