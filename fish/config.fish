# remove initial welcome message
set fish_greeting
set -g fish_key_bindings fish_user_key_bindings
# starship init command
starship init fish | source

load_nvm
set PATH ~/.pyenv/versions/2.7.18/bin $PATH
