# ----------------------------------------------------------------------------
# Global setup
# ----------------------------------------------------------------------------

# ensure nothing gets added to path twice
typeset -U path
typeset -U fpath


# Set correct ruby environment
eval "$(rbenv init -)"


# ----------------------------------------------------------------------------
# SHY
# Simple 'plugin' manager
# https://github.com/aaronroyer/shy
# ----------------------------------------------------------------------------

# Bootstrap shy
path+=(~/.shy)

eval "$(shy init)"

for plugin in ~/.zplugins/*; do
  shy load $plugin
done

# ----------------------------------------------------------------------------
# ZSH SYNTAX HIGHLIGHTING
# https://github.com/zsh-users/zsh-syntax-highlighting.git
# ----------------------------------------------------------------------------

# Has to be the LAST entry in .zshrc!!!
source ~/.syntax/zsh-syntax-highlighting.zsh
