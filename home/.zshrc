# ----------------------------------------------------------------------------
# Global setup
# ----------------------------------------------------------------------------

# ensure nothing gets added to path twice
typeset -U path
typeset -U fpath


# Set correct ruby environment
eval "$(rbenv init -)"


# Resolve the real location of our dotfiles
# This is a dirty workaround to eliminate the necessarity
# of having to symlink everything referenced by our dotfiles
# in other words: keeps home clean
CASTLE=$(perl -MCwd -le 'print Cwd::abs_path(shift)' ~/.zshrc)  # http://stackoverflow.com/a/42918
CASTLE="$(dirname "$(dirname "$CASTLE")")"			# emulates a cd ..


# ----------------------------------------------------------------------------
# SHY
# Simple 'plugin' manager
# https://github.com/aaronroyer/shy
# ----------------------------------------------------------------------------

# Bootstrap shy
path+=($CASTLE/shy)

eval "$(shy init)"

for plugin in ~/.zplugins/*; do
  shy load $plugin
done

# ----------------------------------------------------------------------------
# ZSH SYNTAX HIGHLIGHTING
# https://github.com/zsh-users/zsh-syntax-highlighting.git
# ----------------------------------------------------------------------------

# Has to be the LAST entry in .zshrc!!!
source $CASTLE/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
