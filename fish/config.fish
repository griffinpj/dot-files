# remove initial welcome message
set fish_greeting
set -g fish_key_bindings fish_user_key_bindings
# starship init command
# starship init fish | source

# load_nvm
# set PATH ~/.pyenv/versions/2.7.18/bin $PATH
# set PATH ~/.nvm/nvm.sh $PATH

# Bun
# set -Ux BUN_INSTALL "/Users/griffinjohnson/.bun"
# set -px --path PATH "/Users/griffinjohnson/.bun/bin"


set -gx PNPM_HOME "/Users/griffinjohnson/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
