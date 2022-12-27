# Source .profile if exists
if test -f ~/.profile
    source ~/.profile;
end
# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
